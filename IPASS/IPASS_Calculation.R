###Code to generate IPASS and assign T ell infiltration status
#T-cell infiltration indicates a tumour based off the IPASS as either immune-inflamed or altered
#Reads in a gene expression data frame of TPM values
#code can be run on any number of samples


##load IPASS related information
load("IPASS.RData")

#load TPM expression data - columns will be patients and rows hugo gene symbols
tpm<-read.delim("GeneExpression_TPM.txt",sep="\t",header=T,stringsAsFactors=F)

## extract out ipass genes
# note gene_id is column name of the gene names
#check to ensure there are 15 rows in the ipassTPM dataframe
ipassTpm<-tpm[which(tpm$gene_id %in% ipassGenes$IPASS),]

##turn into a matrix and add 1 to handle for 0 TPM values
rownames(ipassTpm)<-ipassTpm$gene_id
ipassTpm<-ipassTpm[,-1]
ipassTpm<-as.matrix(ipassTpm)
ipassTpm<-ipassTpm+1

#calculate score for each sample
ipassScore<-log(ipassTpm,base=10)
Score<-colMeans(ipassScore)
ipassScore<-rbind(ipassScore,Score)

#convert into data frame with IPASS value and infiltration status
tipassScore<-as.data.frame(t(ipassScore))
tipassScore$Sample<-rownames(tipassScore)
tipassScore<-tipassScore[,c("Sample","Score")]
tipassScore$Status<-ifelse(tipassScore$Score >= threshold,"T-cell_Infiltrated","Cold")

#Save results
write.table(tipassScore,"IPASS_Results.txt",sep="\t",row.names=F,quote=F)

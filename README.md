# A novel transcriptional signature identifies T-cell infiltration in high-risk paediatric cancer 
Mayoh, C et al. 2022

This repository contains scripts and figure generation code used for this publication. They are shared as is, with no warranty.

# Methodology
Methodology used for the analysis in this paper are as described in the manuscript.

# Data
The processed RNA-seq transcripts per million (TPM) counts for the 766 Immune Genes used in this analysis are available under the data/ folder.

# iPASS generation and calculation
The script that utilises the random forest algorithm that identified the iPASS signature is available under the ipass/ folder. In addition a script to calculate an individual tumours IPASS is provided in the ipass/ folder. It takes as input a matrix of gene TPM values and will output a score. A score >=0.83 is indicative of a T-cell infiltrated tumour and <0.83 an immune cold tumour.

# Scripts
All other scripts supplied are to generate the figures in the manuscript and are in the figures/ folder.

# Software used
We are so grateful to all these open source software developers for developing and maintaining these critical software.

* STAR 
* RSEM 
* MiXCR 
* CIBERSORTx 
* quanTIseq 
* MCP-counter 
* OptiType 
* razers3 
* pVACseq
* NetMHCons
* R 

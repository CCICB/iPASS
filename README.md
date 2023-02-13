# A novel transcriptional signature identifies T-cell infiltration in high-risk paediatric cancer 
Mayoh, C et al. 2023

This repository contains the RNA-seq dataset (raw counts, TPM) for the 766 immune genes used in the analysis for this paper. It also contains the script to calculate the IPASS score. The data and scripts are shared as is, with no warranty.

# Methodology
Methodology used for the analysis in this paper are as described in the manuscript.

# Data
The processed RNA-seq transcripts per million (TPM) counts for the 766 Immune Genes used in this analysis are available under the data/ folder.

# iPASS generation and calculation
A script to calculate an individual tumours IPASS is provided in the IPASS/ folder. It takes as input a matrix of gene TPM values and will output a score. A score >=0.83 is indicative of a T-cell infiltrated tumour and <0.83 an immune cold tumour. 

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

# Funding
With thanks we are grateful to all the funding organisations that made this work possible.
We would like to acknowledge Luminesce Alliance – Innovation for Children’s Health for its contribution and support. Luminesce Alliance, is a not-for-profit cooperative joint venture between the Sydney Children’s Hospitals Network, the Children’s Medical Research Institute, and the Children’s Cancer Institute. It has been established with the support of the NSW Government to coordinate and integrate paediatric research. Luminesce Alliance is also affiliated with the University of Sydney and the University of New South Wales Sydney. 
We would also like to thank the Medical Research Future Fund through the Emerging Priorities and Consumer Driven Research Scheme, Australian Brain Cancer Mission, the Minderoo Foundation's Collaborate Against Cancer Initiatives, the National Health & Medical Reseearch Council Lifting Clinical Trials and Registry Capacity and Cancer Institute New South Wales Program Grants.

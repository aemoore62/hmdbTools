library(tidyverse)

hmdb <- read_csv(unz('hmdb_metabolite.csv.zip','hmdb_metabolite.csv'))

# See how many metabolites are in file
length(hmdb$name)

# Look at top of file
head(hmdb)


######## Find INChiKey given accession ######## 
# Look at INChIKey and accession at the beginning of file
head(hmdb[c("InChIKey","accession")])

# Define my favorite accession
myAccession = "HMDB0000010"

# Get the InNChIKey for my favorite accession
hmdb$InChIKey[hmdb$accession==myAccession]



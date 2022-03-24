library(tidyverse)
hmdb <- read_csv(unz('hmdb_metabolite.csv.zip','hmdb_metabolite.csv'))

# See how many metabolites are in file
length(hmdb$name)

# Look at top of file
head(hmdb)

# Look at INChIKey and super class at the beginning of file
head(hmdb[c("InChIKey","super_class")])

# Return frequency of each superclass
superclasseFreq = as.data.frame(table(hmdb$super_class))
superclasseFreq

# clean up column names
colnames(superclasseFreq) <- c("super_class", "frequency_of_all_metabolite")

# See how many metabolites are in a superclass
# As of today 20220324, the HMDB website has 148515 entries in https://hmdb.ca/classyfication
# We return slightly fewer here: 145937
sum(as.data.frame(table(hmdb$super_class))$Freq)

# Write out frequencies
write.csv(superclasseFreq,"/Users/abby/hmdbTools/superclass_frequency.csv", row.names = FALSE)

# Read in frequencies
superclassFreqFromCsv <- read_csv('superclass_frequency.csv')
superclassFreqFromCsv

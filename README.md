# hmdbTools

Tools and tutorials for working the data from the HMDB.


# Files #

### Data Output ###
The `hmdb_metabolite.csv.zip` contained in this repo resulted from executing `hmdb_parse.py` against the file downloaded from [HMDB](https://hmdb.ca/downloads) as seen in the image below.

<img width="1275" alt="image" src="https://user-images.githubusercontent.com/28875637/159986160-2d5ba77b-87f5-424a-b729-aaf394fe2067.png">

`hmdb_metabolite.csv.zip`: the csv version of the hmdb xml that contains all metabolites. This is output by `hmdb_parse.py`.     
`superclass_frequency.csv`: the frequency of each superclass evaluated across all metabolites. This can be output using `getSuperClassFrequencies.R`.      

### Data Processing Scripts ###
`hmdb_parse.py`: parses the hmdb_metabolite.xml file. This xml includes all metabolites.   
`setFilePath.R`: quick instructions on how to set your working directory in R.   
`getInChIKeyGivenAccession.R`: how to get the InChIKey of a metabolite given the accession.   
`getSuperClassFrequencies`: how to get the frequencies of each super class, i.e. the number of metabolites in each superclass.   

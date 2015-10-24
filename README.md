### Human activity recognition data analysis
The script `run_analysis.R` analyses the data (as long as it is in it's working directory) and creates a what is called *tidy* dataset.

### Detailed description
Firstly, script removes all variables in your environment, so be careful if you have any data in your environment you don't want to lose. Then working directory is set and needed packages are loaded. Next part (till *task 3* comment) is about merging train and test datasets, setting correct names to variables and loading subjects. 
Then, activities and their actual names are loaded. The next step is about subsetting mean and std variable from the whole dataset. Final part calculates means by all activities by subjects and saves the result tidy data to the text file.

### How to get it work
1) You should have a `dplyr` package installed;
2) `setwd('...')` have to be changed to appropriate directory with dataset;
3) Dataset in a working directory is a folder "UCI HAR Dataset" from the downloded archive;

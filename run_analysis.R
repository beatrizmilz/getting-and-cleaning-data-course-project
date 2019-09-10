# Load libraries
library(tidyverse)

# Download the raw data
url <-
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(url, destfile = "data/dataset_samsung.zip", method = "curl")

# Unzip the downloaded zip
unzip(zipfile = "data/dataset_samsung.zip", exdir = "data")

# Read files into R
## Directory: data/UCI HAR Dataset/

features <- read.table("data/UCI HAR Dataset/features.txt",
                       col.names = c("n", "functions"))

activity_labels <-
  read.table("data/UCI HAR Dataset/activity_labels.txt",
             col.names = c("code", "activity"))

# Read files into R
## Directory: data/UCI HAR Dataset/test

subject_test <-
  read.table("data/UCI HAR Dataset/test/subject_test.txt",
             col.names = "subject")

x_test <- read.table("data/UCI HAR Dataset/test/X_test.txt",
                     col.names = features$functions)

y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt",
                     col.names = "code")

# Read files into R
## Directory: data/UCI HAR Dataset/train
subject_train <-
  read.table("data/UCI HAR Dataset/train/subject_train.txt",
             col.names = "subject")

x_train <- read.table("data/UCI HAR Dataset/train/X_train.txt",
                     col.names = features$functions)

y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt",
                     col.names = "code")




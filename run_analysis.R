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


# Step 1 - Merges the training and the test sets to create one data set.
## Row bind X train and test set
x_train_test <- rbind(x_train, x_test)

## Row bind y train and test set
y_train_test <- rbind(y_train, y_test)

## Row bind subject train and test set
subject_merged <- rbind(subject_train , subject_test)

## Creates one dataset: column bind the 3 sets created
merged_dataset <- cbind(subject_merged, y_train_test, x_train_test)

# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.

tidy_dataset <- merged_dataset %>%
  select(subject, code, contains("mean"), contains("std"))

run_analysis <- function() {

# Information on data set
# Abstract: Human Activity Recognition database built from the recordings of 30 subjects
# performing activities of daily living (ADL) while carrying a waist-mounted smartphone 
# with embedded inertial sensors.
# Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Download data file
# dataurl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
# destfile <- 'UCI-HAR-Dataset.zip'
# download.file(dataurl, destfile, "curl")

# First, load the two datasets into memory

datasetstrain <- c(	'body_acc_x_train.txt',
					'body_acc_y_train.txt',
					'body_acc_z_train.txt',
					'body_gyro_x_train.txt',
					'body_gyro_y_train.txt',
					'body_gyro_z_train.txt',
					'total_acc_x_train.txt',
					'total_acc_y_train.txt',
					'total_acc_z_train.txt'
					)

datasetstest <- c(	'body_acc_x_test.txt',
					'body_acc_y_test.txt',
					'body_acc_z_test.txt',
					'body_gyro_x_test.txt',
					'body_gyro_y_test.txt',
					'body_gyro_z_test.txt',
					'total_acc_x_test.txt',
					'total_acc_y_test.txt',
					'total_acc_z_test.txt'
					)

datasetsize <- length(datasetstest)
folder <- 'UCI HAR Dataset/'


body_acc_x_train <- read.csv('UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt')
body_acc_x_test <- read.csv('UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt')

body_acc_x_full <- merge(body_acc_x_test, body_acc_x_train)

names(body_acc_x_full)

}
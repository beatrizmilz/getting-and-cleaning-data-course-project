# Codebook

## Dataset
- Description of the data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

- Dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Transformation of the original dataset

The transformation process was already detailed in the README.md file. 

## Variables in the tidy dataset - `dataset_tidy.txt`

`subject` - This is the numeric ID that denotes the subject (person) whose activity was measured. Values are from 1 to 30.

`activity` - The type of activity. Values are WALKING,WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING

`features`  - All measurement features come from either the accelerometer (measured in g's [9.80665 m/seg2]) or the gyroscope (measured in rad/sec) measurements normalized to [-1,1] and averaged for all data in a single subject for each activity type.

```
columns <- colnames(tidy_data_average)[-c(1, 2)]
cat(paste0('`', columns, "`"), sep = '\n\n')
```

`time_domain_gravity_accelerometer_mean_x`

`time_domain_gravity_accelerometer_mean_y`

`time_domain_gravity_accelerometer_mean_z`

`time_domain_body_accelerometer_jerk_mean_x`

`time_domain_body_accelerometer_jerk_mean_y`

`time_domain_body_accelerometer_jerk_mean_z`

`time_domain_body_gyroscope_mean_x`

`time_domain_body_gyroscope_mean_y`

`time_domain_body_gyroscope_mean_z`

`time_domain_body_gyroscope_jerk_mean_x`

`time_domain_body_gyroscope_jerk_mean_y`

`time_domain_body_gyroscope_jerk_mean_z`

`time_domain_body_accelerometer_magnitude_mean`

`time_domain_gravity_accelerometer_magnitude_mean`

`time_domain_body_accelerometer_jerk_magnitude_mean`

`time_domain_body_gyroscope_magnitude_mean`

`time_domain_body_gyroscope_jerk_magnitude_mean`

`frequency_domain_body_accelerometer_mean_x`

`frequency_domain_body_accelerometer_mean_y`

`frequency_domain_body_accelerometer_mean_z`

`frequency_domain_body_accelerometer_mean_freq_x`

`frequency_domain_body_accelerometer_mean_freq_y`

`frequency_domain_body_accelerometer_mean_freq_z`

`frequency_domain_body_accelerometer_jerk_mean_x`

`frequency_domain_body_accelerometer_jerk_mean_y`

`frequency_domain_body_accelerometer_jerk_mean_z`

`frequency_domain_body_accelerometer_jerk_mean_freq_x`

`frequency_domain_body_accelerometer_jerk_mean_freq_y`

`frequency_domain_body_accelerometer_jerk_mean_freq_z`

`frequency_domain_body_gyroscope_mean_x`

`frequency_domain_body_gyroscope_mean_y`

`frequency_domain_body_gyroscope_mean_z`

`frequency_domain_body_gyroscope_mean_freq_x`

`frequency_domain_body_gyroscope_mean_freq_y`

`frequency_domain_body_gyroscope_mean_freq_z`

`frequency_domain_body_accelerometer_magnitude_mean`

`frequency_domain_body_accelerometer_magnitude_mean_freq`

`frequency_domain_body_body_accelerometer_jerk_magnitude_mean`

`frequency_domain_body_body_accelerometer_jerk_magnitude_mean_freq`

`frequency_domain_body_body_gyroscope_magnitude_mean`

`frequency_domain_body_body_gyroscope_magnitude_mean_freq`

`frequency_domain_body_body_gyroscope_jerk_magnitude_mean`

`frequency_domain_body_body_gyroscope_jerk_magnitude_mean_freq`

`angle_t_body_accelerometer_mean_gravity`

`angle_t_body_accelerometer_jerk_mean_gravity_mean`

`angle_t_body_gyroscope_mean_gravity_mean`

`angle_t_body_gyroscope_jerk_mean_gravity_mean`

`angle_x_gravity_mean`

`angle_y_gravity_mean`

`angle_z_gravity_mean`

`time_domain_body_accelerometer_std_x`

`time_domain_body_accelerometer_std_y`

`time_domain_body_accelerometer_std_z`

`time_domain_gravity_accelerometer_std_x`

`time_domain_gravity_accelerometer_std_y`

`time_domain_gravity_accelerometer_std_z`

`time_domain_body_accelerometer_jerk_std_x`

`time_domain_body_accelerometer_jerk_std_y`

`time_domain_body_accelerometer_jerk_std_z`

`time_domain_body_gyroscope_std_x`

`time_domain_body_gyroscope_std_y`

`time_domain_body_gyroscope_std_z`

`time_domain_body_gyroscope_jerk_std_x`

`time_domain_body_gyroscope_jerk_std_y`

`time_domain_body_gyroscope_jerk_std_z`

`time_domain_body_accelerometer_magnitude_std`

`time_domain_gravity_accelerometer_magnitude_std`

`time_domain_body_accelerometer_jerk_magnitude_std`

`time_domain_body_gyroscope_magnitude_std`

`time_domain_body_gyroscope_jerk_magnitude_std`

`frequency_domain_body_accelerometer_std_x`

`frequency_domain_body_accelerometer_std_y`

`frequency_domain_body_accelerometer_std_z`

`frequency_domain_body_accelerometer_jerk_std_x`

`frequency_domain_body_accelerometer_jerk_std_y`

`frequency_domain_body_accelerometer_jerk_std_z`

`frequency_domain_body_gyroscope_std_x`

`frequency_domain_body_gyroscope_std_y`

`frequency_domain_body_gyroscope_std_z`

`frequency_domain_body_accelerometer_magnitude_std`

`frequency_domain_body_body_accelerometer_jerk_magnitude_std`

`frequency_domain_body_body_gyroscope_magnitude_std`

`frequency_domain_body_body_gyroscope_jerk_magnitude_std`

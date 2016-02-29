CodeBook
=========
The features selected for this database can be found in this site
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data taked for this project are in this url
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original data consist in :
563 var and 10229 observation for activities
561 var and 2947 obs for test
561 var and 7352 obs for train

  Features include 81 columns and they are:
  
[1] "Subject"                                                               
 [2] "Activity"                                                              
 [3] "TimeDomain.BodyAcceleration.Mean.X"                                    
 [4] "TimeDomain.BodyAcceleration.Mean.Y"                                    
 [5] "TimeDomain.BodyAcceleration.Mean.Z"                                    
 [6] "TimeDomain.BodyAcceleration.StandardDeviation.X"                       
 [7] "TimeDomain.BodyAcceleration.StandardDeviation.Y"                       
 [8] "TimeDomain.BodyAcceleration.StandardDeviation.Z"                       
 [9] "TimeDomain.GravityAcceleration.Mean.X"                                 
[10] "TimeDomain.GravityAcceleration.Mean.Y"                                 
[11] "TimeDomain.GravityAcceleration.Mean.Z"                                 
[12] "TimeDomain.GravityAcceleration.StandardDeviation.X"                    
[13] "TimeDomain.GravityAcceleration.StandardDeviation.Y"                    
[14] "TimeDomain.GravityAcceleration.StandardDeviation.Z"                    
[15] "TimeDomain.BodyAccelerationJerk.Mean.X"                                
[16] "TimeDomain.BodyAccelerationJerk.Mean.Y"                                
[17] "TimeDomain.BodyAccelerationJerk.Mean.Z"                                
[18] "TimeDomain.BodyAccelerationJerk.StandardDeviation.X"                   
[19] "TimeDomain.BodyAccelerationJerk.StandardDeviation.Y"                   
[20] "TimeDomain.BodyAccelerationJerk.StandardDeviation.Z"                   
[21] "TimeDomain.BodyAngularSpeed.Mean.X"                                    
[22] "TimeDomain.BodyAngularSpeed.Mean.Y"                                    
[23] "TimeDomain.BodyAngularSpeed.Mean.Z"                                    
[24] "TimeDomain.BodyAngularSpeed.StandardDeviation.X"                       
[25] "TimeDomain.BodyAngularSpeed.StandardDeviation.Y"                       
[26] "TimeDomain.BodyAngularSpeed.StandardDeviation.Z"                       
[27] "TimeDomain.BodyAngularAcceleration.Mean.X"                             
[28] "TimeDomain.BodyAngularAcceleration.Mean.Y"                             
[29] "TimeDomain.BodyAngularAcceleration.Mean.Z"                             
[30] "TimeDomain.BodyAngularAcceleration.StandardDeviation.X"                
[31] "TimeDomain.BodyAngularAcceleration.StandardDeviation.Y"                
[32] "TimeDomain.BodyAngularAcceleration.StandardDeviation.Z"                
[33] "TimeDomain.BodyAccelerationMagnitude.Mean"                             
[34] "TimeDomain.BodyAccelerationMagnitude.StandardDeviation"                
[35] "TimeDomain.GravityAccelerationMagnitude.Mean"                          
[36] "TimeDomain.GravityAccelerationMagnitude.StandardDeviation"             
[37] "TimeDomain.BodyAccelerationJerkMagnitude.Mean"                         
[38] "TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation"            
[39] "TimeDomain.BodyAngularSpeedMagnitude.Mean"                             
[40] "TimeDomain.BodyAngularSpeedMagnitude.StandardDeviation"                
[41] "TimeDomain.BodyAngularAccelerationMagnitude.Mean"                      
[42] "TimeDomain.BodyAngularAccelerationMagnitude.StandardDeviation"         
[43] "FrequencyDomain.BodyAcceleration.Mean.X"                               
[44] "FrequencyDomain.BodyAcceleration.Mean.Y"                               
[45] "FrequencyDomain.BodyAcceleration.Mean.Z"                               
[46] "FrequencyDomain.BodyAcceleration.StandardDeviation.X"                  
[47] "FrequencyDomain.BodyAcceleration.StandardDeviation.Y"                  
[48] "FrequencyDomain.BodyAcceleration.StandardDeviation.Z"                  
[49] "FrequencyDomain.BodyAcceleration.MeanFrequency.X"                      
[50] "FrequencyDomain.BodyAcceleration.MeanFrequency.Y"                      
[51] "FrequencyDomain.BodyAcceleration.MeanFrequency.Z"                      
[52] "FrequencyDomain.BodyAccelerationJerk.Mean.X"                           
[53] "FrequencyDomain.BodyAccelerationJerk.Mean.Y"                           
[54] "FrequencyDomain.BodyAccelerationJerk.Mean.Z"                           
[55] "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X"              
[56] "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y"              
[57] "FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z"              
[58] "FrequencyDomain.BodyAccelerationJerk.MeanFrequency.X"                  
[59] "FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Y"                  
[60] "FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Z"                  
[61] "FrequencyDomain.BodyAngularSpeed.Mean.X"                               
[62] "FrequencyDomain.BodyAngularSpeed.Mean.Y"                               
[63] "FrequencyDomain.BodyAngularSpeed.Mean.Z"                               
[64] "FrequencyDomain.BodyAngularSpeed.StandardDeviation.X"                  
[65] "FrequencyDomain.BodyAngularSpeed.StandardDeviation.Y"                  
[66] "FrequencyDomain.BodyAngularSpeed.StandardDeviation.Z"                  
[67] "FrequencyDomain.BodyAngularSpeed.MeanFrequency.X"                      
[68] "FrequencyDomain.BodyAngularSpeed.MeanFrequency.Y"                      
[69] "FrequencyDomain.BodyAngularSpeed.MeanFrequency.Z"                      
[70] "FrequencyDomain.BodyAccelerationMagnitude.Mean"                        
[71] "FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation"           
[72] "FrequencyDomain.BodyAccelerationMagnitude.MeanFrequency"               
[73] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean"                
[74] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation"   
[75] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.MeanFrequency"       
[76] "FrequencyDomain.BodyBodyAngularSpeedMagnitude.Mean"                    
[77] "FrequencyDomain.BodyBodyAngularSpeedMagnitude.StandardDeviation"       
[78] "FrequencyDomain.BodyBodyAngularSpeedMagnitude.MeanFrequency"           
[79] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.Mean"             
[80] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.StandardDeviation"
[81] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.MeanFrequency" 
  


Instructions
============
* Is possible view the feature instruction in the file features._info.txt in "UCI HAR Dataset" document.

In the next lines show a preview of the functions or data used for generate original data:

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Steps followed for generate tiny data:
1.- download information from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2.- join data for train ,test, subject information taked from txt files
3.- take data for standart desviation, mean 
4.- clean data for change and clear names 
5.- put names descriptive in place of number for activities
6.- extract average of each activitie
7.- generate final file with data



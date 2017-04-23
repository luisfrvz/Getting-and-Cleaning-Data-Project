# CodeBook

## Data source

    Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The data

The dataset includes the following files:

    - 'README.txt'

    - 'features_info.txt': Shows information about the variables used on the feature vector.

    - 'features.txt': List of all features. 
   ***It's recommended to read features.txt for full understanding of the dataset***

    - 'activity_labels.txt': Links the class labels with their activity name.

    - 'train/X_train.txt': Training set.

    - 'train/y_train.txt': Training labels.

    - 'test/X_test.txt': Test set.

    - 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

    - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

    - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

    - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

    - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Execution details

There are 5 steps:

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive activity names.
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## New dataset

A new tidy dataset is generated for step 5. There will be a file called Tidy.txt with separator ";". 

### Variables

These are variables present at Tidy.txt. Step 2 is considered independent from steps 3 and 4, so all original variables are present but renamed

[1] "Subject"                                                          "NameOfActivity"                                                  
  [3] "TimeBodyAccelerometerMean()-X"                                    "TimeBodyAccelerometerMean()-Y"                                   
  [5] "TimeBodyAccelerometerMean()-Z"                                    "TimeBodyAccelerometerStandardDeviation()-X"                      
  [7] "TimeBodyAccelerometerStandardDeviation()-Y"                       "TimeBodyAccelerometerStandardDeviation()-Z"                      
  [9] "TimeBodyAccelerometerMedianAbsoluteDeviation()-X"                 "TimeBodyAccelerometerMedianAbsoluteDeviation()-Y"                
 [11] "TimeBodyAccelerometerMedianAbsoluteDeviation()-Z"                 "TimeBodyAccelerometer-max()-X"                                   
 [13] "TimeBodyAccelerometer-max()-Y"                                    "TimeBodyAccelerometer-max()-Z"                                   
 [15] "TimeBodyAccelerometer-min()-X"                                    "TimeBodyAccelerometer-min()-Y"                                   
 [17] "TimeBodyAccelerometer-min()-Z"                                    "TimeBodyAccelerometerSignalMagnitudeArea()"                      
 [19] "TimeBodyAccelerometer-energy()-X"                                 "TimeBodyAccelerometer-energy()-Y"                                
 [21] "TimeBodyAccelerometer-energy()-Z"                                 "TimeBodyAccelerometerInterquartileRange()-X"                     
 [23] "TimeBodyAccelerometerInterquartileRange()-Y"                      "TimeBodyAccelerometerInterquartileRange()-Z"                     
 [25] "TimeBodyAccelerometer-entropy()-X"                                "TimeBodyAccelerometer-entropy()-Y"                               
 [27] "TimeBodyAccelerometer-entropy()-Z"                                "TimeBodyAccelerometerAutorregresionCoefficients()-X,1"           
 [29] "TimeBodyAccelerometerAutorregresionCoefficients()-X,2"            "TimeBodyAccelerometerAutorregresionCoefficients()-X,3"           
 [31] "TimeBodyAccelerometerAutorregresionCoefficients()-X,4"            "TimeBodyAccelerometerAutorregresionCoefficients()-Y,1"           
 [33] "TimeBodyAccelerometerAutorregresionCoefficients()-Y,2"            "TimeBodyAccelerometerAutorregresionCoefficients()-Y,3"           
 [35] "TimeBodyAccelerometerAutorregresionCoefficients()-Y,4"            "TimeBodyAccelerometerAutorregresionCoefficients()-Z,1"           
 [37] "TimeBodyAccelerometerAutorregresionCoefficients()-Z,2"            "TimeBodyAccelerometerAutorregresionCoefficients()-Z,3"           
 [39] "TimeBodyAccelerometerAutorregresionCoefficients()-Z,4"            "TimeBodyAccelerometer-correlation()-X,Y"                         
 [41] "TimeBodyAccelerometer-correlation()-X,Z"                          "TimeBodyAccelerometer-correlation()-Y,Z"                         
 [43] "TimeGravityAccelerometerMean()-X"                                 "TimeGravityAccelerometerMean()-Y"                                
 [45] "TimeGravityAccelerometerMean()-Z"                                 "TimeGravityAccelerometerStandardDeviation()-X"                   
 [47] "TimeGravityAccelerometerStandardDeviation()-Y"                    "TimeGravityAccelerometerStandardDeviation()-Z"                   
 [49] "TimeGravityAccelerometerMedianAbsoluteDeviation()-X"              "TimeGravityAccelerometerMedianAbsoluteDeviation()-Y"             
 [51] "TimeGravityAccelerometerMedianAbsoluteDeviation()-Z"              "TimeGravityAccelerometer-max()-X"                                
 [53] "TimeGravityAccelerometer-max()-Y"                                 "TimeGravityAccelerometer-max()-Z"                                
 [55] "TimeGravityAccelerometer-min()-X"                                 "TimeGravityAccelerometer-min()-Y"                                
 [57] "TimeGravityAccelerometer-min()-Z"                                 "TimeGravityAccelerometerSignalMagnitudeArea()"                   
 [59] "TimeGravityAccelerometer-energy()-X"                              "TimeGravityAccelerometer-energy()-Y"                             
 [61] "TimeGravityAccelerometer-energy()-Z"                              "TimeGravityAccelerometerInterquartileRange()-X"                  
 [63] "TimeGravityAccelerometerInterquartileRange()-Y"                   "TimeGravityAccelerometerInterquartileRange()-Z"                  
 [65] "TimeGravityAccelerometer-entropy()-X"                             "TimeGravityAccelerometer-entropy()-Y"                            
 [67] "TimeGravityAccelerometer-entropy()-Z"                             "TimeGravityAccelerometerAutorregresionCoefficients()-X,1"        
 [69] "TimeGravityAccelerometerAutorregresionCoefficients()-X,2"         "TimeGravityAccelerometerAutorregresionCoefficients()-X,3"        
 [71] "TimeGravityAccelerometerAutorregresionCoefficients()-X,4"         "TimeGravityAccelerometerAutorregresionCoefficients()-Y,1"        
 [73] "TimeGravityAccelerometerAutorregresionCoefficients()-Y,2"         "TimeGravityAccelerometerAutorregresionCoefficients()-Y,3"        
 [75] "TimeGravityAccelerometerAutorregresionCoefficients()-Y,4"         "TimeGravityAccelerometerAutorregresionCoefficients()-Z,1"        
 [77] "TimeGravityAccelerometerAutorregresionCoefficients()-Z,2"         "TimeGravityAccelerometerAutorregresionCoefficients()-Z,3"        
 [79] "TimeGravityAccelerometerAutorregresionCoefficients()-Z,4"         "TimeGravityAccelerometer-correlation()-X,Y"                      
 [81] "TimeGravityAccelerometer-correlation()-X,Z"                       "TimeGravityAccelerometer-correlation()-Y,Z"                      
 [83] "TimeBodyAccelerometerJerkMean()-X"                                "TimeBodyAccelerometerJerkMean()-Y"                               
 [85] "TimeBodyAccelerometerJerkMean()-Z"                                "TimeBodyAccelerometerJerkStandardDeviation()-X"                  
 [87] "TimeBodyAccelerometerJerkStandardDeviation()-Y"                   "TimeBodyAccelerometerJerkStandardDeviation()-Z"                  
 [89] "TimeBodyAccelerometerJerkMedianAbsoluteDeviation()-X"             "TimeBodyAccelerometerJerkMedianAbsoluteDeviation()-Y"            
 [91] "TimeBodyAccelerometerJerkMedianAbsoluteDeviation()-Z"             "TimeBodyAccelerometerJerk-max()-X"                               
 [93] "TimeBodyAccelerometerJerk-max()-Y"                                "TimeBodyAccelerometerJerk-max()-Z"                               
 [95] "TimeBodyAccelerometerJerk-min()-X"                                "TimeBodyAccelerometerJerk-min()-Y"                               
 [97] "TimeBodyAccelerometerJerk-min()-Z"                                "TimeBodyAccelerometerJerkSignalMagnitudeArea()"                  
 [99] "TimeBodyAccelerometerJerk-energy()-X"                             "TimeBodyAccelerometerJerk-energy()-Y"                            
[101] "TimeBodyAccelerometerJerk-energy()-Z"                             "TimeBodyAccelerometerJerkInterquartileRange()-X"                 
[103] "TimeBodyAccelerometerJerkInterquartileRange()-Y"                  "TimeBodyAccelerometerJerkInterquartileRange()-Z"                 
[105] "TimeBodyAccelerometerJerk-entropy()-X"                            "TimeBodyAccelerometerJerk-entropy()-Y"                           
[107] "TimeBodyAccelerometerJerk-entropy()-Z"                            "TimeBodyAccelerometerJerkAutorregresionCoefficients()-X,1"       
[109] "TimeBodyAccelerometerJerkAutorregresionCoefficients()-X,2"        "TimeBodyAccelerometerJerkAutorregresionCoefficients()-X,3"       
[111] "TimeBodyAccelerometerJerkAutorregresionCoefficients()-X,4"        "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Y,1"       
[113] "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Y,2"        "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Y,3"       
[115] "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Y,4"        "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Z,1"       
[117] "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Z,2"        "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Z,3"       
[119] "TimeBodyAccelerometerJerkAutorregresionCoefficients()-Z,4"        "TimeBodyAccelerometerJerk-correlation()-X,Y"                     
[121] "TimeBodyAccelerometerJerk-correlation()-X,Z"                      "TimeBodyAccelerometerJerk-correlation()-Y,Z"                     
[123] "TimeBodyGyroscopeMean()-X"                                        "TimeBodyGyroscopeMean()-Y"                                       
[125] "TimeBodyGyroscopeMean()-Z"                                        "TimeBodyGyroscopeStandardDeviation()-X"                          
[127] "TimeBodyGyroscopeStandardDeviation()-Y"                           "TimeBodyGyroscopeStandardDeviation()-Z"                          
[129] "TimeBodyGyroscopeMedianAbsoluteDeviation()-X"                     "TimeBodyGyroscopeMedianAbsoluteDeviation()-Y"                    
[131] "TimeBodyGyroscopeMedianAbsoluteDeviation()-Z"                     "TimeBodyGyroscope-max()-X"                                       
[133] "TimeBodyGyroscope-max()-Y"                                        "TimeBodyGyroscope-max()-Z"                                       
[135] "TimeBodyGyroscope-min()-X"                                        "TimeBodyGyroscope-min()-Y"                                       
[137] "TimeBodyGyroscope-min()-Z"                                        "TimeBodyGyroscopeSignalMagnitudeArea()"                          
[139] "TimeBodyGyroscope-energy()-X"                                     "TimeBodyGyroscope-energy()-Y"                                    
[141] "TimeBodyGyroscope-energy()-Z"                                     "TimeBodyGyroscopeInterquartileRange()-X"                         
[143] "TimeBodyGyroscopeInterquartileRange()-Y"                          "TimeBodyGyroscopeInterquartileRange()-Z"                         
[145] "TimeBodyGyroscope-entropy()-X"                                    "TimeBodyGyroscope-entropy()-Y"                                   
[147] "TimeBodyGyroscope-entropy()-Z"                                    "TimeBodyGyroscopeAutorregresionCoefficients()-X,1"               
[149] "TimeBodyGyroscopeAutorregresionCoefficients()-X,2"                "TimeBodyGyroscopeAutorregresionCoefficients()-X,3"               
[151] "TimeBodyGyroscopeAutorregresionCoefficients()-X,4"                "TimeBodyGyroscopeAutorregresionCoefficients()-Y,1"               
[153] "TimeBodyGyroscopeAutorregresionCoefficients()-Y,2"                "TimeBodyGyroscopeAutorregresionCoefficients()-Y,3"               
[155] "TimeBodyGyroscopeAutorregresionCoefficients()-Y,4"                "TimeBodyGyroscopeAutorregresionCoefficients()-Z,1"               
[157] "TimeBodyGyroscopeAutorregresionCoefficients()-Z,2"                "TimeBodyGyroscopeAutorregresionCoefficients()-Z,3"               
[159] "TimeBodyGyroscopeAutorregresionCoefficients()-Z,4"                "TimeBodyGyroscope-correlation()-X,Y"                             
[161] "TimeBodyGyroscope-correlation()-X,Z"                              "TimeBodyGyroscope-correlation()-Y,Z"                             
[163] "TimeBodyGyroscopeJerkMean()-X"                                    "TimeBodyGyroscopeJerkMean()-Y"                                   
[165] "TimeBodyGyroscopeJerkMean()-Z"                                    "TimeBodyGyroscopeJerkStandardDeviation()-X"                      
[167] "TimeBodyGyroscopeJerkStandardDeviation()-Y"                       "TimeBodyGyroscopeJerkStandardDeviation()-Z"                      
[169] "TimeBodyGyroscopeJerkMedianAbsoluteDeviation()-X"                 "TimeBodyGyroscopeJerkMedianAbsoluteDeviation()-Y"                
[171] "TimeBodyGyroscopeJerkMedianAbsoluteDeviation()-Z"                 "TimeBodyGyroscopeJerk-max()-X"                                   
[173] "TimeBodyGyroscopeJerk-max()-Y"                                    "TimeBodyGyroscopeJerk-max()-Z"                                   
[175] "TimeBodyGyroscopeJerk-min()-X"                                    "TimeBodyGyroscopeJerk-min()-Y"                                   
[177] "TimeBodyGyroscopeJerk-min()-Z"                                    "TimeBodyGyroscopeJerkSignalMagnitudeArea()"                      
[179] "TimeBodyGyroscopeJerk-energy()-X"                                 "TimeBodyGyroscopeJerk-energy()-Y"                                
[181] "TimeBodyGyroscopeJerk-energy()-Z"                                 "TimeBodyGyroscopeJerkInterquartileRange()-X"                     
[183] "TimeBodyGyroscopeJerkInterquartileRange()-Y"                      "TimeBodyGyroscopeJerkInterquartileRange()-Z"                     
[185] "TimeBodyGyroscopeJerk-entropy()-X"                                "TimeBodyGyroscopeJerk-entropy()-Y"                               
[187] "TimeBodyGyroscopeJerk-entropy()-Z"                                "TimeBodyGyroscopeJerkAutorregresionCoefficients()-X,1"           
[189] "TimeBodyGyroscopeJerkAutorregresionCoefficients()-X,2"            "TimeBodyGyroscopeJerkAutorregresionCoefficients()-X,3"           
[191] "TimeBodyGyroscopeJerkAutorregresionCoefficients()-X,4"            "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Y,1"           
[193] "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Y,2"            "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Y,3"           
[195] "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Y,4"            "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Z,1"           
[197] "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Z,2"            "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Z,3"           
[199] "TimeBodyGyroscopeJerkAutorregresionCoefficients()-Z,4"            "TimeBodyGyroscopeJerk-correlation()-X,Y"                         
[201] "TimeBodyGyroscopeJerk-correlation()-X,Z"                          "TimeBodyGyroscopeJerk-correlation()-Y,Z"                         
[203] "TimeBodyAccelerometerMagnitudeMean()"                             "TimeBodyAccelerometerMagnitudeStandardDeviation()"               
[205] "TimeBodyAccelerometerMagnitudeMedianAbsoluteDeviation()"          "TimeBodyAccelerometerMagnitude-max()"                            
[207] "TimeBodyAccelerometerMagnitude-min()"                             "TimeBodyAccelerometerMagnitudeSignalMagnitudeArea()"             
[209] "TimeBodyAccelerometerMagnitude-energy()"                          "TimeBodyAccelerometerMagnitudeInterquartileRange()"              
[211] "TimeBodyAccelerometerMagnitude-entropy()"                         "TimeBodyAccelerometerMagnitudeAutorregresionCoefficients()1"     
[213] "TimeBodyAccelerometerMagnitudeAutorregresionCoefficients()2"      "TimeBodyAccelerometerMagnitudeAutorregresionCoefficients()3"     
[215] "TimeBodyAccelerometerMagnitudeAutorregresionCoefficients()4"      "TimeGravityAccelerometerMagnitudeMean()"                         
[217] "TimeGravityAccelerometerMagnitudeStandardDeviation()"             "TimeGravityAccelerometerMagnitudeMedianAbsoluteDeviation()"      
[219] "TimeGravityAccelerometerMagnitude-max()"                          "TimeGravityAccelerometerMagnitude-min()"                         
[221] "TimeGravityAccelerometerMagnitudeSignalMagnitudeArea()"           "TimeGravityAccelerometerMagnitude-energy()"                      
[223] "TimeGravityAccelerometerMagnitudeInterquartileRange()"            "TimeGravityAccelerometerMagnitude-entropy()"                     
[225] "TimeGravityAccelerometerMagnitudeAutorregresionCoefficients()1"   "TimeGravityAccelerometerMagnitudeAutorregresionCoefficients()2"  
[227] "TimeGravityAccelerometerMagnitudeAutorregresionCoefficients()3"   "TimeGravityAccelerometerMagnitudeAutorregresionCoefficients()4"  
[229] "TimeBodyAccelerometerJerkMagnitudeMean()"                         "TimeBodyAccelerometerJerkMagnitudeStandardDeviation()"           
[231] "TimeBodyAccelerometerJerkMagnitudeMedianAbsoluteDeviation()"      "TimeBodyAccelerometerJerkMagnitude-max()"                        
[233] "TimeBodyAccelerometerJerkMagnitude-min()"                         "TimeBodyAccelerometerJerkMagnitudeSignalMagnitudeArea()"         
[235] "TimeBodyAccelerometerJerkMagnitude-energy()"                      "TimeBodyAccelerometerJerkMagnitudeInterquartileRange()"          
[237] "TimeBodyAccelerometerJerkMagnitude-entropy()"                     "TimeBodyAccelerometerJerkMagnitudeAutorregresionCoefficients()1" 
[239] "TimeBodyAccelerometerJerkMagnitudeAutorregresionCoefficients()2"  "TimeBodyAccelerometerJerkMagnitudeAutorregresionCoefficients()3" 
[241] "TimeBodyAccelerometerJerkMagnitudeAutorregresionCoefficients()4"  "TimeBodyGyroscopeMagnitudeMean()"                                
[243] "TimeBodyGyroscopeMagnitudeStandardDeviation()"                    "TimeBodyGyroscopeMagnitudeMedianAbsoluteDeviation()"             
[245] "TimeBodyGyroscopeMagnitude-max()"                                 "TimeBodyGyroscopeMagnitude-min()"                                
[247] "TimeBodyGyroscopeMagnitudeSignalMagnitudeArea()"                  "TimeBodyGyroscopeMagnitude-energy()"                             
[249] "TimeBodyGyroscopeMagnitudeInterquartileRange()"                   "TimeBodyGyroscopeMagnitude-entropy()"                            
[251] "TimeBodyGyroscopeMagnitudeAutorregresionCoefficients()1"          "TimeBodyGyroscopeMagnitudeAutorregresionCoefficients()2"         
[253] "TimeBodyGyroscopeMagnitudeAutorregresionCoefficients()3"          "TimeBodyGyroscopeMagnitudeAutorregresionCoefficients()4"         
[255] "TimeBodyGyroscopeJerkMagnitudeMean()"                             "TimeBodyGyroscopeJerkMagnitudeStandardDeviation()"               
[257] "TimeBodyGyroscopeJerkMagnitudeMedianAbsoluteDeviation()"          "TimeBodyGyroscopeJerkMagnitude-max()"                            
[259] "TimeBodyGyroscopeJerkMagnitude-min()"                             "TimeBodyGyroscopeJerkMagnitudeSignalMagnitudeArea()"             
[261] "TimeBodyGyroscopeJerkMagnitude-energy()"                          "TimeBodyGyroscopeJerkMagnitudeInterquartileRange()"              
[263] "TimeBodyGyroscopeJerkMagnitude-entropy()"                         "TimeBodyGyroscopeJerkMagnitudeAutorregresionCoefficients()1"     
[265] "TimeBodyGyroscopeJerkMagnitudeAutorregresionCoefficients()2"      "TimeBodyGyroscopeJerkMagnitudeAutorregresionCoefficients()3"     
[267] "TimeBodyGyroscopeJerkMagnitudeAutorregresionCoefficients()4"      "FrequencyBodyAccelerometerMean()-X"                              
[269] "FrequencyBodyAccelerometerMean()-Y"                               "FrequencyBodyAccelerometerMean()-Z"                              
[271] "FrequencyBodyAccelerometerStandardDeviation()-X"                  "FrequencyBodyAccelerometerStandardDeviation()-Y"                 
[273] "FrequencyBodyAccelerometerStandardDeviation()-Z"                  "FrequencyBodyAccelerometerMedianAbsoluteDeviation()-X"           
[275] "FrequencyBodyAccelerometerMedianAbsoluteDeviation()-Y"            "FrequencyBodyAccelerometerMedianAbsoluteDeviation()-Z"           
[277] "FrequencyBodyAccelerometer-max()-X"                               "FrequencyBodyAccelerometer-max()-Y"                              
[279] "FrequencyBodyAccelerometer-max()-Z"                               "FrequencyBodyAccelerometer-min()-X"                              
[281] "FrequencyBodyAccelerometer-min()-Y"                               "FrequencyBodyAccelerometer-min()-Z"                              
[283] "FrequencyBodyAccelerometerSignalMagnitudeArea()"                  "FrequencyBodyAccelerometer-energy()-X"                           
[285] "FrequencyBodyAccelerometer-energy()-Y"                            "FrequencyBodyAccelerometer-energy()-Z"                           
[287] "FrequencyBodyAccelerometerInterquartileRange()-X"                 "FrequencyBodyAccelerometerInterquartileRange()-Y"                
[289] "FrequencyBodyAccelerometerInterquartileRange()-Z"                 "FrequencyBodyAccelerometer-entropy()-X"                          
[291] "FrequencyBodyAccelerometer-entropy()-Y"                           "FrequencyBodyAccelerometer-entropy()-Z"                          
[293] "FrequencyBodyAccelerometer-maxInds-X"                             "FrequencyBodyAccelerometer-maxInds-Y"                            
[295] "FrequencyBodyAccelerometer-maxInds-Z"                             "FrequencyBodyAccelerometerMeanFreq()-X"                          
[297] "FrequencyBodyAccelerometerMeanFreq()-Y"                           "FrequencyBodyAccelerometerMeanFreq()-Z"                          
[299] "FrequencyBodyAccelerometer-skewness()-X"                          "FrequencyBodyAccelerometer-kurtosis()-X"                         
[301] "FrequencyBodyAccelerometer-skewness()-Y"                          "FrequencyBodyAccelerometer-kurtosis()-Y"                         
[303] "FrequencyBodyAccelerometer-skewness()-Z"                          "FrequencyBodyAccelerometer-kurtosis()-Z"                         
[305] "FrequencyBodyAccelerometer-bandsEnergy()-1,8"                     "FrequencyBodyAccelerometer-bandsEnergy()-9,16"                   
[307] "FrequencyBodyAccelerometer-bandsEnergy()-17,24"                   "FrequencyBodyAccelerometer-bandsEnergy()-25,32"                  
[309] "FrequencyBodyAccelerometer-bandsEnergy()-33,40"                   "FrequencyBodyAccelerometer-bandsEnergy()-41,48"                  
[311] "FrequencyBodyAccelerometer-bandsEnergy()-49,56"                   "FrequencyBodyAccelerometer-bandsEnergy()-57,64"                  
[313] "FrequencyBodyAccelerometer-bandsEnergy()-1,16"                    "FrequencyBodyAccelerometer-bandsEnergy()-17,32"                  
[315] "FrequencyBodyAccelerometer-bandsEnergy()-33,48"                   "FrequencyBodyAccelerometer-bandsEnergy()-49,64"                  
[317] "FrequencyBodyAccelerometer-bandsEnergy()-1,24"                    "FrequencyBodyAccelerometer-bandsEnergy()-25,48"                  
[319] "FrequencyBodyAccelerometerJerkMean()-X"                           "FrequencyBodyAccelerometerJerkMean()-Y"                          
[321] "FrequencyBodyAccelerometerJerkMean()-Z"                           "FrequencyBodyAccelerometerJerkStandardDeviation()-X"             
[323] "FrequencyBodyAccelerometerJerkStandardDeviation()-Y"              "FrequencyBodyAccelerometerJerkStandardDeviation()-Z"             
[325] "FrequencyBodyAccelerometerJerkMedianAbsoluteDeviation()-X"        "FrequencyBodyAccelerometerJerkMedianAbsoluteDeviation()-Y"       
[327] "FrequencyBodyAccelerometerJerkMedianAbsoluteDeviation()-Z"        "FrequencyBodyAccelerometerJerk-max()-X"                          
[329] "FrequencyBodyAccelerometerJerk-max()-Y"                           "FrequencyBodyAccelerometerJerk-max()-Z"                          
[331] "FrequencyBodyAccelerometerJerk-min()-X"                           "FrequencyBodyAccelerometerJerk-min()-Y"                          
[333] "FrequencyBodyAccelerometerJerk-min()-Z"                           "FrequencyBodyAccelerometerJerkSignalMagnitudeArea()"             
[335] "FrequencyBodyAccelerometerJerk-energy()-X"                        "FrequencyBodyAccelerometerJerk-energy()-Y"                       
[337] "FrequencyBodyAccelerometerJerk-energy()-Z"                        "FrequencyBodyAccelerometerJerkInterquartileRange()-X"            
[339] "FrequencyBodyAccelerometerJerkInterquartileRange()-Y"             "FrequencyBodyAccelerometerJerkInterquartileRange()-Z"            
[341] "FrequencyBodyAccelerometerJerk-entropy()-X"                       "FrequencyBodyAccelerometerJerk-entropy()-Y"                      
[343] "FrequencyBodyAccelerometerJerk-entropy()-Z"                       "FrequencyBodyAccelerometerJerk-maxInds-X"                        
[345] "FrequencyBodyAccelerometerJerk-maxInds-Y"                         "FrequencyBodyAccelerometerJerk-maxInds-Z"                        
[347] "FrequencyBodyAccelerometerJerkMeanFreq()-X"                       "FrequencyBodyAccelerometerJerkMeanFreq()-Y"                      
[349] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"                       "FrequencyBodyAccelerometerJerk-skewness()-X"                     
[351] "FrequencyBodyAccelerometerJerk-kurtosis()-X"                      "FrequencyBodyAccelerometerJerk-skewness()-Y"                     
[353] "FrequencyBodyAccelerometerJerk-kurtosis()-Y"                      "FrequencyBodyAccelerometerJerk-skewness()-Z"                     
[355] "FrequencyBodyAccelerometerJerk-kurtosis()-Z"                      "FrequencyBodyAccelerometerJerk-bandsEnergy()-1,8"                
[357] "FrequencyBodyAccelerometerJerk-bandsEnergy()-9,16"                "FrequencyBodyAccelerometerJerk-bandsEnergy()-17,24"              
[359] "FrequencyBodyAccelerometerJerk-bandsEnergy()-25,32"               "FrequencyBodyAccelerometerJerk-bandsEnergy()-33,40"              
[361] "FrequencyBodyAccelerometerJerk-bandsEnergy()-41,48"               "FrequencyBodyAccelerometerJerk-bandsEnergy()-49,56"              
[363] "FrequencyBodyAccelerometerJerk-bandsEnergy()-57,64"               "FrequencyBodyAccelerometerJerk-bandsEnergy()-1,16"               
[365] "FrequencyBodyAccelerometerJerk-bandsEnergy()-17,32"               "FrequencyBodyAccelerometerJerk-bandsEnergy()-33,48"              
[367] "FrequencyBodyAccelerometerJerk-bandsEnergy()-49,64"               "FrequencyBodyAccelerometerJerk-bandsEnergy()-1,24"               
[369] "FrequencyBodyAccelerometerJerk-bandsEnergy()-25,48"               "FrequencyBodyGyroscopeMean()-X"                                  
[371] "FrequencyBodyGyroscopeMean()-Y"                                   "FrequencyBodyGyroscopeMean()-Z"                                  
[373] "FrequencyBodyGyroscopeStandardDeviation()-X"                      "FrequencyBodyGyroscopeStandardDeviation()-Y"                     
[375] "FrequencyBodyGyroscopeStandardDeviation()-Z"                      "FrequencyBodyGyroscopeMedianAbsoluteDeviation()-X"               
[377] "FrequencyBodyGyroscopeMedianAbsoluteDeviation()-Y"                "FrequencyBodyGyroscopeMedianAbsoluteDeviation()-Z"               
[379] "FrequencyBodyGyroscope-max()-X"                                   "FrequencyBodyGyroscope-max()-Y"                                  
[381] "FrequencyBodyGyroscope-max()-Z"                                   "FrequencyBodyGyroscope-min()-X"                                  
[383] "FrequencyBodyGyroscope-min()-Y"                                   "FrequencyBodyGyroscope-min()-Z"                                  
[385] "FrequencyBodyGyroscopeSignalMagnitudeArea()"                      "FrequencyBodyGyroscope-energy()-X"                               
[387] "FrequencyBodyGyroscope-energy()-Y"                                "FrequencyBodyGyroscope-energy()-Z"                               
[389] "FrequencyBodyGyroscopeInterquartileRange()-X"                     "FrequencyBodyGyroscopeInterquartileRange()-Y"                    
[391] "FrequencyBodyGyroscopeInterquartileRange()-Z"                     "FrequencyBodyGyroscope-entropy()-X"                              
[393] "FrequencyBodyGyroscope-entropy()-Y"                               "FrequencyBodyGyroscope-entropy()-Z"                              
[395] "FrequencyBodyGyroscope-maxInds-X"                                 "FrequencyBodyGyroscope-maxInds-Y"                                
[397] "FrequencyBodyGyroscope-maxInds-Z"                                 "FrequencyBodyGyroscopeMeanFreq()-X"                              
[399] "FrequencyBodyGyroscopeMeanFreq()-Y"                               "FrequencyBodyGyroscopeMeanFreq()-Z"                              
[401] "FrequencyBodyGyroscope-skewness()-X"                              "FrequencyBodyGyroscope-kurtosis()-X"                             
[403] "FrequencyBodyGyroscope-skewness()-Y"                              "FrequencyBodyGyroscope-kurtosis()-Y"                             
[405] "FrequencyBodyGyroscope-skewness()-Z"                              "FrequencyBodyGyroscope-kurtosis()-Z"                             
[407] "FrequencyBodyGyroscope-bandsEnergy()-1,8"                         "FrequencyBodyGyroscope-bandsEnergy()-9,16"                       
[409] "FrequencyBodyGyroscope-bandsEnergy()-17,24"                       "FrequencyBodyGyroscope-bandsEnergy()-25,32"                      
[411] "FrequencyBodyGyroscope-bandsEnergy()-33,40"                       "FrequencyBodyGyroscope-bandsEnergy()-41,48"                      
[413] "FrequencyBodyGyroscope-bandsEnergy()-49,56"                       "FrequencyBodyGyroscope-bandsEnergy()-57,64"                      
[415] "FrequencyBodyGyroscope-bandsEnergy()-1,16"                        "FrequencyBodyGyroscope-bandsEnergy()-17,32"                      
[417] "FrequencyBodyGyroscope-bandsEnergy()-33,48"                       "FrequencyBodyGyroscope-bandsEnergy()-49,64"                      
[419] "FrequencyBodyGyroscope-bandsEnergy()-1,24"                        "FrequencyBodyGyroscope-bandsEnergy()-25,48"                      
[421] "FrequencyBodyAccelerometerMagnitudeMean()"                        "FrequencyBodyAccelerometerMagnitudeStandardDeviation()"          
[423] "FrequencyBodyAccelerometerMagnitudeMedianAbsoluteDeviation()"     "FrequencyBodyAccelerometerMagnitude-max()"                       
[425] "FrequencyBodyAccelerometerMagnitude-min()"                        "FrequencyBodyAccelerometerMagnitudeSignalMagnitudeArea()"        
[427] "FrequencyBodyAccelerometerMagnitude-energy()"                     "FrequencyBodyAccelerometerMagnitudeInterquartileRange()"         
[429] "FrequencyBodyAccelerometerMagnitude-entropy()"                    "FrequencyBodyAccelerometerMagnitude-maxInds"                     
[431] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"                    "FrequencyBodyAccelerometerMagnitude-skewness()"                  
[433] "FrequencyBodyAccelerometerMagnitude-kurtosis()"                   "FrequencyBodyAccelerometerJerkMagnitudeMean()"                   
[435] "FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation()"       "FrequencyBodyAccelerometerJerkMagnitudeMedianAbsoluteDeviation()"
[437] "FrequencyBodyAccelerometerJerkMagnitude-max()"                    "FrequencyBodyAccelerometerJerkMagnitude-min()"                   
[439] "FrequencyBodyAccelerometerJerkMagnitudeSignalMagnitudeArea()"     "FrequencyBodyAccelerometerJerkMagnitude-energy()"                
[441] "FrequencyBodyAccelerometerJerkMagnitudeInterquartileRange()"      "FrequencyBodyAccelerometerJerkMagnitude-entropy()"               
[443] "FrequencyBodyAccelerometerJerkMagnitude-maxInds"                  "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"               
[445] "FrequencyBodyAccelerometerJerkMagnitude-skewness()"               "FrequencyBodyAccelerometerJerkMagnitude-kurtosis()"              
[447] "FrequencyBodyGyroscopeMagnitudeMean()"                            "FrequencyBodyGyroscopeMagnitudeStandardDeviation()"              
[449] "FrequencyBodyGyroscopeMagnitudeMedianAbsoluteDeviation()"         "FrequencyBodyGyroscopeMagnitude-max()"                           
[451] "FrequencyBodyGyroscopeMagnitude-min()"                            "FrequencyBodyGyroscopeMagnitudeSignalMagnitudeArea()"            
[453] "FrequencyBodyGyroscopeMagnitude-energy()"                         "FrequencyBodyGyroscopeMagnitudeInterquartileRange()"             
[455] "FrequencyBodyGyroscopeMagnitude-entropy()"                        "FrequencyBodyGyroscopeMagnitude-maxInds"                         
[457] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"                        "FrequencyBodyGyroscopeMagnitude-skewness()"                      
[459] "FrequencyBodyGyroscopeMagnitude-kurtosis()"                       "FrequencyBodyGyroscopeJerkMagnitudeMean()"                       
[461] "FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation()"           "FrequencyBodyGyroscopeJerkMagnitudeMedianAbsoluteDeviation()"    
[463] "FrequencyBodyGyroscopeJerkMagnitude-max()"                        "FrequencyBodyGyroscopeJerkMagnitude-min()"                       
[465] "FrequencyBodyGyroscopeJerkMagnitudeSignalMagnitudeArea()"         "FrequencyBodyGyroscopeJerkMagnitude-energy()"                    
[467] "FrequencyBodyGyroscopeJerkMagnitudeInterquartileRange()"          "FrequencyBodyGyroscopeJerkMagnitude-entropy()"                   
[469] "FrequencyBodyGyroscopeJerkMagnitude-maxInds"                      "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"                   
[471] "FrequencyBodyGyroscopeJerkMagnitude-skewness()"                   "FrequencyBodyGyroscopeJerkMagnitude-kurtosis()"                  
[473] "Angle(TimeBodyAccelerometerMean,Gravity)"                         "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"               
[475] "Angle(TimeBodyGyroscopeMean,GravityMean)"                         "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"                    
[477] "Angle(X,GravityMean)"                                             "Angle(Y,GravityMean)"                                            
[479] "Angle(Z,GravityMean)"   

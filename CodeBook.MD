# Codebook for tidydata.txt
## John Q. Murray
### johnqmurray@gmail.com

This dataset averages by subject and activity the mean-related and std-related data elements from the Human Activity Recognition Using Smartphones Data Set, available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  The codebook references the original names of the data elements as shown in that dataset's "features.txt" file. 

Column number, Column Name, Description


 1. "subject"                                            
	Experimental subject number. Integer from 1..30

 2. "activity"
	Activity performed by the experimental subject. Character string in set { LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS}     

 3. "TimeBodyAccelerometer-mean-X"                       
	Average of all tBodyAcc-mean()-X measurements for this {subject, activity pair}

 4. "TimeBodyAccelerometer-mean-Y"                       
	Average of all tBodyAcc-mean()-Y measurements for this {subject, activity pair}

 5. "TimeBodyAccelerometer-mean-Z"                       
	Average of all tBodyAcc-mean()-Z measurements for this {subject, activity pair}

 6. "TimeGravityAccelerometer-mean-X"                    
	Average of all tGravityAcc-mean()-X measurements for this {subject, activity pair}

 7. "TimeGravityAccelerometer-mean-Y"                    
	Average of all tGravityAcc-mean()-Y measurements for this {subject, activity pair}

 8. "TimeGravityAccelerometer-mean-Z"                    
	Average of all tGravityAcc-mean()-Z measurements for this {subject, activity pair}

 9. "TimeBodyAccelerometerJerk-mean-X"                   
	Average of all tBodyAccJerk-mean()-X measurements for this {subject, activity pair}

10. "TimeBodyAccelerometerJerk-mean-Y"                   
	Average of all tBodyAccJerk-mean()-Y measurements for this {subject, activity pair}

11. "TimeBodyAccelerometerJerk-mean-Z"                   
	Average of all tBodyAccJerk-mean()-Z measurements for this {subject, activity pair}

12. "TimeBodyGyroscope-mean-X"                           
	Average of all tBodyGyro-mean()-X measurements for this {subject, activity pair}

13. "TimeBodyGyroscope-mean-Y"                           
	Average of all tBodyGyro-mean()-Y measurements for this {subject, activity pair}

14. "TimeBodyGyroscope-mean-Z"        
	Average of all tBodyGyro-mean()-Z measurements for this {subject, activity pair}
                   
15. "TimeBodyGyroscopeJerk-mean-X"                       
	Average of all tBodyGyroJerk-mean()-X measurements for this {subject, activity pair}

16. "TimeBodyGyroscopeJerk-mean-Y"                       
	Average of all tBodyGyroJerk-mean()-Y measurements for this {subject, activity pair}

17. "TimeBodyGyroscopeJerk-mean-Z"                       
	Average of all tBodyGyroJerk-mean()-Z measurements for this {subject, activity pair}

18. "TimeBodyAccelerometerMagnitude-mean"                      
	Average of all tBodyAccMag-mean() measurements for this {subject, activity pair}

19. "TimeGravityAccelerometerMagnitude-mean"                   
	Average of all tGravityAccMag-mean() measurements for this {subject, activity pair}

20. "TimeBodyAccelerometerJerkMagnitude-mean"                  
	Average of all tBodyAccJerkMag-mean() measurements for this {subject, activity pair}

21. "TimeBodyGyroscopeMagnitude-mean"                          
	Average of all tBodyGyroMag-mean() measurements for this {subject, activity pair}

22. "TimeBodyGyroscopeJerkMagnitude-mean"                      
	Average of all tBodyGyroJerkMag-mean() measurements for this {subject, activity pair}

23. "FrequencyBodyAccelerometer-mean-X"                        
	Average of all fBodyAcc-mean()-X measurements for this {subject, activity pair}

24. "FrequencyBodyAccelerometer-mean-Y"                        
	Average of all fBodyAcc-mean()-Y measurements for this {subject, activity pair}

25. "FrequencyBodyAccelerometer-mean-Z"                        
	Average of all fBodyAcc-mean()-Z measurements for this {subject, activity pair}

26. "FrequencyBodyAccelerometer-meanFrequency-X"               
	Average of all fBodyAcc-meanFreq()-X measurements for this {subject, activity pair}

27. "FrequencyBodyAccelerometer-meanFrequency-Y"               
	Average of all fBodyAcc-meanFreq()-Y measurements for this {subject, activity pair}

28. "FrequencyBodyAccelerometer-meanFrequency-Z"               
	Average of all fBodyAcc-meanFreq()-Z measurements for this {subject, activity pair}

29. "FrequencyBodyAccelerometerJerk-mean-X"                    
	Average of all fBodyAccJerk-mean()-X measurements for this {subject, activity pair}

30. "FrequencyBodyAccelerometerJerk-mean-Y"                    
	Average of all fBodyAccJerk-mean()-Y measurements for this {subject, activity pair}

31. "FrequencyBodyAccelerometerJerk-mean-Z"                    
	Average of all fBodyAccJerk-mean()-Z measurements for this {subject, activity pair}

32. "FrequencyBodyAccelerometerJerk-meanFrequency-X"           
	Average of all fBodyAccJerk-meanFreq()-X measurements for this {subject, activity pair}

33. "FrequencyBodyAccelerometerJerk-meanFrequency-Y"           
	Average of all fBodyAccJerk-meanFreq()-Y measurements for this {subject, activity pair}

34. "FrequencyBodyAccelerometerJerk-meanFrequency-Z"           
	Average of all fBodyAccJerk-meanFreq()-Z measurements for this {subject, activity pair}

35. "FrequencyBodyGyroscope-mean-X"          
	Average of all fBodyGyro-mean()-X measurements for this {subject, activity pair}
                  
36. "FrequencyBodyGyroscope-mean-Y"                            
	Average of all fBodyGyro-mean()-Y measurements for this {subject, activity pair}

37. "FrequencyBodyGyroscope-mean-Z"                            
	Average of all fBodyGyro-mean()-Z measurements for this {subject, activity pair}

38. "FrequencyBodyGyroscope-meanFrequency-X"                   
	Average of all fBodyGyro-meanFreq()-X measurements for this {subject, activity pair}

39. "FrequencyBodyGyroscope-meanFrequency-Y"                   
	Average of all fBodyGyro-meanFreq()-Y measurements for this {subject, activity pair}

40. "FrequencyBodyGyroscope-meanFrequency-Z"                   
	Average of all fBodyGyro-meanFreq()-Z measurements for this {subject, activity pair}

41. "FrequencyBodyAccelerometerMagnitude-mean"                 
	Average of all fBodyAccMag-mean() measurements for this {subject, activity pair}

42. "FrequencyBodyAccelerometerMagnitude-meanFrequency"        
	Average of all fBodyAccMag-meanFreq() measurements for this {subject, activity pair}

43. "FrequencyBodyAccelerometerJerkMagnitude-mean"             
	Average of all fBodyAccJerkMag-mean() measurements for this {subject, activity pair}

44. "FrequencyBodyAccelerometerJerkMagnitude-meanFrequency"    
	Average of all fBodyAccJerkMag-mean() measurements for this {subject, activity pair}

45. "FrequencyBodyGyroscopeMagnitude-mean"                     
	Average of all fBodyGyroMag-mean() measurements for this {subject, activity pair}

46. "FrequencyBodyGyroscopeMagnitude-meanFrequency"            
	Average of all fBodyGyroMag-meanFreq() measurements for this {subject, activity pair}

47. "FrequencyBodyGyroscopeJerkMagnitude-mean"                 
	Average of all fBodyGyroJerkMag-mean() measurements for this {subject, activity pair}

48. "FrequencyBodyGyroscopeJerkMagnitude-meanFrequency"        
	Average of all fBodyGyroJerkMag-meanFreq() measurements for this {subject, activity pair}

49. "angle.TimeBodyAccelerometerMean,gravity)"                 
	Average of all angle(tBodyAccMean,gravity) measurements for this {subject, activity pair}

50. "angle.TimeBodyAccelerometerJerkMean),gravityMean)"        
	Average of all angle(tBodyAccJerkMean),gravityMean) measurements for this {subject, activity pair}

51. "angle.TimeBodyGyroscopeMean,gravityMean)"           
	Average of all angle(tBodyGyroMean,gravityMean) measurements for this {subject, activity pair}

52. "angle.TimeBodyGyroscopeJerkMean,gravityMean)"             
	Average of all angle(tBodyGyroJerkMean,gravityMean) measurements for this {subject, activity pair}

53. "angle(X,gravityMean)"                                     
	Average of all angle(X,gravityMean) measurements for this {subject, activity pair}

54. "angle(Y,gravityMean)"                                     
	Average of all angle(Y,gravityMean) measurements for this {subject, activity pair}

55. "angle(Z,gravityMean)" 
	Average of all angle(Z,gravityMean) measurements for this {subject, activity pair}
                                    
56. "TimeBodyAccelerometer-StandardDeviation-X"                
	Average of all tBodyAcc-std()-X measurements for this {subject, activity pair}

57. "TimeBodyAccelerometer-StandardDeviation-Y"                
	Average of all tBodyAcc-std()-Y measurements for this {subject, activity pair}

58. "TimeBodyAccelerometer-StandardDeviation-Z"                
	Average of all tBodyAcc-std()-Z measurements for this {subject, activity pair}

59. "TimeGravityAccelerometer-StandardDeviation-X"             
	Average of all tGravityAcc-std()-X measurements for this {subject, activity pair}

60. "TimeGravityAccelerometer-StandardDeviation-Y"             
	Average of all tGravityAcc-std()-Y measurements for this {subject, activity pair}

61. "TimeGravityAccelerometer-StandardDeviation-Z"             
	Average of all tGravityAcc-std()-Z measurements for this {subject, activity pair}

62. "TimeBodyAccelerometerJerk-StandardDeviation-X"            
	Average of all tBodyAccJerk-std()-X measurements for this {subject, activity pair}

63. "TimeBodyAccelerometerJerk-StandardDeviation-Y"            
	Average of all tBodyAccJerk-std()-Y measurements for this {subject, activity pair}

64. "TimeBodyAccelerometerJerk-StandardDeviation-Z"            
	Average of all tBodyAccJerk-std()-Z measurements for this {subject, activity pair}

65. "TimeBodyGyroscope-StandardDeviation-X"                    
	Average of all tBodyGyro-std()-X measurements for this {subject, activity pair}

66. "TimeBodyGyroscope-StandardDeviation-Y"                    
	Average of all tBodyGyro-std()-Y measurements for this {subject, activity pair}

67. "TimeBodyGyroscope-StandardDeviation-Z"                    
	Average of all tBodyGyro-std()-Z measurements for this {subject, activity pair}

68. "TimeBodyGyroscopeJerk-StandardDeviation-X"                
	Average of all tBodyGyroJerk-std()-X measurements for this {subject, activity pair}

69. "TimeBodyGyroscopeJerk-StandardDeviation-Y"                
	Average of all tBodyGyroJerk-std()-Y measurements for this {subject, activity pair}

70. "TimeBodyGyroscopeJerk-StandardDeviation-Z"                
	Average of all tBodyGyroJerk-std()-Z measurements for this {subject, activity pair}

71. "TimeBodyAccelerometerMagnitude-StandardDeviation"         
	Average of all tBodyAccMag-std() measurements for this {subject, activity pair}

72. "TimeGravityAccelerometerMagnitude-StandardDeviation"      
	Average of all tGravityAccMag-std() measurements for this {subject, activity pair}

73. "TimeBodyAccelerometerJerkMagnitude-StandardDeviation"     
	Average of all tBodyAccJerkMag-std() measurements for this {subject, activity pair}

74. "TimeBodyGyroscopeMagnitude-StandardDeviation"             
	Average of all tBodyGyroMag-std() measurements for this {subject, activity pair}

75. "TimeBodyGyroscopeJerkMagnitude-StandardDeviation"         
	Average of all tBodyGyroJerkMag-std() measurements for this {subject, activity pair}

76. "FrequencyBodyAccelerometer-StandardDeviation-X"           
	Average of all fBodyAcc-std()-X measurements for this {subject, activity pair}

77. "FrequencyBodyAccelerometer-StandardDeviation-Y"           
	Average of all fBodyAcc-std()-Y measurements for this {subject, activity pair}

78. "FrequencyBodyAccelerometer-StandardDeviation-Z"           
	Average of all fBodyAcc-std()-Z measurements for this {subject, activity pair}

79. "FrequencyBodyAccelerometerJerk-StandardDeviation-X"       
	Average of all fBodyAccJerk-std()-X measurements for this {subject, activity pair}

80. "FrequencyBodyAccelerometerJerk-StandardDeviation-Y"       
	Average of all fBodyAccJerk-std()-Y measurements for this {subject, activity pair}

81. "FrequencyBodyAccelerometerJerk-StandardDeviation-Z"       
	Average of all fBodyAccJerk-std()-Z measurements for this {subject, activity pair}

82. "FrequencyBodyGyroscope-StandardDeviation-X"               
	Average of all fBodyGyro-std()-X measurements for this {subject, activity pair}

83. "FrequencyBodyGyroscope-StandardDeviation-Y"               
	Average of all fBodyGyro-std()-Y measurements for this {subject, activity pair}

84. "FrequencyBodyGyroscope-StandardDeviation-Z"               
	Average of all fBodyGyro-std()-Z measurements for this {subject, activity pair}

85. "FrequencyBodyAccelerometerMagnitude-StandardDeviation"    
	Average of all fBodyAccMag-std() measurements for this {subject, activity pair}

86. "FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation"
	Average of all fBodyAccJerkMag-std() measurements for this {subject, activity pair}

87. "FrequencyBodyGyroscopeMagnitude-StandardDeviation"        
	Average of all fBodyGyroMag-std() measurements for this {subject, activity pair}

88. "FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation"
	Average of all fBodyGyroJerkMag-std() measurements for this {subject, activity pair}



Auto = read.csv("Auto.csv", header = T, na.strings = "?") # Creates object "Auto" and replaces missing data with NA
fix(Auto) #Display data set in spreadsheet type format
Auto = na.omit(Auto) #Clean the data set of the missing data by removing rows 
dim(Auto) #Display data set dimensions 
summary(Auto) #Summary report of the data set 
attach(Auto) #Now data set field names can be used without data frame prefix
range(cylinders) #Display min and max of the field name
range(displacement)
range(horsepower)
range(weight)
range(acceleration)
sapply(Auto[, 1:7], mean) #Display the mean for each field in the subset 
sapply(Auto[, 1:7], sd) #Display the standard deviation for each field in the subset 
hist(cylinders) #Display a histogram graph   
hist(displacement)
hist(weight)
par(mfrow = c(2, 2)) #Display four graphs in one window
Auto[which.min(mpg),] #Find the min value of a column and returns the row 
Auto[which.max(mpg),] #Find the max value of a column  and returns the row
FourCylinder = rep("No", nrow(Auto)) #Replicates data with default value "No" for all rows in data set
FourCylinder[cylinders == 4] = "Yes" #Set "No" values to "Yes" if conditions are met
FourCylinder = as.factor(FourCylinder) #Changes quantitative variable to qualitative variable 
summary(FourCylinder) #Display results of number of "Yes" or "No" 
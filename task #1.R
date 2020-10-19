## DATA IMPORT ##
data<-read.csv(file.choose(),header = T)
data
attach(data)

## TO CHECK THE DIMENSION OF THE GIVEN DATA ##
str(data)
names(data)
length(Scores)
length(Hours)

## FIT SIMPLE LINEAR REGRESSION TO GIVEN DATA ##
## SCORES IS DEPENDENT VARIABLE AND HOURS IS INDEPENDENT VARIABLE ##
model<-lm(Scores~Hours)
model

## SUMMARY OF THE MODEL ##
summary(model)

### GRAPHICAL REPRESENTATION OF GIVEN OBSERVATIONS TO CHECK MODEL FIT ###
plot(Hours,Scores,main = "scatter plot" , pch=15,col="black")
abline(lm(Scores~Hours),col="black")

### WE ALREADY FIND MODEL PARAMETERS . NOW THE MODEL IS AS FOLLOWS ##
## THE LINEAR EQUATION IS ##

#  y=2.484+(9.776*X)

# Intercept(b0) = 2.484

# Regression coefficient(b1) = 9.776

### From the model we can predict value of y variable ###

## we are given value of houres(x) = 9.25 ##

y=2.484+(9.776*9.25)
y


### INTERPRETATION ###

## 1.Sactter plot of Houres vs Score is staraight line.
#    so there is linear relationship between two variable.

## 2.The p-value is 2.2e-16 which shows that the model is significantg.
#    When the p-value is less than 0.05 then model is significant.

## 3.adj.R-square=0.9509, which shose model can explain 95.09 % of variability.
#    Maximum the Adjusted R-square better is the model.

## 4.F-statistic=465.8

## 5.Multiple R-square=0.9529

## 6.Score (y) = 92.912


#### CONCLUSION : THE SCORE AT STUDYING 9.25 HOURS IS 92.912 #### 



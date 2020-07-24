#Parte02 Basic Inferential Data Analysis Instructions

#Analize the ToothGrowth data 

#1.Load the ToothGrowth data and perform some basic exploratory data analyses

library(tidyverse)
data("ToothGrowth")
str(ToothGrowth)
dim(ToothGrowth)
head(ToothGrowth)
tail(ToothGrowth)

#2.Provide a basic summary of the data.

names(ToothGrowth)
summary(ToothGrowth)
plot(ToothGrowth)

#Change dose to factor

ToothGrowth$dose<-as.factor(ToothGrowth$dose)

#Generate a boxplot 

ToothGrowth %>% ggplot(aes(dose,len, color = dose)) + geom_point() + geom_boxplot() + facet_grid(~supp) + xlab("Dosage") + ylab("Length") + ggtitle("Box Plot Comparation")



#3. Use confidence intervals and/or hypothesis tests to compare tooth growth by supp and dose. (Only use the techniques from class, even if there's other approaches worth considering)

t.test(len~supp, data = ToothGrowth)

#P-value is 0.06063

#P-value > 0.05 the supplement dont have impact in the growth of tooth.

#Compare tooth growth of dose.

dose01 <- c(0.5, 2)
tooth_comp <- subset(ToothGrowth,ToothGrowth$dose %in% dose01)
t.test(len~dose, data = tooth_comp)


#The p-vaue es 0 and the confidence interval no cross 0.

#The null hypotesis be rejected.


#4.State your conclusions and the assumptions needed for your conclusions.

#The sample follow the CLT
#The sample is representative

#The administration of supplement is not effect in tooth growth.

#Ingreased dosages do resul int ingreased legth of tooth.






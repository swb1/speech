library(rpart)

age.train <- read.csv('gender.train', header = FALSE)
age.test <- read.csv('gender.test', header = FALSE)

#gbm0<-gbm(age$V1~., data=age.train, train.fraction=1, interaction.depth=4, shrinkage=.05, n.trees=2500, bag.fraction=0.5, cv.folds=5, distribution="multinomial", verbose=T)
fit<-rpart(V1~., data=age.train, method="anova", control = rpart.control(cp = 0.0001))
printcp(fit)

rpart.predict<-predict(fit, age.test)

num = length(rpart.predict)
print(paste('error rate:', sum(!(age.test$V1 == round(rpart.predict)))/num))

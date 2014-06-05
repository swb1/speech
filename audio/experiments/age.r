library('gbm')

age.train <- read.csv('age.train', header = FALSE)
age.test <- read.csv('age.test', header = FALSE)

# gaussian - bad, laplace - ok; 
#gbm0<-gbm(age$V1~., data=age.train, train.fraction=1, interaction.depth=4, shrinkage=.05, n.trees=2500, bag.fraction=0.5, cv.folds=5, distribution="multinomial", verbose=T)
gbm0<-gbm(V1~., data=age.train, train.fraction=1, interaction.depth=4, shrinkage=.1, n.trees=2500, bag.fraction=0.5, cv.folds=5, distribution="laplace", verbose=T)

gbm0.predict<-predict(gbm0, age.test, type="response", n.trees=300)

num = length(gbm0.predict)
print(paste('accuracy:', 1 - sum(!(age.test$V1 == round(gbm0.predict)))/num))

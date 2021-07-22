# 2. MVP 예측해보기

library(rpart)
library(caret)
library(e1071)
library(randomForest)
library(dplyr)
library(ggplot2)
library(rpart.plot)

getwd()
setwd('c:/workspace/R')
stat <- read.csv('data/Seasons_Stats_Last.csv')
mvp <- read.csv('data/MVP.csv')

stat <- stat %>% filter(Year>=2000)
stat_raw <- na.omit(stat)
stat1 <- stat_raw %>% select(G,MP, PT, FG.,X3P.,FT., MVP) 
stat_not_mvp <- stat1 %>% filter(MVP==0)


mvp1 <- mvp %>% filter(Year >=1980 & Year <=2010)
mvp1 <- mvp1 %>% select(G,MP, PT, FG.,X3P.,FT., MVP)
mvp2 <- mvp %>% filter(Year >=2011)
mvp2 <- mvp2 %>% select(G,MP, PT, FG.,X3P.,FT., MVP)



mvp1 <- as.data.frame(mvp1)
mvp2 <- as.data.frame(mvp2)

stat1$MVP <- as.factor(stat1$MVP)
mvp1$MVP <- as.factor(mvp1$MVP)
mvp2$MVP <- as.factor(mvp2$MVP)

a <- stat_not_mvp[sample(nrow(stat_not_mvp), 310), ]
b <- mvp1[sample(nrow(mvp1), 31), ]
c <- stat_not_mvp[sample(nrow(stat_not_mvp), 100), ]
d <- mvp2[sample(nrow(mvp2), 10), ]

train_1 <- rbind(a, b)
test_1 <- rbind(c, d)

train_1$PT <- as.numeric(train_1$PT)
train_1$MVP <- as.factor(train_1$MVP)
test_1$MVP <- as.factor(test_1$MVP)
str(train_1)

# DT
dtc <- rpart(MVP ~ ., train_1)
dtc_pred <- predict(dtc, test_1, type='class')
table(dtc_pred, test_1$MVP)
confusionMatrix(dtc_pred, test_1$MVP)

plot(dtc)
text(dtc, use.n=T)
rpart.plot(dtc, type=4)

# RF
rf <- randomForest(MVP ~ ., train_1)
rf_pred <- predict(rf, test_1, type='class')
table(rf_pred, test_1$MVP)
confusionMatrix(rf_pred, test_1$MVP)

# SVM
sv <- svm(MVP ~ ., train_1)
sv_pred <- predict(sv, test_1, type='class')
table(sv_pred, test_1$MVP)
confusionMatrix(sv_pred, test_1$MVP)

# GLM
m <- glm(MVP ~ ., train_1, family = 'binomial')
summary(m)
coef(m)

# 후진제거법으로 의미없는 변수 없애기
step(m, direction='backward')

## 2021년 예측
CS <- read.csv('data/2021Player.csv')
cs <- CS %>% select(G,MP, PT, FG.,X3P.,FT., MVP)
cs <- na.omit(cs)
cs$MVP <- as.factor(cs$MVP)

pred_cs <- predict(dtc, cs, type='class')
table(pred_cs, cs$MVP)
confusionMatrix(pred_cs, cs$MVP)
pred_cs <- as.data.frame(pred_cs)


target = rf_pred[rf_pred == 1] %>% names()
test_1 %>% filter(rownames(test_1) %in% target) %>% select(Player)

#importing works
words1 <- read.csv("C:\\Users\\Stvma\\Documents\\GitHub\\Best-Seller_Predictor\\words 1.csv",header=F)
words2 <- read.csv("C:\\Users\\Stvma\\Documents\\GitHub\\Best-Seller_Predictor\\words 2.csv",header=F)
words3 <- read.csv("C:\\Users\\Stvma\\Documents\\GitHub\\Best-Seller_Predictor\\words 3.csv",header=F)
words4 <- read.csv("C:\\Users\\Stvma\\Documents\\GitHub\\Best-Seller_Predictor\\words 4.csv",header=F)

words <- rbind(words1,words2,words3,words4) 
colnames(words) <- c("rank","word","usebillion")

plot(as.numeric(words$rank),as.numeric(words$usebillion),main="rank vs usage",ylab="usage per billion",xlab="rank",type="l")
plot(words$rank,words$usebillion,main="log rank vs usage",ylab="usage per billion",xlab="rank",log="y",type="l")

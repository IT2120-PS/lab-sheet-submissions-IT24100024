setwd("C:\\Users\\IT24100024\\Desktop\\IT24100024")
getwd()

##Import the dataset (’Exercise – Lab 05.txt’) into R and store it in a data frame called ”Delivery Times”.
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep=",")
fix(Delivery_Times)

##Draw a histogram for deliver times using nine class intervals where the lower limitis 20 and upper limit is 70. Use right open intervals.
histogram <- hist(Delivery_Times$Delivery_Time_.minutes, 
     breaks = seq(20, 70, by = 5), right = TRUE, 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Frequency", 
     col = "lightblue", 
     border = "black").


new<-c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i] =0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new, type = "o", 
     main = "Frequency polygon(ogive) of Delivery Times",col="green",
     xlab = "Delivery Time(minutes)",
     ylab = "Cummulative Frequency",
     ylim = c(0,max(cum.freq)))

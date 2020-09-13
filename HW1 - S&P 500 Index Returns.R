#Assignment: HW1 - S&P500 Index Returns 
#Name: Isabela Vieira
#Group: Akimawe Kadiri, Christopher Tinevra, Mostafa Ragheb
#Date: 09/13/2020

#Downloaded S&P 500 Index (GSPC) pricing data
library(readr)
SP500.Index <- read_csv("GSPC.csv")

#To get the daily average price (average between open/adj close price):
#I decided to use this instead of just the adj. close price because the closing price doesn't reflect the daily price fluctuations, but I'm not sure if this is the correct way of thinking. 

SP500.Index$MeanReturn <- rowMeans(SP500.Index[,c('Open', 'Adj Close')], na.rm=TRUE)

#Use Delt to get the percent change in daily mean return: 
install.packages('quantmod')
library(quantmod)

attach(SP500.Index)
PercentReturn <- MeanReturn
Delt(MeanReturn, type = 'log')

#Output:

#Delt.1.log
#[1,]            NA
#[2,]  0.0317318703
#[3,] -0.0009787991
#[4,] -0.0052363863
#[5,]  0.0033801768
#[6,] -0.0041364491
#[7,]  0.0092467752
#[8,] -0.0169304214
#[9,] -0.0055908434
#[10,] -0.0078788001
#[11,] -0.0017146381
#[12,]  0.0128716966
#[13,]  0.0115242923
#[14,]  0.0083022629
#[15,]  0.0097330869
#[16,] -0.0036768324
#[17,]  0.0017808006
#[18,]  0.0008236294
#[19,]  0.0014669570
#[20,]  0.0035896054
#[21,] -0.0034128769
#[22,]  0.0178111810
#[23,] -0.0044437506
#[24,]  0.0038856599
#[25,]  0.0042073623
#[26,]  0.0076434970
#[27,]  0.0007750899
#[28,] -0.0036171226
#[29,] -0.0112955324
#[30,]  0.0038841507
#[31,] -0.0010130204
#[32,]  0.0050933808
#[33,] -0.0011848419
#[34,]  0.0097684778
#[35,]  0.0062936300
#[36,]  0.0020577451
#[37,]  0.0073571977
#[38,]  0.0040833184
#[39,]  0.0028435708
#[40,]  0.0037560057
#[41,] -0.0018598334
#[42,]  0.0047292362
#[43,]  0.0015679687
#[44,] -0.0007221105
#[45,]  0.0031604763
#[46,]  0.0020635622
#[47,] -0.0013969043
#[48,] -0.0031628183
#[49,]  0.0054962800
#[50,]  0.0097121615
#[51,]  0.0043994656
#[52,]  0.0071160385
#[53,]  0.0058985408
#[54,]  0.0047250428
#[55,]  0.0010476308
#[56,]  0.0034248939
#[57,]  0.0127852913
#[58,] -0.0148188634
#[59,] -0.0200346820
#[60,] -0.0260374607
#[61,]  0.0096582763
#[62,] -0.0025191376
#[63,] -0.0086394385

#Q: What is the mean return on days when the previous day’s return was positive?

#A: The data alternates. For example, the return on 06/17 [3] is negative, while the day before the return was positive. On the other hand, between the days 6/30 [12] and 7/08 [17] the average return followed a positive streak. 

#Q:Now read about “hot hands fallacy” and tell if you think that helps investment strategy.

#A: From what I understood of the papers, the hot hands fallacy was mistankenly considered a fallacy because it assumed that every basketball player had the same probability of sucess as a coin (1/2). However, contemporary statisticians showed that assigning the same probability of 1/2 to all players was a bias that when accounted for demonstrated that some players do demonstrate a "hot hand".
#I think that a lot of discernment must be used to determine whether a variable is entirely random or not. Misjudgements in this area might might cause people to see patterns where outcomes are truly random (a common human bias) or to dismiss signs of correlation between events. 
#In the case of the stock market, I think that price movements are deeply affected by investor behavior, while investor behavior is influeced by price movements. Seeing streaks of positive returns might induce investors to buy stocks which creates a succession of positive returns since stocks prices are affected by the demand for the stock (# of buyers int the market). The same is valid for declining prices. 
#I think that for the stock market, some stocks might actually have a "momentum", however, to base investment decisions in the observation of price movements only and decide to buy when the stock is on a streak of positive returns is to replicate herd behavior, which is not a really sophisticated investment strategy in my opinion. 








}
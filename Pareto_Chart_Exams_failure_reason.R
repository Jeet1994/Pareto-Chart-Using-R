#to create a pareto chart we need a vector containing counts of causes for a certain outcome.
#I will work on : "Top three reasons for NOT doing well in exams"
#As per me, the most common reasons would be : #1. Lack of preparations.
                                               #2. Distractions (Music, Movies etc.)
                                               #3. "I don't give a shit" attitude.
                                               #4. Family problems.
                                               #5. Others
# (These are just meant for the demonstration of PARETO CHART. No serious deal intended)

failure_reasons.counts <- c(40, 10, 10, 20, 20) #Note that the sum of all the reason-counts is 100. 
                                                #It is necessary, as a pareto chart is based on percentages
names(failure_reasons.counts) <- c("No Preparation", "Distracted", "I don't give a shit", "Family Problems", "Others")
df.failure_reasons <- data.frame(failure_reasons.counts)
library(qcc)
pareto.chart(failure_reasons.counts)
pareto.chart(df.failure_reasons$failure_reasons.counts)
pareto.chart(failure_reasons.counts,main="Pareto Chart",xlab="Reasons",
             ylab="Frequency", cex.names=0.6,las=1,col=topo.colors(6))
abline(h=(sum(failure_reasons.counts)*.8),col="red",lwd=1) 
#Line at 80%








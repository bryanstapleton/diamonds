# 9am every Friday
#0 9 * * 5
# On the first and 15th of every month
#1 2 1,15 * *
# Every 30 minutes on the weekend
#*/30 * * * 6,7
# Every 3 days at 10:23am
#23 10 */3 * *
#Every hour during the work week
#0 * * * 1,2,3,4,5

#use_git()
#use_github()
usethis::use_package("ggplot2")
library(ggplot2)
data <- data(diamonds)
plt <- ggplot2::ggplot(mapping = aes(x=price, color= color), data=diamonds) +
  geom_histogram(binwidth=1000) +
  ggtitle(paste0("Hist - ", Sys.time()))


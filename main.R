library(ggplot2)
# read dataset 
data <- read.csv('lasvegas_tripadvisor.csv')
print(data)


# data visualisation 
# display plots for users by country
country_count_vec <- table(data$User.country)

# sorting by largest to lowest
country_count_vec <- sort(country_count_vec, decreasing=TRUE)

# plotting top 5 countries
barplot(country_count_vec[1:5])
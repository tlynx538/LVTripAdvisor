library(ggplot2)
# read dataset 
data <- read.csv('lasvegas_tripadvisor.csv')
print(data)


## Data Visualisation 
# display plots for users by country
country_count_vec <- table(data$User.country)

# sorting by largest to lowest
country_count_vec <- sort(country_count_vec, decreasing=TRUE)

# plotting top 5 countries
barplot(country_count_vec[1:5])


# choose records based on. Traveler Type ("Friends","Business","Families","Solo","Couples")
traveler_type <- unique(data$Traveler.type)

business <- data[data$Traveler.type==traveler_type[2],]

# Sort by largest score to lowest
business <- business[order(business$Hotel.stars,decreasing = TRUE),]


# Top Hotels preferred by businesses
business_hotels <- sort(table(business$Hotel.name), decreasing = TRUE)




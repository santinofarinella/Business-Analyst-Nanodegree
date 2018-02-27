install.packages('ggplot2')
library(ggplot2)

query_sql_1 <- read.csv("C:/Users/Tino/Desktop/SQL_file/category_revenue.csv")
ggplot(query_sql_1, aes(x=reorder(CategoryName,total_revenue), total_revenue)) +
  geom_bar(stat = "identity",colour = "#fff7bc", 
           fill = "#fec44f") + labs(x = 'Category Product', y = 'Revenue') +
  coord_flip() + theme(panel.background = element_rect(fill = "white", colour = "white")) 

query_sql_2 <- read.csv("C:/Users/Tino/Desktop/SQL_file/country_revenue.csv")
ggplot(query_sql_2, aes(x=reorder(ShipCountry,total_revenue), total_revenue)) +
  geom_bar(stat = "identity",colour = "#fff7bc", 
           fill = "#fec44f") +  labs(x = 'Country', y = 'Revenue' ) +
  coord_flip() + theme(panel.background = element_rect(fill = "white", colour = "white")) 

query_sql_3 <- read.csv("C:/Users/Tino/Desktop/SQL_file/max_revenue_product_country.csv")
ggplot(query_sql_3, aes(x=reorder(ShipCountry,max.revenue.), y=max.revenue.,fill = ProductName)) + 
  geom_bar(stat = "identity") +
  coord_flip() + labs(x = 'Country', y = 'Revenue', fill = 'Product Name') +
  theme(panel.background = element_rect(fill = "white", colour = "white")) 

query_sql_4<- read.csv("C:/Users/Tino/Desktop/SQL_file/max_revenue_product_category.csv") 
ggplot(query_sql_4, aes(x=reorder(CategoryName,max.revenue.), y=max.revenue.,fill = ProductName)) + 
  geom_bar(stat = "identity") + labs(x = 'Category Product', y = 'Revenue', fill = 'Product Name') +
  coord_flip() + theme(panel.background = element_rect(fill = "white", colour = "white")) 

query_sql_5 <- read.csv("C:/Users/Tino/Desktop/SQL_file/min_revenue_product_country.csv")
ggplot(query_sql_5, aes(x=reorder(ShipCountry,-min.revenue.), y=min.revenue.,fill = ProductName)) + 
  geom_bar(stat = "identity") + labs(x = 'Country', y = 'Revenue', fill = 'Product Name') +
  coord_flip() + theme(panel.background = element_rect(fill = "white", colour = "white")) 


query_sql_6 <- read.csv("C:/Users/Tino/Desktop/SQL_file/min_revenue_product_category.csv") 
ggplot(query_sql_6, aes(x=reorder(CategoryName,-min.revenue.), y=min.revenue.,fill = ProductName)) + 
  geom_bar(stat = "identity") + labs(x = 'Category Product', y = 'Revenue', fill = 'Product Name') +
  coord_flip() + theme(panel.background = element_rect(fill = "white", colour = "white")) 

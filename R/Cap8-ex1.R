library(ggplot2)

df <- data.frame(
  prod_price = c(
    395, 375, ## 2008
    415, 400, ## 2009
    420, 405, 100,  ## 2010
    390, 380, 180, 160,  ## 2011
    300, 290, 200, 260,  ## 2012 
    265, 255, 235, 220, 100,  ## 2013
    255, 245, 175, 215, 210   ## 2014
  ),
  prod_name = c(
    "Product A", "Product B",
    "Product A", "Product B",
    "Product A", "Product B", "Product C", 
    "Product A", "Product B", "Product C", "Product D", 
    "Product A", "Product B", "Product C", "Product D", 
    "Product A", "Product B", "Product C", "Product D", "Product E", 
    "Product A", "Product B", "Product C", "Product D", "Product E"
  ),
  year = c(
    2008, 2008,
    2009, 2009,
    2010, 2010, 2010, 
    2011, 2011, 2011, 2011,
    2012, 2012, 2012, 2012,
    2013, 2013, 2013, 2013, 2013,
    2014, 2014, 2014, 2014, 2014
  )
)

ggplot(df, aes(x = prod_name, y = prod_price)) +
  geom_col(aes(fill = year), position = "dodge2") +
  theme_minimal() +
  labs(title = "Média de preço dos produtos por ano",
       x = "Produtos", y = "Média de preço")

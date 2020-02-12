# "ggplot2" package
#If using for first time, uncomment this line to install "ggplot2" package
#install.packages("ggplot2")
library(ggplot2)

# "readxl" package to work with Excel files
library(readxl)

# Loading Excel file
Train_dataset = read_excel("C:\\College materials\\Others\\Learning path - R\\Train.xlsx")
View(Train_dataset)

# Scatterplot of Item_Visibility vs Item_MRP
  # Plotting using facet_wrap to seperate plot using "Item_Type" attribute
ggplot(Train_dataset, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) +
  facet_wrap("Item_Type") + scale_size_area() +theme(legend.position = "none")

#Area plot - Trend of Item_Outlet_Sales
ggplot(Train_dataset, aes(Item_Outlet_Sales)) + geom_area(stat = "bin", bins = 40)

# Heat Map - MRP of each Item_Type in each Outlet_Type
  # Writing X labels vertically
ggplot(Train_dataset, aes(Outlet_Type, Item_Type)) + 
  geom_raster(aes(fill = Item_MRP)) +
  theme(axis.text.x = element_text(angle = 90))

# Stacked Barplot
ggplot(Train_dataset, aes(Outlet_Location_Type, fill = Outlet_Type)) + geom_bar()

##############################################################################################
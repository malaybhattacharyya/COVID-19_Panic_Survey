# install.packages("data.table")
library(data.table)
# install.packages("ggplot2")
library(ggplot2)


# Current path of the source script
sourcePATH <- "C:\\Users\\CSSC\\Desktop\\Lockdown\\Panic\\Analysis\\R Plots\\Donut\\"
# Set the current working Directory
setwd(sourcePATH)


# Read data frame
D <- data.frame(
  AgeGroup = c("<21", "21-30", "31-40", "41-50", "51-60", "60+"),
  Value = c(153, 631, 147, 63, 64, 17)
  )
# Open a pdf file to save image
pdf("Donut_AgeGroup.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x=2, y=Value, fill=AgeGroup))
p <- p + geom_bar(stat = "identity")
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p <- p + xlim(0.5, 2.5)
p
# Close the pdf file after saving image
dev.off()


# Read data frame
D <- data.frame(
  Association = c("Health", "Research", "Govt.", "Other", "None"),
  Value = c(51, 96, 28, 282, 618)
  )
# Open a pdf file to save image
pdf("Donut_Association.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x=2, y=Value, fill=Association))
p <- p + geom_bar(stat = "identity")
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p <- p + xlim(0.5, 2.5)
p
# Close the pdf file after saving image
dev.off()


# Read data frame
D <- data.frame(
  Country = c("India", "Others"),
  Value = c(935, 140)
  )
# Open a pdf file to save image
pdf("Donut_Country.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x=2, y=Value, fill=Country))
p <- p + geom_bar(stat = "identity")
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p <- p + xlim(0.5, 2.5)
p
# Close the pdf file after saving image
dev.off()


# Read data frame
D <- data.frame(
  Education = c("School", "Bachelors", "Masters", "Doctorate"),
  Value = c(53, 530, 394, 98)
  )
# Open a pdf file to save image
pdf("Donut_Education.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x=2, y=Value, fill=Education))
p <- p + geom_bar(stat = "identity")
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p <- p + xlim(0.5, 2.5)
p
# Close the pdf file after saving image
dev.off()


# Read data frame
D <- data.frame(
  Location = c("City", "Suburban", "Village"),
  Value = c(799, 200, 76)
  )
# Open a pdf file to save image
pdf("Donut_Location.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x=2, y=Value, fill=Location))
p <- p + geom_bar(stat = "identity")
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p <- p + xlim(0.5, 2.5)
p
# Close the pdf file after saving image
dev.off()



# Read data frame
D <- data.frame(
  Profession = c("Stud.", "Acad.", "Indus.", "Busin.", "Health", "Home", "Other"),
  Value = c(566, 103, 215, 43, 55, 18, 75)
  )
# Open a pdf file to save image
pdf("Donut_Profession.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x=2, y=Value, fill=Profession))
p <- p + geom_bar(stat = "identity")
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p <- p + xlim(0.5, 2.5)
p
# Close the pdf file after saving image
dev.off()

# install.packages("data.table")
library(data.table)
# install.packages("ggplot2")
library(ggplot2)


# Current path of the source script
sourcePATH <- "C:\\Users\\CSSC\\Desktop\\Lockdown\\Panic\\Analysis\\R Plots\\Histogram\\"
# Set the current working Directory
setwd(sourcePATH)


# Read data frame
D <- data.frame(
  SocialMediaUse = c("<1 hr", "1-2 hrs", "2-3 hrs", "3+ hrs"),
  Value = c(269, 371, 170, 125)
  )
# Open a pdf file to save image
pdf("Pie_ISI.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x="", y=Value, fill=SocialMediaUse))
p <- p + geom_bar(stat = "identity", width=1)
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Read data frame
D <- data.frame(
  SocialMediaUse = c("<1 hr", "1-2 hrs", "2-3 hrs", "3+ hrs"),
  Value = c(30, 67, 24, 19)
  )
# Open a pdf file to save image
pdf("Pie_ISO.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x="", y=Value, fill=SocialMediaUse))
p <- p + geom_bar(stat = "identity", width=1)
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Read data matrix from file
InSoc_India <- read.table("InvolvementSocial_India.txt", header = TRUE)
ISI <- as.data.frame(InSoc_India) # Matrix to Data Frame
InSoc_Others <- read.table("InvolvementSocial_Others.txt", header = TRUE)
ISO <- as.data.frame(InSoc_Others) # Matrix to Data Frame


# Open a pdf file to save image
pdf("Histogram_Rise_ISI.pdf") 
# Generate histogram
p <- ggplot(data=ISI, aes(x=Rise))
p <- p + geom_histogram(lwd=5, fill="red", color="red", bins=20, alpha=0.3) # Bin size = 15
p <- p + labs(title="India", x="Rise of Social Media Use (hr)", y="# People") # Title, axes labels
p <- p + theme_minimal(base_size=30) # Other themes = theme_bw, theme_classic, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Histogram_Rise_ISO.pdf") 
# Generate histogram
p <- ggplot(data=ISO, aes(x=Rise))
p <- p + geom_histogram(lwd=5, fill="red", color="red", bins=20, alpha=0.3) # Bin size = 15
p <- p + labs(title="Other Countries", x="Rise of Social Media Use (hr)", y="# People") # Title, axes labels
p <- p + theme_minimal(base_size=30) # Other themes = theme_bw, theme_classic, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Kruskal-Wallis test
mean(ISI$Before)
mean(ISI$After)
kruskal.test(data = ISI, Before ~ After)
mean(ISO$Before)
mean(ISO$After)
kruskal.test(data = ISO, Before ~ After)


# Read data frame
D <- data.frame(
  TimeToGetVaccine = c("<1 month", "1-2 months", "2-3 months", "3+ months"),
  Value = c(10, 61, 135, 729)
  )
# Open a pdf file to save image
pdf("Pie_VI.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x="", y=Value, fill=TimeToGetVaccine))
p <- p + geom_bar(stat = "identity", width=1)
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Read data frame
D <- data.frame(
  TimeToGetVaccine = c("<1 month", "1-2 months", "2-3 months", "3+ months"),
  Value = c(0, 6, 19, 115)
  )
# Open a pdf file to save image
pdf("Pie_VO.pdf")
# Generate pie chart
p <- ggplot(data=D, aes(x="", y=Value, fill=TimeToGetVaccine))
p <- p + geom_bar(stat = "identity", width=1)
p <- p + coord_polar("y", start=0)
p <- p + theme_void(base_size=30) # Other themes = theme_bw, theme_minimal, theme_classic, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()



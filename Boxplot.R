# install.packages("data.table")
library(data.table)
# install.packages("ggplot2")
library(ggplot2)
# install.packages("ggpubr")
library(ggpubr)


# Current path of the source script
sourcePATH <- "C:\\Users\\CSSC\\Desktop\\Lockdown\\Panic\\Analysis\\R Plots\\Boxplot\\"
# Set the current working Directory
setwd(sourcePATH)


# Read data matrix from file
Panic_India <- read.table("Association_Panic_India.txt", header = TRUE)
PI <- as.data.frame(Panic_India) # Matrix to Data Frame
Panic_Others <- read.table("Association_Panic_Others.txt", header = TRUE)
PO <- as.data.frame(Panic_Others) # Matrix to Data Frame


# Open a pdf file to save image
pdf("Boxplot_PI.pdf") 
# Generate boxplot
p <- ggplot(data=PI, aes(x=Association, y=Panic)) # Association vs Panic
p <- p + geom_boxplot(lwd=3, fill="red", color="red", alpha=0.2)
p <- p + stat_compare_means(color="darkred", label.x=1.56, label.y=4.8, size=10)
p <- p + labs(title="India", x="COVID-19 Association", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=36) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Boxplot_PO.pdf") 
# Generate boxplot
p <- ggplot(data=PO, aes(x=Association, y=Panic)) # Association vs Panic
p <- p + geom_boxplot(lwd=3, fill="red", color="red", alpha=0.3)
p <- p + stat_compare_means(color="darkred", label.x=1.56, label.y=4.8, size=10)
p <- p + labs(title="Other Countries", x="COVID-19 Association", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=36) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Boxplot_Rise_PI.pdf") 
# Generate boxplot
p <- ggplot(data=PI, aes(x=Association, y=Rise)) # Association vs Rise
p <- p + geom_boxplot(lwd=3, fill="red", color="red", alpha=0.3)
p <- p + stat_compare_means(color="darkred", label.x=1.55, label.y=2.8, size=10)
p <- p + labs(title="India", x="COVID-19 Association", y="Rise of Social Media Use (hr)") # Title, axes labels
p <- p + theme_classic(base_size=36) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Boxplot_Rise_PO.pdf") 
# Generate boxplot
p <- ggplot(data=PO, aes(x=Association, y=Rise)) # Association vs Rise
p <- p + geom_boxplot(lwd=3, fill="red", color="red", alpha=0.3)
p <- p + stat_compare_means(color="darkred", label.x=1.55, label.y=2.8, size=10)
p <- p + labs(title="Other Countries", x="COVID-19 Association", y="Rise of Social Media Use (hr)") # Title, axes labels
p <- p + theme_classic(base_size=36) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Distribution_PI.pdf") 
# Generate boxplot
p <- ggplot(data=PI, aes(x=Panic)) # Distribution of panic level
p <- p + geom_histogram(aes(y=..density..), binwidth=1, colour="red", fill="white") # Histogram with density instead of count on y-axis
p <- p + geom_density(adjust=1.5, alpha=.2, fill="#FF6666") # Overlay with transparent density plot
p <- p + geom_vline(aes(xintercept=mean(Panic, na.rm=T)), color="black", linetype="dashed", size=2)
p <- p + labs(title="India", x="Panic Score", y="Density") # Title, axes labels
p <- p + theme_classic(base_size=36) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Distribution_PO.pdf") 
# Generate boxplot
p <- ggplot(data=PO, aes(x=Panic)) # Distribution of panic level
p <- p + geom_histogram(aes(y=..density..), binwidth=1, colour="red", fill="white") # Histogram with density instead of count on y-axis
p <- p + geom_density(adjust=1.5, alpha=.2, fill="#FF6666") # Overlay with transparent density plot
p <- p + geom_vline(aes(xintercept=mean(Panic, na.rm=T)), color="black", linetype="dashed", size=2)
p <- p + labs(title="Other Countries", x="Panic Score", y="Density") # Title, axes labels
p <- p + theme_classic(base_size=36) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# t-test on normally distributed data
mean(PI$Panic)
sd(PI$Panic)
mean(PO$Panic)
sd(PO$Panic)
t.test(PI$Panic, PO$Panic)

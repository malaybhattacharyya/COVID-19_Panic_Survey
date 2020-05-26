# install.packages("data.table")
library(data.table)
# install.packages("ggplot2")
library(ggplot2)
# install.packages("ggpubr")
library(ggpubr)


# Current path of the source script
sourcePATH <- "C:\\Users\\CSSC\\Desktop\\Lockdown\\Panic\\Analysis\\R Plots\\Violin\\"
# Set the current working Directory
setwd(sourcePATH)


# Read data matrix from file
Panic_India <- read.table("Panic_India.txt", header = TRUE)
PI <- as.data.frame(Panic_India) # Matrix to Data Frame
Panic_Others <- read.table("Panic_Others.txt", header = TRUE)
PO <- as.data.frame(Panic_Others) # Matrix to Data Frame


# Open a pdf file to save image
pdf("Violin_Age_PI.pdf")
# Generate violin plot
p <- ggplot(data=PI, aes(x=Age, y=Panic)) # Age vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=2, label.y=6.7, size=8)
p <- p + labs(title="India", x="Age Group", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Age_PO.pdf")
# Generate violin plot
p <- ggplot(data=PO, aes(x=Age, y=Panic)) # Age vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=2, label.y=7.7, size=8)
p <- p + labs(title="Other Countries", x="Age Group", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Association_PI.pdf")
# Generate violin plot
p <- ggplot(data=PI, aes(x=Association, y=Panic)) # Association vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=2, label.y=6.7, size=8)
p <- p + labs(title="India", x="Association", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Association_PO.pdf")
# Generate violin plot
p <- ggplot(data=PO, aes(x=Association, y=Panic)) # Association vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=2, label.y=6.6, size=8)
p <- p + labs(title="Other Countries", x="Association", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Education_PI.pdf")
# Generate violin plot
p <- ggplot(data=PI, aes(x=Education, y=Panic)) # Education vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=1.5, label.y=6.5, size=8)
p <- p + labs(title="India", x="Education", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Education_PO.pdf")
# Generate violin plot
p <- ggplot(data=PO, aes(x=Education, y=Panic)) # Education vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=1.5, label.y=6.5, size=8)
p <- p + labs(title="Other Countries", x="Education", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Gender_PI.pdf")
# Generate violin plot
p <- ggplot(data=PI, aes(x=Gender, y=Panic)) # Gender vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=1.3, label.y=6.5, size=8)
p <- p + labs(title="India", x="Gender", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Gender_PO.pdf")
# Generate violin plot
p <- ggplot(data=PO, aes(x=Gender, y=Panic)) # Gender vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=1.3, label.y=6.5, size=8)
p <- p + labs(title="Other Countries", x="Gender", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Location_PI.pdf")
# Generate violin plot
p <- ggplot(data=PI, aes(x=Location, y=Panic)) # Location vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=1.3, label.y=6.5, size=8)
p <- p + labs(title="India", x="Location", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Location_PO.pdf")
# Generate violin plot
p <- ggplot(data=PO, aes(x=Location, y=Panic)) # Location vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=1.3, label.y=6.7, size=8)
p <- p + labs(title="Other Countries", x="Location", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Profession_PI.pdf")
# Generate violin plot
p <- ggplot(data=PI, aes(x=Profession, y=Panic)) # Profession vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=2.5, label.y=7.3, size=8)
p <- p + labs(title="India", x="Profession", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Violin_Profession_PO.pdf")
# Generate violin plot
p <- ggplot(data=PO, aes(x=Profession, y=Panic)) # Profession vs Panic 
p <- p + geom_violin(fill="blue", trim=FALSE, alpha=0.3) # transparency factor is 0.2
p <- p + geom_boxplot(width=0.2)
p <- p + stat_compare_means(color="darkred", label.x=2.5, label.y=6.5, size=8)
p <- p + labs(title="Other Countries", x="Profession", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=26) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p <- p + theme(legend.position="top")
p
# Close the pdf file after saving image
dev.off()

# install.packages("data.table")
library(data.table)
# install.packages("ggplot2")
library(ggplot2)
# install.packages("ggpubr")
library(ggpubr)


# Current path of the source script
sourcePATH <- "C:\\Users\\CSSC\\Desktop\\Lockdown\\Panic\\Analysis\\R Plots\\Scatter\\"
# Set the current working Directory
setwd(sourcePATH)


# Read data matrix from file
Panic_India <- read.table("Panic_Involvement_India.txt", header = TRUE)
PI <- as.data.frame(Panic_India) # Matrix to Data Frame
Panic_Others <- read.table("Panic_Involvement_Others.txt", header = TRUE)
PO <- as.data.frame(Panic_Others) # Matrix to Data Frame


# Read data frame
S1 <- mean(PI$Panic[c(1:187)])
S2 <- mean(PI$Panic[c(188:374)])
S3 <- mean(PI$Panic[c(375:561)])
S4 <- mean(PI$Panic[c(562:748)])
S5 <- mean(PI$Panic[c(749:935)])
PI <- data.frame(
  TemporalGroup = c("1", "2", "3", "4", "5"),
  Mean = c(S1, S2, S3, S4, S5)
  )
# Open a pdf file to save image
pdf("Scatter_TemporalPanic_PI.pdf")
# Generate barplot
p <- ggplot(data=PI, aes(x=TemporalGroup, y=Mean, group=1))
p <- p + geom_point(color="red", size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=1, label.y=2.7, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="India", x="Temporal Group", y="Mean Panic Score") # Title, axes labels
p <- p + theme_minimal(base_size=30) # Other themes = theme_void, theme_bw, theme_classic, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Read data frame
S1 <- mean(PO$Panic[c(1:28)])
S2 <- mean(PO$Panic[c(29:56)])
S3 <- mean(PO$Panic[c(57:84)])
S4 <- mean(PO$Panic[c(85:112)])
S5 <- mean(PO$Panic[c(113:140)])
PO <- data.frame(
  TemporalGroup = c("1", "2", "3", "4", "5"),
  Mean = c(S1, S2, S3, S4, S5)
  )
# Open a pdf file to save image
pdf("Scatter_TemporalPanic_PO.pdf")
# Generate barplot
p <- ggplot(data=PO, aes(x=TemporalGroup, y=Mean, group=1))
p <- p + geom_point(color="red", size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=1.2, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="Other Countries", x="Temporal Group", y="Mean Panic Score") # Title, axes labels
p <- p + theme_minimal(base_size=30) # Other themes = theme_void, theme_bw, theme_classic, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Scatter_PI.pdf") 
# Generate scatter plot
p <- ggplot(data=PI, aes(x=Before, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=0.8, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="India", x="Social Media Use (hr)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Scatter_PO.pdf") 
# Generate scatter plot
p <- ggplot(data=PO, aes(x=Before, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=0.8, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="Other Countries", x="Social Media Use (hr)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Scatter_Lockdown_PI.pdf") 
# Generate scatter plot
p <- ggplot(data=PI, aes(x=After, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=0.8, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="India", x="Lockdown Social Media Use (hr)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Scatter_Lockdown_PO.pdf") 
# Generate scatter plot
p <- ggplot(data=PO, aes(x=After, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=0.8, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="Other Countries", x="Lockdown Social Media Use (hr)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Scatter_Rise_PI.pdf") 
# Generate scatter plot
p <- ggplot(data=PI, aes(x=Rise, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=-2.5, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="India", x="Rise of Social Media Use (hr)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Scatter_Rise_PO.pdf") 
# Generate scatter plot
p <- ggplot(data=PO, aes(x=Rise, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=-0.6, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="Other Countries", x="Rise of Social Media Use (hr)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Read data matrix from file
Panic_Vaccine_India <- read.table("Panic_Vaccine_India.txt", header = TRUE)
PVI <- as.data.frame(Panic_Vaccine_India) # Matrix to Data Frame
Panic_Vaccine_Others <- read.table("Panic_Vaccine_Others.txt", header = TRUE)
PVO <- as.data.frame(Panic_Vaccine_Others) # Matrix to Data Frame


# Open a pdf file to save image
pdf("Scatter_Vaccine_PI.pdf") 
# Generate scatter plot
p <- ggplot(data=PVI, aes(x=Vaccine, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=0.8, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="India", x="Time to get vaccine (months)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()


# Open a pdf file to save image
pdf("Scatter_Vaccine_PO.pdf") 
# Generate scatter plot
p <- ggplot(data=PVO, aes(x=Vaccine, y=Panic))
p <- p + geom_point(color="gray", shape=16, size=8)
p <- p + geom_smooth(method=lm)
p <- p + stat_cor(method = "pearson", label.x=0.8, label.y=3.4, label.sep=", ", size=12, color="darkred") # Add correlation
p <- p + labs(title="Other Countries", x="Time to get vaccine (months)", y="Panic Score") # Title, axes labels
p <- p + theme_classic(base_size=30) # Other themes = theme_bw, theme_minimal, theme_void, theme_dark, theme_economist
p
# Close the pdf file after saving image
dev.off()

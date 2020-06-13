# install.packages("waffle")
library(waffle)
# install.packages("extrafont")
library(extrafont)


# Current path of the source script
sourcePATH <- "C:\\Users\\CSSC\\Desktop\\Lockdown\\Panic\\Analysis\\R Plots\\Infographics\\"
# Set the current working Directory
setwd(sourcePATH)


# Download "Font Awesome" from http://fontawesome.io
# Install using the OpenType font file
font_import()
#Load fonts
loadfonts(device = "win")


# INDIA: male - 645 (245, 10, 390), female - 289 (116, 5, 168)
# Open a pdf file to save image
grDevices::cairo_pdf("Waffle_FreeTestIndia.pdf") # For "Font Aswsome" conversion
# Generate waffle plot
# "Font Awesome" icons to be set for use_glyph
p <- iron(
	waffle(
		c('Willing=39%' = 27, 'Unwilling=2%' = 1, 'Depends=59%' = 42),
		rows = 7, use_glyph = "male", legend_pos = "none", glyph_size = 12,
		title = "Participation in a free test"
	) + theme(plot.title = element_text(size = 30)),
	waffle(
		c('Willing=39%' = 12, 'Unwilling=2%' = 1, 'Depends=59%' = 17), # To be shown
		rows = 3, use_glyph = "female", legend_pos = "bottom", glyph_size = 12,
	) + theme(legend.text = element_text(size = 20))
)
p
# Close the pdf file after saving image
dev.off()


# OTHER COUNTRIES: male - 73 (29, 0, 44), female - 67 (25, 0, 42)
# Open a pdf file to save image
grDevices::cairo_pdf("Waffle_FreeTestOther.pdf") # For "Font Aswsome" conversion
# Generate waffle plot
# "Font Awesome" icons to be set for use_glyph
p <- iron(
	waffle(
		c('Willing=39%' = 20, 'Unwilling=0%' = 0, 'Depends=61%' = 30),
		rows = 5, use_glyph = "male", legend_pos = "none", glyph_size = 12,
		title = "Participation in a free test"
	) + theme(plot.title = element_text(size = 30)),
	waffle(
		c('Willing=39%' = 19, 'Unwilling=0%' = 0, 'Depends=61%' = 31), # To be shown
		rows = 5, use_glyph = "female", legend_pos = "bottom", glyph_size = 12,
	) + theme(legend.text = element_text(size = 20))
)
p
# Close the pdf file after saving image
dev.off()


# INDIA: male - 645 (367, 278), female - 289 (176, 113)
# Open a pdf file to save image
grDevices::cairo_pdf("Waffle_AirBorneIndia.pdf") # For "Font Aswsome" conversion
# Generate waffle plot
# "Font Awesome" icons to be set for use_glyph
p <- iron(
	waffle(
		c('Required=58%' = 40, 'Not required=42%' = 30),
		rows = 7, use_glyph = "male", legend_pos = "none", glyph_size = 12,
		title = "Air borne disease like precaution"
	) + theme(plot.title = element_text(size = 30)),
	waffle(
		c('Required=58%' = 18, 'Not required=42%' = 12), # To be shown
		rows = 3, use_glyph = "female", legend_pos = "bottom", glyph_size = 12,
	) + theme(legend.text = element_text(size = 20))
)
p
# Close the pdf file after saving image
dev.off()


# OTHER COUNTRIES: male - 73 (52, 21), female - 67 (48, 19)
# Open a pdf file to save image
grDevices::cairo_pdf("Waffle_AirBorneOther.pdf") # For "Font Aswsome" conversion
# Generate waffle plot
# "Font Awesome" icons to be set for use_glyph
p <- iron(
	waffle(
		c('Required=71%' = 36, 'Not required=29%' = 14),
		rows = 5, use_glyph = "male", legend_pos = "none", glyph_size = 12,
		title = "Air borne disease like precaution"
	) + theme(plot.title = element_text(size = 30)),
	waffle(
		c('Required=71%' = 36, 'Not required=29%' = 14), # To be shown
		rows = 5, use_glyph = "female", legend_pos = "bottom", glyph_size = 12,
	) + theme(legend.text = element_text(size = 20))
)
p
# Close the pdf file after saving image
dev.off()


# INDIA: male - 645 (404, 221, 20), female - 289 (189, 87, 13)
# Open a pdf file to save image
grDevices::cairo_pdf("Waffle_SurfaceIndia.pdf") # For "Font Aswsome" conversion
# Generate waffle plot
# "Font Awesome" icons to be set for use_glyph
p <- iron(
	waffle(
		c('Days=64%' = 44, 'Weeks=33%' = 24, 'Months=3%' = 2),
		rows = 7, use_glyph = "male", legend_pos = "none", glyph_size = 12,
		title = "SARS-CoV-2 remains on surfaces"
	) + theme(plot.title = element_text(size = 30)),
	waffle(
		c('Days=64%' = 20, 'Weeks=33%' = 9, 'Months=3%' = 1), # To be shown
		rows = 3, use_glyph = "female", legend_pos = "bottom", glyph_size = 12,
	) + theme(legend.text = element_text(size = 20))
)
p
# Close the pdf file after saving image
dev.off()


# OTHER COUNTRIES: male - 73 (52, 21, 0), female - 67 (46, 20, 1)
# Open a pdf file to save image
grDevices::cairo_pdf("Waffle_SurfaceOther.pdf") # For "Font Aswsome" conversion
# Generate waffle plot
# "Font Awesome" icons to be set for use_glyph
p <- iron(
	waffle(
		c('Days=71%' = 36, 'Weeks=29%' = 14, 'Months=0%' = 0),
		rows = 5, use_glyph = "male", legend_pos = "none", glyph_size = 12,
		title = "SARS-CoV-2 remains on surfaces"
	) + theme(plot.title = element_text(size = 30)),
	waffle(
		c('Days=71%' = 35, 'Weeks=29%' = 15, 'Months=0%' = 0), # To be shown
		rows = 5, use_glyph = "female", legend_pos = "bottom", glyph_size = 12,
	) + theme(legend.text = element_text(size = 20))
)
p
# Close the pdf file after saving image
dev.off()

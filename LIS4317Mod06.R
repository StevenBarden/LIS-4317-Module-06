# Assignment  : LIS-4317 - Module 6 Assignment - Basic Graphics in R
# Purpose     : Create basic visualizations in R and analyze them.
# Author      : Steven Barden
# Created     : 2025-02-20-1200-00
# Modified    : 2025-02-20-1200-00
# Description : This script generates pie charts, bar charts, histograms, and box plots using R base graphics.

# --- SETUP ---
# Set the working directory
tryCatch({
  setwd("C:/Users/Steve/OneDrive/College/_____DESKTOP ICONS/2025-USF-Spring/4317/Mod06/")
    cat("Working directory set successfully.\n")
}, error = function(e) {
    stop("Error setting working directory: ", e$message)
})

# Ensure proper output formatting
options(width = as.integer(system2("tput", "cols", stdout = TRUE)))

# --- UTILITY FUNCTIONS ---
# Function to check, install, and load required libraries
check_and_load_library <- function(package) {
    if (!require(package, character.only = TRUE)) {
        tryCatch({
            cat("Installing package:", package, "\n")
            install.packages(package)
            library(package, character.only = TRUE)
            cat("Successfully loaded:", package, "\n")
        }, error = function(e) {
            stop(paste("Failed to install/load package:", package, "-", e$message))
        })
    } else {
        cat("Package already loaded:", package, "\n")
    }
}

# List of required packages
required_packages <- c("ggplot2")

# Load all required packages
tryCatch({
    lapply(required_packages, check_and_load_library)
}, error = function(e) {
    stop("Package loading failed: ", e$message)
})

# --- DATA SETUP ---
# Example data for visualizations
mypie <- c(40, 30, 20, 10)
names(mypie) <- c("Red", "Blue", "Green", "Brown")
mycolors <- c("red", "blue", "green", "brown")

# Generate sample weight gain data for histogram and boxplot
set.seed(123)
weight_gain <- rnorm(100, mean=20, sd=5)
gender <- sample(c("M", "F"), 100, replace=TRUE)
data <- data.frame(Gender = gender, Weight_Gain = weight_gain)

# --- VISUALIZATION FUNCTIONS ---
# 1. Pie Chart
generate_pie_chart <- function() {
    tryCatch({
        png("Pie_Chart.png", width=800, height=600)
        pie(mypie, col=mycolors, main="Basic Pie Chart with Custom Colors")
        dev.off()
        cat("Pie chart generated successfully.\n")
    }, error = function(e) {
        stop("Error generating pie chart: ", e$message)
    })
}

# 2. Bar Chart
generate_bar_chart <- function() {
    tryCatch({
        png("Bar_Chart.png", width=800, height=600)
        barplot(mypie, col=mycolors, main="Basic Bar Chart with Labels and Colors")
        dev.off()
        cat("Bar chart generated successfully.\n")
    }, error = function(e) {
        stop("Error generating bar chart: ", e$message)
    })
}

# 3. Histogram
generate_histogram <- function() {
    tryCatch({
        png("Histogram.png", width=800, height=600)
        hist(weight_gain, main="Histogram of Weight Gain", xlab="Weight Gain (lbs)", ylab="Frequency", col="blue")
        dev.off()
        cat("Histogram generated successfully.\n")
    }, error = function(e) {
        stop("Error generating histogram: ", e$message)
    })
}

# 4. Box Plot
generate_box_plot <- function() {
    tryCatch({
        png("Box_Plot.png", width=800, height=600)
        boxplot(Weight_Gain ~ Gender, data = data, col=c("pink", "lightblue"), main="Boxplot of Weight Gain by Gender")
        dev.off()
        cat("Box plot generated successfully.\n")
    }, error = function(e) {
        stop("Error generating box plot: ", e$message)
    })
}

# --- MAIN EXECUTION ---
tryCatch({
    generate_pie_chart()
    generate_bar_chart()
    generate_histogram()
    generate_box_plot()
    cat("All visualizations generated and saved as PNG files.\n")
}, error = function(e) {
    stop("Script execution failed: ", e$message)
})

# --- END OF SCRIPT ---

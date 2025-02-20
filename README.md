# LIS-4317-Module-06
This project, part of the LIS-4317 course at the University of South Florida, focuses on creating basic visualizations in R using base graphics. The goal is to demonstrate simple descriptive analytics and evaluate them against visualization principles by Stephen Few and Nathan Yau.
# LIS-4317 – Module 6 Assignment – Basic Graphics in R

## Project Overview
This project, part of the LIS-4317 course at the University of South Florida, focuses on creating basic visualizations in R using base graphics. The goal is to demonstrate simple descriptive analytics and evaluate them against visualization principles by Stephen Few and Nathan Yau.

## Visualizations
The project includes the following visualizations:
1. **Pie Chart:** Displays the proportion of categories (Red, Blue, Green, Brown).
2. **Bar Chart:** Represents the same categories, emphasizing comparative magnitudes.
3. **Histogram:** Shows the distribution of weight gain across sample data.
4. **Box Plot:** Compares weight gain between male and female groups.

Each visualization was generated using R's base graphics and exported as PNG images.

## Methodology
1. **Data Preparation:** Simulated datasets were created for categorical and numerical variables.
2. **Visualization Creation:** Base R functions such as `pie()`, `barplot()`, `hist()`, and `boxplot()` were used.
3. **Output:** Each plot was saved as a PNG file for easy sharing and embedding.

## Analysis and Alignment with Visualization Principles
- **Stephen Few's Principles:** Few emphasizes clarity, simplicity, and avoiding distortions. The bar chart, histogram, and box plot align closely with his guidelines by emphasizing comparisons and distributions without excessive complexity.
- **Nathan Yau's Approach:** Yau encourages using visuals to tell a story. These visualizations support understanding by presenting clear, interpretable insights.

While Few typically advises against pie charts due to challenges in comparing slice sizes, this example remains useful for showcasing part-to-whole relationships when categories are limited.

## Conclusion
This project demonstrates how basic R graphics can effectively visualize data. By adhering to Few's and Yau's principles, the visualizations provide clarity, context, and insight into the underlying data.

## How to Run the Code
1. **Install Required Packages:**
```r
install.packages("ggplot2")

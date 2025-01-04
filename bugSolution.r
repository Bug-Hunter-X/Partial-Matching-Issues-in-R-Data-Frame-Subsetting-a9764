```r
# Corrected code using exact matching to prevent issues from partial matching.

df <- data.frame(col1 = 1:3, col10 = 4:6, col100 = 7:9)
cols_to_select <- c("col1", "col100")

# Use match() for exact matching:
indices <- match(cols_to_select, names(df))

# Handle cases where columns are not found
indices <- indices[!is.na(indices)]

subset_df <- df[, indices]
print(subset_df)

#Alternative using dplyr
library(dplyr)
subset_df <- select(df, all_of(cols_to_select))
print(subset_df)
```
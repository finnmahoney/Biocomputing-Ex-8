#!/usr/bin/env Rscript

#ex usage: chmod +x headScript.R
#ex usage: ./headScript.R iris.csv 4
# this will return the first 4 lines of the csv

print_head_csv <- function(file_name, num_lines) {
  # Read the entire file into a data frame
  file_content <- try(read.csv(file_name, stringsAsFactors = FALSE), silent = TRUE)
  
  if (class(file_content) == "try-error") {
    stop("Error reading file: ", file_name)
  }
  
  actual_lines_to_print <- min(nrow(file_content), num_lines)
  
  selected_content <- file_content[1:actual_lines_to_print, ]
  
  print(selected_content, row.names = FALSE)
}

args <- commandArgs(trailingOnly = TRUE)

file_name <- args[1]
num_lines <- as.integer(args[2])

# Call the function with the arguments
print_head_csv(file_name, num_lines)
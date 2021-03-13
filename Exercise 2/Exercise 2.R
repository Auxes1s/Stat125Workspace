#Requisites
library(readr)
library(here)

#Reading the .txt file
df <- read_fwf(file = here("Exercise 2/Clinical Data.txt"),
         col_positions = fwf_cols(ID = c(1, 3),
                                  Gender = 4,
                                  DoB = c(5, 10),
                                  DoV = c(11, 16),
                                  pdx = c(17, 18),
                                  sdx = c(19, 20),
                                  hr = c(21, 23),
                                  sbp = c(24, 26),
                                  dbp = c(27, 29),
                                  vitamin = 30,
                                  preg = 31),
          col_types = cols(ID = col_character(),
                           Gender = col_factor(),
                           DoB = col_date(format = "%m%d%y"),
                           DoV = col_date(format = "%m%d%y"),
                           pdx = col_character(),
                           sdx = col_character(),
                           hr = col_number(),
                           sbp = col_number(),
                           dbp = col_number(),
                           vitamin = col_character(),
                           preg = col_character()),
         na = "."
         )

#Formatting the table
df['pdx'] <- factor(df$pdx, levels = c("01", "02", "03", "04", "05", "06", "07"), 
                    labels = c("Cold", "Flu", "Routine Physical", "Ear Ache", "Abdominal Pain", "Heart Problem", "Lung Disorder"))
df['sdx'] <- factor(df$sdx, levels = c("01", "02", "03", "04", "05", "06", "07"), 
                    labels = c("Cold", "Flu", "Routine Physical", "Ear Ache", "Abdominal Pain", "Heart Problem", "Lung Disorder"))
df['vitamin'] <- factor(df$vitamin, levels = c("1", "0"), labels = c("Yes", "No"))
df['preg'] <- factor(df$preg, levels = c("1", "0"), labels = c("Yes", "No"))

#Writing to an RDS file
write_rds(df, "Exercise#2_Output.rds")



get_with_percentage <- function(percentage) {
  data <- read.csv("test.csv", sep = ",", stringsAsFactors = FALSE)
  target_data <- data[,1]
  count <- 0
  for (current in target_data) {
    if(!is.null(current)) {
      count = count + 1
    }
  }
  exact_num <- count * (percentage * 1.0 / 100)
  ##assign an id to each value in the coloum
  new_frame <- data.frame(value = target_data, id = c(1:count))
  check_list <- sample(1:count, exact_num, replace = F)
  result <- vector()
  for (number in check_list) {
    result <- c(result, target_data[number])
  }
  write.csv(result, file = "result.csv")
}

get_with_num <- function(num) {
  data <- read.csv("test.csv", sep = ",", stringsAsFactors = FALSE)
  target_data <- data[,1]
  count <- 0
  for (current in target_data) {
    if(!is.null(current)) {
      count = count + 1
    }
  }
  ##assign an id to each value in the coloum
  new_frame <- data.frame(value = target_data, id = c(1:count))
  check_list <- sample(1:count, num, replace = F)
  result <- vector()
  for (number in check_list) {
    result <- c(result, target_data[number])
  }
  write.csv(result, file = "result.csv")
}
myFunction <- function() {
	x <- rnorm(500)
	mean(x)
}

second <- function(x) {
	x + rnorm(length(x))
}


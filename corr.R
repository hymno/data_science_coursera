#This is a function which computes the correlation of two columns of data
#for each data set in a directory.


corr <- function(directory, threshold = 0){
        file_list <- list.files(directory, full.names=TRUE)
        correlation <- vector(mode = "numeric", length = 0)
        j <- 0
        for(i in 1:332){
                #print(i)
                dat <- read.csv(file_list[i])               
                good <- complete.cases(dat)
                comp <- dat[good,]
                len <- length(comp[,2]) #Perhaps change to comp$nitrate?
                
                s <- comp[,2]
                n <- comp[,3]
                if(len > threshold){
                        j <- j + 1
                        correlation[j] = cor(s,n) 
                }
        }
        correlation
}
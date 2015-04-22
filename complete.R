##This function calculates the number of complete entries in columns of
##data sets in a given directory

complete <- function(directory, id = 1:332){
        fileList <- list.files(directory, full.names=TRUE)
        nobs <- vector(mode = "numeric", length = 0)        
        j <- 0
        
        for(i in id){
                dat <- read.csv(fileList[i])               
                good <- complete.cases(dat)
                comp <- dat[good,]
                len <- length(comp[,2])
                
                
                j <- j + 1
                nobs[j]=len
                
        }      
        output <- data.frame(id,nobs)
        output        
}
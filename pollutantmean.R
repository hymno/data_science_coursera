##This function gathers together all the data sets in a directory
## of pollutant data sets into one data frame and computes
## the mean of a set of pollutant data. For example, the mean of either
## sulfate or nitrate levels.

pollutantmean <- function(directory, pollutant, id = 1:332){
        data_files <- list.files(directory, full.names = TRUE)
        dat <- data.frame()

        for(i in id){
                dat <- rbind(dat, read.csv(data_files[i]))
        }
        
        #pol_subset <- dat[,"pollutant"]
        mean(dat[,pollutant], na.rm=TRUE)
        
}
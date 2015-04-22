

pollutantmean <- function(directory, pollutant, id = 1:332){
        data_files <- list.files(directory, full.names = TRUE)
        dat <- data.frame()

        for(i in id){
                dat <- rbind(dat, read.csv(data_files[i]))
        }
        
        #pol_subset <- dat[,"pollutant"]
        mean(dat[,pollutant], na.rm=TRUE)
        
}
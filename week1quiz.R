> install.packages("data.table")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/data.table_1.13.0.zip'
Content type 'application/zip' length 2572744 bytes (2.5 MB)
downloaded 2.5 MB

package ‘data.table’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\NEW\AppData\Local\Temp\RtmpquxMuB\downloaded_packages

> library("data.table")
data.table 1.13.0 using 4 threads (see ?getDTthreads).  Latest news: r-datatable.com
> qd <- fread('hw1_data.csv')

> names(qd)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"    

> qd = read.csv('hw1_data.csv')
> s = subset(qd, Ozone > 31 & Temp > 90, select = Solar.R)
> apply(s, 2, mean)
Solar.R 
212.8 

> m = subset(qd, Month ==6, select = Temp)
> apply(m,2,mean)
Temp 
79.1 

> m = subset(qd, Month ==5, select = Ozone)
> apply(m, 2, max)
Ozone 
NA 

> m = subset(qd, Month ==5 & !is.na(Ozone), select = Ozone)
> apply(m, 2, max)
Ozone 
115
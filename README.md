synch digest and digest dictionary with remote repository. This has an application with shiny apps where objects are cached on a repository instead of a local machine, creating a passively increasing cache directory that multiple users can read and write to. This should increase app efficiency by only one user running new parameter permutations of a app.

For an example see the [.rcache](https://github.com/yonicd/gdigest/tree/master/.rcache) subdirectory.

```r
#install package
devtools::install_github('yonicd/gdigest')


#load the library
library(gdigest)

#clone the repository where the cache is located
#git2r::clone('https://github.com/yonicd/gdigest.git')

#set the cache path
db_path <- normalizePath('.rcache')
db <- memoise::cache_filesystem(db_path)

#add the path to the cache function
db$path <- db_path

#set the data
smc <- hbgd::get_smocc_data()[1:2000,]

#pull from remote
synch_remote(list.files(db_path,full.names = TRUE),action = 'pull')

#initialize the memoised function
init_mem(f = hbgd::get_fit,cache = db,fname = 'mem_hgbd')

# Command line call
memoise_wrapper(f=mem_hgbd,db=db, dat = smc, y_var = 'haz', method='brokenstick')

# push to remote
synch_remote(list.files(db_path,full.names = TRUE),action = 'push')


# Shiny app (handles for the user the remote push/pull)
memofit(data=smc,db = db, f=mem_hgbd)
```
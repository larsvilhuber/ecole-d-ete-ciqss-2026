# Solution to the Day 1 exercise in R

```r

# master file

library(here)

rootdir = here::here()
datadir = file.path(rootdir,"data","raw")
codedir = file.path(rootdir,"code")
results = file.path(rootdir,"results")

if (!file.exists(datadir))  {
  dir.create(datadir,recursive = TRUE)
}

if (!file.exists(results))  {
  dir.create(results,recursive = TRUE)
}



source(file.path(codedir,"download.R"), echo=TRUE)
```

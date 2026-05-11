# Solution to the Day 1 exercise in R

## `main.R`

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

## `download.R`

```r
# Ceci est mon code R

## Modules

## Parametres

URL = "https://www.cepii.fr/distance/dist_cepii.dta"
dyadic = file.path(datadir,"dist_cepii.dta")

if (file.exists(dyadic)) {
  message("Utilisation du fichier existant")
} else {
  message("Telechargement du fichier")
  download.file(url=URL,destfile=dyadic)
}
```

# uploaded on 2023-08-24 7:38PM PST
#instructions: https://bioconductor.org/packages/3.17/bioc/vignettes/HubPub/inst/doc/CreateAHubPackage.html
library("AzureStor")
library(purrr)
library(here)
sas <- "sp=racwli&st=2023-08-22T14:41:34Z&se=2023-09-05T22:41:34Z&spr=https&sv=2022-11-02&sr=c&sig=%2Fg6tVZfJIlaNJKzyCqaLKHu1TqkfbguEL0m61ZKRX7E%3D"
url <- "https://bioconductorhubs.blob.core.windows.net/staginghub?sp=racwli&st=2023-08-22T14:41:34Z&se=2023-09-05T22:41:34Z&spr=https&sv=2022-11-02&sr=c&sig=%2Fg6tVZfJIlaNJKzyCqaLKHu1TqkfbguEL0m61ZKRX7E%3D"
ep <- storage_endpoint(url, sas = sas)
container <- storage_container(ep, "staginghub")

files <- c( 'valBMIQ.rds', 'valMeta.rds')
src <- files |>
    purrr::map_chr(~here::here('data-raw',.x))

stopifnot(file.exists(src))
dest <- paste0("eoPredData/", files)

src
dest

storage_multiupload(container, src = src, dest=dest)

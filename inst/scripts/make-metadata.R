library(dplyr)
library(readr)
library(here)
metadata <- tibble(
    Title = c('eoPredModel', 'valBMIQ', 'valMeta'),
    Description = c(
        'Pre-trained eoPred model',
        'Example test data - BMIQ normalized betas matrix',
        'Example test data - Sample metadata'),
    BiocVersion = '3.18',
    Genome = 'hg19',
    SourceType = 'RDS',
    SourceUrl = 'https://github.com/wvictor14/planet',
    SourceVersion = 'v1.0.0',
    Species = 'Homo sapiens',
    TaxonomyId = NA_character_,
    Coordinate_1_based = TRUE,
    DataProvider = 'University of British Columbia',
    Maintainer = 'Iciar Fernandez <Iciar.Fernandez@bcchr.ca>',
    RDataClass = c('mixo_splsda', 'matrix', 'data.frame'),
    DispatchClass = 'Rds',
    RDataPath = c('eoPredData/eoPredModel.rds', 'eoPredData/valBMIQ.rds', 'eoPredData/valMeta.rds'),
    Tags = c('DNA methylation')
)
metadata %>% readr::write_csv(here::here('inst', 'extdata', 'metadata.csv'))

readr::read_csv(here::here('inst', 'extdata', 'metadata.csv')) %>%
    View

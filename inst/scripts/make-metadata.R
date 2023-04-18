library(dplyr)
library(readr)
metadata <- tibble(
    Title = c('eoPredModel', 'x_test'),
    Description = c('Pre-trained eoPred model', 'Example test data'),
    BiocVersion = '3.17',
    Genome = 'hg19',
    SourceType = 'RDS',
    SourceUrl = 'https://github.com/wvictor14/planet',
    SourceVersion = 'v1.0.0',
    Species = 'Homo sapiens',
    TaxonomyId = NA_character_,
    Coordinate_1_based = TRUE,
    DataProvider = 'University of British Columbia',
    Maintainer = 'Iciar Fernandez <Iciar.Fernandez@bcchr.ca>',
    RDataClass = c('mixo_splsda', 'matrix'),
    DispatchClass = 'Rds',
    RDataPath = c('eoPredData/eoPredModel.rds', 'eoPredData/x_test.rds'),
    Tags = c('DNA methylation')
)
metadata %>% readr::write_csv(here::here('inst', 'extdata', 'metadata.csv'))

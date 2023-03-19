library(dplyr)
metadata <- tibble(
    Title = c('eoPredModel', 'x_test'),
    Description = c('Pre-trained eoPred model', 'Example test data'),
    BiocVersion = '3.16.0',
    Genome = 'hg19',
    SourceType = 'RDS',
    SourceUrl = 'TBD',
    Species = 'Homo sapiens',
    TaxonomyId = NA_character_,
    Coordinate_1_based = NA,
    DataProvider = 'University of British Columbia',
    Maintainer = 'Iciar Fernandez <Iciar.Fernandez@bcchr.ca>',
    RDataClass = c('mixo_splsda', 'matrix'),
    DispatchClass = 'Rds',
    RDataPath = c('eoPredData/eoPredModel.rds', 'eoPredData/x_test.rds'),
    Tags = c('DNA methylation')
)
metadata %>% readr::write_csv(here::here('inst', 'extdata', 'metadata.csv'))

# cause of death ----

cause_of_death <- readxl::read_xlsx(system.file("rawdata", "cause_of_death.xlsx",
                              package = "medicode"))

cause_of_death <- data.table::setDT(cause_of_death)
save(cause_of_death, file = "data/cause_of_death.rda", compress = "xz")







# icd NO ----
# data path set to the local data folder;
# later set to package folder

local_data_path <- '~/Documents/Data/icd/'



# icd10 no

icd10_no_raw <- readxl::read_xlsx(paste0(local_data_path, 'icd10_nor.xlsx'))
head(icd10_no_raw)

icd10_no_raw <- data.table::setDT(icd10_no_raw)
icd10_no <- data.table::copy(icd10_no_raw[, 1:2])

icd10_no[Kode == 'A009']

# change name
data.table::setnames(icd10_no, 'Kode', 'Code')
data.table::setnames(icd10_no, 'Tekst uten lengdebegrensning', 'description_no')

nrow(icd10_no) # 19637

save(icd10_no, file = "data/icd10_no.rda", compress = "xz")



# icd EN ----

icd10_en_raw <- readxl::read_xlsx(paste0(local_data_path, 'icd10_en.xlsx'))

icd10_en_raw <- data.table::data.table(icd10_en_raw)
icd10_en_raw

icd10_en <- data.table::copy(icd10_en_raw[, c(1, 3)])
icd10_en
data.table::setnames(icd10_en, 'CODE', 'Code')
data.table::setnames(icd10_en, 'LONG DESCRIPTION (VALID ICD-10 FY2023)', 'description_en')

icd10_en
save(icd10_en, file = "data/icd10_en.rda", compress = "xz")


# only need the ones that match norwegian

# devtools::install_github("abresler/gdeltr2")
library(gdeltr2)
library(tidyverse)

# GDELT codebooks
gkg_codes <- dictionary_ft_codebook(code_book = "gkg")
imagetags_codes <- dictionary_ft_codebook(code_book = "imagetags")
imageweb_codes <- dictionary_ft_codebook(code_book = "imageweb")
languages_codes <- dictionary_ft_codebook(code_book = "languages")
countries_codes <- dictionary_ft_codebook(code_book = "countries")


# Draw 25 news pieces from Germany in German language from the last 24 hours
ukraine_24_hrs_german <- ft_v2_api(terms = c("Ukraine"), maximum_records = 25, 
                                  source_countries = "GM", source_languages = "German",
                                  visualize_results = F, timespans = c("24 hours"))

# Vizualise the results by setting visualize_results = T
ukraine_24_hrs_german_viz <- ft_v2_api(terms = c("Ukraine"), maximum_records = 25, 
                                   source_countries = "GM", source_languages = "German",
                                   visualize_results = T, timespans = c("24 hours"))

# Some German news domains
news_domains <- c("zeit.de", "spiegel.de", "sz.de", "jungefreiheit.de")


# Draw maximum of 250 news pieces the four German Domains
domains_24_hrs_german <- ft_v2_api(domains = news_domains, maximum_records = 250, 
                                   source_countries = "GM", source_languages = "German",
                                   visualize_results = F, timespans = c("24 hours"))


# Draw maximum of 250 news pieces from spiegel.de
spiegel_24_hrs_german <- ft_v2_api(domains = "spiegel.de", maximum_records = 250, 
                                   source_countries = "GM", source_languages = "German",
                                   visualize_results = F, timespans = c("24 hours")) %>% 
  filter(domainArticle == "spiegel.de")


# Draw maxmimum of 250 news pieces from spiegel.de
spiegel_24_hrs_german <- ft_v2_api(domains = "spiegel.de", maximum_records = 250, 
                                   source_countries = "GM", source_languages = "German",
                                   visualize_results = F, timespans = c("24 hours")) %>% 
  filter(domainArticle == "spiegel.de")


# Draw maxmimum of 250 news pieces from spiegel.de for the date 2022-04-13
spiegel_13_04_22_german <- ft_v2_api(domains = "spiegel.de", maximum_records = 2500, 
                                   source_countries = "GM", source_languages = "German",
                                   visualize_results = F, timespans = c("52 weeks"))
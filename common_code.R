
# Packages
library(ggplot2)
library(sjPlot)
library(kableExtra)
library(knitr)
library(dplyr)
library(tidyverse)
library(questionr)

# Global options
opts_chunk$set(echo = FALSE, warning=FALSE, message=FALSE, cache=FALSE, fig.height=4, fig.width=6, fig.align = 'center')
sjPlot::set_theme(base = theme_bw())

# Helper functions

## display text answers without blank lines
display.text <- function(data, var){
  data %>% filter(!!as.symbol(var)!="") %>% select(!!as.symbol(var)) %>%
    kable(col.names=NULL) %>% 
    kable_styling(full_width = FALSE, 
                  bootstrap_options =c("striped", "responsive", "hover", "condensed"))
}

# Load data
load("../data/bns_clean.Rdata")
bns <- out

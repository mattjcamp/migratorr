peek <- function(tablename,
                 conn = cn) {
                    
    get(tablename = tablename, limit = TRUE) %>% 
        head(1) %>%
        glimpse()
    
}

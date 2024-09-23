show <- function(tablename,
                 filter = NULL,
                 conn = cn) {
    get(
        tablename = tablename
        , filter = filter) %>% 
    View()
}

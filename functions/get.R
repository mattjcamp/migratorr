get <- function(tablename,
                 filter = NULL,
                 conn = cn,
                 limit = FALSE
                 ) {
    stopifnot(as.character(class(conn)) %in% c("SQLiteConnection"))

    # SQLITE

    sql <- "SELECT * FROM TABLENAME" %>%
        str_replace_all("TABLENAME", tablename)

    if (!is.null(filter)) {
        filter <- ifelse(str_starts(filter, "WHERE"), str_remove(filter, "WHERE"), filter)
        filter <- paste0("WHERE ", filter)
        sql <- paste0(sql, " ", filter)
    }

    if (limit) sql <- paste(sql, "LIMIT 100")

    # END SQLITE

    sql %>% query(conn)

}

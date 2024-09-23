query <- function(sql,
                  conn = cn) {

    sql %>% dbr::pull_data(conn)

}

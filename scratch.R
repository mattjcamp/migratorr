source(paste0(here::here(), "/load_functions.R"))

dbr::show_tables(cn)
"TagValues" %>% show()
"ContentInNoteAndControl" %>% show(filter = "ContentTextValue IS NOT NULL")
"SELECT * FROM ContentInNoteAndControl WHERE ContentTextValue IS NOT NULL" %>% query()

cn %>% close_connection()

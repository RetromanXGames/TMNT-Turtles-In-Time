macro gameText_ingame(text) {
 table "tables\in_game_script.tbl"
 db {text}
}

macro gameText_stage_intro(text) {
 table "tables\stage_intro.tbl"
 db {text}
}

macro gameText_stage_end(text) {
 table "tables\stage_end.tbl"
 db {text}
}

macro gameText_select_your_turtle(text) {
 table "tables\select_your_turtle.tbl"
 db {text}
}

macro gameText(text) {
 table "tables\tbl_scripts.tbl"
 db {text}
}

macro newline() {
  db NEWLINE
}

macro newpage() {
  db NEWPAGE
}

macro endstring() {
  db ENDSTRING
}

macro newspace() {
  db NEWSPACE
}


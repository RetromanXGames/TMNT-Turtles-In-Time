press_push_start_0000: 
    dw $530B
    gameText_ingame("push start")
 endstring()
 
press_push_start_0001: 
    dw $5247
    gameText_ingame("game level  -")
 newline()
    dw $528B
    gameText_ingame("game  time")
 newline()
    dl $0E52CE
 newline()
    dl $0D52D1
 endstring()
 
press_push_start_0002: 
    dw $5254
    gameText_ingame("easy")
 endstring()

press_push_start_0003: 
    dw $5254
    gameText_ingame("normal")
endstring()

    dw $526B
    gameText_ingame("press start")
endstring()

    dl $F6528B
 newline()
    dl $0052CB
 endstring()
 
press_push_start_0004: 
    dl $00528B
 newline()
    dl $F652CB
 endstring()
 
press_push_start_0005: 
    dw $528C
    gameText_ingame("continue")
endstring()

press_push_start_0006: 
    $52CC
    gameText_ingame("new game")
endstring()


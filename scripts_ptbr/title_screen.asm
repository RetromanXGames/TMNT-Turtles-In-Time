title_screen_script_0000:
//---------String Adjust Layout------------
//-----[Y][X]
    dw $5283
    gameText_ingame("1 jogador")
 endstring()

title_screen_script_0001:
//---------String Adjust Layout------------
//-----[Y][X]
    dw $52C3
    gameText_ingame("2 jogadores")
 endstring()

title_screen_script_0002:
//---------String Adjust Layout------------
//-----[Y][X]
    dw $52D1
    gameText_ingame("duelo")
 endstring()

title_screen_script_0003:
//---------String Adjust Layout------------
//-----[Y][X]
    dw $5291
    gameText_ingame("contra o")
newline()
    dw $529A
    gameText_ingame("(hifen)")
newline()    
    dw $52B7
    gameText_ingame("relogio")    
 endstring()

title_screen_script_0004:
//---------String Adjust Layout------------
//-----[Y][X]
    dw $5303
    gameText_ingame("opçoes")
newline()    
    dw $52E6
    gameText_ingame("~")
newline()    
    dw $5325
    gameText_ingame("(ç)")    
 endstring()

title_screen_script_0005:
//---------String Adjust Layout------------
//-----[Y][X]
    dw $534B 
    gameText_ingame("@ 1992 konami")
 newline()
//---------String Adjust Layout------------
//-----[Y][X]
    dw $5362
    gameText_ingame("todos os direitos reservados.")
 endstring()


title_screen_script_0006_pointer_1_player:
//-----[Y][X]
    dl $F65282  
 newline()
//-----[Y][X]
    dl $0052C2
 newline()
//-----[Y][X]
    dl $005302
 newline()
//-----[Y][X]
    dl $005290
 newline()
//-----[Y][X]
    dl $0052D0
 endstring()


title_screen_script_0006_pointer_2_players: 
//-----[Y][X]
    dl $005282
 newline()
//-----[Y][X]
    dl $F652C2
 newline()
//-----[Y][X]
    dl $005302
 newline()
//-----[Y][X]
    dl $005290
 newline()
//-----[Y][X]
    dl $0052D0
 endstring()


title_screen_script_0006_pointer_versus: 
//-----[Y][X]
    dl $005282
 newline()
//-----[Y][X]
    dl $0052C2
 newline()
//-----[Y][X]
    dl $005302
 newline()
//-----[Y][X]
    dl $005290
 newline()
//-----[Y][X]
    dl $F652D0
 endstring()


title_screen_script_0006_pointer_time_trial: 
//-----[Y][X]
    dl $005282
 newline()
//-----[Y][X]
    dl $0052C2
 newline()
//-----[Y][X]
    dl $005302
 newline()
//-----[Y][X]
    dl $F65290
 newline()
//-----[Y][X]
    dl $0052D0
 endstring()


title_screen_script_0006_pointer_options: 
//-----[Y][X]
    dl $005282
 newline()
//-----[Y][X]
    dl $0052C2
 newline()
//-----[Y][X]
    dl $F65302
 newline()
//-----[Y][X]
    dl $005290
 newline()
//-----[Y][X]
    dl $0052D0
endstring()
messages_hud_0000:
    gameText_ingame("WAIT A MOMENT ")
 endstring()

messages_hud_0001:
    gameText_ingame("              ")
 endstring()

messages_hud_0002:
//--------String Adjust-------------------------------------
//-----[Y][X][PAL][ALIGN]-----------------------------------
    dw $5044
//--------String Adjust-------------------------------------
//-----[Y][X][PAL][ALIGN]-----------------------------------
    dw $5054   
    gameText_ingame("PRESS START")
 endstring()

messages_hud_0003:
    gameText_ingame("(1)P SELECT  ")
 endstring()

messages_hud_0004:
    gameText_ingame("(2)P SELECT  ")
 endstring()

messages_hud_0005:
    gameText_ingame("GAME OVER ")
 endstring()

messages_hud_0006:
    gameText_ingame(" CONTINUE  ")
 endstring()

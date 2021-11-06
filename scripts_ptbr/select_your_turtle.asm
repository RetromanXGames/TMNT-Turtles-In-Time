//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxx    SELECT YOUR TURTLES    xxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----AJUSTE DA POSIÇÃO INICIAL DA STRING-----------------------------------
//-----[Y][X]----------------------------------------------------------------
    dw $50A7
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//--------SCRIPT-------------------------------------------------------------
    gameText_select_your_turtle("ESCOLHA A TARTARUGA")
newline()
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----AJUSTE DA POSIÇÃO INICIAL DA STRING-----------------------------------
//-----[Y][X]----------------------------------------------------------------
    dw $50C7
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//--------SCRIPT-------------------------------------------------------------
    gameText_select_your_turtle("(E)(S)(C)(O)(L)(H)(A) (A) (T)(A)(R)(T)(A)(R)(U)(G)(A)")
endstring()
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxx    CONTINUE    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----AJUSTE DA POSIÇÃO INICIAL DA STRING-----------------------------------
//-----[Y][X]----------------------------------------------------------------
    dw $50AB
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//--------SCRIPT-------------------------------------------------------------
    gameText_select_your_turtle("CONTINUAR ?")
newline()
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    dw $50CB
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//--------SCRIPT-------------------------------------------------------------
    gameText_select_your_turtle("(C)(O)(N)(T)(I)(N)(U)(A)(R) (?)")
endstring()
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
////xxxxxxxxxxxxxxxxxxxxxxxxxx    BLANK    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
////-----AJUSTE DA POSIÇÃO INICIAL DA STRING-----------------------------------
////-----[Y][X]----------------------------------------------------------------
//    dw $50A6
////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
////--------SCRIPT-------------------------------------------------------------
//    gameText_select_your_turtle("                   ")
//newline()
////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//
////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
////-----AJUSTE DA POSIÇÃO INICIAL DA STRING-----------------------------------
////-----[Y][X]----------------------------------------------------------------
//    dw $50C6
////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
////--------SCRIPT-------------------------------------------------------------
//    gameText_select_your_turtle("                   ")
//endstring()
////xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


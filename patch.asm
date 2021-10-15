//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxx    Project Information in English    xxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxx    Informações Sobre o Projeto em Português    xxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxxxxxxxxxxxx    Game    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxxxxxxxxxxx    Projeto    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//                      Game translation project:                           //                    Projeto de tradução do Jogo:                          //
//              Ganbare Goemon - Yuki hime Kyuushuutsu emaki                //              Ganbare Goemon - Yuki hime Kyuushuutsu emaki                //
//               of Super Nintendo for Brazilian Portuguese                 //              de Super Nintendo para o Português do Brasil                //                              
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxxxxxxxxxxx    Thanks    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxxxxxxxx    Agradecimentos    xxxxxxxxxxxxxxxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//    I have to thank Anime_World a lot, he is a Brazilian romhacker and    //     Eu tenhos que agradecer muito ao Anime_World, ele é um romhacker     //
//       my Sensei, thanks man, for putting up with me all this time.       // Brasilieiro e meu Sensei, obrigado man, por me aguentar todo esse tempo. //
//              Without him I wouldn't have made it this far.               //               Sem ele eu não teria chegado tão longe.                    //
//                                                                          //                                                                          //
//    I would also like to thank you for your great work on hacking and     //      Eu queria agradecer também ao grande trabalho no hacking e na       //
// translating this game through DDSTranslation, Tom, FlashPV, and Akira76. //   tradução desse jogo pelo DDSTranslation, Tom, FlashPV, e o Akira76.    //
//   Without their work, I would not have this project in progress today.   // Sem o trabalho deles eu não estaria hoje com esse projeto em andamento.  //
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxx    Distribution of Patch Asm    xxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxx    Distribuição do Patch Asm    xxxxxxxxxxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//    In order to also help anyone who wants to take this game to their	    //    Com o objetivo de ajudar também quem desejar levar esse jogo para     //
//          native language, I am making this PATCH ASM available.			//       sua linguagem nátiva, estou disponíbilizando esse PATCH ASM.		//
//       I tried to make it as practical as possible, I also followed       //    Procurei deixar ele o mais prático possível, também seguimentei		//
//          a lot to try to make it easier for anyone to edit.				//   muita coisa para tentar deixar ele mais fácil pra qualquer pessoa		//
//           This is still an ongoing project, so a lot still				//    editar. Esse ainda é um projeto em andamento, então muita coisa       //
//                 needs to be done and also improved.                      //              precisa ser feita ainda e também melhorada.                 //
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------    SYSTEM ARCHITECTURE: Super Nintendo   -----------------	
//---------------   ARQUITETURA DO SISTEMA: Super Nintendo   ----------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    arch snes.cpu
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------------  ROM TYPE: little-endian   -------------------------
//--------------------  TIPO DA ROM: little-endian  -------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    endian lsb
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//-----------------------  Patched ROM: atched.smc   ------------------------
//--------------------  ROM Patcheada: patcheada.smc   ----------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    output "TMNT_IV(BR).sfc",create
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------------  Original ROM   -------------------------------
//---------------------------  ROM Original   -------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $00000000
	insert "TMNT_IV(USA).sfc"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//--------------------       Constants        -------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    include "asm\Constantes.asm"
	include "asm\macro.asm"
    //include "lib\snes.asm"
	//include "lib\snes_gfx.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	

    



//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------------------------------------------------------------------
//-----------------------    SCRIPTS     ------------------------------------
//---------------------------------------------------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxx    STAGE INTRO SCRIPT    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    POINTERS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	origin $00F429
    include "asm\pointers_stage_intro.asm"	
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    SCRIPTS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	include "scripts_ptbr\stage_intro.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxx    STAGE CLEAR SCRIPT    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    POINTERS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	origin $00F6CE
    include "asm\pointers_stage_clear.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    SCRIPTS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	include "scripts_ptbr\stage_clear.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxx    TITLE SCREEN MENU SCRIPT    xxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    POINTERS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	origin $0230CF
    include "asm\pointers_title_screen.asm"	
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    SCRIPTS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	origin $0085BD
    include "scripts_ptbr\title_screen.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxx    OPTION MODE MENU SCRIPT    xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    POINTERS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	origin $00D7FA
    include "asm\pointers_option_mode.asm"	
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    SCRIPTS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	origin $008694
    include "scripts_ptbr\option_mode.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxx    HUD SCRIPTS    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxx    HUD Names     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------   Pointers Table HUD Names   ---------------------------
	origin $00E5A3
    include "asm\pointers_name_hud.asm"	
//-------------------    Script HUD Names    --------------------------------
	origin $00E5AB
    include "scripts_ptbr\name_hud.asm"
//---------------------------------------------------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxx    HUD MESSAGES     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----------------    Script Sound Options    ------------------------------
	include "scripts_ptbr\messages_hud.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxx    HUD SETUP     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
origin $00E597
//---------------------------------------------------------------------------------------
//-----Adjust Position Name of Characters on Player 1------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $5024
//---------------------------------------------------------------------------------------
//-----Adjust Position Name of Characters on Player 2------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $5034
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
origin $00E5DD
//---------------------------------------------------------------------------------------
//-----Adjust Position of Points Counter on Player 1-------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $502B
//---------------------------------------------------------------------------------------
//-----Adjust Position of Points Counter on Player 2-------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $503B
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
origin $00E5EB
//---------------------------------------------------------------------------------------
//-----Adjust Position of PLEASE WAIT----------------------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $5051
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
origin $00E5E1
//---------------------------------------------------------------------------------------
//-----Adjust Position of Life Counter on Player 1---------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $5042
origin $00E5E3
//---------------------------------------------------------------------------------------
//-----Adjust Position of Life Counter on Player 2---------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $5052
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
origin $00E60B
//---------------------------------------------------------------------------------------
//-----Adjust Position of PRESS START/SELECT P1-P2/CONTINUES/GAME OVER on Player 1 HUD---
//-----[Y][X]----------------------------------------------------------------------------
    dw $5044
//---------------------------------------------------------------------------------------
//-----Adjust Position of PRESS START/SELECT P1-P2/CONTINUES/GAME OVER on Player 2 HUD---
//-----[Y][X][PAL][ALIGN]----------------------------------------------------------------
    dw $5054   
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
origin $00E5E5
//---------------------------------------------------------------------------------------
//-----Adjust Position of Select Player Countdown on Player 1----------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $504E
//---------------------------------------------------------------------------------------
//-----Adjust Position of Select Player Countdown on Player 2----------------------------
//-----[Y][X][PAL][ALIGN]----------------------------------------------------------------
    dw $505E   
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
origin $00E5CB
//---------------------------------------------------------------------------------------
//-----Life Bar Position in HUD on Player 1----------------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $5046
//---------------------------------------------------------------------------------------
//-----Life Bar Position in HUD on Player 2----------------------------------------------
//-----[Y][X][PAL][ALIGN]----------------------------------------------------------------
    dw $5056    
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
origin $00E77C
//---------------------------------------------------------------------------------------
//-----Turtle Face Position in HUD on Player 1-------------------------------------------
//-----[Y][X]----------------------------------------------------------------------------
    dw $5041
//---------------------------------------------------------------------------------------
//-----Turtle Face Position in HUD on Player 2-------------------------------------------
//-----[Y][X][PAL][ALIGN]----------------------------------------------------------------
    dw $5051    
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------------------



//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------------------------------------------------------------------	
//xxxxxxxxxxxxxxxxxxxxxxxxxx    GFX     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------------------------------------------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxxxxxxxxxxxxxxxxxxxx   FONTS   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxx    FONT 1    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//    origin $087C37
//	insert "gfx_ptbr\font_1_87C37_compressed.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxx    FONT 2    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
    origin $104300
	insert "gfx_ptbr\font_1_80000_compressed.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxx   Ponteiro   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $012225
    dl $20C300
    origin $012571
    dl $20C300
    origin $012621
    dl $20C300
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxx    HUD TILEMAP    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
    origin $100000
	insert "gfx_ptbr\tilemap_hud_grid_080C23_compressed.bin"
    origin $01259A
    dl $208000
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxxxxxxxx   BRANCH FROM EXTRA CHARACTERS OF FONT   xxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxx   GFX FROM EXTRA CHARACTERS OF FONT   xxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $103A00
extra_chars:
	insert "gfx_ptbr\font_1_80000_extra_characters.bin"
extra_chars_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxxxxxx   BRANCH FROM EXTRA CHARACTERS OF FONT INGAME  xxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $0026A3
  	jml    $228000
    
    origin $110000
	include "asm\extra_characters_1.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxx   BRANCH FROM EXTRA CHARACTERS OF FONT IN PLAYER SELECT  xxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $02145D
  	jml    $21A000
    
    origin $10A000
	include "asm\extra_characters_2.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxx   BRANCH FROM EXTRA CHARACTERS OF FONT WHEN START GAME   xxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $0112E1
  	jml    $21D000
    
    origin $10D000
	include "asm\extra_characters_3.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxxx   BRANCH FROM EXTRA CHARACTERS OF FONT IN END STAGE 2  xxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $0017D7
  	jml    $218600

    origin $107200
extra_chars_menu_title_screen:
    insert "gfx_ptbr\font_8000_extra_characters_title_screen_menu.bin"
extra_chars_menu_title_screen_end:

    
    origin $108600
	include "asm\extra_characters_6.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxxxxxx   BRANCH FROM EXTRA CHARACTERS OF OPTION MODE   xxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxx   GFX FROM EXTRA CHARACTERS OF OPTION MODE   xxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $105700
extra_chars_2:
	insert "gfx_ptbr\font_1_80000_extra_characters3.bin"
extra_chars_2_end:

    origin $106700
tilemap_options_mode:
	insert "gfx_ptbr\tilemap_option_mode_2.bin"
tilemap_options_mode_end:

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxx   TILEMAP FROM EXTRA CHARACTERS OF OPTION MODE   xxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $0017B7
  	jml    $20D400
    
    origin $105400
	include "asm\extra_characters_4.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//xxxxxxxxxxxxxxxxxxxxxxxx   TITLE SCREEN   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxx   GFX TITLE SCREEN   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
    origin $05A526
	insert "gfx_ptbr\title_screen_05A526_compressed.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxx   TILEMAP TITLE SCREEN   xxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
    origin $06F4FE
	insert "gfx_ptbr\title_screen_tilemap_06F4FE_compressed.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxx   TURTLES IN TIME SCREEN   xxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
    origin $0E6EB8
	insert "gfx_ptbr\title_screen_turtle_in_time_0E6EB8_compressed.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//---------------------------------------------------------------------------

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxx    GAME OVER    xxxxxxxxxxxxxxxxxxxxxxxxXxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
    origin $081DB6
	insert "gfx_ptbr\game_over_081DB6_compressed.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx





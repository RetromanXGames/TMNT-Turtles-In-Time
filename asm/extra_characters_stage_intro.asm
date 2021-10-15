//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxx    INTRUÇÕES ORIGINAIS DE ONDE EU COLOQUEI O DESVIO    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    lda $0000,x
    inx 
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx    COMPARE    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    pha 
    phx 
    phy
    cpx     #$F43D
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F470
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F47B
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F43D
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F49B
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F4BF
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F4FA
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F536
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F561
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F598
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$F536
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$FE20
    beq     desvio_branch_extra_characters_stage_intro
    cpx     #$FE70
    beq     desvio_branch_extra_characters_stage_intro
    bra     retorno_branch_extra_characters_stage_intro
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

desvio_branch_extra_characters_stage_intro:

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx    EXTRA CHARACTERS OPTION MODE    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


    ldx     #($8000>>1)   // VRAM Dest* | endereço de destino do grafico na VRAM (aonde vou sobreescrever)
    stx     VDP_DATA
    
    lda     #$0001        // DMA Mode
    sta     REG_DMAP0
    lda     #$0018        // DMA Dest
    sta     REG_BBAD0
    ldx     #$F200      // DMA Src* | Endereço de SNES do gráfico na ROM
    stx     REG_A1T0L
    lda     #$0020       // DMA Bank*| Banco de SNES do gráfico na ROM
    sta     REG_A1B0
    ldx     #(extra_chars_menu_title_screen_end-extra_chars_menu_title_screen)        // Size* | Tamanho do grafico FIM DO GRAFICO - INICIO DO GRAFICO
    stx     REG_DAS0L

    lda     #$0001        // DMA Start
    sta     REG_MDMAEN
	
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

retorno_branch_extra_characters_stage_intro:

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxx    RETORNO//RETURN    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    ply 
    plx 
    pla
    jml     $0097DB
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    


// INTRUCOES ORIGINAIS DE ONDE EU COLOQUEI O DESVIO
    lda    [$00]
    sta    $08
    lda    #$0002
    sta    $06
    

//------------------------------DMA TILEMAP-------------------------------------


    ldx     #($8600>>1)   // VRAM Dest* | endereço de destino do grafico na VRAM (aonde vou sobreescrever)
    stx     VDP_DATA
                          // USAR QUANDO BUGAR A ROTINA
    //rep     #$30          // Coloca em MODO 16 BITS o processador

    lda     #$0001        // DMA Mode
    sta     REG_DMAP0
    lda     #$0018        // DMA Dest
    sta     REG_BBAD0
    ldx     #$8700       // DMA Src* | Endereço de SNES do gráfico na ROM
    stx     REG_A1T0L
    lda     #$0020        // DMA Bank*| Banco de SNES do gráfico na ROM
    sta     REG_A1B0
    ldx     #(hud_new_names_gfx_end-hud_new_names_gfx)        // Size* | Tamanho do grafico FIM DO GRAFICO - INICIO DO GRAFICO
    stx     REG_DAS0L

    lda     #$0001        // DMA Start
    sta     REG_MDMAEN
	
                          // USAR QUANDO BUGAR A ROTINA
    //sep     #$10          // Coloca em MODO 16 BITS o processador // brk - modo errado

    // RETORNO
    jml    $009FC1
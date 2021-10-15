

//------------------------------DMA TILEMAP-------------------------------------

    cpx     #$A59A
    bne     +

    pha
    phx
    phy

    ldx     #($3000>>1)   // VRAM Dest* | endereço de destino do grafico na VRAM (aonde vou sobreescrever)
    stx     VDP_DATA
    lda     #$0001        // DMA Mode
    sta     REG_DMAP0
    lda     #$0018        // DMA Dest
    sta     REG_BBAD0
    ldx     #$A000       // DMA Src* | Endereço de SNES do gráfico na ROM
    stx     REG_A1T0L
    lda     #$0022       // DMA Bank*| Banco de SNES do gráfico na ROM
    sta     REG_A1B0
    ldx     #(hud_extra_end-hud_extra)        // Size* | Tamanho do grafico FIM DO GRAFICO - INICIO DO GRAFICO
    stx     REG_DAS0L

    lda     #$0001        // DMA Start
    sta     REG_MDMAEN

    ply
    plx
    pla 

    +

    lda     $020000,x
    sta     $00

    // RETORNO
    jml     $009FA3
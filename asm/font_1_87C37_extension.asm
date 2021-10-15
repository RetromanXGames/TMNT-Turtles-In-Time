control_gfx:
    lda $020000,x                     //; [INSTRUÇÃO ORIGINAL]
    sta $08                           //; [INSTRUÇÃO ORIGINAL]
    cmp #$8000                        //; [NOVA INSTRUÇÃO] - COMPARA O PONTEIRO
    bne control_gfx_skip              //; [NOVA INSTRUÇÃO] - SE NÃO É O QUE QUEREMOS CONTINUA NORMALMENTE
control_gfx_font_extra_chars:
    sep #$20
    LoadVRAM(gfx_font_extra_chars, 8600, (gfx_font_extra_chars_end-gfx_font_extra_chars), 0)
    rep #$20
    //; [NOVA INSTRUÇÃO] - DMA DO GRAFICO NOVO
control_gfx_skip:
    lda #$0002                  //; [INSTRUÇÃO ORIGINAL]
    sta $06                     //; [INSTRUÇÃO ORIGINAL]
    jml $009993                 //; [NOVA INSTRUÇÃO] RETORNA O DESVIO

    //---Endereço da Tabela de Ponteiros - $02A553/$12553
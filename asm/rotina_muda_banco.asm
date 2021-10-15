  origin $011319
    jml      $20A050
    origin   $102000
jml_029318:
    rtl
jml_029302:
    inc $72
    rtl
jml_02953e:
    jsl $04dc8b
    jsl $04e3fd
    stz $1e78
    jsl $048439
    inc $72
    rtl 

    origin   $102050
    lda $1D28
    bne jml_029318
    jsl $04af1a
    lda $82
    cmp #$0008
    bne jml_029302
    lda #$0006
    sta $72
    brl jml_02953e
    lda $82
    asl 
    tay 
    lda $f3ed,y
    tay 
    jsl $00a152
    jsl $049834
    lda #$000f
    sta $1e78
    jsl $04fbda
    ldx #$08d0
    jsl $0486be
    jsl $00e67e
    inc $14,x
    lda $82
    asl 
    tay 
    lda $f429,y
    tay
    //--
    lda #$0020
    pha
    plb
    pla
    //--
    lda $0000,y
    sta $36,x
    iny 
    iny 
    lda $0000,y
    sta $32,x
    iny 
    iny 
    sty $34,x
    //--
    lda #$0001
    pha
    plb
    pla
    //--
    lda #$8e00
    sta $02,x
    lda #$3000
    sta $04,x
    lda #$0080
    sta $08,x
    lda $82
    cmp #$0007
    beq jmp_0293ab
    cmp #$0008
    beq jmp_0293d3
    asl 
    asl 
    tay 
    lda $f401,y
    and #$00ff
    sta $0c,x
    lda $f401,y
    xba 
    and #$00ff
    sta $00
    lda $f403,y
    tay 
    lda $00
    jsl $04d26a
    bra jmp_0293fc
jmp_0293ab:
    inc $14,x
    lda #$b181
    sta $00,x
    lda #$0080
    sta $08,x
    lda #$00c0
    sta $0c,x
    jsl $058a9c
    lda #$8e00
    sta $72,x
    sta $0462,x
    sta $0852,x
    lda #$2020
    sta $0464,x
    bra jmp_0293fc
jmp_0293d3:
    lda #$96ee
    sta $00,x
    lda #$0080
    sta $08,x
    lda #$009c
    sta $0c,x
    phx 
    lda #$0080
    sta $18
    lda #$0050
    sta $1a
    jsl $00f17a
    plx 
    stz $18b2
    ldy #$80a6
    jsl $008a2d
jmp_0293fc:
    lda #$0200
    sta $38,x
    lda #$0020
    sta $3a,x
    lda $82
    asl 
    tay 
    lda $f5ed,y
    sta $3c,x
    stz $18b4
    inc $72
    rtl

origin $011415
    jml      $20C000

origin $103FE0
jmp_0294cd_fix:
    lda #$0020
    sta $38,x
    ldy #$91cd
    jsl $00a152
    inc $72
    rtl 
jmp_0294cc_fix:
    rtl
origin $104000
    lda $2e
    ora $18b4
    sta $18b4
    ldx #$08d0
    lda $82
    cmp #$0007
    bne jmp_02942c
    jsr $9524
    bra jmp_02943a
jmp_02942c:
    cmp #$0008
    bne jmp_029436
    jsr $959d
    bra jmp_02943a
jmp_029436:
    jsl $04d2a7
jmp_02943a:
    dec $3a,x
    bne jmp_029442
    jsl $04fbe5
jmp_029442:
    dec $3c,x
    bpl jmp_029451
    lda $18b4
    bit #$f0f0
    beq jmp_029451
    jml $20C0cf
jmp_029451:
    dec $38,x
    beq jmp_0294cd_fix
    lda $78
    and #$0003
    bne jmp_0294cc_fix
    
    ldy $34,x

    //--
    phy
    sep #$10
    ldy #$20
    phy
    plb
    rep #$10
    ply
    //--

    lda $0000,y
    and #$00ff

    //--
    phy
    sep #$10
    ldy #$01
    phy
    plb
    rep #$30
    ply
    //--
    
    cmp #$00fe
    beq jmp_0294b3
    cmp #$00ff
    beq jmp_0294cc_fix
    ldy $32,x
    phx 
    jsl $008d3e
    plx 
    ldy $34,x
    
    //--
    lda #$0020
    pha
    plb
    pla
    //--

    lda $0000,y

    //--
    lda #$0001
    pha
    plb
    pla
    //--
    and #$00ff
    ora $36,x

    phx 
    jsl $008d74
    jsl $008d7f
    plx 

    lda $32,x
    clc 
    adc #$0020
    tay 
    phx 
    jsl $008d3e
    plx 
    ldy $34,x

    //--
    //lda #$0020
    //pha
    //plb
    //pla
    //--

    lda $0000,y
    and #$00ff
    beq jmp_0294a5
    clc 
    adc #$0010
jmp_0294a5:
    ora $36,x
    phx 
    jsl $008d74
    jsl $008d7f
    
    //--
    //lda #$0001
    //pha
    //plb
    //pla
    //--

    plx 
    bra jmp_0294c8
jmp_0294b3:
    ldy $34,x
    iny
    
    //--
    //lda #$0020
    //pha
    //plb
    //pla
    //--

    lda $0000,y
    sta $36,x
    iny 
    iny 
    lda $0000,y
    sta $32,x
    iny 
    iny 
    sty $34,x
    
    //--
    //lda #$0001
    //pha
    //plb
    //pla
    //--

    bra jmp_0294cc
jmp_0294c8:
    inc $34,x
    inc $32,x
jmp_0294cc:
    rtl 
jmp_0294cd:
    lda #$0020
    sta $38,x
    ldy #$91cd
    jsl $00a152
    inc $72
    rtl 
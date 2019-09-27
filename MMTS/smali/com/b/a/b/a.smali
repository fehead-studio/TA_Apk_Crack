.class public Lcom/b/a/b/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/androlua/LuaTokenTypes;)I
    .locals 1

    sget-object v0, Lcom/b/a/b/a$1;->a:[I

    invoke-virtual {p0}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 4

    new-instance v0, Lcom/androlua/LuaLexer;

    invoke-direct {v0, p0}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v1

    if-nez v1, :cond_0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v2

    const-string v3, "switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/b/a/b/a;->a(Lcom/androlua/LuaTokenTypes;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/androlua/LuaLexer;

    invoke-direct {v1, p0}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    :pswitch_0
    :try_start_0
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    sget-object v6, Lcom/androlua/LuaTokenTypes;->NEW_LINE:Lcom/androlua/LuaTokenTypes;

    const/16 v7, 0x20

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, p0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, p0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    sget-object v6, Lcom/b/a/b/a$1;->a:[I

    invoke-virtual {v5}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    mul-int v3, v4, p1

    invoke-static {v3}, Lcom/b/a/b/a;->a(I)[C

    move-result-object v3

    goto :goto_3

    :pswitch_1
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_2
    mul-int v3, v4, p1

    div-int/lit8 v5, p1, 0x2

    sub-int/2addr v3, v5

    invoke-static {v3}, Lcom/b/a/b/a;->a(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    add-int/lit8 v4, v4, -0x1

    mul-int v3, v4, p1

    invoke-static {v3}, Lcom/b/a/b/a;->a(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/b/a/b/a;->a(Lcom/androlua/LuaTokenTypes;)I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    if-ne v5, v6, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/b/a/b/a;->a(Lcom/androlua/LuaTokenTypes;)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v5

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(I)[C
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    new-array p0, v0, [C

    return-object p0

    :cond_0
    new-array v1, p0, [C

    :goto_0
    if-ge v0, p0, :cond_1

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

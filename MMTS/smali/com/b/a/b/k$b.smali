.class Lcom/b/a/b/k$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/k;

.field private final b:Lcom/b/a/b/k;

.field private final c:Lcom/b/a/b/g;

.field private d:Z

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/b/a/b/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/b/k;Lcom/b/a/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/b/k$b;->a:Lcom/b/a/b/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/b/a/b/k$b;->d:Z

    const/16 p1, 0x10

    iput p1, p0, Lcom/b/a/b/k$b;->e:I

    iput-object p2, p0, Lcom/b/a/b/k$b;->b:Lcom/b/a/b/k;

    new-instance p1, Lcom/b/a/b/g;

    invoke-direct {p1}, Lcom/b/a/b/g;-><init>()V

    iput-object p1, p0, Lcom/b/a/b/k$b;->c:Lcom/b/a/b/g;

    return-void
.end method

.method private d()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/b/a/b/k$b;->a:Lcom/b/a/b/k;

    invoke-virtual {v2}, Lcom/b/a/b/k;->c()Lcom/b/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/f;->f()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x2004

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lcom/androlua/LuaLexer;

    invoke-direct {v5, v2}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/h;->e()V

    :try_start_0
    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, -0x1

    move-object v13, v10

    move-object v12, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    :goto_0
    iget-object v9, v1, Lcom/b/a/b/k$b;->c:Lcom/b/a/b/g;

    invoke-virtual {v9}, Lcom/b/a/b/g;->c()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v14

    if-eqz v10, :cond_2

    sget-object v1, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v1, :cond_2

    sget-object v1, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    if-eq v9, v1, :cond_2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v12, 0x2

    if-le v10, v12, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    invoke-virtual {v1, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/b/a/b/h;->c(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    const/4 v10, 0x0

    :cond_2
    sget-object v1, Lcom/b/a/b/k$1;->a:[I

    invoke-virtual {v9}, Lcom/androlua/LuaTokenTypes;->ordinal()I

    move-result v19

    aget v1, v1, v19

    move/from16 v20, v10

    const/16 v10, 0x270f

    packed-switch v1, :pswitch_data_0

    move/from16 v21, v3

    move-object/from16 v22, v11

    const/4 v3, 0x1

    new-instance v1, Lcom/b/a/b/m;

    const/4 v10, 0x0

    goto/16 :goto_c

    :pswitch_0
    new-instance v1, Lcom/b/a/b/m;

    const/4 v10, 0x4

    invoke-direct {v1, v14, v10}, Lcom/b/a/b/m;-><init>(II)V

    :goto_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v21, v3

    move-object/from16 v22, v11

    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_b

    :pswitch_1
    new-instance v1, Lcom/b/a/b/m;

    const/16 v10, 0x1e

    invoke-direct {v1, v14, v10}, Lcom/b/a/b/m;-><init>(II)V

    goto/16 :goto_6

    :pswitch_2
    if-le v3, v10, :cond_3

    new-instance v1, Lcom/b/a/b/m;

    const/4 v10, 0x0

    invoke-direct {v1, v14, v10}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/androlua/LuaTokenTypes;->NUMBER:Lcom/androlua/LuaTokenTypes;

    if-ne v15, v1, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/b/m;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/b/a/b/m;->b(I)V

    invoke-virtual {v1}, Lcom/b/a/b/m;->a()I

    move-result v10

    add-int/2addr v10, v14

    invoke-virtual {v1, v10}, Lcom/b/a/b/m;->a(I)V

    :cond_4
    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lcom/androlua/LuaTokenTypes;->FUNCTION:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v10, :cond_5

    new-instance v10, Lcom/b/a/b/m;

    const/4 v15, 0x4

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Lcom/b/a/b/h;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v2, v1}, Lcom/b/a/b/h;->g(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v10, Lcom/b/a/b/m;

    const/4 v15, 0x4

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    :goto_3
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    sget-object v10, Lcom/androlua/LuaTokenTypes;->GOTO:Lcom/androlua/LuaTokenTypes;

    if-eq v11, v10, :cond_c

    sget-object v10, Lcom/androlua/LuaTokenTypes;->AT:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v10, :cond_7

    goto :goto_4

    :cond_7
    sget-object v10, Lcom/androlua/LuaTokenTypes;->MULT:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v10, :cond_8

    sget-object v10, Lcom/androlua/LuaTokenTypes;->LOCAL:Lcom/androlua/LuaTokenTypes;

    move-object/from16 v15, v17

    if-ne v15, v10, :cond_8

    new-instance v10, Lcom/b/a/b/m;

    const/4 v15, 0x2

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v1}, Lcom/b/a/b/h;->f(Ljava/lang/String;)Z

    move-result v10

    const/4 v15, 0x3

    if-eqz v10, :cond_9

    new-instance v10, Lcom/b/a/b/m;

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_3

    :cond_9
    sget-object v10, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v10, :cond_a

    invoke-virtual {v2, v13}, Lcom/b/a/b/h;->f(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v2, v13, v1}, Lcom/b/a/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Lcom/b/a/b/m;

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v1}, Lcom/b/a/b/h;->e(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v10, Lcom/b/a/b/m;

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_3

    :cond_b
    new-instance v10, Lcom/b/a/b/m;

    const/4 v15, 0x0

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_3

    :cond_c
    :goto_4
    new-instance v10, Lcom/b/a/b/m;

    const/4 v15, 0x4

    invoke-direct {v10, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_3

    :goto_5
    sget-object v10, Lcom/androlua/LuaTokenTypes;->ASSIGN:Lcom/androlua/LuaTokenTypes;

    if-ne v11, v10, :cond_d

    const-string v10, "require"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v2, v13}, Lcom/b/a/b/h;->c(Ljava/lang/String;)V

    if-ltz v18, :cond_d

    add-int/lit8 v10, v18, -0x1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/b/a/b/m;

    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Lcom/b/a/b/m;->b(I)V

    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object v13, v1

    move/from16 v21, v3

    move/from16 v18, v10

    move-object/from16 v22, v11

    move/from16 v10, v20

    const/4 v1, 0x0

    goto :goto_9

    :pswitch_3
    new-instance v1, Lcom/b/a/b/m;

    const/16 v15, 0x32

    invoke-direct {v1, v14, v15}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v3, v10, :cond_e

    goto :goto_7

    :cond_e
    const-string v10, "require"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v20, 0x1

    :cond_f
    if-eqz v20, :cond_10

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_4
    new-instance v1, Lcom/b/a/b/m;

    const/4 v10, 0x2

    invoke-direct {v1, v14, v10}, Lcom/b/a/b/m;-><init>(II)V

    :goto_6
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_7
    move/from16 v21, v3

    move-object/from16 v22, v11

    :goto_8
    move/from16 v10, v20

    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_d

    :pswitch_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v10

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v10

    iput v10, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v15, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v15

    const/4 v15, 0x1

    if-le v10, v15, :cond_11

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v1, Lcom/b/a/b/m;

    const/4 v10, 0x2

    invoke-direct {v1, v14, v10}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_6

    :pswitch_6
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v10

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v15

    move/from16 v21, v3

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v3

    move-object/from16 v22, v11

    const/4 v11, 0x0

    invoke-direct {v1, v10, v15, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/b/a/b/m;

    const/4 v3, 0x2

    invoke-direct {v1, v14, v3}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :pswitch_7
    move/from16 v21, v3

    move-object/from16 v22, v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v10

    const/4 v10, 0x1

    if-le v3, v10, :cond_12

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance v1, Lcom/b/a/b/m;

    const/4 v3, 0x1

    invoke-direct {v1, v14, v3}, Lcom/b/a/b/m;-><init>(II)V

    goto :goto_a

    :pswitch_8
    move/from16 v21, v3

    move-object/from16 v22, v11

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v10

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v11

    const/4 v15, 0x0

    invoke-direct {v1, v3, v10, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/b/a/b/m;

    const/4 v3, 0x1

    invoke-direct {v1, v14, v3}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v16, 0x0

    goto :goto_d

    :pswitch_9
    move/from16 v21, v3

    move-object/from16 v22, v11

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v10

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v11

    const/4 v15, 0x0

    invoke-direct {v1, v3, v10, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/b/a/b/m;

    const/4 v3, 0x1

    invoke-direct {v1, v14, v3}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_a
    move/from16 v21, v3

    move-object/from16 v22, v11

    if-eqz v16, :cond_13

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v3

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v10

    invoke-virtual {v5}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v11

    const/4 v15, 0x0

    invoke-direct {v1, v3, v10, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v1, Lcom/b/a/b/m;

    const/4 v3, 0x1

    invoke-direct {v1, v14, v3}, Lcom/b/a/b/m;-><init>(II)V

    :goto_a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v16, 0x1

    goto :goto_d

    :pswitch_b
    move/from16 v21, v3

    move-object/from16 v22, v11

    new-instance v1, Lcom/b/a/b/m;

    const/4 v3, 0x1

    invoke-direct {v1, v14, v3}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    move/from16 v10, v20

    const/4 v1, 0x0

    goto :goto_d

    :goto_c
    invoke-direct {v1, v14, v10}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v20

    :goto_d
    sget-object v11, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v9, v11, :cond_14

    move-object v11, v9

    goto :goto_e

    :cond_14
    move-object/from16 v11, v22

    :goto_e
    move-object v15, v9

    move/from16 v3, v21

    move-object/from16 v17, v22

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    :cond_15
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/b/a/b/m;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {v2}, Lcom/b/a/b/h;->a()V

    invoke-static {v6}, Lcom/b/a/b/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-object/from16 v1, p0

    iput-object v4, v1, Lcom/b/a/b/k$b;->f:Ljava/util/ArrayList;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/b/k$b;->d:Z

    iget-object v0, p0, Lcom/b/a/b/k$b;->c:Lcom/b/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/b/g;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/k$b;->c:Lcom/b/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/b/g;->a()V

    return-void
.end method

.method public c()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/b/a/b/k$b;->a:Lcom/b/a/b/k;

    invoke-virtual {v1}, Lcom/b/a/b/k;->c()Lcom/b/a/b/f;

    move-result-object v1

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/b/a/b/h;->f()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v1, Lcom/b/a/b/m;

    invoke-direct {v1, v5, v5}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v0, Lcom/b/a/b/k$b;->f:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/16 v4, 0x7f

    new-array v6, v4, [C

    invoke-virtual {v1, v5}, Lcom/b/a/b/f;->f(I)I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/b/a/b/f;->a()Z

    move-result v12

    if-eqz v12, :cond_19

    iget-object v12, v0, Lcom/b/a/b/k$b;->c:Lcom/b/a/b/g;

    invoke-virtual {v12}, Lcom/b/a/b/g;->c()Z

    move-result v12

    if-nez v12, :cond_19

    invoke-virtual {v1}, Lcom/b/a/b/f;->b()C

    move-result v12

    const/16 v13, 0x20

    const/16 v14, 0x28

    const/16 v15, 0xa

    sparse-switch v8, :sswitch_data_0

    const-string v7, "Invalid state in TokenScanner"

    invoke-static {v7}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->g(C)Z

    move-result v14

    if-nez v14, :cond_1

    if-ne v12, v15, :cond_2

    :cond_1
    invoke-virtual {v2, v9}, Lcom/b/a/b/h;->d(C)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->d(C)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v2, v9}, Lcom/b/a/b/h;->d(C)Z

    move-result v9

    if-eqz v9, :cond_18

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->f(C)Z

    move-result v14

    if-nez v14, :cond_3

    if-ne v12, v15, :cond_4

    :cond_3
    invoke-virtual {v2, v9}, Lcom/b/a/b/h;->d(C)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->d(C)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v2, v9}, Lcom/b/a/b/h;->d(C)Z

    move-result v9

    if-eqz v9, :cond_18

    :goto_1
    const/16 v9, 0x20

    goto/16 :goto_9

    :sswitch_2
    invoke-virtual {v2, v9, v12}, Lcom/b/a/b/h;->c(CC)Z

    move-result v9

    if-eqz v9, :cond_18

    :goto_2
    move v9, v12

    const/4 v8, -0x1

    goto/16 :goto_9

    :sswitch_3
    invoke-virtual {v2, v9, v12}, Lcom/b/a/b/h;->b(CC)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v12

    const/16 v8, 0x28

    goto/16 :goto_9

    :cond_5
    if-ne v12, v15, :cond_18

    goto :goto_2

    :sswitch_4
    invoke-virtual {v2, v9, v12}, Lcom/b/a/b/h;->a(CC)Z

    move-result v13

    const/16 v7, 0x1e

    const/4 v15, 0x1

    if-eqz v13, :cond_6

    const/4 v9, 0x1

    const/16 v13, 0x1e

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v9, v12}, Lcom/b/a/b/h;->b(CC)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    const/16 v13, 0x28

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->f(C)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x32

    const/4 v9, 0x1

    const/16 v13, 0x32

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->g(C)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x33

    const/4 v9, 0x1

    const/16 v13, 0x33

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->h(C)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x14

    const/4 v9, 0x1

    const/16 v13, 0x14

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->i(C)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x15

    const/4 v9, 0x1

    const/16 v13, 0x15

    goto :goto_3

    :cond_b
    move v13, v8

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_10

    if-eq v13, v7, :cond_d

    if-ne v13, v14, :cond_c

    goto :goto_4

    :cond_c
    move v7, v11

    goto :goto_5

    :cond_d
    :goto_4
    add-int/lit8 v7, v11, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v15

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/b/a/b/m;

    invoke-virtual {v9}, Lcom/b/a/b/m;->a()I

    move-result v9

    if-ne v9, v7, :cond_e

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v15

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_e
    :goto_5
    if-lez v10, :cond_f

    if-eqz v8, :cond_f

    new-instance v8, Lcom/b/a/b/m;

    sub-int v9, v11, v10

    invoke-direct {v8, v9, v5}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v8, Lcom/b/a/b/m;

    invoke-direct {v8, v7, v13}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v12

    move v8, v13

    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_10
    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->b(C)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->a(C)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_6

    :cond_11
    if-ge v10, v4, :cond_18

    aput-char v12, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_12
    :goto_6
    if-lez v10, :cond_17

    aget-char v7, v6, v5

    invoke-virtual {v2, v7}, Lcom/b/a/b/h;->e(C)Z

    move-result v7

    if-eqz v7, :cond_13

    sub-int v7, v11, v10

    new-instance v8, Lcom/b/a/b/m;

    const/16 v9, 0xa

    invoke-direct {v8, v7, v9}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    goto :goto_7

    :cond_13
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v7}, Lcom/b/a/b/h;->d(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    sub-int v7, v11, v10

    new-instance v8, Lcom/b/a/b/m;

    invoke-direct {v8, v7, v15}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_7

    :cond_14
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v5, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v7}, Lcom/b/a/b/h;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    sub-int v7, v11, v10

    const/4 v8, 0x3

    new-instance v9, Lcom/b/a/b/m;

    invoke-direct {v9, v7, v8}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    if-eqz v8, :cond_16

    sub-int v7, v11, v10

    new-instance v8, Lcom/b/a/b/m;

    invoke-direct {v8, v7, v5}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :cond_16
    :goto_7
    const/4 v10, 0x0

    :cond_17
    if-eqz v8, :cond_18

    invoke-virtual {v2, v12}, Lcom/b/a/b/h;->a(C)Z

    move-result v7

    if-eqz v7, :cond_18

    new-instance v7, Lcom/b/a/b/m;

    invoke-direct {v7, v11, v5}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v12

    const/4 v8, 0x0

    goto :goto_9

    :cond_18
    :goto_8
    move v9, v12

    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/b/a/b/m;

    invoke-direct {v1, v5, v5}, Lcom/b/a/b/m;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    iput-object v3, v0, Lcom/b/a/b/k$b;->f:Ljava/util/ArrayList;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x3 -> :sswitch_4
        0xa -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x1e -> :sswitch_3
        0x28 -> :sswitch_2
        0x32 -> :sswitch_1
        0x33 -> :sswitch_0
    .end sparse-switch
.end method

.method public run()V
    .locals 2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/b/k$b;->d:Z

    iget-object v0, p0, Lcom/b/a/b/k$b;->c:Lcom/b/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/b/g;->b()V

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v0

    instance-of v0, v0, Lcom/b/a/b/i;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/b/a/b/k$b;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/b/k$b;->c()V

    :goto_0
    iget-boolean v0, p0, Lcom/b/a/b/k$b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/k$b;->c:Lcom/b/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/b/g;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/k$b;->b:Lcom/b/a/b/k;

    iget-object v1, p0, Lcom/b/a/b/k$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/b/a/b/k;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

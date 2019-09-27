.class Lcom/androlua/LuaLexer$CharSeqReader;
.super Ljava/io/Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaLexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharSeqReader"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaLexer$CharSeqReader;->a:I

    iput-object p1, p0, Lcom/androlua/LuaLexer$CharSeqReader;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaLexer$CharSeqReader;->b:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaLexer$CharSeqReader;->a:I

    return-void
.end method

.method public read([CII)I
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaLexer$CharSeqReader;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/androlua/LuaLexer$CharSeqReader;->a:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaLexer$CharSeqReader;->b:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/androlua/LuaLexer$CharSeqReader;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/androlua/LuaLexer$CharSeqReader;->a:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, p2, 0x1

    :try_start_1
    aput-char v1, p1, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move p2, v2

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-gtz p3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return p3
.end method

.class Lbsh/CommandLineReader;
.super Ljava/io/FilterReader;


# instance fields
.field a:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x1

    iput p1, p0, Lbsh/CommandLineReader;->a:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    new-instance p0, Lbsh/CommandLineReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lbsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 5

    iget v0, p0, Lbsh/CommandLineReader;->a:I

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    iput v3, p0, Lbsh/CommandLineReader;->a:I

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/CommandLineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    if-ne v0, v1, :cond_2

    iget v1, p0, Lbsh/CommandLineReader;->a:I

    if-ne v1, v3, :cond_1

    const/16 v0, 0x3b

    iput v2, p0, Lbsh/CommandLineReader;->a:I

    return v0

    :cond_1
    iput v3, p0, Lbsh/CommandLineReader;->a:I

    return v0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lbsh/CommandLineReader;->a:I

    return v0
.end method

.method public read([CII)I
    .locals 1

    invoke-virtual {p0}, Lbsh/CommandLineReader;->read()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    int-to-char p3, p3

    aput-char p3, p1, p2

    const/4 p1, 0x1

    return p1
.end method

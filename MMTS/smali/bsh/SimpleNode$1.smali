.class Lbsh/SimpleNode$1;
.super Lbsh/SimpleNode;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    const-string v0, "<Called from Java Code>"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "<Compiled Java Code>"

    return-object v0
.end method

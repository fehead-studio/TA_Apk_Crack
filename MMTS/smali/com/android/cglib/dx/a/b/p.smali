.class public final Lcom/android/cglib/dx/a/b/p;
.super Lcom/android/cglib/dx/a/b/o;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cglib/dx/a/b/o;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/b/p;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/s;

.field private final b:Lcom/android/cglib/dx/a/b/i;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/s;ILcom/android/cglib/dx/a/a/g;Lcom/android/cglib/dx/c/d/e;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/cglib/dx/a/b/o;-><init>(I)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/p;->b:Lcom/android/cglib/dx/a/b/i;

    return-void

    :cond_1
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lcom/android/cglib/dx/a/b/i;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/android/cglib/dx/a/b/i;-><init>(Lcom/android/cglib/dx/c/c/s;Lcom/android/cglib/dx/a/a/g;ZLcom/android/cglib/dx/c/d/e;)V

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/p;->b:Lcom/android/cglib/dx/a/b/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/l;Lcom/android/cglib/dx/d/a;II)I
    .locals 6

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->m()Lcom/android/cglib/dx/a/b/ae;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/ae;->b(Lcom/android/cglib/dx/c/c/d;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/p;->c()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/p;->b:Lcom/android/cglib/dx/a/b/i;

    invoke-static {v1}, Lcom/android/cglib/dx/a/b/ag;->b(Lcom/android/cglib/dx/a/b/ag;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit16 v5, v0, 0x500

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eq v4, v5, :cond_2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "code vs. access_flags mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "  [%x] %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, v3

    iget-object p4, p0, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {p4}, Lcom/android/cglib/dx/c/c/s;->a_()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v3, p4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    invoke-static {p3}, Lcom/android/cglib/dx/d/n;->a(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    method_idx:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/cglib/dx/d/n;->a(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    access_flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/android/cglib/dx/d/n;->a(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    code_off:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, p3}, Lcom/android/cglib/dx/d/a;->e(I)I

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->e(I)I

    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/a;->e(I)I

    return p1
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/s;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/cglib/dx/a/b/l;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->m()Lcom/android/cglib/dx/a/b/ae;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/l;->d()Lcom/android/cglib/dx/a/b/af;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/ae;->a(Lcom/android/cglib/dx/c/c/d;)Lcom/android/cglib/dx/a/b/ad;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/p;->b:Lcom/android/cglib/dx/a/b/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/p;->b:Lcom/android/cglib/dx/a/b/i;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/af;->a(Lcom/android/cglib/dx/a/b/ag;)V

    :cond_0
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/s;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/p;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/p;->a(Lcom/android/cglib/dx/a/b/p;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/a/b/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/b/p;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/p;->a(Lcom/android/cglib/dx/a/b/p;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/p;->c()I

    move-result v1

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/p;->a:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/p;->b:Lcom/android/cglib/dx/a/b/i;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/p;->b:Lcom/android/cglib/dx/a/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

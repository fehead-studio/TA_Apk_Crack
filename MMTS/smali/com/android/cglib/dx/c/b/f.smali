.class public abstract Lcom/android/cglib/dx/c/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/dx/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/c/b/f$a;,
        Lcom/android/cglib/dx/c/b/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/b/p;

.field private final b:Lcom/android/cglib/dx/c/b/s;

.field private final c:Lcom/android/cglib/dx/c/b/m;

.field private final d:Lcom/android/cglib/dx/c/b/n;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p4, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object p1, p0, Lcom/android/cglib/dx/c/b/f;->a:Lcom/android/cglib/dx/c/b/p;

    iput-object p2, p0, Lcom/android/cglib/dx/c/b/f;->b:Lcom/android/cglib/dx/c/b/s;

    iput-object p3, p0, Lcom/android/cglib/dx/c/b/f;->c:Lcom/android/cglib/dx/c/b/m;

    iput-object p4, p0, Lcom/android/cglib/dx/c/b/f;->d:Lcom/android/cglib/dx/c/b/n;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Insn{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/f;->b:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/f;->a:Lcom/android/cglib/dx/c/b/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string p1, " :: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/f;->c:Lcom/android/cglib/dx/c/b/m;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/f;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " <- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object p1, p0, Lcom/android/cglib/dx/c/b/f;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/cglib/dx/c/b/f$b;)V
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/f;->b:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/f;->a:Lcom/android/cglib/dx/c/b/p;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/p;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/c/b/f;->c:Lcom/android/cglib/dx/c/b/m;

    if-nez p1, :cond_1

    const-string p1, " ."

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/f;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/m;->a_()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string p1, " <-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/f;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->a()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, " ."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_3

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/f;->d:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v2, v1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/m;->a_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/android/cglib/dx/c/b/p;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/f;->a:Lcom/android/cglib/dx/c/b/p;

    return-object v0
.end method

.method public final e()Lcom/android/cglib/dx/c/b/s;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/f;->b:Lcom/android/cglib/dx/c/b/s;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Lcom/android/cglib/dx/c/b/m;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/f;->c:Lcom/android/cglib/dx/c/b/m;

    return-object v0
.end method

.method public final g()Lcom/android/cglib/dx/c/b/n;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/f;->d:Lcom/android/cglib/dx/c/b/n;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/f;->a:Lcom/android/cglib/dx/c/b/p;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/p;->f()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract i()Lcom/android/cglib/dx/c/d/e;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

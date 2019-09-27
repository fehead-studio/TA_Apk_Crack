.class public Lcom/android/cglib/dx/a/a/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/a/p$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/android/cglib/dx/a/a/p$a;

.field private final c:Lcom/android/cglib/dx/c/b/m;

.field private final d:Lcom/android/cglib/dx/c/c/w;


# direct methods
.method public constructor <init>(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "disposition == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/android/cglib/dx/c/b/m;->g()Lcom/android/cglib/dx/c/b/h;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec.getLocalItem() == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iput p1, p0, Lcom/android/cglib/dx/a/a/p$b;->a:I

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/p$b;->b:Lcom/android/cglib/dx/a/a/p$a;

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {p3}, Lcom/android/cglib/dx/c/b/m;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/c/c/w;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/c/w;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/p$b;->d:Lcom/android/cglib/dx/c/c/w;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/p$b;->a:I

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/p$b;)I
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/a/a/p$b;->a:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/p$b;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/a/p$b;->a:I

    iget v1, p1, Lcom/android/cglib/dx/a/a/p$b;->a:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/p$b;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->c()Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    iget-object p1, p1, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/m;->c(Lcom/android/cglib/dx/c/b/m;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/cglib/dx/a/a/p$a;)Lcom/android/cglib/dx/a/a/p$b;
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->b:Lcom/android/cglib/dx/a/a/p$a;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/cglib/dx/a/a/p$b;

    iget v1, p0, Lcom/android/cglib/dx/a/a/p$b;->a:I

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/cglib/dx/a/a/p$b;-><init>(ILcom/android/cglib/dx/a/a/p$a;Lcom/android/cglib/dx/c/b/m;)V

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/m;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/m;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/android/cglib/dx/a/a/p$a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->b:Lcom/android/cglib/dx/a/a/p$a;

    return-object v0
.end method

.method public b(Lcom/android/cglib/dx/a/a/p$b;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/c/b/m;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->b:Lcom/android/cglib/dx/a/a/p$a;

    sget-object v1, Lcom/android/cglib/dx/a/a/p$a;->a:Lcom/android/cglib/dx/a/a/p$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/a/a/p$b;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/android/cglib/dx/c/c/v;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->g()Lcom/android/cglib/dx/c/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/h;->a()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/android/cglib/dx/c/c/v;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->g()Lcom/android/cglib/dx/c/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/h;->b()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/p$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/p$b;->a(Lcom/android/cglib/dx/a/a/p$b;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->d:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/m;->e()I

    move-result v0

    return v0
.end method

.method public h()Lcom/android/cglib/dx/c/b/m;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/cglib/dx/a/a/p$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$b;->b:Lcom/android/cglib/dx/a/a/p$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/p$b;->c:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

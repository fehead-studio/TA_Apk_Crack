.class public final Lcom/android/cglib/dx/c/c/c;
.super Lcom/android/cglib/dx/c/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/c/c/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/c$a;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/c$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/c/c/a;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/c$a;->i()V

    iput-object p1, p0, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    return-void
.end method


# virtual methods
.method public a_()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/cglib/dx/c/c/c$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/android/cglib/dx/c/c/a;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    check-cast p1, Lcom/android/cglib/dx/c/c/c;

    iget-object p1, p1, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/c$a;->a(Lcom/android/cglib/dx/c/c/c$a;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/android/cglib/dx/c/c/c$a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "array"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/c/c/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    check-cast p1, Lcom/android/cglib/dx/c/c/c;

    iget-object p1, p1, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/c$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/c$a;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/c;->a:Lcom/android/cglib/dx/c/c/c$a;

    const-string v1, "array{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/cglib/dx/c/c/c$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

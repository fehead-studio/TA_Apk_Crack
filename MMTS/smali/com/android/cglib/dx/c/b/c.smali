.class public final Lcom/android/cglib/dx/c/b/c;
.super Lcom/android/cglib/dx/d/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/c/b/c$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/m;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/cglib/dx/c/b/c;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/cglib/dx/c/b/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/c;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/b/b;

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/c/b/b;
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->c()Lcom/android/cglib/dx/d/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/k;->a()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/c;->b(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object p1

    return-object p1

    :cond_0
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/android/cglib/dx/d/k;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/c;->b(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILcom/android/cglib/dx/c/b/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/cglib/dx/d/m;->a(ILcom/android/cglib/dx/d/l;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/cglib/dx/c/b/c;->a:I

    return-void
.end method

.method public a(Lcom/android/cglib/dx/c/b/f$b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/c;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/cglib/dx/c/b/c;->a(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/b;->b()Lcom/android/cglib/dx/c/b/g;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/c/b/g;->a(Lcom/android/cglib/dx/c/b/f$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/b/c;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/cglib/dx/c/b/c$a;

    invoke-direct {v0}, Lcom/android/cglib/dx/c/b/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/c;->a(Lcom/android/cglib/dx/c/b/f$b;)V

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/c$a;->a()I

    move-result v0

    iput v0, p0, Lcom/android/cglib/dx/c/b/c;->a:I

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/c/b/c;->a:I

    return v0
.end method

.method public b(I)Lcom/android/cglib/dx/c/b/b;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/c;->c(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/c;->a(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/c;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/cglib/dx/c/b/c;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/c/b/b;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/b;->b()Lcom/android/cglib/dx/c/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/b/g;->a()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.class public final Lcom/android/cglib/dx/c/b/k;
.super Lcom/android/cglib/dx/c/b/f;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/m;)V
    .locals 0

    invoke-static {p4}, Lcom/android/cglib/dx/c/b/n;->a(Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/n;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cglib/dx/c/b/f;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/p;->b()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t mix branchingness with result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/cglib/dx/c/b/f$b;->a(Lcom/android/cglib/dx/c/b/k;)V

    return-void
.end method

.method public i()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/b;->a:Lcom/android/cglib/dx/c/d/b;

    return-object v0
.end method

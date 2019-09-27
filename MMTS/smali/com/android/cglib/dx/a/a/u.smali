.class public final Lcom/android/cglib/dx/a/a/u;
.super Lcom/android/cglib/dx/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/a/u$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/android/cglib/dx/a/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/a/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/a/u;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/u;->a:Lcom/android/cglib/dx/a/a/u;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/android/cglib/dx/a/a/i;I)Lcom/android/cglib/dx/a/a/u;
    .locals 11

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object v0, Lcom/android/cglib/dx/c/b/s;->a:Lcom/android/cglib/dx/c/b/s;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/i;->a()I

    move-result v1

    new-array v2, v1, [Lcom/android/cglib/dx/a/a/u$a;

    const/4 v3, 0x0

    move-object v6, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/cglib/dx/a/a/i;->a(I)Lcom/android/cglib/dx/a/a/h;

    move-result-object v8

    instance-of v9, v8, Lcom/android/cglib/dx/a/a/e;

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/s;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/cglib/dx/c/b/s;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9, v6}, Lcom/android/cglib/dx/c/b/s;->a(Lcom/android/cglib/dx/c/b/s;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x3

    if-ne p1, v10, :cond_2

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {v8}, Lcom/android/cglib/dx/a/a/h;->f()I

    move-result v7

    invoke-direct {v6, v7, v9}, Lcom/android/cglib/dx/a/a/u$a;-><init>(ILcom/android/cglib/dx/c/b/s;)V

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    move-object v6, v9

    const/4 v7, 0x0

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/android/cglib/dx/a/a/u;

    invoke-direct {p0, v5}, Lcom/android/cglib/dx/a/a/u;-><init>(I)V

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object p1, v2, v3

    invoke-virtual {p0, v3, p1}, Lcom/android/cglib/dx/a/a/u;->a(ILcom/android/cglib/dx/a/a/u$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/u;->e()V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/cglib/dx/a/a/u;->a:Lcom/android/cglib/dx/a/a/u;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)Lcom/android/cglib/dx/a/a/u$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/u;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/u$a;

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/a/a/u$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/a/u;->a(ILjava/lang/Object;)V

    return-void
.end method

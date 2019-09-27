.class public final Lcom/android/cglib/dx/a/a/p;
.super Lcom/android/cglib/dx/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/a/p$c;,
        Lcom/android/cglib/dx/a/a/p$b;,
        Lcom/android/cglib/dx/a/a/p$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/android/cglib/dx/a/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/a/a/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/a/p;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/p;->a:Lcom/android/cglib/dx/a/a/p;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/android/cglib/dx/a/a/i;)Lcom/android/cglib/dx/a/a/p;
    .locals 5

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/i;->a()I

    move-result v0

    new-instance v1, Lcom/android/cglib/dx/a/a/p$c;

    invoke-direct {v1, v0}, Lcom/android/cglib/dx/a/a/p$c;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/cglib/dx/a/a/i;->a(I)Lcom/android/cglib/dx/a/a/h;

    move-result-object v3

    instance-of v4, v3, Lcom/android/cglib/dx/a/a/q;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/cglib/dx/a/a/q;

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/q;->b()Lcom/android/cglib/dx/c/b/o;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/h;->f()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/c/b/o;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lcom/android/cglib/dx/a/a/r;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/cglib/dx/a/a/r;

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/r;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/h;->f()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/android/cglib/dx/a/a/p$c;->a(ILcom/android/cglib/dx/c/b/m;)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/android/cglib/dx/a/a/o;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/android/cglib/dx/a/a/o;

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/o;->b()Lcom/android/cglib/dx/c/b/m;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/h;->f()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/android/cglib/dx/a/a/p$c;->b(ILcom/android/cglib/dx/c/b/m;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/p$c;->a()Lcom/android/cglib/dx/a/a/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/android/cglib/dx/a/a/p$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/p;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/p$b;

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/a/a/p$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/a/p;->a(ILjava/lang/Object;)V

    return-void
.end method

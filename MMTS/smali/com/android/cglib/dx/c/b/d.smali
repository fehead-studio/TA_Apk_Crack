.class public abstract Lcom/android/cglib/dx/c/b/d;
.super Lcom/android/cglib/dx/c/b/f;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/a;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cglib/dx/c/b/f;-><init>(Lcom/android/cglib/dx/c/b/p;Lcom/android/cglib/dx/c/b/s;Lcom/android/cglib/dx/c/b/m;Lcom/android/cglib/dx/c/b/n;)V

    if-nez p5, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p5, p0, Lcom/android/cglib/dx/c/b/d;->a:Lcom/android/cglib/dx/c/c/a;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/d;->a:Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/a;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/android/cglib/dx/c/c/a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/d;->a:Lcom/android/cglib/dx/c/c/a;

    return-object v0
.end method

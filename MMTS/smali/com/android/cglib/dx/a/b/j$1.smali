.class Lcom/android/cglib/dx/a/b/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cglib/dx/a/b/j;->c()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/cglib/dx/a/a/u$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/cglib/dx/a/b/j;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/a/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/j$1;->a:Lcom/android/cglib/dx/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/u$a;Lcom/android/cglib/dx/a/a/u$a;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/a/u$a;

    check-cast p2, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/b/j$1;->a(Lcom/android/cglib/dx/a/a/u$a;Lcom/android/cglib/dx/a/a/u$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class final Lcom/android/cglib/dx/a/b/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/b/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/cglib/dx/a/b/ag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/ag;Lcom/android/cglib/dx/a/b/ag;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ag;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/b/ag;->a()Lcom/android/cglib/dx/a/b/y;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/cglib/dx/a/b/y;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/ag;

    check-cast p2, Lcom/android/cglib/dx/a/b/ag;

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/b/af$1;->a(Lcom/android/cglib/dx/a/b/ag;Lcom/android/cglib/dx/a/b/ag;)I

    move-result p1

    return p1
.end method

.class public final Lcom/android/cglib/dx/c/c/c$a;
.super Lcom/android/cglib/dx/d/h;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cglib/dx/d/h;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/c/c/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/c/c$a;)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/c$a;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/c$a;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/cglib/dx/c/c/c$a;->d(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/c/c/c$a;->d(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {v5, v6}, Lcom/android/cglib/dx/c/c/a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v0, v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v3
.end method

.method public a(I)Lcom/android/cglib/dx/c/c/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/c/c$a;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/c/c/a;

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/c/c/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/c/c/c$a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/c/c/c$a;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/c/c$a;->a(Lcom/android/cglib/dx/c/c/c$a;)I

    move-result p1

    return p1
.end method

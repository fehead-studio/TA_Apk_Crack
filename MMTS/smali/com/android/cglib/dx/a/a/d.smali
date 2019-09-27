.class public final Lcom/android/cglib/dx/a/a/d;
.super Lcom/android/cglib/dx/d/h;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cglib/dx/d/h;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/android/cglib/dx/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/a/d;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/d;->a:Lcom/android/cglib/dx/a/a/d;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/d;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/d;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/d;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/cglib/dx/a/a/d;->a(I)Lcom/android/cglib/dx/a/a/d$a;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/a/a/d;->a(I)Lcom/android/cglib/dx/a/a/d$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/cglib/dx/a/a/d$a;->a(Lcom/android/cglib/dx/a/a/d$a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v1, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public a(I)Lcom/android/cglib/dx/a/a/d$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/d;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/d$a;

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/a/a/d$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/a/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/a/d;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/d;->a(Lcom/android/cglib/dx/a/a/d;)I

    move-result p1

    return p1
.end method

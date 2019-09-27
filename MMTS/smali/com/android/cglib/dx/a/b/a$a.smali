.class Lcom/android/cglib/dx/a/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/cglib/dx/a/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cglib/dx/a/b/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/a;Lcom/android/cglib/dx/a/b/a;)I
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/a;->a(Lcom/android/cglib/dx/a/b/a;)Lcom/android/cglib/dx/a/b/ap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/ap;->g()I

    move-result p1

    invoke-static {p2}, Lcom/android/cglib/dx/a/b/a;->a(Lcom/android/cglib/dx/a/b/a;)Lcom/android/cglib/dx/a/b/ap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/b/ap;->g()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/a;

    check-cast p2, Lcom/android/cglib/dx/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/b/a$a;->a(Lcom/android/cglib/dx/a/b/a;Lcom/android/cglib/dx/a/b/a;)I

    move-result p1

    return p1
.end method

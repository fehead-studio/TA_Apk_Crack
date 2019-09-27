.class public final Lcom/android/cglib/dx/a/b/u;
.super Lcom/android/cglib/dx/a/b/as;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/cglib/dx/a/b/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b/l;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/cglib/dx/a/b/as;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/l;I)V

    new-instance p1, Lcom/android/cglib/dx/a/b/t;

    invoke-direct {p1}, Lcom/android/cglib/dx/a/b/t;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/t;->a(I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/u;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/cglib/dx/a/b/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/u;->a:Ljava/util/List;

    return-object v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

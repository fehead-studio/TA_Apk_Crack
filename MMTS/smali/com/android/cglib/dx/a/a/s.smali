.class public final Lcom/android/cglib/dx/a/a/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/android/cglib/dx/a/a/t;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/cglib/dx/a/a/t;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/cglib/dx/a/a/t;-><init>(Lcom/android/cglib/dx/a/b;II)V

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/s;->a:Lcom/android/cglib/dx/a/a/t;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/s;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/s;->a:Lcom/android/cglib/dx/a/a/t;

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/a/h;

    invoke-virtual {v2, v3}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/a/a/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cglib/dx/a/a/s;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/a/t;
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/s;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/s;->b()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/s;->a:Lcom/android/cglib/dx/a/a/t;

    return-object v0
.end method

.method public a(ILcom/android/cglib/dx/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/s;->a:Lcom/android/cglib/dx/a/a/t;

    invoke-virtual {v0, p1, p2}, Lcom/android/cglib/dx/a/a/t;->a(ILcom/android/cglib/dx/a/a/e;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/s;->a:Lcom/android/cglib/dx/a/a/t;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/t;->a(Lcom/android/cglib/dx/a/a/h;)V

    return-void
.end method

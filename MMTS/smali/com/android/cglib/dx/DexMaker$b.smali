.class Lcom/android/cglib/dx/DexMaker$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/android/cglib/dx/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/MethodId<",
            "**>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lcom/android/cglib/dx/Code;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/MethodId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/MethodId<",
            "**>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/DexMaker$b;->a:Lcom/android/cglib/dx/MethodId;

    iput p2, p0, Lcom/android/cglib/dx/DexMaker$b;->b:I

    new-instance p1, Lcom/android/cglib/dx/Code;

    invoke-direct {p1, p0}, Lcom/android/cglib/dx/Code;-><init>(Lcom/android/cglib/dx/DexMaker$b;)V

    iput-object p1, p0, Lcom/android/cglib/dx/DexMaker$b;->c:Lcom/android/cglib/dx/Code;

    return-void
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$b;)Lcom/android/cglib/dx/Code;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/DexMaker$b;->c:Lcom/android/cglib/dx/Code;

    return-object p0
.end method


# virtual methods
.method a(Lcom/android/cglib/dx/a/b;)Lcom/android/cglib/dx/a/b/p;
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/c/b/q;

    iget-object v1, p0, Lcom/android/cglib/dx/DexMaker$b;->c:Lcom/android/cglib/dx/Code;

    invoke-virtual {v1}, Lcom/android/cglib/dx/Code;->c()Lcom/android/cglib/dx/c/b/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cglib/dx/c/b/q;-><init>(Lcom/android/cglib/dx/c/b/c;I)V

    iget-object v1, p0, Lcom/android/cglib/dx/DexMaker$b;->c:Lcom/android/cglib/dx/Code;

    invoke-virtual {v1}, Lcom/android/cglib/dx/Code;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, p1}, Lcom/android/cglib/dx/a/a/w;->a(Lcom/android/cglib/dx/c/b/q;ILcom/android/cglib/dx/c/b/i;ILcom/android/cglib/dx/a/b;)Lcom/android/cglib/dx/a/a/g;

    move-result-object p1

    new-instance v0, Lcom/android/cglib/dx/a/b/p;

    iget-object v1, p0, Lcom/android/cglib/dx/DexMaker$b;->a:Lcom/android/cglib/dx/MethodId;

    iget-object v1, v1, Lcom/android/cglib/dx/MethodId;->f:Lcom/android/cglib/dx/c/c/s;

    iget v2, p0, Lcom/android/cglib/dx/DexMaker$b;->b:I

    sget-object v3, Lcom/android/cglib/dx/c/d/b;->a:Lcom/android/cglib/dx/c/d/b;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/cglib/dx/a/b/p;-><init>(Lcom/android/cglib/dx/c/c/s;ILcom/android/cglib/dx/a/a/g;Lcom/android/cglib/dx/c/d/e;)V

    return-object v0
.end method

.method a()Z
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/DexMaker$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b()Z
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/DexMaker$b;->b:I

    const v1, 0x1000a

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

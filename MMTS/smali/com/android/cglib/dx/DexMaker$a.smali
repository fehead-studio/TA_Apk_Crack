.class Lcom/android/cglib/dx/DexMaker$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/cglib/dx/FieldId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/FieldId<",
            "**>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/FieldId;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/FieldId<",
            "**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "instance fields may not have a value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/android/cglib/dx/DexMaker$a;->a:Lcom/android/cglib/dx/FieldId;

    iput p2, p0, Lcom/android/cglib/dx/DexMaker$a;->b:I

    iput-object p3, p0, Lcom/android/cglib/dx/DexMaker$a;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/android/cglib/dx/DexMaker$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/DexMaker$a;->c:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method a()Lcom/android/cglib/dx/a/b/n;
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/a/b/n;

    iget-object v1, p0, Lcom/android/cglib/dx/DexMaker$a;->a:Lcom/android/cglib/dx/FieldId;

    iget-object v1, v1, Lcom/android/cglib/dx/FieldId;->e:Lcom/android/cglib/dx/c/c/j;

    iget v2, p0, Lcom/android/cglib/dx/DexMaker$a;->b:I

    invoke-direct {v0, v1, v2}, Lcom/android/cglib/dx/a/b/n;-><init>(Lcom/android/cglib/dx/c/c/j;I)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/DexMaker$a;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

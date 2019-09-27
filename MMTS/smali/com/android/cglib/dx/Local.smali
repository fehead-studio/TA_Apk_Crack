.class public final Lcom/android/cglib/dx/Local;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/cglib/dx/Code;

.field private c:I

.field private d:Lcom/android/cglib/dx/c/b/m;


# direct methods
.method private constructor <init>(Lcom/android/cglib/dx/Code;Lcom/android/cglib/dx/TypeId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/Code;",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/cglib/dx/Local;->c:I

    iput-object p1, p0, Lcom/android/cglib/dx/Local;->b:Lcom/android/cglib/dx/Code;

    iput-object p2, p0, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    return-void
.end method

.method static a(Lcom/android/cglib/dx/Code;Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/Local;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/Code;",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;)",
            "Lcom/android/cglib/dx/Local<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/Local;

    invoke-direct {v0, p0, p1}, Lcom/android/cglib/dx/Local;-><init>(Lcom/android/cglib/dx/Code;Lcom/android/cglib/dx/TypeId;)V

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/c;->g()I

    move-result v0

    return v0
.end method

.method a(I)I
    .locals 1

    iput p1, p0, Lcom/android/cglib/dx/Local;->c:I

    iget-object v0, p0, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    iget-object v0, v0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {p1, v0}, Lcom/android/cglib/dx/c/b/m;->a(ILcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/Local;->d:Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {p0}, Lcom/android/cglib/dx/Local;->a()I

    move-result p1

    return p1
.end method

.method b()Lcom/android/cglib/dx/c/b/m;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/Local;->d:Lcom/android/cglib/dx/c/b/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/Local;->b:Lcom/android/cglib/dx/Code;

    invoke-virtual {v0}, Lcom/android/cglib/dx/Code;->a()V

    iget-object v0, p0, Lcom/android/cglib/dx/Local;->d:Lcom/android/cglib/dx/c/b/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/Local;->d:Lcom/android/cglib/dx/c/b/m;

    return-object v0
.end method

.method public getType()Lcom/android/cglib/dx/TypeId;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/cglib/dx/Local;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/Local;->a:Lcom/android/cglib/dx/TypeId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

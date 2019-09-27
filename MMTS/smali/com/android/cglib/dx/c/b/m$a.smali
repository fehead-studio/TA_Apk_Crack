.class Lcom/android/cglib/dx/c/b/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/c/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/android/cglib/dx/c/d/d;

.field private c:Lcom/android/cglib/dx/c/b/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cglib/dx/c/b/m$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/c/b/m$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/cglib/dx/c/b/m$a;)I
    .locals 0

    iget p0, p0, Lcom/android/cglib/dx/c/b/m$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/android/cglib/dx/c/b/m$a;)Lcom/android/cglib/dx/c/d/d;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/c/b/m$a;->b:Lcom/android/cglib/dx/c/d/d;

    return-object p0
.end method

.method static synthetic c(Lcom/android/cglib/dx/c/b/m$a;)Lcom/android/cglib/dx/c/b/h;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/c/b/m$a;->c:Lcom/android/cglib/dx/c/b/h;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/c/b/m;
    .locals 5

    new-instance v0, Lcom/android/cglib/dx/c/b/m;

    iget v1, p0, Lcom/android/cglib/dx/c/b/m$a;->a:I

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/m$a;->b:Lcom/android/cglib/dx/c/d/d;

    iget-object v3, p0, Lcom/android/cglib/dx/c/b/m$a;->c:Lcom/android/cglib/dx/c/b/h;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/cglib/dx/c/b/m;-><init>(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;Lcom/android/cglib/dx/c/b/m$1;)V

    return-object v0
.end method

.method public a(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)V
    .locals 0

    iput p1, p0, Lcom/android/cglib/dx/c/b/m$a;->a:I

    iput-object p2, p0, Lcom/android/cglib/dx/c/b/m$a;->b:Lcom/android/cglib/dx/c/d/d;

    iput-object p3, p0, Lcom/android/cglib/dx/c/b/m$a;->c:Lcom/android/cglib/dx/c/b/h;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/cglib/dx/c/b/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/b/m;

    iget v0, p0, Lcom/android/cglib/dx/c/b/m$a;->a:I

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m$a;->b:Lcom/android/cglib/dx/c/d/d;

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/m$a;->c:Lcom/android/cglib/dx/c/b/h;

    invoke-static {p1, v0, v1, v2}, Lcom/android/cglib/dx/c/b/m;->a(Lcom/android/cglib/dx/c/b/m;ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/cglib/dx/c/b/m$a;->a:I

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m$a;->b:Lcom/android/cglib/dx/c/d/d;

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/m$a;->c:Lcom/android/cglib/dx/c/b/h;

    invoke-static {v0, v1, v2}, Lcom/android/cglib/dx/c/b/m;->b(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)I

    move-result v0

    return v0
.end method

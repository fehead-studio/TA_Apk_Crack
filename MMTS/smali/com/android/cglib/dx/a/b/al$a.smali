.class Lcom/android/cglib/dx/a/b/al$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/b/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b/x;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/x;->b_()I

    move-result p1

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/al$a;->a:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/cglib/dx/a/b/al$a;->b:I

    iput p1, p0, Lcom/android/cglib/dx/a/b/al$a;->c:I

    iput p1, p0, Lcom/android/cglib/dx/a/b/al$a;->d:I

    iput p1, p0, Lcom/android/cglib/dx/a/b/al$a;->e:I

    return-void
.end method

.method static synthetic a(Lcom/android/cglib/dx/a/b/al$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/a/b/al$a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/al$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/cglib/dx/a/b/al$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/cglib/dx/a/b/al$a;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "s"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/cglib/dx/a/b/al$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes total\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/cglib/dx/a/b/al$a;->e:I

    iget v2, p0, Lcom/android/cglib/dx/a/b/al$a;->d:I

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/cglib/dx/a/b/al$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes/item\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    iget v1, p0, Lcom/android/cglib/dx/a/b/al$a;->c:I

    iget v2, p0, Lcom/android/cglib/dx/a/b/al$a;->b:I

    div-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/cglib/dx/a/b/al$a;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/cglib/dx/a/b/al$a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes/item; average "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/x;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/x;->b_()I

    move-result p1

    iget v0, p0, Lcom/android/cglib/dx/a/b/al$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/cglib/dx/a/b/al$a;->b:I

    iget v0, p0, Lcom/android/cglib/dx/a/b/al$a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/cglib/dx/a/b/al$a;->c:I

    iget v0, p0, Lcom/android/cglib/dx/a/b/al$a;->d:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/android/cglib/dx/a/b/al$a;->d:I

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/a/b/al$a;->e:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Lcom/android/cglib/dx/a/b/al$a;->e:I

    :cond_1
    return-void
.end method

.method public a(Lcom/android/cglib/dx/d/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/al$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

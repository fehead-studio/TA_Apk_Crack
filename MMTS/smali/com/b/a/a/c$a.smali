.class Lcom/b/a/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/b/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/c;

.field private final b:Lcom/b/a/b/k;

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/b/a/b/k;

    invoke-direct {p1, p0}, Lcom/b/a/b/k;-><init>(Lcom/b/a/b/k$a;)V

    iput-object p1, p0, Lcom/b/a/a/c$a;->b:Lcom/b/a/b/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/b/a/a/c$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/c;Lcom/b/a/a/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/c$a;-><init>(Lcom/b/a/a/c;)V

    return-void
.end method

.method private b(II)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->h(Lcom/b/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    sub-int v1, p1, p2

    mul-int v1, v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    :cond_0
    if-le p1, p2, :cond_1

    const/16 v1, 0x200

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x100

    goto :goto_0

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v1, v0}, Lcom/b/a/a/c;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->k:I

    if-ge p1, v0, :cond_6

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p1, p1, Lcom/b/a/a/c;->k:I

    if-le p2, p1, :cond_5

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->k:I

    iput v0, p1, Lcom/b/a/a/c;->j:I

    :cond_4
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iput p2, p1, Lcom/b/a/a/c;->k:I

    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iput p2, p1, Lcom/b/a/a/c;->j:I

    return-void

    :cond_6
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p1, p1, Lcom/b/a/a/c;->j:I

    if-ge p2, p1, :cond_4

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->j:I

    iput v0, p1, Lcom/b/a/a/c;->k:I

    goto :goto_2

    return-void
.end method

.method private j()[C
    .locals 7

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    invoke-virtual {v0, v1}, Lcom/b/a/b/f;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/b/a/b/f;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/b/a/b/f;->f(I)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3}, Lcom/b/a/b/f;->a()Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3}, Lcom/b/a/b/f;->b()C

    move-result v3

    if-eq v3, v4, :cond_0

    const/16 v5, 0x9

    if-ne v3, v5, :cond_2

    :cond_0
    add-int v3, v0, v2

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v5, Lcom/b/a/a/c;->i:I

    if-lt v3, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->q:I

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v5, v5, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->i:I

    sub-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Lcom/b/a/b/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/b/a/b/a;->a(Ljava/lang/CharSequence;)I

    move-result v5

    mul-int v3, v3, v5

    add-int/2addr v2, v3

    const/16 v3, 0xa

    if-gez v2, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [C

    aput-char v3, v0, v1

    return-object v0

    :cond_3
    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [C

    aput-char v3, v5, v1

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3, v0}, Lcom/b/a/b/f;->f(I)I

    :goto_2
    if-ge v1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    aput-char v4, v5, v1

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    invoke-static {v1, v2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->m(Lcom/b/a/a/c;)V

    :cond_0
    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c$a;->b:Lcom/b/a/b/k;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, v1}, Lcom/b/a/b/k;->a(Lcom/b/a/b/f;)V

    return-void
.end method

.method public a(C)V
    .locals 8

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->i()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v2}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v2

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3, v2}, Lcom/b/a/b/f;->d(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq p1, v4, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->i:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v0, p1, v4, v5, v6}, Lcom/b/a/b/f;->a(CIJ)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->a(Z)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->i(Lcom/b/a/a/c;)Lcom/b/a/a/f;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->i:I

    invoke-interface {v0, p1, v4, v1}, Lcom/b/a/a/f;->b(Ljava/lang/CharSequence;II)V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1, v2}, Lcom/b/a/b/f;->d(I)I

    move-result p1

    if-eq v3, p1, :cond_1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1, v2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;I)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-boolean v0, v0, Lcom/b/a/a/c;->p:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/b/a/a/c$a;->j()[C

    move-result-object v0

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v5, Lcom/b/a/a/c;->i:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/b/a/b/f;->a([CIJ)V

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->i:I

    array-length v0, v0

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/b/a/a/c$a;->a(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->i:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v0, p1, v4, v5, v6}, Lcom/b/a/b/f;->a(CIJ)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->a(Z)V

    :goto_3
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, v2}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    if-eq v3, v0, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->i(Lcom/b/a/a/c;)Lcom/b/a/a/f;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->i:I

    invoke-interface {v0, p1, v3, v1}, Lcom/b/a/a/f;->a(Ljava/lang/String;II)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->i(Lcom/b/a/a/c;)Lcom/b/a/a/f;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->i:I

    invoke-interface {v0, p1, v4, v1}, Lcom/b/a/a/f;->a(Ljava/lang/CharSequence;II)V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v0, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p1, v0, v4, v5}, Lcom/b/a/b/f;->a(IJ)V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lcom/b/a/b/f;->charAt(I)C

    move-result p1

    const v0, 0xd83d

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lcom/b/a/b/f;->charAt(I)C

    move-result p1

    const v0, 0xd83c

    if-ne p1, v0, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    add-int/lit8 v0, v0, -0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p1, v0, v4, v5}, Lcom/b/a/b/f;->a(IJ)V

    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->b(Z)V

    :cond_8
    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->b(Z)V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p1

    if-ge p1, v2, :cond_9

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;I)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1, v2}, Lcom/b/a/b/f;->d(I)I

    move-result p1

    if-eq v3, p1, :cond_1

    goto/16 :goto_1

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {p1, v1}, Lcom/b/a/a/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->g()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, v0, p1}, Lcom/b/a/a/c$a;->b(II)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iput p1, v0, Lcom/b/a/a/c;->i:I

    invoke-direct {p0}, Lcom/b/a/a/c$a;->k()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Invalid caret position"

    invoke-static {p1}, Lcom/b/a/b/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(II)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p1, p1, Lcom/b/a/a/c;->i:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p2}, Lcom/b/a/b/f;->g()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-le p1, p2, :cond_1

    move p1, p2

    :cond_1
    sub-int/2addr p1, v0

    const-string p2, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/b/a/a/c$a;->b(IILjava/lang/String;)V

    return-void
.end method

.method a(IILjava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->j:I

    invoke-virtual {v0, v3}, Lcom/b/a/b/f;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3, v0}, Lcom/b/a/b/f;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->k:I

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v5, Lcom/b/a/a/c;->j:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->j:I

    iput v6, v5, Lcom/b/a/a/c;->i:I

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v5, v5, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/b/a/b/f;->a(IIJ)V

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v4}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->c(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v4}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/b/a/b/f;->d(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_2
    if-lez p2, :cond_5

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v4, p1}, Lcom/b/a/b/f;->b(I)I

    move-result v4

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, v4}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    move v3, v0

    move v0, v4

    :cond_3
    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v4}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v4

    if-eq v0, v4, :cond_4

    const/4 v5, 0x0

    :cond_4
    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iput p1, v4, Lcom/b/a/a/c;->i:I

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, p2, v6, v7}, Lcom/b/a/b/f;->a(IIJ)V

    const/4 v4, 0x1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p2, p1}, Lcom/b/a/b/f;->b(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p2, p1}, Lcom/b/a/b/f;->d(I)I

    move-result p2

    move v0, p1

    move v3, p2

    :cond_6
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->i:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {p1, p2, v4, v6, v7}, Lcom/b/a/b/f;->a([CIJ)V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p2, p1, Lcom/b/a/a/c;->i:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Lcom/b/a/a/c;->i:I

    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {p1, v2}, Lcom/b/a/a/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->a()V

    :cond_8
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p2}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p2

    if-eq p1, p2, :cond_9

    goto :goto_3

    :cond_9
    move v1, v5

    :goto_3
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p2, p2, Lcom/b/a/a/c;->i:I

    invoke-static {p1, p2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1, v0}, Lcom/b/a/b/f;->d(I)I

    move-result p1

    if-eq v3, p1, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p2}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p2

    iget-object p3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p3}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p3

    add-int/2addr p3, v2

    invoke-static {p1, p2, p3}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1, v0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;I)V

    :cond_c
    return-void
.end method

.method public a(IIZZ)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->g()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid range to select"

    invoke-static {v1, v2}, Lcom/b/a/b/q;->a(ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/b/a/a/c$a;->c:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->p(Lcom/b/a/a/c;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->m(Lcom/b/a/a/c;)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, v0}, Lcom/b/a/a/c$a;->c(Z)V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    :goto_1
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iput p1, v0, Lcom/b/a/a/c;->j:I

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->j:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/b/a/a/c;->k:I

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p2, p2, Lcom/b/a/a/c;->k:I

    iput p2, p1, Lcom/b/a/a/c;->i:I

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->o(Lcom/b/a/a/c;)Lcom/b/a/a/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->g()Z

    move-result p2

    iget-object p4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p4, p4, Lcom/b/a/a/c;->j:I

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->k:I

    invoke-interface {p1, p2, p4, v0}, Lcom/b/a/a/e;->a(ZII)V

    :cond_3
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p2, p2, Lcom/b/a/a/c;->k:I

    invoke-static {p1, p2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result p1

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p2, p2, Lcom/b/a/a/c;->j:I

    invoke-static {p1, p2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result p1

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->p(Lcom/b/a/a/c;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/text/ClipboardManager;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/b/a/a/c$a;->b(Landroid/text/ClipboardManager;)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->i()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->d()V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->i()V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1, v0}, Lcom/b/a/b/f;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, v2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->i:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/b/a/b/f;->a([CIJ)V

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, v2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v2}, Lcom/b/a/b/f;->e()V

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v2, Lcom/b/a/a/c;->i:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, v2, Lcom/b/a/a/c;->i:I

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/b/a/a/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->a()V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    invoke-static {p1, v2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1, v0}, Lcom/b/a/b/f;->d(I)I

    move-result p1

    if-eq v1, p1, :cond_1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0, p1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;I)V

    :cond_3
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/b/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    new-instance v1, Lcom/b/a/a/c$a$1;

    invoke-direct {v1, p0, p1}, Lcom/b/a/a/c$a$1;-><init>(Lcom/b/a/a/c$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v1, Lcom/b/a/a/c;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/b/a/a/c;->i:I

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, v1, v2}, Lcom/b/a/a/c$a;->b(II)V

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    invoke-static {v1, v2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v2}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/c$a;->b:Lcom/b/a/b/k;

    invoke-virtual {v0}, Lcom/b/a/b/k;->b()V

    return-void
.end method

.method b(IILjava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->j:I

    invoke-virtual {v0, v3}, Lcom/b/a/b/f;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3, v0}, Lcom/b/a/b/f;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, v4, Lcom/b/a/a/c;->k:I

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v5, Lcom/b/a/a/c;->j:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_1

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->j:I

    iput v6, v5, Lcom/b/a/a/c;->i:I

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v5, v5, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/b/a/b/f;->a(IIJ)V

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v4}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->c(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v4}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/b/a/b/f;->d(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_2
    if-lez p2, :cond_5

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v4, p1}, Lcom/b/a/b/f;->b(I)I

    move-result v4

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, v4}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    move v3, v0

    move v0, v4

    :cond_3
    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v4}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v4

    if-eq v0, v4, :cond_4

    const/4 v5, 0x0

    :cond_4
    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iput p1, v4, Lcom/b/a/a/c;->i:I

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, p2, v6, v7}, Lcom/b/a/b/f;->a(IIJ)V

    const/4 v4, 0x1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v4, p1}, Lcom/b/a/b/f;->b(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, p1}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    move v3, v0

    move v0, p1

    :cond_6
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->i:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {p1, v4, v6, v7, v8}, Lcom/b/a/b/f;->a([CIJ)V

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v4, p1, Lcom/b/a/a/c;->i:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, p1, Lcom/b/a/a/c;->i:I

    const/4 v4, 0x1

    :cond_7
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->i(Lcom/b/a/a/c;)Lcom/b/a/a/f;

    move-result-object p1

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->i:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-interface {p1, p3, v6, v7}, Lcom/b/a/a/f;->b(Ljava/lang/CharSequence;II)V

    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {p1, v2}, Lcom/b/a/a/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->a()V

    :cond_8
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p2}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p2

    if-eq p1, p2, :cond_9

    goto :goto_3

    :cond_9
    move v1, v5

    :goto_3
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p2, p2, Lcom/b/a/a/c;->i:I

    invoke-static {p1, p2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1, v0}, Lcom/b/a/b/f;->d(I)I

    move-result p1

    if-eq v3, p1, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1}, Lcom/b/a/b/f;->j()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p2}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p2

    iget-object p3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p3}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result p3

    add-int/2addr p3, v2

    invoke-static {p1, p2, p3}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {p1, v0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;I)V

    :cond_c
    return-void
.end method

.method public b(Landroid/text/ClipboardManager;)V
    .locals 4

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->j:I

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->k:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->j:I

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->k:I

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->j:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/b/a/b/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v1, Lcom/b/a/a/c;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/b/a/a/c;->i:I

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, v1, v2}, Lcom/b/a/a/c$a;->b(II)V

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    invoke-static {v1, v2}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v2}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->j:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->j:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->k:I

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method c(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->g()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    add-int/2addr v1, p1

    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/b/a/b/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    invoke-virtual {v0, v1, p1}, Lcom/b/a/b/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public c()V
    .locals 8

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v3, v0}, Lcom/b/a/a/c;->e(I)I

    move-result v3

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v4, v1}, Lcom/b/a/b/f;->g(I)I

    move-result v4

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v5, v5, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v5, v2}, Lcom/b/a/b/f;->g(I)I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v3, Lcom/b/a/a/c;->i:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/b/a/a/c;->i:I

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v7, v6, Lcom/b/a/a/c;->i:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v7, v4

    iput v7, v6, Lcom/b/a/a/c;->i:I

    :goto_0
    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v3}, Lcom/b/a/a/c;->j(Lcom/b/a/a/c;)I

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, v0, v3}, Lcom/b/a/a/c$a;->b(II)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->i:I

    invoke-static {v0, v3}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v1, v3}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->k(Lcom/b/a/a/c;)Lcom/b/a/b/n;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/b/a/b/n;->a(I)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    xor-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    iput v1, v0, Lcom/b/a/a/c;->j:I

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    :goto_0
    iput v1, v0, Lcom/b/a/a/c;->k:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    const/4 v1, -0x1

    iput v1, v0, Lcom/b/a/a/c;->j:I

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    goto :goto_0

    :goto_1
    iput-boolean p1, p0, Lcom/b/a/a/c$a;->c:Z

    iput-boolean p1, p0, Lcom/b/a/a/c$a;->d:Z

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->o(Lcom/b/a/a/c;)Lcom/b/a/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/b/a/a/e;->a(ZII)V

    return-void
.end method

.method d(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/b/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 6

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v3, v0}, Lcom/b/a/a/c;->e(I)I

    move-result v3

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v4, v2}, Lcom/b/a/b/f;->g(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v3, Lcom/b/a/a/c;->i:I

    sub-int/2addr v5, v4

    iput v5, v3, Lcom/b/a/a/c;->i:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v4, Lcom/b/a/a/c;->i:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v5, v3

    iput v5, v4, Lcom/b/a/a/c;->i:I

    :goto_0
    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v3}, Lcom/b/a/a/c;->l(Lcom/b/a/a/c;)I

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->i:I

    invoke-direct {p0, v0, v3}, Lcom/b/a/a/c$a;->b(II)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->i:I

    invoke-static {v0, v3}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->k(Lcom/b/a/a/c;)Lcom/b/a/b/n;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/b/a/b/n;->a(I)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    :cond_2
    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->j:I

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->j:I

    :goto_0
    iput v0, p1, Lcom/b/a/a/c;->i:I

    invoke-direct {p0}, Lcom/b/a/a/c$a;->k()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget p1, p1, Lcom/b/a/a/c;->i:I

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->k:I

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->k:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    invoke-virtual {v0, v1}, Lcom/b/a/b/f;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v1, v0}, Lcom/b/a/a/c;->c(Lcom/b/a/a/c;I)I

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->k(Lcom/b/a/a/c;)Lcom/b/a/b/n;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/b/a/b/n;->a(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->n(Lcom/b/a/a/c;)Lcom/b/a/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->n(Lcom/b/a/a/c;)Lcom/b/a/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/c$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->n(Lcom/b/a/a/c;)Lcom/b/a/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/c$b;->a()V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->d:Z

    return v0
.end method

.method public i()V
    .locals 10

    iget-boolean v0, p0, Lcom/b/a/a/c$a;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->k:I

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->j:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v2, v2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->j:I

    invoke-virtual {v2, v3}, Lcom/b/a/b/f;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v3, v3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v3, v2}, Lcom/b/a/b/f;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v4, v4, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v5, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v5, v5, Lcom/b/a/a/c;->k:I

    invoke-virtual {v4, v5}, Lcom/b/a/b/f;->b(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v6}, Lcom/b/a/a/c;->i(Lcom/b/a/a/c;)Lcom/b/a/a/f;

    move-result-object v6

    const-string v7, ""

    iget-object v8, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v8, v8, Lcom/b/a/a/c;->i:I

    invoke-interface {v6, v7, v8, v0}, Lcom/b/a/a/f;->a(Ljava/lang/CharSequence;II)V

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v6, v6, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v7, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v7, v7, Lcom/b/a/a/c;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v6, v7, v0, v8, v9}, Lcom/b/a/b/f;->a(IIJ)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v6, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v6, v6, Lcom/b/a/a/c;->j:I

    iput v6, v0, Lcom/b/a/a/c;->i:I

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->e()V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0, v5}, Lcom/b/a/a/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->a()V

    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->c(Z)V

    invoke-virtual {p0}, Lcom/b/a/a/c$a;->f()V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    invoke-static {v0, v1}, Lcom/b/a/a/c;->b(Lcom/b/a/a/c;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0, v2}, Lcom/b/a/b/f;->d(I)I

    move-result v0

    if-eq v3, v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;II)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0, v2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;I)V

    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lcom/b/a/a/c$a;->c(Z)V

    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->m(Lcom/b/a/a/c;)V

    :cond_5
    return-void
.end method

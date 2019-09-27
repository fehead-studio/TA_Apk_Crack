.class Lcom/b/a/a/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)V
    .locals 0

    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->h(Lcom/b/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    iget-object p2, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-object p2, p2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    invoke-virtual {p2, p1}, Lcom/b/a/a/c;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->s:Lcom/b/a/a/a;

    invoke-virtual {p1}, Lcom/b/a/a/a;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 0

    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->h(Lcom/b/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    iget-object p2, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    invoke-virtual {p2, p1}, Lcom/b/a/a/c;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->s:Lcom/b/a/a/a;

    invoke-virtual {p1}, Lcom/b/a/a/a;->b()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;II)V
    .locals 1

    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->h(Lcom/b/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    iget-object p2, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    invoke-virtual {p2, p1}, Lcom/b/a/a/c;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-boolean p1, p1, Lcom/b/a/a/c;->t:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget p1, p1, Lcom/b/a/a/c;->i:I

    :goto_0
    if-ltz p1, :cond_3

    iget-object p2, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-object p2, p2, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Lcom/b/a/b/f;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p3

    if-nez p3, :cond_2

    const/16 p3, 0x5f

    if-eq p2, p3, :cond_2

    const/16 p3, 0x2e

    if-eq p2, p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget p2, p2, Lcom/b/a/a/c;->i:I

    sub-int/2addr p2, p1

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-object p2, p2, Lcom/b/a/a/c;->s:Lcom/b/a/a/a;

    iget-object p3, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-object p3, p3, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v0, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v0, p1

    invoke-virtual {p3, p1, v0}, Lcom/b/a/b/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/b/a/a/a;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/b/a/a/c$8;->a:Lcom/b/a/a/c;

    iget-object p1, p1, Lcom/b/a/a/c;->s:Lcom/b/a/a/a;

    invoke-virtual {p1}, Lcom/b/a/a/a;->b()V

    return-void
.end method

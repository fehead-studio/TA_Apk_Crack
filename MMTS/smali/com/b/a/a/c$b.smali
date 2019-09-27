.class Lcom/b/a/a/c$b;
.super Landroid/view/inputmethod/BaseInputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/c;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/b/a/a/c;Lcom/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/b/a/a/c$b;->b:Z

    iput p1, p0, Lcom/b/a/a/c$b;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/c$b;->c:I

    iput-boolean v0, p0, Lcom/b/a/a/c$b;->b:Z

    iget-object v0, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->e()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/c$b;->b:Z

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4

    iget-object v0, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->getCaretPosition()I

    move-result v1

    iget v2, p0, Lcom/b/a/a/c$b;->c:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/b/a/a/c$b;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/a/c$a;->b(IILjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/c$b;->c:I

    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->e()V

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object p1

    iget-object v2, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    add-int/2addr v2, p2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/b/a/a/c$a;->a(I)V

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    iget-object v2, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {v2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget v3, v3, Lcom/b/a/a/c;->i:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/b/a/a/c$a;->a(I)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/b/a/a/c$b;->b:Z

    return v1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    iget v0, p0, Lcom/b/a/a/c$b;->c:I

    if-eqz v0, :cond_0

    const-string v0, "lua"

    const-string v1, "Warning: Implmentation of InputConnection.deleteSurroundingText will not skip composing text"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/b/a/a/c$a;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public finishComposingText()Z
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/a/c$b;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 7

    and-int/lit16 v0, p1, 0x2000

    const/16 v1, 0x4000

    const/16 v2, 0x2000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v0, v4

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v4

    iget-object v5, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v5, v5, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v5, v0}, Lcom/b/a/b/f;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Lcom/b/a/b/h;->b(C)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x6000

    const/16 v1, 0x6000

    return v1

    :cond_1
    const/16 v1, 0x2000

    return v1

    :cond_2
    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object p1

    iget-object v0, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    sub-int/2addr v0, v4

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_6

    iget-object v5, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v5, v5, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v5, v0}, Lcom/b/a/b/f;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v5}, Lcom/b/a/b/h;->b(C)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {p1, v5}, Lcom/b/a/b/h;->c(C)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    return v1

    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {p2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/b/a/a/c$a;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {p2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/b/a/a/c$a;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->paste()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->copy()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->cut()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->selectAll()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020028
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v0, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v0}, Lcom/b/a/b/f;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/b/a/a/c;->moveCaret(I)V

    return v2

    :pswitch_1
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1, v3}, Lcom/b/a/a/c;->moveCaret(I)V

    return v2

    :pswitch_2
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->moveCaretRight()V

    return v2

    :pswitch_3
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->moveCaretLeft()V

    return v2

    :pswitch_4
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->moveCaretDown()V

    return v2

    :pswitch_5
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->moveCaretUp()V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->isSelectText()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1, v3}, Lcom/b/a/a/c;->selectText(Z)V

    return v2

    :cond_1
    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1, v2}, Lcom/b/a/a/c;->selectText(Z)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/c$b;->b:Z

    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    invoke-virtual {v1}, Lcom/b/a/b/f;->d()V

    :cond_0
    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/c;->getCaretPosition()I

    move-result v2

    iget v3, p0, Lcom/b/a/a/c$b;->c:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/b/a/a/c$b;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/b/a/a/c$a;->b(IILjava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/b/a/a/c$b;->c:I

    if-le p2, v0, :cond_1

    iget-object p1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object p1

    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget v1, v1, Lcom/b/a/a/c;->i:I

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/b/a/a/c$a;->a(I)V

    return v0

    :cond_1
    if-gtz p2, :cond_2

    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/b/a/a/c$a;->a(I)V

    :cond_2
    return v0
.end method

.method public setSelection(II)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {p2}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/b/a/a/c$a;->a(I)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/b/a/a/c$b;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object v1

    sub-int/2addr p2, p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/b/a/a/c$a;->a(IIZZ)V

    return v0
.end method

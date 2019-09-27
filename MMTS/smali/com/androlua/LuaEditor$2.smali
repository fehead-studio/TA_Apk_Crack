.class Lcom/androlua/LuaEditor$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditor;->startFindMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaEditor;

.field private b:Lcom/b/a/b/l;

.field private c:I

.field private d:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$2;I)I
    .locals 0

    iput p1, p0, Lcom/androlua/LuaEditor$2;->c:I

    return p1
.end method

.method private a()V
    .locals 9

    new-instance v0, Lcom/b/a/b/l;

    invoke-direct {v0}, Lcom/b/a/b/l;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor$2;->b:Lcom/b/a/b/l;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v8}, Lcom/androlua/LuaEditor;->selectText(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->b:Lcom/b/a/b/l;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object v2

    iget v4, p0, Lcom/androlua/LuaEditor$2;->c:I

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Lcom/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/f;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/b/a/b/l;->a(Lcom/b/a/b/f;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor$2;->c:I

    iget v0, p0, Lcom/androlua/LuaEditor$2;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v8}, Lcom/androlua/LuaEditor;->selectText(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u627e\u5230"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v8, p0, Lcom/androlua/LuaEditor$2;->c:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    iget v1, p0, Lcom/androlua/LuaEditor$2;->c:I

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaEditor;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor$2;->c:I

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor$2;->c:I

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    iget v1, p0, Lcom/androlua/LuaEditor$2;->c:I

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEditor;->moveCaret(I)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->a()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->a()V

    :goto_0
    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "\u641c\u7d22"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/androlua/LuaEditor$2$1;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/androlua/LuaEditor$2$1;-><init>(Lcom/androlua/LuaEditor$2;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    new-instance v2, Lcom/androlua/LuaEditor$2$2;

    invoke-direct {v2, p0}, Lcom/androlua/LuaEditor$2$2;-><init>(Lcom/androlua/LuaEditor$2;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v3, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-virtual {v3}, Lcom/androlua/LuaEditor;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    const/4 v1, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, ""

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->a:Lcom/androlua/LuaEditor;

    invoke-static {p1}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object p1

    const v2, 0x104000c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {p2, v1, v2, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

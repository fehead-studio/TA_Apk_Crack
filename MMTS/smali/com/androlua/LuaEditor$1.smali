.class Lcom/androlua/LuaEditor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditor;->startGotoMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaEditor;

.field private b:I

.field private c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$1;->a:Lcom/androlua/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$1;I)I
    .locals 0

    iput p1, p0, Lcom/androlua/LuaEditor$1;->b:I

    return p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/androlua/LuaEditor$1;->a:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->b(Lcom/androlua/LuaEditor;)Lcom/b/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/b/f;->f()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->a:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->c(Lcom/androlua/LuaEditor;)Lcom/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/f;->f()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditor$1;->a:Lcom/androlua/LuaEditor;

    invoke-virtual {v1, v0}, Lcom/androlua/LuaEditor;->gotoLine(I)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditor$1;->a()V

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
    invoke-direct {p0}, Lcom/androlua/LuaEditor$1;->a()V

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
    .locals 5

    const-string v0, "\u8f6c\u5230"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/androlua/LuaEditor$1$1;

    iget-object v0, p0, Lcom/androlua/LuaEditor$1;->a:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/androlua/LuaEditor$1$1;-><init>(Lcom/androlua/LuaEditor$1;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/androlua/LuaEditor$1$2;

    invoke-direct {v2, p0}, Lcom/androlua/LuaEditor$1$2;-><init>(Lcom/androlua/LuaEditor$1;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v3, p0, Lcom/androlua/LuaEditor$1;->a:Lcom/androlua/LuaEditor;

    invoke-virtual {v3}, Lcom/androlua/LuaEditor;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, ""

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v3, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/androlua/LuaEditor$1;->a:Lcom/androlua/LuaEditor;

    invoke-static {p1}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object p1

    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, v1, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/androlua/LuaEditor$1;->c:Landroid/widget/EditText;

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

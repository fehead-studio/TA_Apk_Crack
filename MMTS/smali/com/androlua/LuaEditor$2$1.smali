.class Lcom/androlua/LuaEditor$2$1;
.super Landroid/widget/EditText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditor$2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaEditor$2;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor$2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$2$1;->a:Lcom/androlua/LuaEditor$2;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditor$2$1;->a:Lcom/androlua/LuaEditor$2;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/androlua/LuaEditor$2;->a(Lcom/androlua/LuaEditor$2;I)I

    iget-object p1, p0, Lcom/androlua/LuaEditor$2$1;->a:Lcom/androlua/LuaEditor$2;

    invoke-static {p1}, Lcom/androlua/LuaEditor$2;->a(Lcom/androlua/LuaEditor$2;)V

    :cond_0
    return-void
.end method

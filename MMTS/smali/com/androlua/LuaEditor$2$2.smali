.class Lcom/androlua/LuaEditor$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
.method constructor <init>(Lcom/androlua/LuaEditor$2;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$2$2;->a:Lcom/androlua/LuaEditor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaEditor$2$2;->a:Lcom/androlua/LuaEditor$2;

    invoke-static {p1}, Lcom/androlua/LuaEditor$2;->a(Lcom/androlua/LuaEditor$2;)V

    const/4 p1, 0x1

    return p1
.end method

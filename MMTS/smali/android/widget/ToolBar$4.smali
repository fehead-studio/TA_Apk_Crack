.class Landroid/widget/ToolBar$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ToolBar;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ToolBar;


# direct methods
.method constructor <init>(Landroid/widget/ToolBar;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ToolBar$4;->a:Landroid/widget/ToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar$4;->a:Landroid/widget/ToolBar;

    invoke-static {v0}, Landroid/widget/ToolBar;->d(Landroid/widget/ToolBar;)Landroid/widget/ToolBar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ToolBar$4;->a:Landroid/widget/ToolBar;

    invoke-static {v0}, Landroid/widget/ToolBar;->d(Landroid/widget/ToolBar;)Landroid/widget/ToolBar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ToolBar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

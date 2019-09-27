.class Landroid/widget/ToolBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroid/widget/ToolBar$1;->a:Landroid/widget/ToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ToolBar$1;->a:Landroid/widget/ToolBar;

    invoke-static {v0}, Landroid/widget/ToolBar;->a(Landroid/widget/ToolBar;)Landroid/widget/ToolBar$OnNaviClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ToolBar$1;->a:Landroid/widget/ToolBar;

    invoke-static {v0}, Landroid/widget/ToolBar;->a(Landroid/widget/ToolBar;)Landroid/widget/ToolBar$OnNaviClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ToolBar$OnNaviClickListener;->onNaviClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

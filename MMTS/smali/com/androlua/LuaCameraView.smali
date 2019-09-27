.class Lcom/androlua/LuaCameraView;
.super Landroid/view/SurfaceView;


# instance fields
.field private a:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lcom/androlua/LuaCameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    new-instance v0, Lcom/androlua/LuaCameraView$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView$1;-><init>(Lcom/androlua/LuaCameraView;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->a:Landroid/view/SurfaceHolder;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

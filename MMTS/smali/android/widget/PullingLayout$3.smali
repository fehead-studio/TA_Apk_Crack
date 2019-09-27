.class Landroid/widget/PullingLayout$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PullingLayout;->loadmoreFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PullingLayout;


# direct methods
.method constructor <init>(Landroid/widget/PullingLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$3;->a:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/PullingLayout$3;->a:Landroid/widget/PullingLayout;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;I)V

    iget-object p1, p0, Landroid/widget/PullingLayout$3;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->i(Landroid/widget/PullingLayout;)V

    return-void
.end method

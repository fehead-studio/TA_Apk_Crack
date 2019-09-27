.class Landroid/widget/PullingLayout$MyTimer$MyTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout$MyTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PullingLayout$MyTimer;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/PullingLayout$MyTimer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$MyTimer$MyTask;->a:Landroid/widget/PullingLayout$MyTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Landroid/widget/PullingLayout$MyTimer$MyTask;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer$MyTask;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

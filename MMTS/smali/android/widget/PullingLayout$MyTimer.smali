.class Landroid/widget/PullingLayout$MyTimer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PullingLayout$MyTimer$MyTask;
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PullingLayout;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Timer;

.field private d:Landroid/widget/PullingLayout$MyTimer$MyTask;


# direct methods
.method public constructor <init>(Landroid/widget/PullingLayout;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$MyTimer;->a:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/PullingLayout$MyTimer;->b:Landroid/os/Handler;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Landroid/widget/PullingLayout$MyTimer;->c:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$MyTimer$MyTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    :cond_0
    return-void
.end method

.method public schedule(J)V
    .locals 8

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$MyTimer$MyTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    :cond_0
    new-instance v0, Landroid/widget/PullingLayout$MyTimer$MyTask;

    iget-object v1, p0, Landroid/widget/PullingLayout$MyTimer;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/widget/PullingLayout$MyTimer$MyTask;-><init>(Landroid/widget/PullingLayout$MyTimer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    iget-object v2, p0, Landroid/widget/PullingLayout$MyTimer;->c:Ljava/util/Timer;

    iget-object v3, p0, Landroid/widget/PullingLayout$MyTimer;->d:Landroid/widget/PullingLayout$MyTimer$MyTask;

    const-wide/16 v4, 0x0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

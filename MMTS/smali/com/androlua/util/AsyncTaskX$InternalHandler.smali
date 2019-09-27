.class Lcom/androlua/util/AsyncTaskX$InternalHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, v0, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;->a:Lcom/androlua/util/AsyncTaskX;

    iget-object v0, v0, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/androlua/util/AsyncTaskX;->b([Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p1, v0, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;->a:Lcom/androlua/util/AsyncTaskX;

    iget-object v0, v0, Lcom/androlua/util/AsyncTaskX$AsyncTaskResult;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/androlua/util/AsyncTaskX;->c(Lcom/androlua/util/AsyncTaskX;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRefreshAndLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Float;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PullingLayout;


# direct methods
.method private constructor <init>(Landroid/widget/PullingLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/PullingLayout;Landroid/widget/PullingLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;-><init>(Landroid/widget/PullingLayout;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    :goto_0
    iget-object v0, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    iget v0, v0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-static {v2}, Landroid/widget/PullingLayout;->d(Landroid/widget/PullingLayout;)F

    move-result v2

    mul-float v2, v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    iget v1, v0, Landroid/widget/PullingLayout;->pullDownY:F

    iget-object v2, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    iget v2, v2, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/widget/PullingLayout;->pullDownY:F

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Float;

    iget-object v1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    iget v1, v1, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->publishProgress([Ljava/lang/Object;)V

    :try_start_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;I)V

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->j(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$OnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->j(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$OnRefreshListener;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-interface {p1, v0}, Landroid/widget/PullingLayout$OnRefreshListener;->onRefresh(Landroid/widget/PullingLayout;)V

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->i(Landroid/widget/PullingLayout;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Float;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    iget p1, p1, Landroid/widget/PullingLayout;->pullDownY:F

    iget-object v0, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-static {v0}, Landroid/widget/PullingLayout;->d(Landroid/widget/PullingLayout;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;I)V

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:Landroid/widget/PullingLayout;

    invoke-virtual {p1}, Landroid/widget/PullingLayout;->requestLayout()V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a([Ljava/lang/Float;)V

    return-void
.end method

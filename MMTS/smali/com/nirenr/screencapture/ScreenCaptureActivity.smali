.class public Lcom/nirenr/screencapture/ScreenCaptureActivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final REQUEST_MEDIA_PROJECTION:I = 0x12


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->finishAndRemoveTask()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/nirenr/screencapture/ScreenShot;->setResultData(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/nirenr/screencapture/ScreenShot;->setResultData(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    const-string v0, "\u8bf7\u6388\u4e88\u6743\u9650"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenCaptureActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->requesturePermission()V

    return-void
.end method

.method public requesturePermission()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const-string v0, "\u4ec5\u652f\u6301\u5b89\u53535\u4ee5\u4e0a\u7cfb\u7edf"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/nirenr/screencapture/ScreenCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nirenr/screencapture/ScreenShot;->setResultData(Landroid/content/Intent;)V

    return-void
.end method

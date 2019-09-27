.class public Lcom/nirenr/screencapture/ScreenShot$SaveTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/screencapture/ScreenShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/media/Image;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/screencapture/ScreenShot;


# direct methods
.method public constructor <init>(Lcom/nirenr/screencapture/ScreenShot;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/media/Image;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    mul-int v7, v6, v2

    sub-int/2addr v4, v7

    div-int/2addr v4, v6

    add-int/2addr v4, v2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v4, v1, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {p1, v0}, Lcom/nirenr/screencapture/ScreenShot;->a(Lcom/nirenr/screencapture/ScreenShot;Landroid/media/Image;)Landroid/media/Image;

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {p1}, Lcom/nirenr/screencapture/ScreenShot;->b(Lcom/nirenr/screencapture/ScreenShot;)Lcom/nirenr/screencapture/ScreenCaptureListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {p1}, Lcom/nirenr/screencapture/ScreenShot;->b(Lcom/nirenr/screencapture/ScreenShot;)Lcom/nirenr/screencapture/ScreenCaptureListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-static {p1, v0}, Lcom/nirenr/screencapture/ScreenShot;->a(Lcom/nirenr/screencapture/ScreenShot;Lcom/nirenr/screencapture/ScreenCaptureListener;)Lcom/nirenr/screencapture/ScreenCaptureListener;

    :cond_1
    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a:Lcom/nirenr/screencapture/ScreenShot;

    invoke-virtual {v0, p1}, Lcom/nirenr/screencapture/ScreenShot;->setScreenCaptureBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "ryze"

    const-string v0, "\u83b7\u53d6\u56fe\u7247\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/media/Image;

    invoke-virtual {p0, p1}, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a([Landroid/media/Image;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/nirenr/screencapture/ScreenShot$SaveTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

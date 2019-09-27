.class public Lcom/androlua/GifDecoder$GifFrame;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;

.field public nextFrame:Lcom/androlua/GifDecoder$GifFrame;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object p1, p0, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    return-void
.end method

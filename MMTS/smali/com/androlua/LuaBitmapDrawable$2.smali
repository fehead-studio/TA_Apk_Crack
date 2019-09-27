.class Lcom/androlua/LuaBitmapDrawable$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/GifDecoder$GifAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaBitmapDrawable;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/androlua/LuaBitmapDrawable;


# direct methods
.method constructor <init>(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    iput-object p2, p0, Lcom/androlua/LuaBitmapDrawable$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseOk(ZI)V
    .locals 0

    if-nez p1, :cond_0

    if-gez p2, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    iget-object p2, p0, Lcom/androlua/LuaBitmapDrawable$2;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmapDrawable;->b(Lcom/androlua/LuaBitmapDrawable;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {p1}, Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {p1}, Lcom/androlua/LuaBitmapDrawable;->b(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/GifDecoder;->getFrameCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    iget-object p2, p0, Lcom/androlua/LuaBitmapDrawable$2;->b:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {p2}, Lcom/androlua/LuaBitmapDrawable;->b(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/GifDecoder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaBitmapDrawable;->a(Lcom/androlua/LuaBitmapDrawable;Lcom/androlua/GifDecoder;)Lcom/androlua/GifDecoder;

    :cond_1
    return-void
.end method

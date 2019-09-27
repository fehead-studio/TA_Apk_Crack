.class Lcom/androlua/LuaBitmapDrawable$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaBitmapDrawable;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaBitmapDrawable;


# direct methods
.method constructor <init>(Lcom/androlua/LuaBitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaBitmapDrawable$3;->a:Lcom/androlua/LuaBitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaBitmapDrawable$3;->a:Lcom/androlua/LuaBitmapDrawable;

    invoke-static {v0}, Lcom/androlua/LuaBitmapDrawable;->c(Lcom/androlua/LuaBitmapDrawable;)Lcom/androlua/LoadingDrawable;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/androlua/LoadingDrawable;->setState(I)V

    return-void
.end method

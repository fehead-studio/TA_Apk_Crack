.class Lcom/androlua/Ticker$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/Ticker;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/Ticker;


# direct methods
.method constructor <init>(Lcom/androlua/Ticker;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Ticker$1;->a:Lcom/androlua/Ticker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/Ticker$1;->a:Lcom/androlua/Ticker;

    invoke-static {p1}, Lcom/androlua/Ticker;->a(Lcom/androlua/Ticker;)Lcom/androlua/Ticker$OnTickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/Ticker$1;->a:Lcom/androlua/Ticker;

    invoke-static {p1}, Lcom/androlua/Ticker;->a(Lcom/androlua/Ticker;)Lcom/androlua/Ticker$OnTickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/androlua/Ticker$OnTickListener;->onTick()V

    :cond_0
    return-void
.end method

.class Lcom/androlua/util/ClickRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/androlua/util/ClickRunnable$ClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/util/ClickRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/util/ClickRunnable;


# direct methods
.method constructor <init>(Lcom/androlua/util/ClickRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/ClickRunnable$1;->a:Lcom/androlua/util/ClickRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/util/ClickRunnable$1;->a:Lcom/androlua/util/ClickRunnable;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/androlua/util/ClickRunnable;->a(Lcom/androlua/util/ClickRunnable;Lcom/androlua/util/ClickRunnable;)Lcom/androlua/util/ClickRunnable;

    iget-object p1, p0, Lcom/androlua/util/ClickRunnable$1;->a:Lcom/androlua/util/ClickRunnable;

    invoke-virtual {p1}, Lcom/androlua/util/ClickRunnable;->run()V

    return-void
.end method

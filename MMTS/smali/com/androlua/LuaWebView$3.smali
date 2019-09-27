.class Lcom/androlua/LuaWebView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView;->openFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaWebView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "../"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    invoke-static {p4}, Lcom/androlua/LuaWebView;->c(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    iget-object p2, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->c(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaWebView;->openFile(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    invoke-static {p3}, Lcom/androlua/LuaWebView;->c(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    invoke-static {p2, p1}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    iget-object p2, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->c(Lcom/androlua/LuaWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaWebView;->openFile(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/androlua/LuaWebView$3;->a:Lcom/androlua/LuaWebView;

    invoke-static {p2}, Lcom/androlua/LuaWebView;->d(Lcom/androlua/LuaWebView;)Landroid/webkit/ValueCallback;

    move-result-object p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

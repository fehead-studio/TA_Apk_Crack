.class Lcom/androlua/LuaWebView$Download$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView$Download;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaWebView$Download;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView$Download;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$Download$2;->a:Lcom/androlua/LuaWebView$Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download$2;->a:Lcom/androlua/LuaWebView$Download;

    iget-object p2, p0, Lcom/androlua/LuaWebView$Download$2;->a:Lcom/androlua/LuaWebView$Download;

    iget-object p2, p2, Lcom/androlua/LuaWebView$Download;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaWebView$Download;->a(Lcom/androlua/LuaWebView$Download;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/LuaWebView$Download$2;->a:Lcom/androlua/LuaWebView$Download;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/androlua/LuaWebView$Download;->a(Lcom/androlua/LuaWebView$Download;Z)J

    return-void
.end method

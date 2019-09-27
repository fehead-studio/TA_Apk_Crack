.class Lcom/androlua/LuaWebView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaWebView;->setOnDownloadStartListener(Lcom/androlua/LuaWebView$OnDownloadStartListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaWebView$OnDownloadStartListener;

.field final synthetic b:Lcom/androlua/LuaWebView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView;Lcom/androlua/LuaWebView$OnDownloadStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$2;->b:Lcom/androlua/LuaWebView;

    iput-object p2, p0, Lcom/androlua/LuaWebView$2;->a:Lcom/androlua/LuaWebView$OnDownloadStartListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lcom/androlua/LuaWebView$2;->a:Lcom/androlua/LuaWebView$OnDownloadStartListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/androlua/LuaWebView$OnDownloadStartListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

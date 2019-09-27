.class public Lcom/androlua/LuaBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;
    }
.end annotation


# instance fields
.field private a:Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaBroadcastReceiver;->a:Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBroadcastReceiver;->a:Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

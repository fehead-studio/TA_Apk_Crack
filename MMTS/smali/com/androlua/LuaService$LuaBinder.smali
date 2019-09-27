.class public Lcom/androlua/LuaService$LuaBinder;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LuaBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaService;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaService;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaService$LuaBinder;->a:Lcom/androlua/LuaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/androlua/LuaService;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaService$LuaBinder;->a:Lcom/androlua/LuaService;

    return-object v0
.end method

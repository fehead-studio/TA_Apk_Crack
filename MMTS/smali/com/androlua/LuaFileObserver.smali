.class public Lcom/androlua/LuaFileObserver;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaFileObserver$OnEventListener;
    }
.end annotation


# instance fields
.field private a:Lcom/androlua/LuaFileObserver$OnEventListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaFileObserver;->a:Lcom/androlua/LuaFileObserver$OnEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaFileObserver;->a:Lcom/androlua/LuaFileObserver$OnEventListener;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaFileObserver$OnEventListener;->onEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnEventListener(Lcom/androlua/LuaFileObserver$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaFileObserver;->a:Lcom/androlua/LuaFileObserver$OnEventListener;

    return-void
.end method

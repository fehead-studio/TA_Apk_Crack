.class public Lcom/androlua/LuaTimer;
.super Lcom/androlua/util/TimerX;

# interfaces
.implements Lcom/androlua/LuaGcable;


# instance fields
.field private a:Z

.field private b:Lcom/androlua/LuaTimerTask;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "LuaTimer"

    invoke-direct {p0, v0}, Lcom/androlua/util/TimerX;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    new-instance v0, Lcom/androlua/LuaTimerTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/androlua/LuaTimerTask;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "LuaTimer"

    invoke-direct {p0, v0}, Lcom/androlua/util/TimerX;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    new-instance v0, Lcom/androlua/LuaTimerTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/androlua/LuaTimerTask;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    return-void
.end method


# virtual methods
.method public gc()V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaTimer;->stop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaTimer;->a:Z

    return-void
.end method

.method public getEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    invoke-virtual {v0}, Lcom/androlua/LuaTimerTask;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getPeriod()J
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    invoke-virtual {v0}, Lcom/androlua/LuaTimerTask;->getPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    invoke-virtual {v0}, Lcom/androlua/LuaTimerTask;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaTimer;->a:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaTimerTask;->setEnabled(Z)V

    return-void
.end method

.method public setPeriod(J)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaTimerTask;->setPeriod(J)V

    return-void
.end method

.method public start(J)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaTimer;->schedule(Lcom/androlua/util/TimerTaskX;J)V

    return-void
.end method

.method public start(JJ)V
    .locals 6

    iget-object v1, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaTimer;->schedule(Lcom/androlua/util/TimerTaskX;JJ)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaTimer;->b:Lcom/androlua/LuaTimerTask;

    invoke-virtual {v0}, Lcom/androlua/LuaTimerTask;->cancel()Z

    return-void
.end method

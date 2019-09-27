.class public Lcom/androlua/LuaPrint;
.super Lcom/luajava/JavaFunction;


# instance fields
.field private a:Lcom/luajava/LuaState;

.field private c:Lcom/androlua/LuaContext;

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    iput-object p1, p0, Lcom/androlua/LuaPrint;->c:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 5

    iget-object v0, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaPrint;->c:Lcom/androlua/LuaContext;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    return v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    if-gt v1, v0, :cond_6

    iget-object v0, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    invoke-virtual {v4, v0}, Lcom/luajava/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "userdata"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    invoke-virtual {v4, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "boolean"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "true"

    goto :goto_1

    :cond_2
    const-string v3, "false"

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/androlua/LuaPrint;->a:Lcom/luajava/LuaState;

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    iget-object v3, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/androlua/LuaPrint;->c:Lcom/androlua/LuaContext;

    iget-object v1, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/androlua/LuaContext;->sendMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaPrint;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return v2
.end method

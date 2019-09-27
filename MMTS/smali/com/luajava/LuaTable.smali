.class public Lcom/luajava/LuaTable;
.super Lcom/luajava/LuaObject;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luajava/LuaTable$LuaEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/luajava/LuaObject;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/luajava/LuaState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;)V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->newTable()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaTable;->a(I)V

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushValue(I)V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTable(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getTable(I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return p1

    :catch_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/luajava/LuaTable$LuaEntry;

    iget-object v4, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v4, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/luajava/LuaTable$LuaEntry;-><init>(Lcom/luajava/LuaTable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->getTable(I)I

    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p1, v1

    :catch_1
    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pop(I)V

    return-object p1
.end method

.method public isEmpty()Z
    .locals 3

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1}, Lcom/luajava/LuaState;->pop(I)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    return v0
.end method

.method public isList()Z
    .locals 3

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->pop()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1}, Lcom/luajava/LuaState;->pop(I)V

    return v0

    :cond_2
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushNil()V

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0
.end method

.method public length()I
    .locals 2

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->rawLen(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->pop()V

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->setTable(I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->pop(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->setTable(I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->pop(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 3

    invoke-virtual {p0}, Lcom/luajava/LuaTable;->push()V

    iget-object v0, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->pushNil()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaTable;->b:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->pop(I)V

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

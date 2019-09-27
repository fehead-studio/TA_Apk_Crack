.class public Lcom/luajava/LuaFunction;
.super Lcom/luajava/LuaObject;

# interfaces
.implements Lcom/luajava/LuaMetaTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/luajava/LuaObject;",
        "Lcom/luajava/LuaMetaTable;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public __call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public __index(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public __newIndex(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

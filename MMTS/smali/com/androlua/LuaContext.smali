.class public interface abstract Lcom/androlua/LuaContext;
.super Ljava/lang/Object;


# virtual methods
.method public varargs abstract call(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getClassLoaders()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getGlobalData()Ljava/util/Map;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLuaCpath()Ljava/lang/String;
.end method

.method public abstract getLuaDir()Ljava/lang/String;
.end method

.method public abstract getLuaDir(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLuaExtDir()Ljava/lang/String;
.end method

.method public abstract getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLuaLpath()Ljava/lang/String;
.end method

.method public abstract getLuaPath()Ljava/lang/String;
.end method

.method public abstract getLuaPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLuaPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLuaState()Lcom/luajava/LuaState;
.end method

.method public abstract getSharedData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getWidth()I
.end method

.method public abstract regGc(Lcom/androlua/LuaGcable;)V
.end method

.method public abstract sendError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract sendMsg(Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setLuaExtDir(Ljava/lang/String;)V
.end method

.method public abstract setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

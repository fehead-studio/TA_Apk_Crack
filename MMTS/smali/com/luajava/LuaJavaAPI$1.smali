.class final Lcom/luajava/LuaJavaAPI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/proxy/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luajava/LuaJavaAPI;->javaOverride(JLjava/lang/Class;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/luajava/LuaTable;


# direct methods
.method constructor <init>(Lcom/luajava/LuaTable;)V
    .locals 0

    iput-object p1, p0, Lcom/luajava/LuaJavaAPI$1;->a:Lcom/luajava/LuaTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/reflect/Method;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/luajava/LuaJavaAPI$1;->a:Lcom/luajava/LuaTable;

    invoke-virtual {p1, p2}, Lcom/luajava/LuaTable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

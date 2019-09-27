.class final Lcom/luajava/LuaJavaAPI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/proxy/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luajava/LuaJavaAPI;->a(Lcom/luajava/LuaState;Ljava/lang/Class;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/reflect/Method;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

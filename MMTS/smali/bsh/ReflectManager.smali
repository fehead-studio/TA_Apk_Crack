.class public abstract Lbsh/ReflectManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbsh/ReflectManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RMSetAccessible(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lbsh/ReflectManager;->getReflectManager()Lbsh/ReflectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbsh/ReflectManager;->setAccessible(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getReflectManager()Lbsh/ReflectManager;
    .locals 4

    sget-object v0, Lbsh/ReflectManager;->a:Lbsh/ReflectManager;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/ReflectManager;

    sput-object v0, Lbsh/ReflectManager;->a:Lbsh/ReflectManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lbsh/Capabilities$Unavailable;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Reflect Manager unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lbsh/ReflectManager;->a:Lbsh/ReflectManager;

    return-object v0
.end method


# virtual methods
.method public abstract setAccessible(Ljava/lang/Object;)Z
.end method

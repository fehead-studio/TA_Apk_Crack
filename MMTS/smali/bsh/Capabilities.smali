.class public Lbsh/Capabilities;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Capabilities$Unavailable;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Class;

.field private static b:Z

.field private static c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Capabilities;->c:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static canGenerateInterfaces()Z
    .locals 1

    const-string v0, "java.lang.reflect.Proxy"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static classExists(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lbsh/Capabilities;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    if-eqz v0, :cond_0

    sget-object p0, Lbsh/Capabilities;->c:Ljava/util/Hashtable;

    const-string v1, "unused"

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static haveAccessibility()Z
    .locals 1

    sget-boolean v0, Lbsh/Capabilities;->b:Z

    return v0
.end method

.method public static haveSwing()Z
    .locals 1

    const-string v0, "javax.swing.JButton"

    invoke-static {v0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAccessibility(Z)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lbsh/Capabilities;->b:Z

    return-void

    :cond_0
    const-string p0, "java.lang.reflect.AccessibleObject"

    invoke-static {p0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "bsh.reflect.ReflectManagerImpl"

    invoke-static {p0}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    sget-object p0, Lbsh/Capabilities;->a:Ljava/lang/Class;

    if-nez p0, :cond_2

    const-string p0, "java.lang.String"

    invoke-static {p0}, Lbsh/Capabilities;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lbsh/Capabilities;->a:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object p0, Lbsh/Capabilities;->a:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lbsh/Capabilities$Unavailable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Accessibility unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    new-instance p0, Lbsh/Capabilities$Unavailable;

    const-string v0, "Accessibility unavailable"

    invoke-direct {p0, v0}, Lbsh/Capabilities$Unavailable;-><init>(Ljava/lang/String;)V

    throw p0
.end method

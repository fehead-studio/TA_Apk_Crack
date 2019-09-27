.class public final Lcom/baidu/mobstat/bb;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = true

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const-string v0, "http://datax.baidu.com/xs.gif"

    goto :goto_0

    :cond_0
    const-string v0, "https://datax.baidu.com/xs.gif"

    :goto_0
    sput-object v0, Lcom/baidu/mobstat/bb;->b:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const-string v0, "http://dxp.baidu.com/upgrade"

    goto :goto_1

    :cond_1
    const-string v0, "https://dxp.baidu.com/upgrade"

    :goto_1
    sput-object v0, Lcom/baidu/mobstat/bb;->c:Ljava/lang/String;

    return-void
.end method

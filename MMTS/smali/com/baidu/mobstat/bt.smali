.class Lcom/baidu/mobstat/bt;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/bt;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/bt;

    invoke-direct {v0}, Lcom/baidu/mobstat/bt;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bt;->a:Lcom/baidu/mobstat/bt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/bt;->b:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bt;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/bt;->a:Lcom/baidu/mobstat/bt;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "openExceptonAnalysis"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/mobstat/bt;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/bt;->b:Z

    invoke-static {}, Lcom/baidu/mobstat/bl;->a()Lcom/baidu/mobstat/bl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/bl;->a(Landroid/content/Context;)V

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/baidu/mobstat/NativeCrashHandler;->init(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

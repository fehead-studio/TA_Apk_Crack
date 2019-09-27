.class public Lcom/baidu/mobstat/GetReverse;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/mobstat/ICooperService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCooperService(Landroid/content/Context;)Lcom/baidu/mobstat/ICooperService;
    .locals 0

    sget-object p0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object p0

    sput-object p0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    :cond_0
    sget-object p0, Lcom/baidu/mobstat/GetReverse;->a:Lcom/baidu/mobstat/ICooperService;

    return-object p0
.end method

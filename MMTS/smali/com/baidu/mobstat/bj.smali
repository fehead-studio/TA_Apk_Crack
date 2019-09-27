.class Lcom/baidu/mobstat/bj;
.super Lcom/baidu/mobstat/bk;


# static fields
.field static a:Lcom/baidu/mobstat/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/bj;

    invoke-direct {v0}, Lcom/baidu/mobstat/bj;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bj;->a:Lcom/baidu/mobstat/bj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/bk;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bj;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/bj;->a:Lcom/baidu/mobstat/bj;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sendLogtype"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected a(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sendLogtype"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_id_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "onlywifi"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "timeinterval"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected b(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "timeinterval"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cuid"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "cuid"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/bj;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v0, "cuidsec_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "setchannelwithcode"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "setchannelwithcodevalue"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "mtjtv"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected c(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "device_id_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mtjsdkmacss2_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "mtjsdkmactrick"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method protected e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "cuidsec_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mtjsdkmacsstv_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "he.ext"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/bj;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "setchannelwithcode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mtjsdkmacss2_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected i(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "mtjtv"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mtjsdkmacsstv_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "he.ext"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected l(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "mtjsdkmactrick"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/bj;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

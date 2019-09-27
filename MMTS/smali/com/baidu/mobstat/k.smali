.class Lcom/baidu/mobstat/k;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/baidu/mobstat/g;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

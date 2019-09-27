.class Lcom/baidu/mobstat/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/by;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/by;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/by;

    iput-object p2, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/baidu/mobstat/cd;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/cd;-><init>(Lcom/baidu/mobstat/cc;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/baidu/mobstat/ce;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ce;-><init>(Lcom/baidu/mobstat/cc;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/Throwable;)V

    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/baidu/mobstat/cs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/mobstat/cc;->b:Lcom/baidu/mobstat/by;

    iget-object v8, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v7, v8, v6}, Lcom/baidu/mobstat/by;->a(Lcom/baidu/mobstat/by;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/baidu/mobstat/cc;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/baidu/mobstat/cs;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    return-void

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

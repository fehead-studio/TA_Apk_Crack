.class public Lcom/baidu/mobstat/StatService;
.super Ljava/lang/Object;


# static fields
.field public static final EXCEPTION_LOG:I = 0x1

.field public static final JAVA_EXCEPTION_LOG:I = 0x10

.field private static a:Z

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const-class v4, Landroid/app/Activity;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/bf;->a()Lcom/baidu/mobstat/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bf;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 7

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    :try_start_0
    const-string v1, "onPause(...)"

    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-class v1, Landroid/app/Activity;

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "onPause(Context context)\u4e0d\u5728Activity.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Activity.onPause()."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;JZLcom/baidu/mobstat/ExtraInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 9

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/baidu/mobstat/StatService;->a(Z)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageName is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; activityName is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "onPageEnd :parame=null || empty"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;)V
    .locals 9

    const-string v0, "onEvent(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bm;->a()Lcom/baidu/mobstat/bm;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;)V
    .locals 8

    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_2

    const-string p0, "onEventDuration: duration must be greater than zero"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bm;->a()Lcom/baidu/mobstat/bm;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/mobstat/bm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;)V

    :cond_3
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "onError(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":context=null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/baidu/mobstat/cz;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 8

    const-string v0, "onEventEnd(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/bm;->a()Lcom/baidu/mobstat/bm;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;)V

    :cond_2
    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/StatService;->bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "webview can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    new-instance v0, Lcom/baidu/mobstat/bi;

    invoke-direct {v0, p0, p2}, Lcom/baidu/mobstat/bi;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->enableDeviceMac(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->a()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getMTJSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v10, p0

    move-object v0, p1

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/bv;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "onErised(...)"

    invoke-static {v10, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Lcom/baidu/mobstat/bm;->a()Lcom/baidu/mobstat/bm;

    move-result-object v0

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide v5, v11

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/baidu/mobstat/DataCore;->saveLogDataToSend(Landroid/content/Context;)V

    sget-wide v0, Lcom/baidu/mobstat/StatService;->b:J

    sub-long v2, v11, v0

    const-wide/16 v0, 0x7530

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    invoke-static {v10}, Lcom/baidu/mobstat/dc;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;)V

    sput-wide v11, Lcom/baidu/mobstat/StatService;->b:J

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string v0, "AppKey is invalid"

    invoke-static {v0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V

    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "onEventStart(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bm;->a()Lcom/baidu/mobstat/bm;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mobstat/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public static declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "onPageStart :parame=null || empty"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPause(Landroid/app/Fragment;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "android.app.Fragment onResume :parame=null"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "android.app.Fragment onPause(Context context)\u4e0d\u5728android.app.Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in android.app.Fragment.onPause()."

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/baidu/mobstat/ch;->b(Landroid/app/Fragment;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPause(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPause(Landroid/support/a/a/a;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "onResume :parame=null"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-class v1, Landroid/support/a/a/a;

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Fragment onPause(Context context)\u4e0d\u5728Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Fragment.onPause()."

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/baidu/mobstat/ch;->b(Landroid/support/a/a/a;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onResume(Landroid/app/Fragment;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "onResume :parame=null"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "onResume(Context context)\u4e0d\u5728Fragment.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Fragment.onResume()."

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/ch;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "can not get correct context, fragment may not attached to activity"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/baidu/mobstat/ch;->a(Landroid/app/Fragment;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onResume(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    :try_start_0
    const-string v1, "onResume(...)"

    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-class v1, Landroid/app/Activity;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "onResume(Context context)\u4e0d\u5728Activity.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Activity.onResume()."

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/baidu/mobstat/ch;->a(Landroid/content/Context;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onResume(Landroid/support/a/a/a;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "onResume :parame=null"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-class v1, Landroid/support/a/a/a;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "onResume(Context context)\u4e0d\u5728Fragment.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Fragment.onResume()."

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroid/support/a/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "can not get correct fragmentActivity, fragment may not attached to activity"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/baidu/mobstat/ch;->a(Landroid/support/a/a/a;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugOn(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    sput p0, Lcom/baidu/mobstat/cz;->a:I

    return-void
.end method

.method public static setForTv(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/bj;->a()Lcom/baidu/mobstat/bj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/bj;->c(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static setLogSenderDelayed(I)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/by;->a(I)V

    return-void
.end method

.method public static setOn(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "setOn(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    return-void
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "setSendLogStrategy(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/by;->a()Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    return-void
.end method

.method public static setSessionTimeOut(I)V
    .locals 1

    if-gtz p0, :cond_0

    const-string p0, "SessionTimeOut is between 1 and 600. Default value[30] is used"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x258

    if-gt p0, v0, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/ch;->a(I)V

    return-void

    :cond_1
    const-string p0, "SessionTimeOut is between 1 and 600. Value[600] is used"

    invoke-static {p0}, Lcom/baidu/mobstat/cz;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/ch;->a()Lcom/baidu/mobstat/ch;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ch;->a(I)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    const-string v0, "start(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bv;->a()Lcom/baidu/mobstat/bv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bv;->a(Landroid/content/Context;)V

    return-void
.end method

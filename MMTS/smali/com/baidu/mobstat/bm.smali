.class Lcom/baidu/mobstat/bm;
.super Ljava/lang/Object;


# static fields
.field private static b:Landroid/os/HandlerThread;

.field private static c:Landroid/os/Handler;

.field private static d:Lcom/baidu/mobstat/bm;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobstat/bm;->b:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mobstat/bm;

    invoke-direct {v0}, Lcom/baidu/mobstat/bm;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bm;->d:Lcom/baidu/mobstat/bm;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/bm;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/baidu/mobstat/bm;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/baidu/mobstat/bm;->b:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mobstat/bm;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mobstat/bm;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/bm;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/bm;->d:Lcom/baidu/mobstat/bm;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$|$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;)V
    .locals 14

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IZLcom/baidu/mobstat/ExtraInfo;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    const/4 v13, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/baidu/mobstat/DataCore;->putEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;IZLcom/baidu/mobstat/ExtraInfo;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;)V
    .locals 11

    sget-object v0, Lcom/baidu/mobstat/bm;->c:Landroid/os/Handler;

    new-instance v10, Lcom/baidu/mobstat/bo;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mobstat/bo;-><init>(Lcom/baidu/mobstat/bm;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14

    sget-object v0, Lcom/baidu/mobstat/bm;->c:Landroid/os/Handler;

    new-instance v13, Lcom/baidu/mobstat/bn;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/baidu/mobstat/bn;-><init>(Lcom/baidu/mobstat/bm;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    sget-object p1, Lcom/baidu/mobstat/bm;->c:Landroid/os/Handler;

    new-instance v6, Lcom/baidu/mobstat/bp;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/bp;-><init>(Lcom/baidu/mobstat/bm;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;)V
    .locals 10

    sget-object v0, Lcom/baidu/mobstat/bm;->c:Landroid/os/Handler;

    new-instance v9, Lcom/baidu/mobstat/bq;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/baidu/mobstat/bq;-><init>(Lcom/baidu/mobstat/bm;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;)V
    .locals 10

    sget-object v0, Lcom/baidu/mobstat/bm;->c:Landroid/os/Handler;

    new-instance v9, Lcom/baidu/mobstat/br;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/baidu/mobstat/br;-><init>(Lcom/baidu/mobstat/bm;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

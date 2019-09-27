.class public abstract enum Lcom/baidu/mobstat/y;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobstat/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/y;

.field public static final enum b:Lcom/baidu/mobstat/y;

.field public static final enum c:Lcom/baidu/mobstat/y;

.field public static final enum d:Lcom/baidu/mobstat/y;

.field public static final enum e:Lcom/baidu/mobstat/y;

.field private static final synthetic g:[Lcom/baidu/mobstat/y;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/baidu/mobstat/z;

    const-string v1, "AP_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobstat/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    new-instance v0, Lcom/baidu/mobstat/aa;

    const-string v1, "APP_LIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mobstat/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    new-instance v0, Lcom/baidu/mobstat/ab;

    const-string v1, "APP_TRACE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mobstat/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    new-instance v0, Lcom/baidu/mobstat/ac;

    const-string v1, "APP_CHANGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/mobstat/ac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/y;->d:Lcom/baidu/mobstat/y;

    new-instance v0, Lcom/baidu/mobstat/ad;

    const-string v1, "APP_APK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/mobstat/ad;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/mobstat/y;

    sget-object v1, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/y;->d:Lcom/baidu/mobstat/y;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/mobstat/y;->g:[Lcom/baidu/mobstat/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/mobstat/y;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/z;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/y;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/w;",
            ">;II)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/mobstat/y;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v0, :cond_4

    if-ge v0, p5, :cond_0

    move p5, v0

    :cond_0
    invoke-virtual {p0, p5, v3}, Lcom/baidu/mobstat/y;->a(II)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mobstat/w;

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mobstat/w;

    invoke-virtual {v5}, Lcom/baidu/mobstat/w;->a()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/baidu/mobstat/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    if-le v8, p4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_1

    :cond_3
    :goto_2
    sub-int/2addr v0, p5

    add-int/2addr v3, p5

    goto :goto_0

    :cond_4
    return v2
.end method

.method private c()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/y;->a()Lcom/baidu/mobstat/x;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->b()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->close()V

    :cond_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->close()V

    :cond_2
    const/4 v0, 0x0

    return v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->close()V

    :cond_3
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/y;
    .locals 1

    const-class v0, Lcom/baidu/mobstat/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/y;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mobstat/y;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/y;->g:[Lcom/baidu/mobstat/y;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/y;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/y;->a()Lcom/baidu/mobstat/x;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->a()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mobstat/x;->b(J)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_4

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_3
    monitor-exit p0

    return v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    :try_start_8
    invoke-static {p1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_6
    :goto_3
    monitor-exit p0

    return v3

    :goto_4
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->close()V

    :cond_7
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_8
    :goto_5
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized a(JLjava/lang/String;)J
    .locals 4

    monitor-enter p0

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/y;->a()Lcom/baidu/mobstat/x;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Lcom/baidu/mobstat/x;->a()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Lcom/baidu/mobstat/x;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, p3}, Lcom/baidu/mobstat/x;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Lcom/baidu/mobstat/x;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_5
    invoke-static {p1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_2
    move-wide p1, v0

    :cond_3
    :goto_1
    monitor-exit p0

    return-wide p1

    :goto_2
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Lcom/baidu/mobstat/x;->close()V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_3
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public abstract a()Lcom/baidu/mobstat/x;
.end method

.method public declared-synchronized a(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/w;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/y;->a()Lcom/baidu/mobstat/x;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->a()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_4
    invoke-virtual {v2, p1, p2}, Lcom/baidu/mobstat/x;->a(II)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Lcom/baidu/mobstat/x;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_6
    invoke-static {p1}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_2
    move-object p1, v0

    :cond_3
    :goto_1
    monitor-exit p0

    return-object p1

    :goto_2
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Lcom/baidu/mobstat/x;->close()V

    :cond_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x1f4

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/y;->a(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobstat/w;

    invoke-virtual {p1}, Lcom/baidu/mobstat/w;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/baidu/mobstat/w;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/baidu/mobstat/y;->a(Ljava/util/ArrayList;)I

    move-result p1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-interface {v6, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/mobstat/y;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/mobstat/y;->c()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/y;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

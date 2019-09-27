.class public Lcom/b/a/b/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/b/k$b;,
        Lcom/b/a/b/k$a;
    }
.end annotation


# static fields
.field private static b:Lcom/b/a/b/h;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/b/a/b/k$a;

.field private c:Lcom/b/a/b/f;

.field private d:Lcom/b/a/b/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/b/a/b/j;->g()Lcom/b/a/b/h;

    move-result-object v0

    sput-object v0, Lcom/b/a/b/k;->b:Lcom/b/a/b/h;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/b/a/b/k;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/b/k$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/k;->a:Lcom/b/a/b/k$a;

    iput-object v0, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    iput-object p1, p0, Lcom/b/a/b/k;->a:Lcom/b/a/b/k$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/b/a/b/h;
    .locals 2

    const-class v0, Lcom/b/a/b/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/b/a/b/k;->b:Lcom/b/a/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/b/a/b/k;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/b/a/b/h;)V
    .locals 1

    const-class v0, Lcom/b/a/b/k;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/b/a/b/k;->b:Lcom/b/a/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/b/k;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/b/f;)V
    .locals 1

    invoke-static {}, Lcom/b/a/b/k;->a()Lcom/b/a/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/h;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/b/a/b/f;

    invoke-direct {v0, p1}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/f;)V

    invoke-virtual {p0, v0}, Lcom/b/a/b/k;->b(Lcom/b/a/b/f;)V

    iget-object p1, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    if-nez p1, :cond_1

    new-instance p1, Lcom/b/a/b/k$b;

    invoke-direct {p1, p0, p0}, Lcom/b/a/b/k$b;-><init>(Lcom/b/a/b/k;Lcom/b/a/b/k;)V

    iput-object p1, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    iget-object p1, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    invoke-virtual {p1}, Lcom/b/a/b/k$b;->start()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    invoke-virtual {p1}, Lcom/b/a/b/k$b;->a()V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/b/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/b/k;->a:Lcom/b/a/b/k$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/k;->a:Lcom/b/a/b/k$a;

    invoke-interface {v0, p1}, Lcom/b/a/b/k$a;->a(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    invoke-virtual {v0}, Lcom/b/a/b/k$b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/k;->d:Lcom/b/a/b/k$b;

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Lcom/b/a/b/f;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/b/a/b/k;->c:Lcom/b/a/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Lcom/b/a/b/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/k;->c:Lcom/b/a/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

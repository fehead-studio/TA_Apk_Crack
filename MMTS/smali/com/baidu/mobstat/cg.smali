.class Lcom/baidu/mobstat/cg;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Z

.field private g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/cg;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mobstat/cg;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/cg;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/baidu/mobstat/cg;->d:J

    iput-wide p6, p0, Lcom/baidu/mobstat/cg;->e:J

    iput-boolean p8, p0, Lcom/baidu/mobstat/cg;->f:Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p9, :cond_0

    invoke-virtual {p9}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/baidu/mobstat/cg;->g:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/cg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mobstat/cg;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/mobstat/cg;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/mobstat/cg;->f:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/cg;)V
    .locals 2

    iget-object v0, p1, Lcom/baidu/mobstat/cg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/mobstat/cg;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/mobstat/cg;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->c:Ljava/lang/String;

    iget-wide v0, p1, Lcom/baidu/mobstat/cg;->d:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cg;->d:J

    iget-wide v0, p1, Lcom/baidu/mobstat/cg;->e:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cg;->e:J

    iget-boolean v0, p1, Lcom/baidu/mobstat/cg;->f:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/cg;->f:Z

    iget-object p1, p1, Lcom/baidu/mobstat/cg;->g:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/baidu/mobstat/cg;->g:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/cg;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/cg;->e:J

    return-wide v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/cg;->f:Z

    return v0
.end method

.class public final Lcom/android/cglib/dx/c/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/cglib/dx/c/d/d;
.implements Lcom/android/cglib/dx/d/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/c/b/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/cglib/dx/c/d/d;",
        "Lcom/android/cglib/dx/d/r;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/c/b/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/cglib/dx/c/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/android/cglib/dx/c/b/m$a;


# instance fields
.field private final c:I

.field private final d:Lcom/android/cglib/dx/c/d/d;

.field private final e:Lcom/android/cglib/dx/c/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/c/b/m;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/android/cglib/dx/c/b/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/b/m$a;-><init>(Lcom/android/cglib/dx/c/b/m$1;)V

    sput-object v0, Lcom/android/cglib/dx/c/b/m;->b:Lcom/android/cglib/dx/c/b/m$a;

    return-void
.end method

.method private constructor <init>(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reg < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    iput-object p2, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    iput-object p3, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;Lcom/android/cglib/dx/c/b/m$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/c/b/m;-><init>(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)V

    return-void
.end method

.method public static a(ILcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/m;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/cglib/dx/c/b/m;->c(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Lcom/android/cglib/dx/c/b/m;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/cglib/dx/c/b/m;->c(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v1}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    if-eq v1, v2, :cond_3

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    instance-of v1, v1, Lcom/android/cglib/dx/c/c/v;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    check-cast p1, Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/v;->f()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    instance-of p1, p1, Lcom/android/cglib/dx/c/c/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {p1}, Lcom/android/cglib/dx/c/d/d;->a_()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/android/cglib/dx/c/b/m;ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/c/b/m;->d(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/cglib/dx/c/b/m;->e(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)I

    move-result p0

    return p0
.end method

.method private static c(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Lcom/android/cglib/dx/c/b/m;
    .locals 2

    sget-object v0, Lcom/android/cglib/dx/c/b/m;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/cglib/dx/c/b/m;->b:Lcom/android/cglib/dx/c/b/m$a;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/cglib/dx/c/b/m$a;->a(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)V

    sget-object p0, Lcom/android/cglib/dx/c/b/m;->a:Ljava/util/HashMap;

    sget-object p1, Lcom/android/cglib/dx/c/b/m;->b:Lcom/android/cglib/dx/c/b/m$a;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/c/b/m;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/cglib/dx/c/b/m;->b:Lcom/android/cglib/dx/c/b/m$a;

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m$a;->a()Lcom/android/cglib/dx/c/b/m;

    move-result-object p0

    sget-object p1, Lcom/android/cglib/dx/c/b/m;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private d(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Z
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    invoke-virtual {p1, p3}, Lcom/android/cglib/dx/c/b/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static e(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/cglib/dx/c/b/h;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/d/d;)Lcom/android/cglib/dx/c/b/m;
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    invoke-static {v0, p1, v1}, Lcom/android/cglib/dx/c/b/m;->a(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/m;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/m;->b(Lcom/android/cglib/dx/c/b/m;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    iget p1, p1, Lcom/android/cglib/dx/c/b/m;->c:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/c/b/m;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/android/cglib/dx/c/b/m;
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    invoke-static {p1, v0, v1}, Lcom/android/cglib/dx/c/b/m;->a(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/android/cglib/dx/c/b/m;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v1}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    iget-object v2, p1, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v2}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/c/d/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    iget-object v2, p1, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    iget-object p1, p1, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/c/b/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/d;->c()I

    move-result v0

    return v0
.end method

.method public c(Lcom/android/cglib/dx/c/b/m;)I
    .locals 4

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    iget v1, p1, Lcom/android/cglib/dx/c/b/m;->c:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    iget v1, p1, Lcom/android/cglib/dx/c/b/m;->c:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    iget-object v1, p1, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v1}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/d/c;->a(Lcom/android/cglib/dx/c/d/c;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-nez v0, :cond_4

    iget-object p1, p1, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-nez p1, :cond_3

    const/4 v2, 0x0

    :cond_3
    return v2

    :cond_4
    iget-object v0, p1, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    if-nez v0, :cond_5

    return v3

    :cond_5
    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    iget-object p1, p1, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/h;->a(Lcom/android/cglib/dx/c/b/h;)I

    move-result p1

    return p1
.end method

.method public c(I)Lcom/android/cglib/dx/c/b/m;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/c/b/m;->b(I)Lcom/android/cglib/dx/c/b/m;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/c/b/m;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/b/m;->c(Lcom/android/cglib/dx/c/b/m;)I

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/d;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/c/b/m;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/cglib/dx/c/b/m$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/c/b/m$a;

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/m$a;->a(Lcom/android/cglib/dx/c/b/m$a;)I

    move-result v0

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/m$a;->b(Lcom/android/cglib/dx/c/b/m$a;)Lcom/android/cglib/dx/c/d/d;

    move-result-object v1

    invoke-static {p1}, Lcom/android/cglib/dx/c/b/m$a;->c(Lcom/android/cglib/dx/c/b/m$a;)Lcom/android/cglib/dx/c/b/h;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/cglib/dx/c/b/m;->d(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/cglib/dx/c/b/m;

    iget v0, p1, Lcom/android/cglib/dx/c/b/m;->c:I

    iget-object v1, p1, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    iget-object p1, p1, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    goto :goto_0
.end method

.method public f()Lcom/android/cglib/dx/c/d/d;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    return-object v0
.end method

.method public g()Lcom/android/cglib/dx/c/b/h;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    return-object v0
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/m;->i()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    iget-object v2, p0, Lcom/android/cglib/dx/c/b/m;->e:Lcom/android/cglib/dx/c/b/h;

    invoke-static {v0, v1, v2}, Lcom/android/cglib/dx/c/b/m;->e(ILcom/android/cglib/dx/c/d/d;Lcom/android/cglib/dx/c/b/h;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/c;->g()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/m;->d:Lcom/android/cglib/dx/c/d/d;

    invoke-interface {v0}, Lcom/android/cglib/dx/c/d/d;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/c;->h()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/c/b/m;->c:I

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/m;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/c/b/m;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

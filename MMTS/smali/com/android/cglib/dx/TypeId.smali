.class public final Lcom/android/cglib/dx/TypeId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOOLEAN:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTE:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHAR:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLOAT:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOID:Lcom/android/cglib/dx/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/cglib/dx/TypeId<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/android/cglib/dx/c/d/c;

.field final c:Lcom/android/cglib/dx/c/c/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->a:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->BOOLEAN:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->BYTE:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->c:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->CHAR:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->d:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->DOUBLE:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->e:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->FLOAT:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->f:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->INT:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->g:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->LONG:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->h:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->SHORT:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->i:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->VOID:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->o:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->OBJECT:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    sget-object v1, Lcom/android/cglib/dx/c/d/c;->q:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->STRING:Lcom/android/cglib/dx/TypeId;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->BOOLEAN:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->BYTE:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->CHAR:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->DOUBLE:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->FLOAT:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->INT:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->LONG:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->SHORT:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/android/cglib/dx/TypeId;->VOID:Lcom/android/cglib/dx/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/cglib/dx/c/d/c;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/cglib/dx/TypeId;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/c/d/c;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/cglib/dx/c/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-static {p2}, Lcom/android/cglib/dx/c/c/w;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/c/w;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/TypeId;->c:Lcom/android/cglib/dx/c/c/w;

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/cglib/dx/TypeId;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/TypeId;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/cglib/dx/TypeId;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lcom/android/cglib/dx/TypeId;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/cglib/dx/TypeId<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/TypeId;

    invoke-static {p0}, Lcom/android/cglib/dx/c/d/c;->b(Ljava/lang/String;)Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/cglib/dx/TypeId;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/c/d/c;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/TypeId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/TypeId;

    iget-object p1, p1, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs getConstructor([Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)",
            "Lcom/android/cglib/dx/MethodId<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/MethodId;

    sget-object v1, Lcom/android/cglib/dx/TypeId;->VOID:Lcom/android/cglib/dx/TypeId;

    const-string v2, "<init>"

    new-instance v3, Lcom/android/cglib/dx/TypeList;

    invoke-direct {v3, p1}, Lcom/android/cglib/dx/TypeList;-><init>([Lcom/android/cglib/dx/TypeId;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/cglib/dx/MethodId;-><init>(Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/String;Lcom/android/cglib/dx/TypeList;)V

    return-object v0
.end method

.method public getField(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;)Lcom/android/cglib/dx/FieldId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/TypeId<",
            "TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/cglib/dx/FieldId<",
            "TT;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/FieldId;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/cglib/dx/FieldId;-><init>(Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs getMethod(Lcom/android/cglib/dx/TypeId;Ljava/lang/String;[Lcom/android/cglib/dx/TypeId;)Lcom/android/cglib/dx/MethodId;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/cglib/dx/TypeId<",
            "TR;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/cglib/dx/TypeId<",
            "*>;)",
            "Lcom/android/cglib/dx/MethodId<",
            "TT;TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/cglib/dx/MethodId;

    new-instance v1, Lcom/android/cglib/dx/TypeList;

    invoke-direct {v1, p3}, Lcom/android/cglib/dx/TypeList;-><init>([Lcom/android/cglib/dx/TypeId;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/cglib/dx/MethodId;-><init>(Lcom/android/cglib/dx/TypeId;Lcom/android/cglib/dx/TypeId;Ljava/lang/String;Lcom/android/cglib/dx/TypeList;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/TypeId;->a:Ljava/lang/String;

    return-object v0
.end method

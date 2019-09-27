.class public final Lbsh/Primitive;
.super Ljava/lang/Object;

# interfaces
.implements Lbsh/ParserConstants;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Primitive$Special;
    }
.end annotation


# static fields
.field public static final NULL:Lbsh/Primitive;

.field public static final VOID:Lbsh/Primitive;

.field static a:Ljava/util/Hashtable;

.field static b:Ljava/lang/Class;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field static e:Ljava/lang/Class;

.field static f:Ljava/lang/Class;

.field static g:Ljava/lang/Class;

.field static h:Ljava/lang/Class;

.field static i:Ljava/lang/Class;

.field static j:Ljava/lang/Class;


# instance fields
.field private k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->b:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.Boolean"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->b:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lbsh/Primitive;->b:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->c:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Byte"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->c:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v2, Lbsh/Primitive;->c:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->d:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.Short"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->d:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    sget-object v2, Lbsh/Primitive;->d:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->e:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "java.lang.Character"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->e:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    sget-object v2, Lbsh/Primitive;->e:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->f:Ljava/lang/Class;

    if-nez v2, :cond_4

    const-string v2, "java.lang.Integer"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->f:Ljava/lang/Class;

    goto :goto_4

    :cond_4
    sget-object v2, Lbsh/Primitive;->f:Ljava/lang/Class;

    :goto_4
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->g:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "java.lang.Long"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->g:Ljava/lang/Class;

    goto :goto_5

    :cond_5
    sget-object v2, Lbsh/Primitive;->g:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->h:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "java.lang.Float"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->h:Ljava/lang/Class;

    goto :goto_6

    :cond_6
    sget-object v2, Lbsh/Primitive;->h:Ljava/lang/Class;

    :goto_6
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lbsh/Primitive;->i:Ljava/lang/Class;

    if-nez v2, :cond_7

    const-string v2, "java.lang.Double"

    invoke-static {v2}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lbsh/Primitive;->i:Ljava/lang/Class;

    goto :goto_7

    :cond_7
    sget-object v2, Lbsh/Primitive;->i:Ljava/lang/Class;

    :goto_7
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->b:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "java.lang.Boolean"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->b:Ljava/lang/Class;

    goto :goto_8

    :cond_8
    sget-object v1, Lbsh/Primitive;->b:Ljava/lang/Class;

    :goto_8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->c:Ljava/lang/Class;

    if-nez v1, :cond_9

    const-string v1, "java.lang.Byte"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->c:Ljava/lang/Class;

    goto :goto_9

    :cond_9
    sget-object v1, Lbsh/Primitive;->c:Ljava/lang/Class;

    :goto_9
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->d:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "java.lang.Short"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->d:Ljava/lang/Class;

    goto :goto_a

    :cond_a
    sget-object v1, Lbsh/Primitive;->d:Ljava/lang/Class;

    :goto_a
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->e:Ljava/lang/Class;

    if-nez v1, :cond_b

    const-string v1, "java.lang.Character"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->e:Ljava/lang/Class;

    goto :goto_b

    :cond_b
    sget-object v1, Lbsh/Primitive;->e:Ljava/lang/Class;

    :goto_b
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->f:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "java.lang.Integer"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->f:Ljava/lang/Class;

    goto :goto_c

    :cond_c
    sget-object v1, Lbsh/Primitive;->f:Ljava/lang/Class;

    :goto_c
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->g:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "java.lang.Long"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->g:Ljava/lang/Class;

    goto :goto_d

    :cond_d
    sget-object v1, Lbsh/Primitive;->g:Ljava/lang/Class;

    :goto_d
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->h:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "java.lang.Float"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->h:Ljava/lang/Class;

    goto :goto_e

    :cond_e
    sget-object v1, Lbsh/Primitive;->h:Ljava/lang/Class;

    :goto_e
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    sget-object v1, Lbsh/Primitive;->i:Ljava/lang/Class;

    if-nez v1, :cond_f

    const-string v1, "java.lang.Double"

    invoke-static {v1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Primitive;->i:Ljava/lang/Class;

    goto :goto_f

    :cond_f
    sget-object v1, Lbsh/Primitive;->i:Ljava/lang/Class;

    :goto_f
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lbsh/InterpreterError;

    const-string v0, "Use Primitve.NULL instead of Primitive(null)"

    invoke-direct {p1, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    sget-object v0, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_1

    sget-object v0, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a wrapper type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Double;I)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad double unaryOperation"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    neg-double p0, v0

    return-wide p0

    :pswitch_1
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Float;I)F
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad float unaryOperation"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    neg-float p0, p0

    :pswitch_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Integer;I)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad integer unaryOperation"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    neg-int p0, p0

    :pswitch_1
    return p0

    :pswitch_2
    add-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_3
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    xor-int/lit8 p0, p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Long;I)J
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p0, 0x57

    if-eq p1, p0, :cond_0

    const-wide/16 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad long unaryOperation"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    neg-long p0, v0

    return-wide p0

    :pswitch_1
    return-wide v0

    :pswitch_2
    const/4 p0, 0x0

    sub-long p0, v0, v2

    return-wide p0

    :pswitch_3
    const/4 p0, 0x0

    add-long p0, v0, v2

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    xor-long v2, v0, p0

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;
    .locals 2

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad cast param 1"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p3, :cond_1

    if-nez p2, :cond_1

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad cast param 2"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Lbsh/InterpreterError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "bad fromType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_3

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "inconsistent args 1"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_4

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "inconsistent args 2"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_5

    sget-object p0, Lbsh/Types;->b:Lbsh/Primitive;

    return-object p0

    :cond_5
    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "void value"

    invoke-static {p0, p1, p4}, Lbsh/Types;->a(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object p0

    throw p0

    :cond_6
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez p1, :cond_9

    if-eqz p3, :cond_8

    sget-object p0, Lbsh/Types;->b:Lbsh/Primitive;

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "primitive type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Null value"

    invoke-static {p0, p1, p4}, Lbsh/Types;->a(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object p0

    throw p0

    :cond_9
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_b

    if-eqz p3, :cond_a

    sget-object p0, Lbsh/Types;->b:Lbsh/Primitive;

    return-object p0

    :cond_a
    invoke-static {p0, p1, p4}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object p0

    throw p0

    :cond_b
    if-eqz p3, :cond_c

    sget-object p2, Lbsh/Types;->a:Lbsh/Primitive;

    :cond_c
    return-object p2

    :cond_d
    const/4 p2, 0x1

    if-ne p4, p2, :cond_f

    invoke-static {p0, p1}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_f

    if-eqz p3, :cond_e

    sget-object p0, Lbsh/Types;->b:Lbsh/Primitive;

    return-object p0

    :cond_e
    invoke-static {p0, p1, p4}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object p0

    throw p0

    :cond_f
    if-eqz p3, :cond_10

    sget-object p0, Lbsh/Types;->a:Lbsh/Primitive;

    return-object p0

    :cond_10
    new-instance p1, Lbsh/Primitive;

    invoke-static {p0, v0}, Lbsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    return-object p0

    :cond_11
    if-nez p1, :cond_13

    if-eqz p3, :cond_12

    sget-object p0, Lbsh/Types;->a:Lbsh/Primitive;

    return-object p0

    :cond_12
    sget-object p0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    return-object p0

    :cond_13
    if-eqz p3, :cond_14

    sget-object p0, Lbsh/Types;->b:Lbsh/Primitive;

    return-object p0

    :cond_14
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "object type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "primitive value"

    invoke-static {p0, p1, p4}, Lbsh/Types;->a(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object p0

    throw p0
.end method

.method static a(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "unimplemented binary operator"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_1
    new-instance p2, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-direct {p2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_2
    new-instance p2, Ljava/lang/Boolean;

    if-eq p0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :cond_4
    new-instance p2, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lbsh/InterpreterError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "invalid type in castWrapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "null value in castWrapper, guard"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad wrapper cast of boolean"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object p1, v0

    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_5

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad type in cast"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    check-cast p1, Ljava/lang/Number;

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    new-instance p0, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Byte;-><init>(B)V

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    new-instance p0, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Short;-><init>(S)V

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    new-instance p0, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-char p1, p1

    invoke-direct {p0, p1}, Ljava/lang/Character;-><init>(C)V

    return-object p0

    :cond_8
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_9
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    new-instance p0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_b

    new-instance p0, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0

    :cond_b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_c

    new-instance p0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_c
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "error in wrapper cast"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "Unimplemented binary double operator"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "Can\'t shift doubles"

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p2, Ljava/lang/Double;

    rem-double/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :pswitch_2
    new-instance p2, Ljava/lang/Double;

    div-double/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :pswitch_3
    new-instance p2, Ljava/lang/Double;

    mul-double v0, v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :pswitch_4
    new-instance p2, Ljava/lang/Double;

    sub-double/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :pswitch_5
    new-instance p2, Ljava/lang/Double;

    add-double/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :pswitch_6
    new-instance p2, Ljava/lang/Boolean;

    cmpl-double v4, v0, p0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_7
    new-instance p2, Ljava/lang/Boolean;

    cmpl-double v4, v0, p0

    if-ltz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_8
    new-instance p2, Ljava/lang/Boolean;

    cmpg-double v4, v0, p0

    if-gtz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_9
    new-instance p2, Ljava/lang/Boolean;

    cmpl-double v4, v0, p0

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_a
    new-instance p2, Ljava/lang/Boolean;

    cmpg-double v4, v0, p0

    if-gez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_b
    new-instance p2, Ljava/lang/Boolean;

    cmpl-double v4, v0, p0

    if-lez v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "Unimplemented binary float operator"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "Can\'t shift floats "

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p2, Ljava/lang/Float;

    rem-float/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :pswitch_2
    new-instance p2, Ljava/lang/Float;

    div-float/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :pswitch_3
    new-instance p2, Ljava/lang/Float;

    mul-float p0, p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :pswitch_4
    new-instance p2, Ljava/lang/Float;

    sub-float/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :pswitch_5
    new-instance p2, Ljava/lang/Float;

    add-float/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    :pswitch_6
    new-instance p2, Ljava/lang/Boolean;

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_7
    new-instance p2, Ljava/lang/Boolean;

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_8
    new-instance p2, Ljava/lang/Boolean;

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_9
    new-instance p2, Ljava/lang/Boolean;

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_a
    new-instance p2, Ljava/lang/Boolean;

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_b
    new-instance p2, Ljava/lang/Boolean;

    cmpl-float p0, p0, p1

    if-lez p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "Unimplemented binary integer operator"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p2, Ljava/lang/Integer;

    ushr-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_1
    new-instance p2, Ljava/lang/Integer;

    shr-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_2
    new-instance p2, Ljava/lang/Integer;

    shl-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_3
    new-instance p2, Ljava/lang/Integer;

    rem-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_4
    new-instance p2, Ljava/lang/Integer;

    xor-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_5
    new-instance p2, Ljava/lang/Integer;

    or-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_6
    new-instance p2, Ljava/lang/Integer;

    and-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_7
    new-instance p2, Ljava/lang/Integer;

    div-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_8
    new-instance p2, Ljava/lang/Integer;

    mul-int p0, p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_9
    new-instance p2, Ljava/lang/Integer;

    sub-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_a
    new-instance p2, Ljava/lang/Integer;

    add-int/2addr p0, p1

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    :pswitch_b
    new-instance p2, Ljava/lang/Boolean;

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_c
    new-instance p2, Ljava/lang/Boolean;

    if-lt p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_d
    new-instance p2, Ljava/lang/Boolean;

    if-gt p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_e
    new-instance p2, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_f
    new-instance p2, Ljava/lang/Boolean;

    if-ge p0, p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_10
    new-instance p2, Ljava/lang/Boolean;

    if-le p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-direct {p2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "Unimplemented binary long operator"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p2, Ljava/lang/Long;

    long-to-int p0, p0

    ushr-long p0, v0, p0

    invoke-direct {p2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_1
    new-instance p2, Ljava/lang/Long;

    long-to-int p0, p0

    shr-long p0, v0, p0

    invoke-direct {p2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_2
    new-instance p2, Ljava/lang/Long;

    long-to-int p0, p0

    shl-long p0, v0, p0

    invoke-direct {p2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_3
    new-instance p2, Ljava/lang/Long;

    rem-long/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_4
    new-instance p2, Ljava/lang/Long;

    xor-long v2, v0, p0

    invoke-direct {p2, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_5
    new-instance p2, Ljava/lang/Long;

    or-long v2, v0, p0

    invoke-direct {p2, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_6
    new-instance p2, Ljava/lang/Long;

    and-long v2, v0, p0

    invoke-direct {p2, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_7
    new-instance p2, Ljava/lang/Long;

    div-long/2addr v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_8
    new-instance p2, Ljava/lang/Long;

    mul-long v0, v0, p0

    invoke-direct {p2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_9
    new-instance p2, Ljava/lang/Long;

    sub-long v2, v0, p0

    invoke-direct {p2, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_a
    new-instance p2, Ljava/lang/Long;

    add-long v2, v0, p0

    invoke-direct {p2, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object p2

    :pswitch_b
    new-instance p2, Ljava/lang/Boolean;

    cmp-long v4, v0, p0

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_c
    new-instance p2, Ljava/lang/Boolean;

    cmp-long v4, v0, p0

    if-ltz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_d
    new-instance p2, Ljava/lang/Boolean;

    cmp-long v4, v0, p0

    if-gtz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_e
    new-instance p2, Ljava/lang/Boolean;

    cmp-long v4, v0, p0

    if-nez v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_f
    new-instance p2, Ljava/lang/Boolean;

    cmp-long v4, v0, p0

    if-gez v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_10
    new-instance p2, Ljava/lang/Boolean;

    cmp-long v4, v0, p0

    if-lez v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-direct {p2, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x66
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/Integer;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Double;

    invoke-static {p0, p1, p2}, Lbsh/Primitive;->a(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "Invalid types in binary operator"

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/Boolean;I)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/16 v0, 0x56

    if-eq p1, v0, :cond_0

    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "Operator inappropriate for boolean"

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    invoke-static {p0}, Lbsh/Primitive;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Lbsh/Primitive;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_6

    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    if-nez v2, :cond_4

    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_8

    :cond_2
    if-eqz v2, :cond_3

    new-instance p1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    new-instance p1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    new-instance p1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    :cond_8
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_b

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_a

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    instance-of v2, p0, Lbsh/Primitive;

    if-eqz v2, :cond_2

    check-cast p0, Lbsh/Primitive;

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    instance-of v2, p1, Lbsh/Primitive;

    if-eqz v2, :cond_3

    check-cast p1, Lbsh/Primitive;

    invoke-virtual {p1}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_3
    invoke-static {p0, p1}, Lbsh/Primitive;->a(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_4

    new-instance p2, Lbsh/UtilEvalError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Type mismatch in operator.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " cannot be used with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :try_start_0
    invoke-static {p1, p0, p2}, Lbsh/Primitive;->a(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lbsh/Primitive;->j:Ljava/lang/Class;

    if-nez p1, :cond_5

    const-string p1, "bsh.Primitive"

    invoke-static {p1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lbsh/Primitive;->j:Ljava/lang/Class;

    goto :goto_0

    :cond_5
    sget-object p1, Lbsh/Primitive;->j:Ljava/lang/Class;

    :goto_0
    if-ne v0, p1, :cond_7

    sget-object p1, Lbsh/Primitive;->j:Ljava/lang/Class;

    if-nez p1, :cond_6

    const-string p1, "bsh.Primitive"

    invoke-static {p1}, Lbsh/Primitive;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lbsh/Primitive;->j:Ljava/lang/Class;

    goto :goto_1

    :cond_6
    sget-object p1, Lbsh/Primitive;->j:Ljava/lang/Class;

    :goto_1
    if-eq v1, p1, :cond_8

    :cond_7
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_9

    :cond_8
    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, p0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_9
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lbsh/UtilTargetError;

    const-string p2, "Arithemetic Exception in binary op"

    invoke-direct {p1, p2, p0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    :goto_2
    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "Undefined variable, class, or \'void\' literal in binary operation"

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "Null value or \'null\' literal in binary operation"

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static boxType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a primitive type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultValue(Ljava/lang/Class;)Lbsh/Primitive;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    new-instance p0, Lbsh/Primitive;

    invoke-direct {p0, v1}, Lbsh/Primitive;-><init>(Z)V

    return-object p0

    :cond_1
    :try_start_0
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lbsh/Primitive;->castToType(Ljava/lang/Class;I)Lbsh/Primitive;

    move-result-object p0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lbsh/InterpreterError;

    const-string v0, "bad cast"

    invoke-direct {p0, v0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    return-object p0
.end method

.method public static isWrapperType(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static unaryOperation(Lbsh/Primitive;I)Lbsh/Primitive;
    .locals 2

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p0, v0, :cond_0

    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "illegal use of null object or \'null\' literal"

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_1

    new-instance p0, Lbsh/UtilEvalError;

    const-string p1, "illegal use of undefined object or \'void\' literal"

    invoke-direct {p0, p1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lbsh/Primitive;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    new-instance v0, Lbsh/Primitive;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lbsh/Primitive;->a(Ljava/lang/Boolean;I)Z

    move-result p0

    invoke-direct {v0, p0}, Lbsh/Primitive;-><init>(Z)V

    return-object v0

    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lbsh/Primitive;->a(Ljava/lang/Integer;I)I

    move-result p0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_3

    const/16 v1, 0x65

    if-ne p1, v1, :cond_6

    :cond_3
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    new-instance p1, Lbsh/Primitive;

    int-to-byte p0, p0

    invoke-direct {p1, p0}, Lbsh/Primitive;-><init>(B)V

    return-object p1

    :cond_4
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_5

    new-instance p1, Lbsh/Primitive;

    int-to-short p0, p0

    invoke-direct {p1, p0}, Lbsh/Primitive;-><init>(S)V

    return-object p1

    :cond_5
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_6

    new-instance p1, Lbsh/Primitive;

    int-to-char p0, p0

    invoke-direct {p1, p0}, Lbsh/Primitive;-><init>(C)V

    return-object p1

    :cond_6
    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, p0}, Lbsh/Primitive;-><init>(I)V

    return-object p1

    :cond_7
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    new-instance v0, Lbsh/Primitive;

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lbsh/Primitive;->a(Ljava/lang/Long;I)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lbsh/Primitive;-><init>(J)V

    return-object v0

    :cond_8
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_9

    new-instance v0, Lbsh/Primitive;

    check-cast p0, Ljava/lang/Float;

    invoke-static {p0, p1}, Lbsh/Primitive;->a(Ljava/lang/Float;I)F

    move-result p0

    invoke-direct {v0, p0}, Lbsh/Primitive;-><init>(F)V

    return-object v0

    :cond_9
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_a

    new-instance v0, Lbsh/Primitive;

    check-cast p0, Ljava/lang/Double;

    invoke-static {p0, p1}, Lbsh/Primitive;->a(Ljava/lang/Double;I)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lbsh/Primitive;-><init>(D)V

    return-object v0

    :cond_a
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "An error occurred.  Please call technical support."

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unboxType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    sget-object v0, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Not a primitive wrapper type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_1

    check-cast p0, Lbsh/Primitive;

    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static unwrap([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    sget-object p0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, p0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    return-object p0
.end method

.method public static wrap([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 2

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a boolean"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public castToType(Ljava/lang/Class;I)Lbsh/Primitive;
    .locals 2

    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1, p2}, Lbsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_0

    check-cast p1, Lbsh/Primitive;

    iget-object p1, p1, Lbsh/Primitive;->k:Ljava/lang/Object;

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0

    :cond_0
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_1

    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "attempt to unwrap void type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x15

    return v0
.end method

.method public intValue()I
    .locals 2

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a number"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNumber()Z
    .locals 1

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    return-object v0

    :cond_1
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a number"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_1

    const-string v0, "void"

    return-object v0

    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

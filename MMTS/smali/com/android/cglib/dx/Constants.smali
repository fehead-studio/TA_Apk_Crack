.class final Lcom/android/cglib/dx/Constants;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;)Lcom/android/cglib/dx/c/c/x;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/cglib/dx/c/c/m;->a:Lcom/android/cglib/dx/c/c/m;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/android/cglib/dx/c/c/e;->a(Z)Lcom/android/cglib/dx/c/c/e;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lcom/android/cglib/dx/c/c/f;->a(B)Lcom/android/cglib/dx/c/c/f;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lcom/android/cglib/dx/c/c/g;->a(C)Lcom/android/cglib/dx/c/c/g;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/cglib/dx/c/c/h;->a(J)Lcom/android/cglib/dx/c/c/h;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0}, Lcom/android/cglib/dx/c/c/k;->a(I)Lcom/android/cglib/dx/c/c/k;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/cglib/dx/c/c/l;->a(I)Lcom/android/cglib/dx/c/c/l;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/cglib/dx/c/c/q;->a(J)Lcom/android/cglib/dx/c/c/q;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lcom/android/cglib/dx/c/c/u;->a(S)Lcom/android/cglib/dx/c/c/u;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/cglib/dx/c/c/v;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_9
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/cglib/dx/c/c/w;

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/cglib/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/cglib/dx/TypeId;

    move-result-object p0

    iget-object p0, p0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, p0}, Lcom/android/cglib/dx/c/c/w;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    return-object v0

    :cond_a
    instance-of v0, p0, Lcom/android/cglib/dx/TypeId;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/android/cglib/dx/c/c/w;

    check-cast p0, Lcom/android/cglib/dx/TypeId;

    iget-object p0, p0, Lcom/android/cglib/dx/TypeId;->b:Lcom/android/cglib/dx/c/d/c;

    invoke-direct {v0, p0}, Lcom/android/cglib/dx/c/c/w;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lbsh/Modifiers;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CLASS:I = 0x0

.field public static final FIELD:I = 0x2

.field public static final METHOD:I = 0x1


# instance fields
.field a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "volatile"

    const-string v1, "Method"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transient"

    const-string v1, "Method"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " cannot be declared \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "synchronized"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "native"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abstract"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lbsh/Modifiers;->a()V

    const-string v0, "native"

    const-string v1, "Class"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "synchronized"

    const-string v1, "Class"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addModifier(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbsh/Modifiers;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/Modifiers;->a:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lbsh/Modifiers;->a:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Duplicate modifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p2, 0x0

    const-string v0, "private"

    invoke-virtual {p0, v0}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    :cond_2
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, 0x1

    :cond_3
    const-string v0, "public"

    invoke-virtual {p0, v0}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    :cond_4
    if-le p2, v1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "public/private/protected cannot be used in combination."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lbsh/Modifiers;->b()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lbsh/Modifiers;->a()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lbsh/Modifiers;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lbsh/Modifiers;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/Modifiers;->a:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lbsh/Modifiers;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Modifiers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lbsh/Modifiers;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/android/cglib/dx/a/a/c;
.super Lcom/android/cglib/dx/d/h;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cglib/dx/d/h;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/android/cglib/dx/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/a/c;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/c;->a:Lcom/android/cglib/dx/a/a/c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/c;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/c;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/c;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/cglib/dx/a/a/c;->a(I)Lcom/android/cglib/dx/a/a/c$a;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/a/a/c;->a(I)Lcom/android/cglib/dx/a/a/c$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/cglib/dx/a/a/c$a;->a(Lcom/android/cglib/dx/a/a/c$a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v1, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method public a(I)Lcom/android/cglib/dx/a/a/c$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/c;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/c$a;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/c;->a()I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "catch "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/cglib/dx/a/a/c;->a(I)Lcom/android/cglib/dx/a/a/c$a;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-ne p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/c;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "<any>"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/c$a;->a()Lcom/android/cglib/dx/c/c/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/w;->a_()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/c$a;->b()I

    move-result v2

    invoke-static {v2}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/android/cglib/dx/c/c/w;I)V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/c$a;

    invoke-direct {v0, p2, p3}, Lcom/android/cglib/dx/a/a/c$a;-><init>(Lcom/android/cglib/dx/c/c/w;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/cglib/dx/a/a/c;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a_()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/cglib/dx/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/c;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/a/a/c;->a(I)Lcom/android/cglib/dx/a/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/c$a;->a()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    sget-object v1, Lcom/android/cglib/dx/c/c/w;->a:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/c/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/a/c;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/c;->a(Lcom/android/cglib/dx/a/a/c;)I

    move-result p1

    return p1
.end method

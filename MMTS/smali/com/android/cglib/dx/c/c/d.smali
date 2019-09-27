.class public abstract Lcom/android/cglib/dx/c/c/d;
.super Lcom/android/cglib/dx/c/c/r;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/d/a;

.field private b:Lcom/android/cglib/dx/c/d/a;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/c/c/r;-><init>(Lcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/c/t;)V

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/d;->h()Lcom/android/cglib/dx/c/c/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/t;->c()Lcom/android/cglib/dx/c/c/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/v;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cglib/dx/c/d/a;->a(Ljava/lang/String;)Lcom/android/cglib/dx/c/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/c/c/d;->a:Lcom/android/cglib/dx/c/d/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/c/c/d;->b:Lcom/android/cglib/dx/c/d/a;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/android/cglib/dx/c/d/a;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/c/c/d;->a:Lcom/android/cglib/dx/c/d/a;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/c/c/d;->b:Lcom/android/cglib/dx/c/d/a;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/d;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/w;->f()Lcom/android/cglib/dx/c/d/c;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/d;->a:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/d/a;->a(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/c/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/c/c/d;->b:Lcom/android/cglib/dx/c/d/a;

    :cond_1
    iget-object p1, p0, Lcom/android/cglib/dx/c/c/d;->b:Lcom/android/cglib/dx/c/d/a;

    return-object p1
.end method

.method protected final b(Lcom/android/cglib/dx/c/c/a;)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/c/c/r;->b(Lcom/android/cglib/dx/c/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/c/c/d;

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/d;->a:Lcom/android/cglib/dx/c/d/a;

    iget-object p1, p1, Lcom/android/cglib/dx/c/c/d;->a:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/d/a;->a(Lcom/android/cglib/dx/c/d/a;)I

    move-result p1

    return p1
.end method

.method public final b(Z)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/c/c/d;->a(Z)Lcom/android/cglib/dx/c/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/b;->b()I

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/d;->a:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/a;->b()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/android/cglib/dx/c/d/a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/c/d;->a:Lcom/android/cglib/dx/c/d/a;

    return-object v0
.end method

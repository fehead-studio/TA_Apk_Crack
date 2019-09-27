.class Lcom/b/a/a/c$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$7;->a:Lcom/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/b/a/a/c$7;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->g(Lcom/b/a/a/c;)Lcom/b/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/b;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/b/a/a/c$7;->a:Lcom/b/a/a/c;

    invoke-static {p1}, Lcom/b/a/a/c;->g(Lcom/b/a/a/c;)Lcom/b/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/b;->b()V

    return-void
.end method

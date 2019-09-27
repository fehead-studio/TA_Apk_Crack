.class Lcom/b/a/a/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c;
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

    iput-object p1, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/c;)Lcom/b/a/a/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/a/c$a;->b(Z)V

    iget-object v0, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    iget v0, v0, Lcom/b/a/a/c;->i:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    invoke-static {v0}, Lcom/b/a/a/c;->d(Lcom/b/a/a/c;)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v2, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    iget v2, v2, Lcom/b/a/a/c;->i:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/b/a/b/f;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/c$4;->a:Lcom/b/a/a/c;

    invoke-static {v1}, Lcom/b/a/a/c;->e(Lcom/b/a/a/c;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lcom/b/a/a/c;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/a/c;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

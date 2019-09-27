.class Lcom/b/a/a/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/c$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/b/a/a/c$a;


# direct methods
.method constructor <init>(Lcom/b/a/a/c$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$a$1;->b:Lcom/b/a/a/c$a;

    iput-object p2, p0, Lcom/b/a/a/c$a$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c$a$1;->b:Lcom/b/a/a/c$a;

    iget-object v0, v0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    iget-object v0, v0, Lcom/b/a/a/c;->h:Lcom/b/a/b/f;

    iget-object v1, p0, Lcom/b/a/a/c$a$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/b/a/b/f;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/b/a/a/c$a$1;->b:Lcom/b/a/a/c$a;

    iget-object v0, v0, Lcom/b/a/a/c$a;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->invalidate()V

    return-void
.end method

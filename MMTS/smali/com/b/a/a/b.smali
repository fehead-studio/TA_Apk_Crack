.class public Lcom/b/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/b/a/a/c;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Lcom/b/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/c;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/b/a/a/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/b/a/a/b;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b;->c:Landroid/view/ActionMode;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/b/a/a/b;->c()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/b/a/a/b;->d()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/b;->c:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b;->a:Lcom/b/a/a/c;

    new-instance v1, Lcom/b/a/a/b$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/b$1;-><init>(Lcom/b/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b;->c:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b;->c:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/b;->c:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

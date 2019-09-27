.class Lcom/b/a/a/c$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/c;->restoreUiState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/b/a/a/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/c;III)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$10;->d:Lcom/b/a/a/c;

    iput p2, p0, Lcom/b/a/a/c$10;->a:I

    iput p3, p0, Lcom/b/a/a/c$10;->b:I

    iput p4, p0, Lcom/b/a/a/c$10;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/b/a/a/c$10;->d:Lcom/b/a/a/c;

    iget v1, p0, Lcom/b/a/a/c$10;->a:I

    iget v2, p0, Lcom/b/a/a/c$10;->b:I

    iget v3, p0, Lcom/b/a/a/c$10;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/c;->setSelectionRange(II)V

    iget v0, p0, Lcom/b/a/a/c$10;->c:I

    iget v1, p0, Lcom/b/a/a/c$10;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/c$10;->d:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->focusSelectionStart()V

    :cond_0
    return-void
.end method

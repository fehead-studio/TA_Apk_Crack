.class Lcom/b/a/a/c$2;
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

.field final synthetic b:Lcom/b/a/a/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/c$2;->b:Lcom/b/a/a/c;

    iput p2, p0, Lcom/b/a/a/c$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/c$2;->b:Lcom/b/a/a/c;

    iget v1, p0, Lcom/b/a/a/c$2;->a:I

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->moveCaret(I)V

    return-void
.end method

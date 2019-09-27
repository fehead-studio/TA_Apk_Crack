.class Landroid/widget/PageView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PageView;


# direct methods
.method constructor <init>(Landroid/widget/PageView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PageView$3;->a:Landroid/widget/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/PageView$3;->a:Landroid/widget/PageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/PageView;->a(Landroid/widget/PageView;I)V

    iget-object v0, p0, Landroid/widget/PageView$3;->a:Landroid/widget/PageView;

    invoke-virtual {v0}, Landroid/widget/PageView;->c()V

    return-void
.end method

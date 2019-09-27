.class Landroid/widget/PageView$PageObserver;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageObserver"
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PageView;


# direct methods
.method private constructor <init>(Landroid/widget/PageView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PageView$PageObserver;->a:Landroid/widget/PageView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/PageView;Landroid/widget/PageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PageView$PageObserver;-><init>(Landroid/widget/PageView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView$PageObserver;->a:Landroid/widget/PageView;

    invoke-virtual {v0}, Landroid/widget/PageView;->b()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView$PageObserver;->a:Landroid/widget/PageView;

    invoke-virtual {v0}, Landroid/widget/PageView;->b()V

    return-void
.end method

.class final Landroid/widget/PageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/widget/PageView$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/widget/PageView$ItemInfo;Landroid/widget/PageView$ItemInfo;)I
    .locals 0

    iget p1, p1, Landroid/widget/PageView$ItemInfo;->b:I

    iget p2, p2, Landroid/widget/PageView$ItemInfo;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/widget/PageView$ItemInfo;

    check-cast p2, Landroid/widget/PageView$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroid/widget/PageView$1;->compare(Landroid/widget/PageView$ItemInfo;Landroid/widget/PageView$ItemInfo;)I

    move-result p1

    return p1
.end method

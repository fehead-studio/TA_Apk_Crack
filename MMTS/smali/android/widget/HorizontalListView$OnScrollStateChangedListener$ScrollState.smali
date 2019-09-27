.class public final enum Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalListView$OnScrollStateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SCROLL_STATE_FLING:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field public static final enum SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field public static final enum SCROLL_STATE_TOUCH_SCROLL:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field private static final synthetic a:[Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    const-string v1, "SCROLL_STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    new-instance v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    const-string v1, "SCROLL_STATE_TOUCH_SCROLL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    new-instance v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    const-string v1, "SCROLL_STATE_FLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v1, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->a:[Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;
    .locals 1

    const-class v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    return-object p0
.end method

.method public static values()[Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;
    .locals 1

    sget-object v0, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->a:[Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-virtual {v0}, [Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    return-object v0
.end method

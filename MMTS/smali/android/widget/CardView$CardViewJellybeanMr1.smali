.class Landroid/widget/CardView$CardViewJellybeanMr1;
.super Landroid/widget/CardView$CardViewEclairMr1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardViewJellybeanMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/CardView$CardViewEclairMr1;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    new-instance v0, Landroid/widget/CardView$CardViewJellybeanMr1$1;

    invoke-direct {v0, p0}, Landroid/widget/CardView$CardViewJellybeanMr1$1;-><init>(Landroid/widget/CardView$CardViewJellybeanMr1;)V

    sput-object v0, Landroid/widget/RoundRectDrawableWithShadow;->c:Landroid/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method

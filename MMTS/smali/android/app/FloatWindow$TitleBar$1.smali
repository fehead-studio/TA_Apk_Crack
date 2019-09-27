.class Landroid/app/FloatWindow$TitleBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FloatWindow$TitleBar;-><init>(Landroid/app/FloatWindow;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/FloatWindow;

.field final synthetic b:Landroid/app/FloatWindow$TitleBar;


# direct methods
.method constructor <init>(Landroid/app/FloatWindow$TitleBar;Landroid/app/FloatWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FloatWindow$TitleBar$1;->b:Landroid/app/FloatWindow$TitleBar;

    iput-object p2, p0, Landroid/app/FloatWindow$TitleBar$1;->a:Landroid/app/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroid/app/FloatWindow$TitleBar$1;->b:Landroid/app/FloatWindow$TitleBar;

    iget-object p1, p1, Landroid/app/FloatWindow$TitleBar;->a:Landroid/app/FloatWindow;

    invoke-virtual {p1}, Landroid/app/FloatWindow;->dismiss()V

    return-void
.end method

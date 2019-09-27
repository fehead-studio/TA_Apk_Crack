.class Lcom/baidu/mobstat/bh;
.super Landroid/view/View$AccessibilityDelegate;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bf;

.field private b:Landroid/view/View$AccessibilityDelegate;

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/bf;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bh;->a:Lcom/baidu/mobstat/bf;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p5, p0, Lcom/baidu/mobstat/bh;->b:Landroid/view/View$AccessibilityDelegate;

    iput-object p2, p0, Lcom/baidu/mobstat/bh;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/baidu/mobstat/bh;->d:Landroid/view/View;

    iput-object p4, p0, Lcom/baidu/mobstat/bh;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->d:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->a:Lcom/baidu/mobstat/bf;

    iget-object v1, p0, Lcom/baidu/mobstat/bh;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/mobstat/bh;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/mobstat/bh;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/bf;->a(Lcom/baidu/mobstat/bf;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bh;->b:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->b:Landroid/view/View$AccessibilityDelegate;

    instance-of v0, v0, Lcom/baidu/mobstat/bh;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/bh;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

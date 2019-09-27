.class Lcom/androlua/util/GlobalActionAutomator$2;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/util/GlobalActionAutomator;->b(Landroid/accessibilityservice/GestureDescription;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/util/VolatileBox;

.field final synthetic b:Lcom/androlua/util/GlobalActionAutomator;


# direct methods
.method constructor <init>(Lcom/androlua/util/GlobalActionAutomator;Lcom/androlua/util/VolatileBox;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/GlobalActionAutomator$2;->b:Lcom/androlua/util/GlobalActionAutomator;

    iput-object p2, p0, Lcom/androlua/util/GlobalActionAutomator$2;->a:Lcom/androlua/util/VolatileBox;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    iget-object p1, p0, Lcom/androlua/util/GlobalActionAutomator$2;->a:Lcom/androlua/util/VolatileBox;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/util/VolatileBox;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/androlua/util/GlobalActionAutomator$2;->b:Lcom/androlua/util/GlobalActionAutomator;

    invoke-static {p1}, Lcom/androlua/util/GlobalActionAutomator;->a(Lcom/androlua/util/GlobalActionAutomator;)V

    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    iget-object p1, p0, Lcom/androlua/util/GlobalActionAutomator$2;->a:Lcom/androlua/util/VolatileBox;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/util/VolatileBox;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/androlua/util/GlobalActionAutomator$2;->b:Lcom/androlua/util/GlobalActionAutomator;

    invoke-static {p1}, Lcom/androlua/util/GlobalActionAutomator;->a(Lcom/androlua/util/GlobalActionAutomator;)V

    return-void
.end method

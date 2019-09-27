.class public Lcom/androlua/util/GlobalActionAutomator;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/accessibilityservice/AccessibilityService;

.field private b:Lcom/androlua/util/ScreenMetrics;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    iput-object p2, p0, Lcom/androlua/util/GlobalActionAutomator;->c:Landroid/os/Handler;

    return-void
.end method

.method private a([[I)Landroid/graphics/Path;
    .locals 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/androlua/util/GlobalActionAutomator;->b(I)I

    move-result v2

    int-to-float v2, v2

    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/androlua/util/GlobalActionAutomator;->c(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    aget v5, v3, v1

    invoke-direct {p0, v5}, Lcom/androlua/util/GlobalActionAutomator;->b(I)I

    move-result v5

    int-to-float v5, v5

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/androlua/util/GlobalActionAutomator;->c(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/androlua/util/GlobalActionAutomator;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/util/GlobalActionAutomator;->a()V

    return-void
.end method

.method private a(I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/accessibilityservice/GestureDescription;)Z
    .locals 3

    new-instance v0, Lcom/androlua/util/VolatileDispose;

    invoke-direct {v0}, Lcom/androlua/util/VolatileDispose;-><init>()V

    const-string v1, "GlobalActionAutomator"

    const-string v2, "dispatchGesture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    new-instance v2, Lcom/androlua/util/GlobalActionAutomator$1;

    invoke-direct {v2, p0, v0}, Lcom/androlua/util/GlobalActionAutomator$1;-><init>(Lcom/androlua/util/GlobalActionAutomator;Lcom/androlua/util/VolatileDispose;)V

    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v0}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method private b(I)I
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->b:Lcom/androlua/util/ScreenMetrics;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->b:Lcom/androlua/util/ScreenMetrics;

    invoke-virtual {v0, p1}, Lcom/androlua/util/ScreenMetrics;->scaleX(I)I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    return-void
.end method

.method private b(Landroid/accessibilityservice/GestureDescription;)Z
    .locals 4

    invoke-direct {p0}, Lcom/androlua/util/GlobalActionAutomator;->b()V

    new-instance v0, Lcom/androlua/util/VolatileBox;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androlua/util/VolatileBox;-><init>(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    new-instance v3, Lcom/androlua/util/GlobalActionAutomator$2;

    invoke-direct {v3, p0, v0}, Lcom/androlua/util/GlobalActionAutomator$2;-><init>(Lcom/androlua/util/GlobalActionAutomator;Lcom/androlua/util/VolatileBox;)V

    invoke-virtual {v2, p1, v3, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-virtual {v0}, Lcom/androlua/util/VolatileBox;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private c(I)I
    .locals 1

    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->b:Lcom/androlua/util/ScreenMetrics;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->b:Lcom/androlua/util/ScreenMetrics;

    invoke-virtual {v0, p1}, Lcom/androlua/util/ScreenMetrics;->scaleY(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public back()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->a(I)Z

    move-result v0

    return v0
.end method

.method public click(II)Z
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/androlua/util/GlobalActionAutomator;->press(III)Z

    move-result p1

    return p1
.end method

.method public gesture(JJLandroid/graphics/Path;)Z
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v7, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v1, v7

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    const/4 p1, 0x0

    aput-object v7, v0, p1

    invoke-virtual {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->gestures([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z

    move-result p1

    return p1
.end method

.method public varargs gesture(JJ[[I)Z
    .locals 7

    invoke-direct {p0, p5}, Lcom/androlua/util/GlobalActionAutomator;->a([[I)Landroid/graphics/Path;

    move-result-object v1

    const/4 p5, 0x1

    new-array p5, p5, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v6, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    const/4 p1, 0x0

    aput-object v6, p5, p1

    invoke-virtual {p0, p5}, Lcom/androlua/util/GlobalActionAutomator;->gestures([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z

    move-result p1

    return p1
.end method

.method public varargs gestureAsync(JJ[[I)V
    .locals 7

    invoke-direct {p0, p5}, Lcom/androlua/util/GlobalActionAutomator;->a([[I)Landroid/graphics/Path;

    move-result-object v1

    const/4 p5, 0x1

    new-array p5, p5, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v6, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    const/4 p1, 0x0

    aput-object v6, p5, p1

    invoke-virtual {p0, p5}, Lcom/androlua/util/GlobalActionAutomator;->gesturesAsync([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)V

    return-void
.end method

.method public varargs gestures([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/androlua/util/GlobalActionAutomator;->c:Landroid/os/Handler;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/util/GlobalActionAutomator;->b(Landroid/accessibilityservice/GestureDescription;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/util/GlobalActionAutomator;->a(Landroid/accessibilityservice/GestureDescription;)Z

    move-result p1

    return p1
.end method

.method public varargs gesturesAsync([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    return-void
.end method

.method public home()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->a(I)Z

    move-result v0

    return v0
.end method

.method public longClick(II)Z
    .locals 7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    int-to-long v4, v0

    const/4 v0, 0x1

    new-array v6, v0, [[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v0

    aput-object v1, v6, v2

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/androlua/util/GlobalActionAutomator;->gesture(JJ[[I)Z

    move-result p1

    return p1
.end method

.method public notifications()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->a(I)Z

    move-result v0

    return v0
.end method

.method public powerDialog()Z
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->a(I)Z

    move-result v0

    return v0
.end method

.method public press(III)Z
    .locals 6

    int-to-long v3, p3

    const/4 p3, 0x1

    new-array v5, p3, [[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, p3

    aput-object v0, v5, v1

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/util/GlobalActionAutomator;->gesture(JJ[[I)Z

    move-result p1

    return p1
.end method

.method public quickSettings()Z
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->a(I)Z

    move-result v0

    return v0
.end method

.method public recents()Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->a(I)Z

    move-result v0

    return v0
.end method

.method public setScreenMetrics(Lcom/androlua/util/ScreenMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/GlobalActionAutomator;->b:Lcom/androlua/util/ScreenMetrics;

    return-void
.end method

.method public setService(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/GlobalActionAutomator;->a:Landroid/accessibilityservice/AccessibilityService;

    return-void
.end method

.method public splitScreen()Z
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/androlua/util/GlobalActionAutomator;->a(I)Z

    move-result v0

    return v0
.end method

.method public swipe(IIIII)Z
    .locals 6

    int-to-long v3, p5

    const/4 p5, 0x2

    new-array v5, p5, [[I

    new-array v0, p5, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    aput-object v0, v5, v1

    new-array p2, p5, [I

    aput p3, p2, v1

    aput p4, p2, p1

    aput-object p2, v5, p1

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/util/GlobalActionAutomator;->gesture(JJ[[I)Z

    move-result p1

    return p1
.end method

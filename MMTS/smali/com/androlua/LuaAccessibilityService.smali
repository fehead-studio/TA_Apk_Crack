.class public Lcom/androlua/LuaAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;
    }
.end annotation


# static fields
.field private static a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

.field private static d:Lcom/androlua/LuaAccessibilityService;

.field public static onAccessibilityEvent:Lcom/luajava/LuaFunction;


# instance fields
.field private b:Lcom/androlua/LuaApplication;

.field private c:Ljava/util/Map;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Lcom/androlua/util/GlobalActionAutomator;

.field private i:Lcom/nirenr/screencapture/ScreenShot;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->isListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/androlua/LuaAccessibilityService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/androlua/LuaAccessibilityService;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaAccessibilityService;->e:Ljava/util/HashMap;

    return-object p1
.end method

.method private a()V
    .locals 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/androlua/LuaAccessibilityService;->j:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/androlua/LuaAccessibilityService;->k:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/androlua/LuaAccessibilityService;->l:I

    return-void
.end method

.method private a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/androlua/LuaAccessibilityService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/androlua/LuaAccessibilityService;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androlua/LuaAccessibilityService;->f:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/androlua/LuaAccessibilityService;->f:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/androlua/LuaAccessibilityService;->f:Z

    if-nez v3, :cond_4

    invoke-virtual {v2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/androlua/LuaAccessibilityService;->f:Z

    :cond_4
    invoke-direct {p0, v2, p2, p3}, Lcom/androlua/LuaAccessibilityService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaAccessibilityService;Ljava/lang/String;Lcom/luajava/LuaException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaAccessibilityService;->a(Ljava/lang/String;Lcom/luajava/LuaException;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/luajava/LuaException;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "\\|"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_9

    aget-object v6, v1, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v4

    const-string v8, "*"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v8, v4

    if-nez v7, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_2
    array-length v9, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_8

    aget-object v11, v0, v10

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v11, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_a

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/androlua/LuaAccessibilityService;->a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method private b(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->isClickable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object p1
.end method

.method private b()V
    .locals 4

    new-instance v0, Lcom/androlua/LuaAccessibilityService$8;

    invoke-direct {v0, p0}, Lcom/androlua/LuaAccessibilityService$8;-><init>(Lcom/androlua/LuaAccessibilityService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/androlua/LuaAccessibilityService$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private c()V
    .locals 8

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v3, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/androlua/LuaAccessibilityService;->e:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/androlua/LuaAccessibilityService;
    .locals 1

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->d:Lcom/androlua/LuaAccessibilityService;

    return-object v0
.end method

.method public static setCallback(Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;)V
    .locals 0

    sput-object p0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    return-void
.end method


# virtual methods
.method public appendCopy()Z
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public appendCopy(Ljava/lang/CharSequence;)Z
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v1, "label"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return v3
.end method

.method public click(II)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    invoke-virtual {v0, p1, p2}, Lcom/androlua/util/GlobalActionAutomator;->click(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public click(Lcom/luajava/LuaTable;)Z
    .locals 1

    new-instance v0, Lcom/androlua/util/ClickRunnable;

    invoke-direct {v0, p0, p1}, Lcom/androlua/util/ClickRunnable;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V

    invoke-virtual {v0}, Lcom/androlua/util/ClickRunnable;->canClick()Z

    move-result p1

    return p1
.end method

.method public click(Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)Z
    .locals 1

    new-instance v0, Lcom/androlua/util/ClickRunnable;

    invoke-direct {v0, p0, p1}, Lcom/androlua/util/ClickRunnable;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V

    new-instance p1, Lcom/androlua/LuaAccessibilityService$6;

    invoke-direct {p1, p0, p2}, Lcom/androlua/LuaAccessibilityService$6;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaFunction;)V

    invoke-virtual {v0, p1}, Lcom/androlua/util/ClickRunnable;->canClick(Lcom/androlua/util/ClickRunnable$ClickCallback;)Z

    move-result p1

    return p1
.end method

.method public click(Lcom/nirenr/Point;)Z
    .locals 1

    iget v0, p1, Lcom/nirenr/Point;->x:I

    iget p1, p1, Lcom/nirenr/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaAccessibilityService;->click(II)Z

    move-result p1

    return p1
.end method

.method public click(Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    :cond_3
    array-length p2, p3

    move-object v1, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_6

    aget v2, p3, p1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-gt v3, v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/androlua/LuaAccessibilityService;->toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method public copy()Z
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public copy(Ljava/lang/CharSequence;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "label"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteApp(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/androlua/LuaAccessibilityService;->c()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10200000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "\u8ffd\u52a0\u590d\u5236"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "\u6700\u8fd1\u4efb\u52a1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "\u589e\u52a0\u8fdb\u5ea6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "\u5411\u4e0b\u7ffb\u9875"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "\u5411\u4e0a\u7ffb\u9875"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "\u51cf\u5c11\u8fdb\u5ea6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "\u901a\u77e5\u680f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_1

    :sswitch_7
    const-string v0, "\u4e3b\u5c4f\u5e55"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_8
    const-string v0, "\u957f\u6309"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_9
    const-string v0, "\u8fd4\u56de"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_a
    const-string v0, "\u7c98\u8d34"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "\u70b9\u51fb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v0, "\u6e05\u7a7a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_d
    const-string v0, "\u590d\u5236"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_e
    const-string v0, "\u6253\u5f00\u901a\u77e5\u680f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->toNotifications()V

    return v1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->toLongClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return v1

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->toBack()V

    return v1

    :pswitch_4
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->toHome()V

    return v1

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    return v1

    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    return v1

    :pswitch_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    const/high16 p1, 0x200000

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    return p1

    :cond_1
    return v2

    :pswitch_8
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->toRecents()V

    return v1

    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return v1

    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :pswitch_c
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/LuaAccessibilityService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :pswitch_d
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/LuaAccessibilityService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x6913dfc9 -> :sswitch_e
        0xb1ac9 -> :sswitch_d
        0xdcd15 -> :sswitch_c
        0xdf862 -> :sswitch_b
        0xfa39c -> :sswitch_a
        0x11c18a -> :sswitch_9
        0x127d6a -> :sswitch_8
        0x1313761 -> :sswitch_7
        0x22bde64 -> :sswitch_6
        0x269b8dcd -> :sswitch_5
        0x276bf1b3 -> :sswitch_4
        0x276bf574 -> :sswitch_3
        0x29906f6d -> :sswitch_2
        0x30f7fb97 -> :sswitch_1
        0x42b5584c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/androlua/LuaAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v4, v0, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    :catch_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3e

    const/4 v4, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x40

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, v3}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2

    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfoByIndex(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfoById(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->startApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfoById(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfoById(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, p2, 0x1

    if-gt v2, v0, :cond_3

    rsub-int/lit8 v2, p2, 0x0

    if-le v2, v0, :cond_1

    return-object v1

    :cond_1
    if-gez p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findAccessibilityNodeInfoById(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfoByIndex(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    if-gt v5, v4, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-object v1

    :cond_3
    return-object v0
.end method

.method public findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, p2, 0x1

    if-gt v2, v0, :cond_3

    rsub-int/lit8 v2, p2, 0x0

    if-le v2, v0, :cond_1

    return-object v1

    :cond_1
    if-gez p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findAccessibilityNodeInfoByText(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_d

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    const/4 v9, 0x1

    if-eq v7, v8, :cond_c

    const/16 v7, 0x26

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-lez v7, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    if-nez v8, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_3
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v9

    const-string v8, "*"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v8, v9

    if-nez v7, :cond_4

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-nez v8, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v6, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_7
    :goto_2
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v11, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v12, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_a
    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v1, v0, p1}, Lcom/androlua/LuaAccessibilityService;->a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :cond_e
    return-object v1
.end method

.method public findClick([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3, v1}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/androlua/LuaAccessibilityService;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getAllEditTextList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaAccessibilityService;->getEditText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getAllText(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getAllTextList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllTextList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/androlua/LuaAccessibilityService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getAllTextList(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/androlua/LuaAccessibilityService;->f:Z

    invoke-direct {p0, v1, v0, p1}, Lcom/androlua/LuaAccessibilityService;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaAccessibilityService;->j:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaAccessibilityService;->a()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaAccessibilityService;->j:I

    return v0
.end method

.method public getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getAllEditTextList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_1

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    :cond_1
    return-object v0
.end method

.method public getEditText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/androlua/LuaAccessibilityService;->getEditText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaAccessibilityService;->l:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaAccessibilityService;->a()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaAccessibilityService;->l:I

    return v0
.end method

.method public getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    return-object v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->i:Lcom/nirenr/screencapture/ScreenShot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->i:Lcom/nirenr/screencapture/ScreenShot;

    invoke-virtual {v0}, Lcom/nirenr/screencapture/ScreenShot;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenshot(Lcom/luajava/LuaFunction;)V
    .locals 1

    new-instance v0, Lcom/androlua/LuaAccessibilityService$1;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaAccessibilityService$1;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaFunction;)V

    invoke-static {p0, v0}, Lcom/nirenr/screencapture/ScreenShot;->getScreenCaptureBitmap(Lcom/androlua/LuaAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method public getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaAccessibilityService;->k:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaAccessibilityService;->a()V

    :cond_0
    iget v0, p0, Lcom/androlua/LuaAccessibilityService;->k:I

    return v0
.end method

.method public insert(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    :cond_2
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v3, "label"

    invoke-static {v3, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {v1, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x8000

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public installApp(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://search?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10200000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/androlua/LuaAccessibilityService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public isClickable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p1

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public isListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "android.widget.AbsListView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "android.widget.HorizontalScrollView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_2
    const-string v2, "android.widget.ExpandableListView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "android.widget.ScrollView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "android.widget.ListView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "flyme.support.v7.widget.RecyclerView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "com.tencent.widget.GridView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_8
    const-string v2, "android.widget.AdapterView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_9
    const-string v2, "android.widget.GridView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v1, "ScrollView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :pswitch_0
    return v3

    :cond_2
    const-string v1, "GridView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    const-string v1, "RecyclerView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    const-string v1, "ListView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x556a39ea -> :sswitch_9
        -0x44cdec57 -> :sswitch_8
        -0x41b4ee81 -> :sswitch_7
        -0x29f10381 -> :sswitch_6
        -0x1a2471dd -> :sswitch_5
        -0x182a8092 -> :sswitch_4
        0x32286f5d -> :sswitch_3
        0x6b3e34c2 -> :sswitch_2
        0x72f058e1 -> :sswitch_1
        0x75e02c0a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public longClick(II)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    invoke-virtual {v0, p1, p2}, Lcom/androlua/util/GlobalActionAutomator;->longClick(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public longClick(Lcom/nirenr/Point;)Z
    .locals 1

    iget v0, p1, Lcom/nirenr/Point;->x:I

    iget p1, p1, Lcom/nirenr/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaAccessibilityService;->longClick(II)Z

    move-result p1

    return p1
.end method

.method public loopClick(Lcom/luajava/LuaTable;)Lcom/androlua/util/ClickRunnable;
    .locals 2

    new-instance v0, Lcom/androlua/util/ClickRunnable;

    invoke-direct {v0, p0, p1}, Lcom/androlua/util/ClickRunnable;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V

    new-instance v1, Lcom/androlua/LuaAccessibilityService$7;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaAccessibilityService$7;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V

    invoke-virtual {v0, v1}, Lcom/androlua/util/ClickRunnable;->canClick(Lcom/androlua/util/ClickRunnable$ClickCallback;)Z

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    invoke-interface {v0, p0, p1}, Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;->onAccessibilityEvent(Lcom/androlua/LuaAccessibilityService;Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    sget-object v0, Lcom/androlua/LuaAccessibilityService;->onAccessibilityEvent:Lcom/luajava/LuaFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/androlua/LuaAccessibilityService;->onAccessibilityEvent:Lcom/luajava/LuaFunction;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "lua"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccessibilityEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/luajava/LuaException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->c:Ljava/util/Map;

    const-string v3, "LuaAccessibilityService"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->c:Ljava/util/Map;

    const-string v3, "LuaAccessibilityService"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    if-nez v0, :cond_3

    return-void

    :cond_3
    :try_start_1
    const-string v3, "onAccessibilityEvent"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luajava/LuaFunction;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v3, "onError"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaFunction;

    if-nez v0, :cond_4

    const-string v0, "onAccessibilityEvent"

    invoke-virtual {p1}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    const-string v0, "onAccessibilityEvent"

    invoke-virtual {p1}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    invoke-interface {v0, p0, p1}, Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;->onConfigurationChanged(Lcom/androlua/LuaAccessibilityService;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "lua"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->g:Landroid/os/Handler;

    sput-object p0, Lcom/androlua/LuaAccessibilityService;->d:Lcom/androlua/LuaAccessibilityService;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/androlua/util/GlobalActionAutomator;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/androlua/util/GlobalActionAutomator;-><init>(Landroid/accessibilityservice/AccessibilityService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    invoke-virtual {v0, p0}, Lcom/androlua/util/GlobalActionAutomator;->setService(Landroid/accessibilityservice/AccessibilityService;)V

    :cond_0
    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;->onCreate(Lcom/androlua/LuaAccessibilityService;)V

    :cond_1
    invoke-direct {p0}, Lcom/androlua/LuaAccessibilityService;->b()V

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaApplication;

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->b:Lcom/androlua/LuaApplication;

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->c:Ljava/util/Map;

    const-string v1, "LuaAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->c:Ljava/util/Map;

    const-string v1, "LuaAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "onCreate"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luajava/LuaFunction;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "onError"

    invoke-virtual {v0, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaFunction;

    if-nez v0, :cond_4

    const-string v0, "onCreate"

    invoke-virtual {v3}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string v0, "onCreate"

    invoke-virtual {v3}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;->onDestroy(Lcom/androlua/LuaAccessibilityService;)V

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->stopScreenshot()V

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 1

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;->onInterrupt(Lcom/androlua/LuaAccessibilityService;)V

    :cond_0
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    invoke-interface {v0, p0, p1}, Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;->onKeyEvent(Lcom/androlua/LuaAccessibilityService;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onServiceConnected()V
    .locals 5

    const-string v0, "lua"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androlua/LuaAccessibilityService;->a:Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/androlua/LuaAccessibilityService$AccessibilityServiceCallbacks;->onServiceConnected(Lcom/androlua/LuaAccessibilityService;)V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->c:Ljava/util/Map;

    const-string v1, "LuaAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->c:Ljava/util/Map;

    const-string v1, "LuaAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "onServiceConnected"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luajava/LuaFunction;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "onError"

    invoke-virtual {v0, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaFunction;

    if-nez v0, :cond_3

    const-string v0, "onServiceConnected"

    invoke-virtual {v3}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string v0, "onServiceConnected"

    invoke-virtual {v3}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public paste()Z
    .locals 2

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public paste(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public paste(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    :cond_2
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v2, "label"

    invoke-static {v2, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {v0, p2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/androlua/LuaAccessibilityService;->paste(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public paste(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/high16 p1, 0x200000

    invoke-virtual {v1, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public postClick(JLcom/luajava/LuaTable;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->g:Landroid/os/Handler;

    new-instance v1, Lcom/androlua/LuaAccessibilityService$4;

    invoke-direct {v1, p0, p3}, Lcom/androlua/LuaAccessibilityService$4;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postClick(JLcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->g:Landroid/os/Handler;

    new-instance v1, Lcom/androlua/LuaAccessibilityService$5;

    invoke-direct {v1, p0, p3, p4}, Lcom/androlua/LuaAccessibilityService$5;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;Lcom/luajava/LuaFunction;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postExecute(JLjava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->g:Landroid/os/Handler;

    new-instance v1, Lcom/androlua/LuaAccessibilityService$3;

    invoke-direct {v1, p0, p3, p4}, Lcom/androlua/LuaAccessibilityService$3;-><init>(Lcom/androlua/LuaAccessibilityService;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postExecute(JLjava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/luajava/LuaFunction;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->g:Landroid/os/Handler;

    new-instance v1, Lcom/androlua/LuaAccessibilityService$2;

    invoke-direct {v1, p0, p5, p3, p4}, Lcom/androlua/LuaAccessibilityService$2;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaFunction;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public press(III)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androlua/util/GlobalActionAutomator;->press(III)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public press(Lcom/nirenr/Point;I)Z
    .locals 1

    iget v0, p1, Lcom/nirenr/Point;->x:I

    iget p1, p1, Lcom/nirenr/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaAccessibilityService;->press(III)Z

    move-result p1

    return p1
.end method

.method public scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v3, 0x2000

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    return p1
.end method

.method public scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v3, 0x1000

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    return p1
.end method

.method public setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/high16 p2, 0x200000

    invoke-virtual {p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setText(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaAccessibilityService;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startApp(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/androlua/LuaAccessibilityService;->b()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/androlua/LuaAccessibilityService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public startScreenshot()V
    .locals 2

    new-instance v0, Lcom/nirenr/screencapture/ScreenShot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nirenr/screencapture/ScreenShot;-><init>(Landroid/content/Context;Landroid/hardware/display/VirtualDisplay$Callback;)V

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->i:Lcom/nirenr/screencapture/ScreenShot;

    return-void
.end method

.method public startScreenshot(Landroid/hardware/display/VirtualDisplay$Callback;)V
    .locals 1

    new-instance v0, Lcom/nirenr/screencapture/ScreenShot;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/screencapture/ScreenShot;-><init>(Landroid/content/Context;Landroid/hardware/display/VirtualDisplay$Callback;)V

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->i:Lcom/nirenr/screencapture/ScreenShot;

    return-void
.end method

.method public stopScreenshot()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->i:Lcom/nirenr/screencapture/ScreenShot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->i:Lcom/nirenr/screencapture/ScreenShot;

    invoke-virtual {v0}, Lcom/nirenr/screencapture/ScreenShot;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaAccessibilityService;->i:Lcom/nirenr/screencapture/ScreenShot;

    return-void
.end method

.method public swipe(IIIII)Z
    .locals 7

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/androlua/util/GlobalActionAutomator;->swipe(IIIII)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public swipe(Landroid/graphics/Path;I)Z
    .locals 7

    iget-object v0, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaAccessibilityService;->h:Lcom/androlua/util/GlobalActionAutomator;

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/androlua/util/GlobalActionAutomator;->gesture(JJLandroid/graphics/Path;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public swipe(Lcom/nirenr/Point;Lcom/nirenr/Point;I)Z
    .locals 6

    iget v1, p1, Lcom/nirenr/Point;->x:I

    iget v2, p1, Lcom/nirenr/Point;->y:I

    iget v3, p2, Lcom/nirenr/Point;->x:I

    iget v4, p2, Lcom/nirenr/Point;->y:I

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaAccessibilityService;->swipe(IIIII)Z

    move-result p1

    return p1
.end method

.method public toBack()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toClick2(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaAccessibilityService;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaAccessibilityService;->toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method

.method public toHome()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public toLongClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toNotifications()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public toRecents()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/androlua/LuaAccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

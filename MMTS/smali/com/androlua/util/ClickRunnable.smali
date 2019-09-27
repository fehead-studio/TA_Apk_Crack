.class public Lcom/androlua/util/ClickRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/util/ClickRunnable$ClickCallback;
    }
.end annotation


# instance fields
.field private final a:Lcom/androlua/LuaAccessibilityService;

.field private b:Lcom/luajava/LuaTable;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/androlua/util/ClickRunnable$ClickCallback;

.field private g:Z

.field private h:Lcom/androlua/util/ClickRunnable;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/util/ClickRunnable;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/util/ClickRunnable;->d:I

    iput v0, p0, Lcom/androlua/util/ClickRunnable;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/util/ClickRunnable;->g:Z

    iput-object p1, p0, Lcom/androlua/util/ClickRunnable;->a:Lcom/androlua/LuaAccessibilityService;

    iput-object p2, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    return-void
.end method

.method static synthetic a(Lcom/androlua/util/ClickRunnable;Lcom/androlua/util/ClickRunnable;)Lcom/androlua/util/ClickRunnable;
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/ClickRunnable;->h:Lcom/androlua/util/ClickRunnable;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x3e8

    if-lez v1, :cond_1

    add-int/lit8 v4, v1, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v4

    :catch_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-lez v1, :cond_3

    iget v5, p0, Lcom/androlua/util/ClickRunnable;->d:I

    if-gez v5, :cond_2

    add-int/lit8 v5, v1, 0x1

    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/androlua/util/ClickRunnable;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iput v4, p0, Lcom/androlua/util/ClickRunnable;->d:I

    :cond_2
    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    iget v5, p0, Lcom/androlua/util/ClickRunnable;->e:I

    if-gez v5, :cond_4

    add-int/lit8 v5, v1, 0x1

    :try_start_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/androlua/util/ClickRunnable;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    iput v4, p0, Lcom/androlua/util/ClickRunnable;->e:I

    :cond_4
    :goto_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget v1, p0, Lcom/androlua/util/ClickRunnable;->e:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/androlua/util/ClickRunnable;->e:I

    iget v1, p0, Lcom/androlua/util/ClickRunnable;->d:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/androlua/util/ClickRunnable;->d:I

    iget-object v1, p0, Lcom/androlua/util/ClickRunnable;->a:Lcom/androlua/LuaAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const-string v6, "lua"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findAccessibilityNodeInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/androlua/util/ClickRunnable;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/androlua/util/ClickRunnable;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    iput v4, p0, Lcom/androlua/util/ClickRunnable;->d:I

    iget-object p1, p0, Lcom/androlua/util/ClickRunnable;->a:Lcom/androlua/LuaAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/androlua/LuaAccessibilityService;->toClick2(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/androlua/util/ClickRunnable;->a:Lcom/androlua/LuaAccessibilityService;

    invoke-virtual {p1}, Lcom/androlua/LuaAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v5

    :cond_7
    iget v1, p0, Lcom/androlua/util/ClickRunnable;->d:I

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/androlua/util/ClickRunnable;->e:I

    if-lez v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    iget-object v2, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    iget v3, p0, Lcom/androlua/util/ClickRunnable;->c:I

    invoke-interface {v1, v5, v2, p1, v3}, Lcom/androlua/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_9
    return v0
.end method


# virtual methods
.method public canClick()Z
    .locals 7

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ge v2, v0, :cond_8

    iget-boolean v5, p0, Lcom/androlua/util/ClickRunnable;->g:Z

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    iget-object v2, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/androlua/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_1
    return v1

    :cond_2
    iget-object v3, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/luajava/LuaTable;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    check-cast v3, Lcom/luajava/LuaTable;

    invoke-virtual {v3}, Lcom/luajava/LuaTable;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/androlua/util/ClickRunnable;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-object v3, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    return v6

    :cond_5
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_7

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/androlua/util/ClickRunnable;->a:Lcom/androlua/LuaAccessibilityService;

    invoke-virtual {v5, v3}, Lcom/androlua/LuaAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->a:Lcom/androlua/LuaAccessibilityService;

    invoke-virtual {v0, v5}, Lcom/androlua/LuaAccessibilityService;->toClick2(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    iget-object v1, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v6, v1, v3, v2}, Lcom/androlua/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_6
    return v6

    :cond_7
    :goto_1
    move v2, v4

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    iget-object v2, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/androlua/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_9
    return v1
.end method

.method public canClick(Lcom/androlua/util/ClickRunnable$ClickCallback;)Z
    .locals 0

    iput-object p1, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    invoke-virtual {p0}, Lcom/androlua/util/ClickRunnable;->canClick()Z

    move-result p1

    return p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/util/ClickRunnable;->g:Z

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->h:Lcom/androlua/util/ClickRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->h:Lcom/androlua/util/ClickRunnable;

    invoke-virtual {v0}, Lcom/androlua/util/ClickRunnable;->cancel()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    iget-boolean v0, p0, Lcom/androlua/util/ClickRunnable;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    iget-object v3, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    const/4 v4, -0x1

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/androlua/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/androlua/util/ClickRunnable;->d:I

    const/4 v3, 0x1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/androlua/util/ClickRunnable;->e:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/androlua/util/ClickRunnable;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/androlua/util/ClickRunnable;->c:I

    :cond_2
    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    iget v4, p0, Lcom/androlua/util/ClickRunnable;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->f:Lcom/androlua/util/ClickRunnable$ClickCallback;

    iget v4, p0, Lcom/androlua/util/ClickRunnable;->c:I

    iget-object v5, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-virtual {v5}, Lcom/luajava/LuaTable;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object v3, p0, Lcom/androlua/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    iget v4, p0, Lcom/androlua/util/ClickRunnable;->c:I

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/androlua/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_4
    return-void

    :cond_5
    instance-of v1, v0, Lcom/luajava/LuaTable;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    new-instance v1, Lcom/androlua/util/ClickRunnable;

    iget-object v2, p0, Lcom/androlua/util/ClickRunnable;->a:Lcom/androlua/LuaAccessibilityService;

    invoke-direct {v1, v2, v0}, Lcom/androlua/util/ClickRunnable;-><init>(Lcom/androlua/LuaAccessibilityService;Lcom/luajava/LuaTable;)V

    iput-object v1, p0, Lcom/androlua/util/ClickRunnable;->h:Lcom/androlua/util/ClickRunnable;

    iget-object v0, p0, Lcom/androlua/util/ClickRunnable;->h:Lcom/androlua/util/ClickRunnable;

    new-instance v1, Lcom/androlua/util/ClickRunnable$1;

    invoke-direct {v1, p0}, Lcom/androlua/util/ClickRunnable$1;-><init>(Lcom/androlua/util/ClickRunnable;)V

    invoke-virtual {v0, v1}, Lcom/androlua/util/ClickRunnable;->canClick(Lcom/androlua/util/ClickRunnable$ClickCallback;)Z

    return-void

    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_8

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/androlua/util/ClickRunnable;->a(Ljava/lang/String;)Z

    :cond_8
    return-void
.end method

.class public Lcom/androlua/LuaArrayAdapter;
.super Landroid/widget/ArrayListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaArrayAdapter$AsyncLoader;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/androlua/LuaContext;

.field private c:Lcom/luajava/LuaState;

.field private d:Lcom/luajava/LuaObject;

.field private e:Lcom/luajava/LuaObject;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/androlua/LuaArrayAdapter;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance p3, Lcom/androlua/LuaArrayAdapter$1;

    invoke-direct {p3, p0}, Lcom/androlua/LuaArrayAdapter$1;-><init>(Lcom/androlua/LuaArrayAdapter;)V

    iput-object p3, p0, Lcom/androlua/LuaArrayAdapter;->g:Landroid/os/Handler;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/androlua/LuaArrayAdapter;->h:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter;->b:Lcom/androlua/LuaContext;

    iput-object p2, p0, Lcom/androlua/LuaArrayAdapter;->d:Lcom/luajava/LuaObject;

    iget-object p2, p0, Lcom/androlua/LuaArrayAdapter;->b:Lcom/androlua/LuaContext;

    invoke-interface {p2}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/androlua/LuaArrayAdapter;->a:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    const-string p2, "loadlayout"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter;->e:Lcom/luajava/LuaObject;

    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaState;->newTable()V

    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter;->e:Lcom/luajava/LuaObject;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/androlua/LuaArrayAdapter;->d:Lcom/luajava/LuaObject;

    aput-object p3, p2, v1

    iget-object p3, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    const-class p3, Landroid/widget/AbsListView;

    const/4 v1, 0x2

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaArrayAdapter;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaArrayAdapter;->a:Landroid/content/res/Resources;

    return-object p0
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    :try_start_0
    check-cast p1, Landroid/widget/ImageView;

    instance-of v0, p2, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->a:Landroid/content/res/Resources;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/androlua/LuaArrayAdapter$AsyncLoader;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaArrayAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaArrayAdapter;Lcom/androlua/LuaArrayAdapter$1;)V

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->b:Lcom/androlua/LuaContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/androlua/LuaArrayAdapter$AsyncLoader;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->a:Landroid/content/res/Resources;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_6

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/androlua/LuaArrayAdapter;->b:Lcom/androlua/LuaContext;

    invoke-interface {v1}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float p2, p2

    mul-float v1, v1, p2

    int-to-float p2, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->b:Lcom/androlua/LuaContext;

    invoke-interface {v0}, Lcom/androlua/LuaContext;->getWidth()I

    move-result v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "lua"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/androlua/LuaArrayAdapter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaArrayAdapter;->h:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/androlua/LuaArrayAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaArrayAdapter;->g:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaArrayAdapter;->f:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/androlua/LuaArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {p2}, Lcom/luajava/LuaState;->newTable()V

    iget-object p2, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p2

    iget-object p3, p0, Lcom/androlua/LuaArrayAdapter;->c:Lcom/luajava/LuaState;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/luajava/LuaState;->pop(I)V

    :try_start_0
    iget-object p3, p0, Lcom/androlua/LuaArrayAdapter;->e:Lcom/luajava/LuaObject;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaArrayAdapter;->d:Lcom/luajava/LuaObject;

    aput-object v3, v1, v2

    aput-object p2, v1, v0

    const/4 p2, 0x2

    const-class v0, Landroid/widget/AbsListView;

    aput-object v0, v1, p2

    invoke-virtual {p3, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/androlua/LuaArrayAdapter;->b:Lcom/androlua/LuaContext;

    invoke-interface {p2}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/androlua/LuaArrayAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter;->f:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaArrayAdapter;->f:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-object p2
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaArrayAdapter;->f:Landroid/view/animation/Animation;

    return-void
.end method

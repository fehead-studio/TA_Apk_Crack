.class public Lcom/androlua/LuaExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;,
        Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/BitmapDrawable;

.field private b:Landroid/content/res/Resources;

.field private c:Lcom/luajava/LuaState;

.field private d:Lcom/androlua/LuaContext;

.field private e:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/luajava/LuaTable;

.field private i:Lcom/luajava/LuaTable;

.field private j:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction<",
            "*>;"
        }
    .end annotation
.end field

.field private l:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Ljava/util/HashMap;
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
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androlua/LuaExpandableListAdapter;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androlua/LuaContext;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;",
            "Lcom/luajava/LuaTable;",
            "Lcom/luajava/LuaTable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaExpandableListAdapter$1;-><init>(Lcom/androlua/LuaExpandableListAdapter;)V

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->p:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->q:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->b:Landroid/content/res/Resources;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->b:Landroid/content/res/Resources;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/res/drawable/icon.png"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->a:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v1, -0x77000001

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p4, p0, Lcom/androlua/LuaExpandableListAdapter;->h:Lcom/luajava/LuaTable;

    iput-object p5, p0, Lcom/androlua/LuaExpandableListAdapter;->i:Lcom/luajava/LuaTable;

    if-nez p2, :cond_0

    new-instance p2, Lcom/luajava/LuaTable;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {p2, p1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/luajava/LuaTable;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {p3, p1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    :cond_1
    iput-object p2, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    iput-object p3, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const-string p2, "loadlayout"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const-string p2, "table"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    const-string p2, "insert"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const-string p2, "table"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    const-string p2, "remove"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->l:Lcom/luajava/LuaFunction;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaState;->newTable()V

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    const/4 p2, 0x3

    new-array p3, p2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/androlua/LuaExpandableListAdapter;->h:Lcom/luajava/LuaTable;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    iget-object p4, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const/4 v0, -0x1

    invoke-virtual {p4, v0}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p4

    const/4 v1, 0x1

    aput-object p4, p3, v1

    const-class p4, Landroid/widget/AbsListView;

    const/4 v2, 0x2

    aput-object p4, p3, v2

    invoke-virtual {p1, p3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/androlua/LuaExpandableListAdapter;->i:Lcom/luajava/LuaTable;

    aput-object p3, p2, p5

    iget-object p3, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {p3, v0}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p3

    aput-object p3, p2, v1

    const-class p3, Landroid/widget/AbsListView;

    aput-object p3, p2, v2

    invoke-virtual {p1, p2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/luajava/LuaFunction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/androlua/LuaExpandableListAdapter;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/androlua/LuaExpandableListAdapter;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private a(Landroid/view/View;Lcom/luajava/LuaTable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "src"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/androlua/LuaExpandableListAdapter;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "lua"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lcom/luajava/LuaTable;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/luajava/LuaTable;

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Lcom/luajava/LuaTable;)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    :try_start_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/androlua/LuaExpandableListAdapter$1;)V

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/androlua/LuaExpandableListAdapter$AsyncLoader;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
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

.method static synthetic a(Lcom/androlua/LuaExpandableListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    return p0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->newTable()V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-virtual {v0, p3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const/4 v0, -0x2

    invoke-virtual {p3, v0, p2}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p2

    aget-object p3, v3, v2

    invoke-virtual {p2, p3}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_1
    return v2
.end method

.method static synthetic b(Lcom/androlua/LuaExpandableListAdapter;)Lcom/luajava/LuaFunction;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    return-object p0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v1, v0}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    if-eq v7, v2, :cond_2

    goto :goto_0

    :cond_2
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_7

    :try_start_0
    instance-of v7, p3, Ljava/lang/Double;

    if-nez v7, :cond_6

    instance-of v7, p3, Ljava/lang/Float;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    instance-of v7, p3, Ljava/lang/Long;

    if-nez v7, :cond_5

    instance-of v7, p3, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    instance-of v6, p3, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    new-array v6, v2, [Ljava/lang/Object;

    move-object v7, p3

    check-cast v7, Ljava/lang/Boolean;

    aput-object v7, v6, v0

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_5
    :goto_1
    new-array v7, v2, [Ljava/lang/Object;

    move-object v8, p3

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aget-object v6, v6, v0

    invoke-static {v8, v6}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v6

    aput-object v6, v7, v0

    :goto_2
    invoke-virtual {v5, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_6
    :goto_3
    new-array v7, v2, [Ljava/lang/Object;

    move-object v8, p3

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aget-object v6, v6, v0

    invoke-static {v8, v6}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v6

    aput-object v6, v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    return v2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    aget-object v6, v6, v0

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_0

    :cond_8
    :try_start_1
    new-array v6, v2, [Ljava/lang/Object;

    aput-object p3, v6, v0

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_a

    new-instance p1, Lcom/luajava/LuaException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid setter "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Invalid Parameters.\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lcom/luajava/LuaException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid setter "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a method.\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lcom/androlua/LuaExpandableListAdapter;)Lcom/luajava/LuaFunction;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaExpandableListAdapter;->l:Lcom/luajava/LuaFunction;

    return-object p0
.end method

.method static synthetic d(Lcom/androlua/LuaExpandableListAdapter;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaExpandableListAdapter;->b:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic e(Lcom/androlua/LuaExpandableListAdapter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaExpandableListAdapter;->q:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic f(Lcom/androlua/LuaExpandableListAdapter;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaExpandableListAdapter;->a:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic g(Lcom/androlua/LuaExpandableListAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaExpandableListAdapter;->p:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/luajava/LuaTable;)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/androlua/LuaExpandableListAdapter$GroupItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v1}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {p1, v0}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v1}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object v0
.end method

.method public add(Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/androlua/LuaExpandableListAdapter$GroupItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v1}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/luajava/LuaTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance p1, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    invoke-direct {p1, p0, p2}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->clear()V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->clear()V

    iget-boolean v0, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luajava/LuaTable;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildData()Lcom/luajava/LuaTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 0

    add-int/lit8 p2, p2, 0x1

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-nez p4, :cond_0

    :try_start_0
    new-instance v0, Lcom/luajava/LuaTable;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {v0, v1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/androlua/LuaExpandableListAdapter;->i:Lcom/luajava/LuaTable;

    aput-object v3, v2, p3

    aput-object v0, v2, p5

    const/4 v3, 0x2

    const-class v4, Landroid/widget/AbsListView;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {p2}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    move-object v1, p4

    :goto_0
    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/2addr p1, p5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luajava/LuaTable;

    add-int/lit8 p5, p2, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luajava/LuaTable;

    if-nez p1, :cond_1

    const-string p1, "lua"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is null"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p5}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    if-eqz p5, :cond_2

    invoke-direct {p0, p5, p2}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    const-string p5, "lua"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->m:Z

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    if-eqz p1, :cond_6

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Animation;

    if-nez p1, :cond_5

    :try_start_2
    iget-object p2, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/animation/Animation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object p1, p2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_2

    :catch_3
    move-exception p2

    :goto_2
    const-string p3, "lua"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-object v1
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luajava/LuaTable;

    invoke-virtual {p1}, Lcom/luajava/LuaTable;->length()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    return v0
.end method

.method public getGroupData()Lcom/luajava/LuaTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    return-object v0
.end method

.method public getGroupId(I)J
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupItem(I)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 2

    new-instance v0, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luajava/LuaTable;

    invoke-direct {v0, p0, p1}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p2, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-instance p4, Lcom/luajava/LuaTable;

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->c:Lcom/luajava/LuaState;

    invoke-direct {p4, v0}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->j:Lcom/luajava/LuaFunction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->h:Lcom/luajava/LuaTable;

    aput-object v2, v1, p2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/widget/AbsListView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/androlua/LuaExpandableListAdapter;->d:Lcom/androlua/LuaContext;

    invoke-interface {p2}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/luajava/LuaTable;

    move-object v0, p3

    :goto_0
    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luajava/LuaTable;

    if-nez v1, :cond_1

    const-string p2, "lua"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-direct {p0, v2, v1}, Lcom/androlua/LuaExpandableListAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "lua"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->m:Z

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Animation;

    if-nez p1, :cond_5

    :try_start_2
    iget-object p4, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p4, p2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/animation/Animation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object p1, p2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_2

    :catch_3
    move-exception p2

    :goto_2
    const-string p3, "lua"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public insert(ILcom/luajava/LuaTable;Lcom/luajava/LuaTable;)Lcom/androlua/LuaExpandableListAdapter$GroupItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/androlua/LuaExpandableListAdapter$GroupItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v5, 0x2

    aput-object p2, v2, v5

    invoke-virtual {v0, v2}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/androlua/LuaExpandableListAdapter;->k:Lcom/luajava/LuaFunction;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/androlua/LuaExpandableListAdapter;->f:Lcom/luajava/LuaTable;

    aput-object v1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object p3, v0, v5

    invoke-virtual {p2, v0}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance p1, Lcom/androlua/LuaExpandableListAdapter$GroupItem;

    invoke-direct {p1, p0, p3}, Lcom/androlua/LuaExpandableListAdapter$GroupItem;-><init>(Lcom/androlua/LuaExpandableListAdapter;Lcom/luajava/LuaTable;)V

    return-object p1
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public remove(I)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->l:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaExpandableListAdapter;->e:Lcom/luajava/LuaTable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationUtil(Lcom/luajava/LuaFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaFunction<",
            "Landroid/view/animation/Animation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaExpandableListAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object p1, p0, Lcom/androlua/LuaExpandableListAdapter;->n:Lcom/luajava/LuaFunction;

    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    iget-boolean p1, p0, Lcom/androlua/LuaExpandableListAdapter;->o:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaExpandableListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

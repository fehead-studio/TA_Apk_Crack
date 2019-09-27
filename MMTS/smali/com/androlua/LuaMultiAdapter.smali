.class public Lcom/androlua/LuaMultiAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaMultiAdapter$AsyncLoader;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/luajava/LuaState;

.field private c:Lcom/androlua/LuaContext;

.field private d:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable;",
            ">;"
        }
    .end annotation
.end field

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
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/luajava/LuaFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaFunction<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/luajava/LuaFunction;

.field private i:Lcom/luajava/LuaFunction;

.field private j:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaFunction<",
            "Landroid/view/animation/Animation;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Ljava/util/HashMap;
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
.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/androlua/LuaMultiAdapter;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaTable;Lcom/luajava/LuaTable;)V
    .locals 5
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
            "Lcom/luajava/LuaTable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaMultiAdapter;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaMultiAdapter;->l:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    new-instance v1, Lcom/androlua/LuaMultiAdapter$1;

    invoke-direct {v1, p0}, Lcom/androlua/LuaMultiAdapter$1;-><init>(Lcom/androlua/LuaMultiAdapter;)V

    iput-object v1, p0, Lcom/androlua/LuaMultiAdapter;->o:Landroid/os/Handler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androlua/LuaMultiAdapter;->p:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter;->c:Lcom/androlua/LuaContext;

    iput-object p3, p0, Lcom/androlua/LuaMultiAdapter;->d:Lcom/luajava/LuaTable;

    iget-object p3, p0, Lcom/androlua/LuaMultiAdapter;->c:Lcom/androlua/LuaContext;

    invoke-interface {p3}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/androlua/LuaMultiAdapter;->a:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/androlua/LuaContext;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    if-nez p2, :cond_0

    new-instance p2, Lcom/luajava/LuaTable;

    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    invoke-direct {p2, p1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;)V

    :cond_0
    iput-object p2, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    const-string p2, "loadlayout"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter;->g:Lcom/luajava/LuaFunction;

    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    const-string p2, "table"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    const-string p2, "insert"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter;->h:Lcom/luajava/LuaFunction;

    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    const-string p2, "table"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    const-string p2, "remove"

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter;->i:Lcom/luajava/LuaFunction;

    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->d:Lcom/luajava/LuaTable;

    invoke-virtual {p1}, Lcom/luajava/LuaTable;->length()I

    move-result p1

    const/4 p2, 0x1

    :goto_0
    if-gt p2, p1, :cond_1

    iget-object p3, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    invoke-virtual {p3}, Lcom/luajava/LuaState;->newTable()V

    iget-object p3, p0, Lcom/androlua/LuaMultiAdapter;->g:Lcom/luajava/LuaFunction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androlua/LuaMultiAdapter;->d:Lcom/luajava/LuaTable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x2

    const-class v3, Landroid/widget/AbsListView;

    aput-object v3, v1, v2

    invoke-virtual {p3, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    invoke-virtual {p3, v0}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
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

    invoke-direct {p0, p1, p2, p3}, Lcom/androlua/LuaMultiAdapter;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/androlua/LuaMultiAdapter;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/androlua/LuaMultiAdapter;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaMultiAdapter;->a:Landroid/content/res/Resources;

    return-object p0
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

    invoke-direct {p0, p1, v0}, Lcom/androlua/LuaMultiAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/androlua/LuaMultiAdapter;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    instance-of v0, p2, Lcom/luajava/LuaTable;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/luajava/LuaTable;

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaMultiAdapter;->a(Landroid/view/View;Lcom/luajava/LuaTable;)V

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

    new-instance v0, Lcom/androlua/LuaMultiAdapter$AsyncLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaMultiAdapter$AsyncLoader;-><init>(Lcom/androlua/LuaMultiAdapter;Lcom/androlua/LuaMultiAdapter$1;)V

    iget-object v1, p0, Lcom/androlua/LuaMultiAdapter;->c:Lcom/androlua/LuaContext;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/androlua/LuaMultiAdapter$AsyncLoader;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

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

    iget-object p2, p0, Lcom/androlua/LuaMultiAdapter;->c:Lcom/androlua/LuaContext;

    const-string v0, "setHelper"

    invoke-interface {p2, v0, p1}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaMultiAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->n:Z

    return p1
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

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->newTable()V

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    invoke-virtual {v0, p3}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    const/4 v0, -0x2

    invoke-virtual {p3, v0, p2}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

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

.method static synthetic b(Lcom/androlua/LuaMultiAdapter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaMultiAdapter;->p:Ljava/util/HashMap;

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

.method static synthetic c(Lcom/androlua/LuaMultiAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaMultiAdapter;->o:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/luajava/LuaTable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->h:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public addAll(Lcom/luajava/LuaTable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v3, p0, Lcom/androlua/LuaMultiAdapter;->h:Lcom/luajava/LuaFunction;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    aput-object v6, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->clear()V

    iget-boolean v0, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    return v0
.end method

.method public getData()Lcom/luajava/LuaTable;
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

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/androlua/LuaMultiAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luajava/LuaTable;

    const-string v0, "__type"

    invoke-virtual {p1, v0}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    iget-object p3, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/luajava/LuaTable;

    const-string v1, "__type"

    invoke-virtual {p3, v1}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->intValue()I

    move-result p3

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/androlua/LuaMultiAdapter;->d:Lcom/luajava/LuaTable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luajava/LuaTable;

    iget-object v4, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    invoke-virtual {v4}, Lcom/luajava/LuaState;->newTable()V

    iget-object v4, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v4

    iget-object v5, p0, Lcom/androlua/LuaMultiAdapter;->b:Lcom/luajava/LuaState;

    invoke-virtual {v5, v1}, Lcom/luajava/LuaState;->pop(I)V

    iget-object v5, p0, Lcom/androlua/LuaMultiAdapter;->g:Lcom/luajava/LuaFunction;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    const/4 v3, 0x2

    const-class v7, Landroid/widget/AbsListView;

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/androlua/LuaMultiAdapter;->c:Lcom/androlua/LuaContext;

    invoke-interface {p2}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/luajava/LuaObject;

    move-object v3, p2

    :goto_0
    iget-object v5, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaTable;

    if-nez v0, :cond_2

    const-string p2, "lua"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/androlua/LuaMultiAdapter;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/luajava/LuaObject;->isJavaObject()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/androlua/LuaMultiAdapter;->f:Lcom/luajava/LuaTable;

    if-eqz v7, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {v6}, Lcom/luajava/LuaObject;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/androlua/LuaMultiAdapter;->f:Lcom/luajava/LuaTable;

    invoke-virtual {v8, v5}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v7, v5}, Lcom/androlua/LuaMultiAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v6}, Lcom/luajava/LuaObject;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v1}, Lcom/androlua/LuaMultiAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v5, "lua"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->n:Z

    if-eqz p1, :cond_9

    return-object v3

    :cond_9
    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->j:Lcom/luajava/LuaTable;

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->k:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/animation/Animation;

    if-nez p1, :cond_a

    :try_start_2
    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->j:Lcom/luajava/LuaTable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/luajava/LuaFunction;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/animation/Animation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object p1, p0, Lcom/androlua/LuaMultiAdapter;->k:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object p1, p3

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p2, p1

    move-object p1, p3

    goto :goto_3

    :catch_3
    move-exception p2

    :goto_3
    iget-object p3, p0, Lcom/androlua/LuaMultiAdapter;->c:Lcom/androlua/LuaContext;

    const-string v0, "setAnimation"

    invoke-interface {p3, v0, p2}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    :goto_4
    if-eqz p1, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v3, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_b
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->d:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->length()I

    move-result v0

    return v0
.end method

.method public insert(ILcom/luajava/LuaTable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->h:Lcom/luajava/LuaFunction;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lcom/androlua/LuaMultiAdapter;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaMultiAdapter;->n:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/androlua/LuaMultiAdapter$2;

    invoke-direct {v1, p0}, Lcom/androlua/LuaMultiAdapter$2;-><init>(Lcom/androlua/LuaMultiAdapter;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->i:Lcom/luajava/LuaFunction;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaMultiAdapter;->e:Lcom/luajava/LuaTable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAnimation(Lcom/luajava/LuaTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaFunction<",
            "Landroid/view/animation/Animation;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/androlua/LuaMultiAdapter;->setAnimationUtil(Lcom/luajava/LuaTable;)V

    return-void
.end method

.method public setAnimationUtil(Lcom/luajava/LuaTable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaFunction<",
            "Landroid/view/animation/Animation;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter;->j:Lcom/luajava/LuaTable;

    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    iget-boolean p1, p0, Lcom/androlua/LuaMultiAdapter;->m:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaMultiAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setStyle(Lcom/luajava/LuaTable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaMultiAdapter;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object p1, p0, Lcom/androlua/LuaMultiAdapter;->f:Lcom/luajava/LuaTable;

    return-void
.end method

.class public Lcom/androlua/LuaActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;
.implements Lcom/androlua/LuaContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaActivity$MainHandler;
    }
.end annotation


# static fields
.field private static J:Ljava/lang/String;

.field private static final K:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/androlua/LuaActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/androlua/LuaBroadcastReceiver;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Lcom/androlua/LuaResources;

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androlua/LuaGcable;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/lang/String;

.field private L:Lcom/luajava/LuaObject;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Lcom/androlua/LuaDexLoader;

.field private g:I

.field private h:I

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/luajava/LuaState;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/StringBuilder;

.field private n:Ljava/lang/Boolean;

.field private o:Landroid/widget/Toast;

.field private p:Landroid/widget/LinearLayout;

.field private q:Z

.field private r:J

.field private s:Landroid/view/Menu;

.field private t:Lcom/luajava/LuaObject;

.field private u:Lcom/luajava/LuaObject;

.field private v:Lcom/luajava/LuaObject;

.field private w:Lcom/luajava/LuaObject;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/androlua/LuaActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androlua/LuaActivity;->K:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaActivity;->m:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaActivity;->n:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaActivity;->F:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaActivity;->H:Ljava/util/ArrayList;

    const-string v0, "main"

    iput-object v0, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "error error"

    return-object p1

    :pswitch_1
    const-string p1, "GC error"

    return-object p1

    :pswitch_2
    const-string p1, "Out of memory"

    return-object p1

    :pswitch_3
    const-string p1, "Syntax error"

    return-object p1

    :pswitch_4
    const-string p1, "Runtime error"

    return-object p1

    :pswitch_5
    const-string p1, "Yield error"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method private a()V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "disableHooks"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaActivity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaActivity;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    new-instance p1, Lcom/androlua/LuaDialog;

    invoke-direct {p1, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    const-string p2, "\u63d0\u793a3"

    invoke-virtual {p1, p2}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string p2, "\u4f60\u7684\u624b\u673a\u8fd0\u884c\u73af\u5883\u4e0d\u5b89\u5168"

    invoke-virtual {p1, p2}, Lcom/androlua/LuaDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p1, p2}, Lcom/androlua/LuaDialog;->setPosButton(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p2, p1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "setField"

    invoke-virtual {p0, p2, p1}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/androlua/LuaActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/LuaActivity;->F:Z

    return p0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/LuaActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "de.robv.android.xposed.XposedHelpers"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fieldCache"

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaActivity;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "methodCache"

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaActivity;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "constructorCache"

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaActivity;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/androlua/LuaActivity;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaActivity;->j:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->openLibs()V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0}, Lcom/luajava/LuaState;->pushContext(Lcom/androlua/LuaContext;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "luaextdir"

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "luadir"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "luapath"

    invoke-virtual {v0, v2, v1}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    invoke-direct {p0}, Lcom/androlua/LuaActivity;->d()V

    new-instance v0, Lcom/androlua/LuaPrint;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v3}, Lcom/androlua/LuaPrint;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V

    const-string v3, "print"

    invoke-virtual {v0, v3}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v3, "package"

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v3, "path"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v3, "cpath"

    invoke-virtual {v0, v2, v3}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->pop(I)V

    new-instance v0, Lcom/androlua/LuaActivity$4;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaActivity$4;-><init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaState;)V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    new-instance v0, Lcom/androlua/LuaActivity$5;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaActivity$5;-><init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaState;)V

    const-string v1, "call"

    invoke-virtual {v0, v1}, Lcom/luajava/JavaFunction;->register(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/init.lua"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/init.lua"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->LloadFile(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->newTable()V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/luajava/LuaState;->setUpValue(II)Ljava/lang/String;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v2

    if-nez v2, :cond_a

    sget-object v1, Lcom/androlua/LuaActivity;->J:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "app_key"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/androlua/LuaActivity;->J:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/StatService;->setAppKey(Ljava/lang/String;)V

    :cond_1
    const-string v1, "app_channel"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/baidu/mobstat/StatService;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    invoke-static {p0, v4}, Lcom/baidu/mobstat/StatService;->setOn(Landroid/content/Context;I)V

    :cond_3
    const-string v1, "appname"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    const-string v1, "debugmode"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/androlua/LuaActivity;->F:Z

    :cond_6
    const-string v1, "debug_mode"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->getBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/androlua/LuaActivity;->F:Z

    :cond_7
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getInteger()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->setTheme(I)V

    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/luajava/LuaObject;->isString()Z

    move-result v1

    if-eqz v1, :cond_9

    const-class v1, Landroid/R$style;

    invoke-virtual {v0}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->setTheme(I)V

    :cond_9
    return-void

    :cond_a
    move v0, v2

    :cond_b
    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/androlua/LuaActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method public static getActivity(Ljava/lang/String;)Lcom/androlua/LuaActivity;
    .locals 1

    sget-object v0, Lcom/androlua/LuaActivity;->K:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/androlua/LuaActivity;

    return-object p0
.end method


# virtual methods
.method public assetsToSD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/16 p2, 0x1000

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public bindService(I)Z
    .locals 1

    new-instance v0, Lcom/androlua/LuaActivity$2;

    invoke-direct {v0, p0}, Lcom/androlua/LuaActivity$2;-><init>(Lcom/androlua/LuaActivity;)V

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaActivity;->bindService(Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public bindService(Landroid/content/ServiceConnection;I)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "luaDir"

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "luaPath"

    iget-object v2, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public createShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/androlua/LuaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/high16 v3, 0x7f010000

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    const-string v1, "shortcut"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p1, "\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f\u51fa\u9519"

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "duplicate"

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "\u5df2\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f"

    :goto_0
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public createShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/androlua/LuaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const-string v1, "shortcut"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v2, p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/graphics/drawable/Icon;->createWithFilePath(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const-string p1, "\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f\u51fa\u9519"

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "duplicate"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON"

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "\u5df2\u6dfb\u52a0\u5feb\u6377\u65b9\u5f0f"

    :goto_0
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public varargs doAsset(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->readAsset(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1, p1}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-nez p1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v3, "traceback"

    invoke-virtual {v2, v1, v3}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->insert(I)V

    array-length v2, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    sub-int/2addr v3, v2

    invoke-virtual {p2, v2, v0, v3}, Lcom/luajava/LuaState;->pcall(III)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    new-instance p1, Lcom/luajava/LuaException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/androlua/LuaActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v2, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p2

    :goto_1
    invoke-direct {p0, v0}, Lcom/androlua/LuaActivity;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v3, p1}, Lcom/luajava/LuaState;->LloadFile(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v4, "debug"

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v4, "traceback"

    invoke-virtual {v3, v2, v4}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->insert(I)V

    array-length v3, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    sub-int/2addr v4, v3

    invoke-virtual {p2, v3, v0, v4}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p2
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_2

    :try_start_2
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_2

    :cond_2
    move p1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v3, "data"

    iget-object v4, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v4, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaActivity;->setResult(ILandroid/content/Intent;)V

    new-instance p2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaActivity;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v4, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_2
    move-exception p1

    move-object p2, p1

    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/androlua/LuaActivity;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.permission."

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v3, p2

    const-string p2, "."

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v3, :cond_5

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v3, "require"

    invoke-virtual {p2, v3}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v3, "permission"

    invoke-virtual {p2, v3}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p2, v0, v1, v1}, Lcom/luajava/LuaState;->pcall(III)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v0, "permission_info"

    invoke-virtual {p2, v0}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p2, v2, p1}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p2, v2}, Lcom/luajava/LuaState;->isString(I)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6743\u9650\u9519\u8bef: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    return-object v4

    :cond_5
    iget-boolean p1, p0, Lcom/androlua/LuaActivity;->E:Z

    return-object v4
.end method

.method public varargs doString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->LloadString(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v2, "debug"

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v2, "traceback"

    invoke-virtual {p1, v0, v2}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->remove(I)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->insert(I)V

    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    sub-int/2addr v2, p1

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, v2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/androlua/LuaActivity;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/luajava/LuaException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public finish(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x80000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->finishAndRemoveTask()V

    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getArg(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getClassLoaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalData()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaActivity;->h:I

    return v0
.end method

.method public getLibrarys()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getLibrarys()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaCpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaLpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaPath()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "main.lua"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    const-string v3, "init.lua"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/androlua/LuaActivity;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    sget-object v1, Lcom/androlua/LuaActivity;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_5

    sget-object v2, Lcom/androlua/LuaActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    return-object v0

    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v3, "main.lua"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    const-string v3, "init.lua"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    sget-object v1, Lcom/androlua/LuaActivity;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public getLuaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->getLuaDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaResources()Lcom/androlua/LuaResources;
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v1}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/androlua/LuaResources;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/androlua/LuaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/androlua/LuaActivity;->G:Lcom/androlua/LuaResources;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->G:Lcom/androlua/LuaResources;

    invoke-virtual {v1, v0}, Lcom/androlua/LuaResources;->setSuperResources(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->G:Lcom/androlua/LuaResources;

    return-object v0
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getOptionsMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->s:Landroid/view/Menu;

    return-object v0
.end method

.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "_data"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x2ff57c

    if-eq v5, v6, :cond_1

    const v0, 0x38b73479

    if-eq v5, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p1, v0

    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0}, Lcom/androlua/LuaDexLoader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->G:Lcom/androlua/LuaResources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->G:Lcom/androlua/LuaResources;

    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSharedData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSuperResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroid/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaActivity;->g:I

    return v0
.end method

.method public initMain()V
    .locals 2

    sget-object v0, Lcom/androlua/LuaActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLocalDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public installApk(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/androlua/LuaActivity;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public loadApp(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadApp(Ljava/lang/String;)Lcom/androlua/LuaDexClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/androlua/LuaBitmap;->getBitmap(Lcom/androlua/LuaContext;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadDex(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public loadLib(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaActivity;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find lib "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/androlua/LuaActivity;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".so"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/androlua/LuaUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v2, "require"

    invoke-virtual {v0, v2}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadResources(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaDexLoader;->loadResources(Ljava/lang/String;)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;IIZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;II[Ljava/lang/Object;Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p6, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivityX;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/main.lua"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/main.lua"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, ".lua"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".lua"

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p6, :cond_6

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_6

    const/high16 p2, 0x80000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x8000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    if-eqz p5, :cond_7

    const-string p2, "arg"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_7
    if-eqz p6, :cond_8

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    invoke-virtual {p0, p3, p4}, Lcom/androlua/LuaActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p4, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaActivityX;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/main.lua"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/main.lua"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, ".lua"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".lua"

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz p4, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p3, :cond_7

    const-string p2, "arg"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;II)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;IIZ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;II[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;II[Ljava/lang/Object;Z)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;II[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public newActivity(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/androlua/LuaActivity;->newActivity(ILjava/lang/String;[Ljava/lang/Object;Z)V

    return-void
.end method

.method public newTask(Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/androlua/LuaActivity;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/androlua/LuaActivity;->newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public newTask(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-object v0
.end method

.method public newThread(Lcom/luajava/LuaObject;)Lcom/androlua/LuaThread;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

    move-result-object p1

    return-object p1
.end method

.method public newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;
    .locals 2

    new-instance v0, Lcom/androlua/LuaThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    return-object v0
.end method

.method public newTimer(Lcom/luajava/LuaObject;)Lcom/androlua/LuaTimer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public newTimer(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 1

    new-instance v0, Lcom/androlua/LuaTimer;

    invoke-direct {v0, p0, p1, p2}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    const-string v2, "name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-nez v3, :cond_0

    const-string v3, "onResult"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    array-length v4, v3

    add-int/2addr v4, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v3, v2

    aput-object v2, v4, v5

    move v2, v5

    goto :goto_0

    :cond_1
    const-string v2, "onResult"

    invoke-virtual {p0, v2, v4}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    :goto_1
    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object p3, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/androlua/LuaActivity;->g:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/androlua/LuaActivity;->h:I

    const-string v0, "onConfigurationChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaActivity;->q:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "onContextItemSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->setTheme(I)V

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/androlua/LuaActivity;->g:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/androlua/LuaActivity;->h:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/androlua/LuaActivity;->p:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/androlua/LuaActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    new-instance v1, Lcom/androlua/LuaActivity$1;

    const v3, 0x1090003

    invoke-direct {v1, p0, p0, v3}, Lcom/androlua/LuaActivity$1;-><init>(Lcom/androlua/LuaActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/androlua/LuaActivity;->j:Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->j:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->i:Landroid/widget/ListView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/androlua/LuaApplication;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/androlua/LuaApplication;

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/androlua/LuaApplication;

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLocalDir()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaActivity;->x:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getOdexDir()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaActivity;->y:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLibDir()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaActivity;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getMdDir()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaActivity;->D:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLuaCpath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/androlua/LuaActivity;->x:Ljava/lang/String;

    iput-object v3, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLuaLpath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaActivity;->C:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaActivity;->A:Ljava/lang/String;

    new-instance v1, Lcom/androlua/LuaActivity$MainHandler;

    invoke-direct {v1, p0}, Lcom/androlua/LuaActivity$MainHandler;-><init>(Lcom/androlua/LuaActivity;)V

    iput-object v1, p0, Lcom/androlua/LuaActivity;->c:Landroid/os/Handler;

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->j:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayListAdapter;->clear()V

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "arg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLuaPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/?.lua;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lua/?.lua;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/?/init.lua;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->C:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaActivity;->C:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androlua/LuaActivity;->c()V

    new-instance v4, Lcom/androlua/LuaDexLoader;

    invoke-direct {v4, p0}, Lcom/androlua/LuaDexLoader;-><init>(Lcom/androlua/LuaContext;)V

    iput-object v4, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->f:Lcom/androlua/LuaDexLoader;

    invoke-virtual {v4}, Lcom/androlua/LuaDexLoader;->loadLibs()V

    sget-object v4, Lcom/androlua/LuaActivity;->K:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/androlua/LuaActivity;->doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaActivity;->n:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    const-string v5, "main"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "main"

    invoke-virtual {p0, v4, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v4, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onCreate"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/androlua/LuaActivity;->q:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const v1, 0xff00ff

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "onKeyShortcut"

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaObject;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaObject;

    :cond_6
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "onKeyDown"

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->t:Lcom/luajava/LuaObject;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->t:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v0, p0, Lcom/androlua/LuaActivity;->t:Lcom/luajava/LuaObject;

    :cond_7
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "onKeyUp"

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->u:Lcom/luajava/LuaObject;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->u:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_8

    iput-object v0, p0, Lcom/androlua/LuaActivity;->u:Lcom/luajava/LuaObject;

    :cond_8
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "onKeyLongPress"

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->v:Lcom/luajava/LuaObject;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->v:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_9

    iput-object v0, p0, Lcom/androlua/LuaActivity;->v:Lcom/luajava/LuaObject;

    :cond_9
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "onTouchEvent"

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaActivity;->w:Lcom/luajava/LuaObject;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->w:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-object v0, p0, Lcom/androlua/LuaActivity;->w:Lcom/luajava/LuaObject;

    :cond_a
    iget-object p1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v0, "onAccessibilityEvent"

    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    sput-object p1, Lcom/androlua/LuaAccessibilityService;->onAccessibilityEvent:Lcom/luajava/LuaFunction;

    :cond_b
    invoke-direct {p0}, Lcom/androlua/LuaActivity;->a()V

    invoke-direct {p0}, Lcom/androlua/LuaActivity;->b()V

    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p1, v1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_e

    aget-object v0, p1, v2

    const-string v1, "com.androlua"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "com.nirenr.talkman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "android.app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "android.os"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "java.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "com.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    const-string p1, "onHook"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_e
    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->setContentView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010036
        0x101034f
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    const-string v0, "onCreateContextMenu"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iput-object p1, p0, Lcom/androlua/LuaActivity;->s:Landroid/view/Menu;

    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaActivity;->B:Lcom/androlua/LuaBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->B:Lcom/androlua/LuaBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androlua/LuaGcable;

    invoke-interface {v1}, Lcom/androlua/LuaGcable;->gc()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/androlua/LuaActivity;->K:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/luajava/LuaState;->gc(II)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->t:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->t:Lcom/luajava/LuaObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "onKeyDown"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->v:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->v:Lcom/luajava/LuaObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "onKeyLongPress"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->L:Lcom/luajava/LuaObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "onKeyShortcut"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->u:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->u:Lcom/luajava/LuaObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "onKeyUp"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onMenuItemSelected"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "onOptionsItemSelected"

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "onReceive"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->I:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaActivity;->w:Lcom/luajava/LuaObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaActivity;->w:Lcom/luajava/LuaObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "onTouchEvent"

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public push(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public push(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "args"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/androlua/LuaActivity;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public readAsset(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaActivity;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public regGc(Lcom/androlua/LuaGcable;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiver(Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaActivity;->B:Lcom/androlua/LuaBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaActivity;->B:Lcom/androlua/LuaBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Lcom/androlua/LuaBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/androlua/LuaBroadcastReceiver;-><init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;)V

    iput-object v0, p0, Lcom/androlua/LuaActivity;->B:Lcom/androlua/LuaBroadcastReceiver;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->B:Lcom/androlua/LuaBroadcastReceiver;

    invoke-super {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/androlua/LuaBroadcastReceiver;

    invoke-direct {v0, p1}, Lcom/androlua/LuaBroadcastReceiver;-><init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListener;)V

    invoke-super {p0, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Lcom/androlua/LuaBroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public result([Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->finish()V

    return-void
.end method

.method public varargs runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->setTop(I)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->pushGlobalTable()V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->rawGet(I)I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v5, "debug"

    invoke-virtual {v1, v5}, Lcom/luajava/LuaState;->getGlobal(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v5, "traceback"

    invoke-virtual {v1, v4, v5}, Lcom/luajava/LuaState;->getField(ILjava/lang/String;)I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->remove(I)V

    iget-object v1, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->insert(I)V

    array-length v1, p2

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    sub-int/2addr v3, v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2, v3}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    :cond_1
    :try_start_2
    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/androlua/LuaActivity;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaActivity;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "onError"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaActivity;->runFunc(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->sendMsg(Ljava/lang/String;)V

    return-void
.end method

.method public sendMsg(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/androlua/LuaActivity;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "lua"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/androlua/LuaActivity;->push(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setContentView(Lcom/luajava/LuaObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->setContentView(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-void
.end method

.method public setContentView(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 5

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "loadlayout"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isString()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    goto :goto_0

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "layout may be table or string."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentView(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->setContentView(Ljava/lang/String;Lcom/luajava/LuaObject;)V

    return-void
.end method

.method public setContentView(Ljava/lang/String;Lcom/luajava/LuaObject;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    const-string v1, "loadlayout"

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaActivity;->F:Z

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaActivity;->q:Z

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public setLuaDir(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public setLuaExtDir(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/androlua/LuaActivity;->A:Ljava/lang/String;

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    array-length v5, v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/androlua/LuaActivity;->A:Ljava/lang/String;

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/androlua/LuaActivity;->A:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, v2}, Lcom/androlua/LuaActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaActivity;->A:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_5
    return-void
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androlua/LuaApplication;->setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon.png"

    invoke-virtual {p0, v2}, Lcom/androlua/LuaActivity;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androlua/LuaActivity;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_0
    return-void
.end method

.method public shareFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/androlua/LuaActivity;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p0, v1}, Lcom/androlua/LuaActivity;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/androlua/LuaActivity;->o:Landroid/widget/Toast;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/androlua/LuaActivity;->r:J

    sub-long v6, v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/androlua/LuaActivity;->m:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->o:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/androlua/LuaActivity;->o:Landroid/widget/Toast;

    invoke-virtual {p1, v3}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/androlua/LuaActivity;->m:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/androlua/LuaActivity;->o:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/androlua/LuaActivity;->o:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    iput-wide v0, p0, Lcom/androlua/LuaActivity;->r:J

    return-void
.end method

.method public startService()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/androlua/LuaActivity;->startService(Ljava/lang/String;[Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startService(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->startService(Ljava/lang/String;[Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public startService(Ljava/lang/String;[Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "luaDir"

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "luaPath"

    iget-object v2, p0, Lcom/androlua/LuaActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/LuaActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lua"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    const-string p1, "arg"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    invoke-super {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public startService([Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/androlua/LuaActivity;->startService(Ljava/lang/String;[Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public stopService()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/LuaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public task(JLcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/androlua/LuaActivity;->task(J[Ljava/lang/Object;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(J[Ljava/lang/Object;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;JLcom/luajava/LuaObject;)V

    invoke-virtual {v0, p3}, Lcom/androlua/LuaAsyncTask;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public task(Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/androlua/LuaActivity;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/androlua/LuaActivity;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/androlua/LuaActivity;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/androlua/LuaActivity;->task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public task(Lcom/luajava/LuaObject;[Ljava/lang/Object;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/androlua/LuaAsyncTask;
    .locals 1

    new-instance v0, Lcom/androlua/LuaAsyncTask;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/androlua/LuaAsyncTask;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    invoke-virtual {v0, p2}, Lcom/androlua/LuaAsyncTask;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-object v0
.end method

.method public test(Ljava/lang/String;I)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/androlua/LuaActivity;->k:Lcom/luajava/LuaState;

    invoke-virtual {v3, p1}, Lcom/luajava/LuaState;->LdoString(Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long v2, p1, v0

    return-wide v2
.end method

.method public thread(Lcom/luajava/LuaObject;)Lcom/androlua/LuaThread;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaActivity;->newThread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaThread;->start()V

    return-object p1
.end method

.method public thread(Lcom/luajava/LuaObject;[Ljava/lang/Object;)Lcom/androlua/LuaThread;
    .locals 2

    new-instance v0, Lcom/androlua/LuaThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/androlua/LuaThread;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;Z[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/androlua/LuaThread;->start()V

    return-object v0
.end method

.method public ticker(Lcom/luajava/LuaObject;J)Lcom/androlua/Ticker;
    .locals 2

    new-instance v0, Lcom/androlua/Ticker;

    invoke-direct {v0}, Lcom/androlua/Ticker;-><init>()V

    new-instance v1, Lcom/androlua/LuaActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaActivity$3;-><init>(Lcom/androlua/LuaActivity;Lcom/luajava/LuaObject;)V

    invoke-virtual {v0, v1}, Lcom/androlua/Ticker;->setOnTickListener(Lcom/androlua/Ticker$OnTickListener;)V

    invoke-virtual {v0}, Lcom/androlua/Ticker;->start()V

    invoke-virtual {v0, p2, p3}, Lcom/androlua/Ticker;->setPeriod(J)V

    return-object v0
.end method

.method public timer(Lcom/luajava/LuaObject;J)Lcom/androlua/LuaTimer;
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public timer(Lcom/luajava/LuaObject;JJ)Lcom/androlua/LuaTimer;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 1

    new-instance v0, Lcom/androlua/LuaTimer;

    invoke-direct {v0, p0, p1, p6}, Lcom/androlua/LuaTimer;-><init>(Lcom/androlua/LuaContext;Lcom/luajava/LuaObject;[Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/androlua/LuaTimer;->start(JJ)V

    return-object v0
.end method

.method public timer(Lcom/luajava/LuaObject;J[Ljava/lang/Object;)Lcom/androlua/LuaTimer;
    .locals 7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androlua/LuaActivity;->timer(Lcom/luajava/LuaObject;JJ[Ljava/lang/Object;)Lcom/androlua/LuaTimer;

    move-result-object p1

    return-object p1
.end method

.method public unZipAssets(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    :catch_0
    return-void
.end method

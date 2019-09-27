.class public Lcom/androlua/Welcome;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/Welcome$UpdateTask;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/androlua/LuaApplication;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/Welcome;)J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Welcome;->e:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/androlua/Welcome;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/Welcome;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/androlua/Welcome;)J
    .locals 2

    iget-wide v0, p0, Lcom/androlua/Welcome;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/androlua/Welcome;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkInfo()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/androlua/Welcome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "appInfo"

    invoke-virtual {p0, v4, v0}, Lcom/androlua/Welcome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "versionName"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "versionName"

    invoke-interface {v6, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v7, p0, Lcom/androlua/Welcome;->g:Z

    iput-object v1, p0, Lcom/androlua/Welcome;->h:Ljava/lang/String;

    iput-object v5, p0, Lcom/androlua/Welcome;->i:Ljava/lang/String;

    :cond_0
    const-string v1, "lastUpdateTime"

    const-wide/16 v5, 0x0

    invoke-interface {v4, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-eqz v1, :cond_1

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "lastUpdateTime"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v7, p0, Lcom/androlua/Welcome;->a:Z

    iput-wide v2, p0, Lcom/androlua/Welcome;->e:J

    iput-wide v5, p0, Lcom/androlua/Welcome;->f:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x13

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/androlua/LuaApplication;

    iput-object p1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    iget-object p1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    iget-object p1, p1, Lcom/androlua/LuaApplication;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/Welcome;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    iget-object p1, p1, Lcom/androlua/LuaApplication;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/Welcome;->d:Ljava/lang/String;

    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    const-string v1, "setup.png"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Lcom/androlua/LuaBitmapDrawable;

    iget-object v1, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/androlua/Welcome;->b:Lcom/androlua/LuaApplication;

    const-string v3, "setup.png"

    invoke-virtual {v2, v3}, Lcom/androlua/LuaApplication;->getLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/androlua/LuaBitmapDrawable;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/androlua/Welcome;->checkInfo()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/androlua/Welcome;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/androlua/Welcome;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-direct {p0, v3}, Lcom/androlua/Welcome;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    invoke-static {v3}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/androlua/Welcome;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/androlua/Welcome;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/androlua/Welcome;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/androlua/Welcome;->requestPermissions([Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    new-instance p1, Lcom/androlua/Welcome$UpdateTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/androlua/Welcome$UpdateTask;-><init>(Lcom/androlua/Welcome;Lcom/androlua/Welcome$1;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/androlua/Welcome$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/androlua/Welcome;->startActivity()V

    return-void

    nop

    :array_0
    .array-data 2
        0x50s
        0x6fs
        0x77s
        0x65s
        0x72s
        0x65s
        0x64s
        0x20s
        0x62s
        0x79s
        0x20s
        0x41s
        0x6es
        0x64s
        0x6fs
        0x4cs
        0x75s
        0x61s
        0x2bs
    .end array-data
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    new-instance p1, Lcom/androlua/Welcome$UpdateTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/androlua/Welcome$UpdateTask;-><init>(Lcom/androlua/Welcome;Lcom/androlua/Welcome$1;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/androlua/Welcome$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androlua/Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/androlua/Welcome;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "isVersionChanged"

    iget-boolean v2, p0, Lcom/androlua/Welcome;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "newVersionName"

    iget-object v2, p0, Lcom/androlua/Welcome;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oldVersionName"

    iget-object v2, p0, Lcom/androlua/Welcome;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/androlua/Welcome;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/androlua/Welcome;->finish()V

    return-void
.end method

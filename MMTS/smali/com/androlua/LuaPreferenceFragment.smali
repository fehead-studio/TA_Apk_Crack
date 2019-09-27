.class public Lcom/androlua/LuaPreferenceFragment;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Lcom/luajava/LuaTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private c:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Lcom/luajava/LuaTable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/androlua/LuaPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1}, Lcom/luajava/LuaTable;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/luajava/LuaTable;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v1, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luajava/LuaTable;

    const-wide/16 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lcom/luajava/LuaTable;->getI(J)Lcom/luajava/LuaObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Fist value Must be a Class<Preference>, checked import package."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/androlua/LuaPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {v5}, Lcom/luajava/LuaTable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/luajava/LuaTable$LuaEntry;

    invoke-virtual {v7}, Lcom/luajava/LuaTable$LuaEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_1

    :try_start_1
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/luajava/LuaTable$LuaEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v6, v8, v7}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    invoke-static {v7}, Lcom/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v2}, Lcom/luajava/LuaState;->getContext()Lcom/androlua/LuaContext;

    move-result-object v6

    const-string v7, "LuaPreferenceFragment"

    invoke-interface {v6, v7, v5}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/androlua/LuaPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaPreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->a:Lcom/luajava/LuaTable;

    invoke-direct {p0, p1}, Lcom/androlua/LuaPreferenceFragment;->a(Lcom/luajava/LuaTable;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaPreferenceFragment;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaPreferenceFragment;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaPreferenceFragment;->c:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaPreferenceFragment;->c:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->c:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setPreference(Lcom/luajava/LuaTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaTable<",
            "Ljava/lang/Integer;",
            "Lcom/luajava/LuaTable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/androlua/LuaPreferenceFragment;->a:Lcom/luajava/LuaTable;

    return-void
.end method

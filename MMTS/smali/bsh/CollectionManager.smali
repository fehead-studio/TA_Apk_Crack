.class public Lbsh/CollectionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/CollectionManager$BasicBshIterator;
    }
.end annotation


# static fields
.field private static a:Lbsh/CollectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCollectionManager()Lbsh/CollectionManager;
    .locals 4

    const-class v0, Lbsh/CollectionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbsh/CollectionManager;->a:Lbsh/CollectionManager;

    if-nez v1, :cond_0

    const-string v1, "java.util.Collection"

    invoke-static {v1}, Lbsh/Capabilities;->classExists(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "bsh.collection.CollectionManagerImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsh/CollectionManager;

    sput-object v1, Lbsh/CollectionManager;->a:Lbsh/CollectionManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unable to load CollectionManagerImpl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v1, Lbsh/CollectionManager;->a:Lbsh/CollectionManager;

    if-nez v1, :cond_1

    new-instance v1, Lbsh/CollectionManager;

    invoke-direct {v1}, Lbsh/CollectionManager;-><init>()V

    sput-object v1, Lbsh/CollectionManager;->a:Lbsh/CollectionManager;

    :cond_1
    sget-object v1, Lbsh/CollectionManager;->a:Lbsh/CollectionManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    .locals 1

    new-instance v0, Lbsh/CollectionManager$BasicBshIterator;

    invoke-direct {v0, p1}, Lbsh/CollectionManager$BasicBshIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFromMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isBshIterable(Ljava/lang/Object;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lbsh/CollectionManager;->getBshIterator(Ljava/lang/Object;)Lbsh/BshIterator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMap(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Ljava/util/Hashtable;

    return p1
.end method

.method public putInMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

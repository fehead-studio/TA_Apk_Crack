.class public Lbsh/ExternalNameSpace;
.super Lbsh/NameSpace;


# instance fields
.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "External Map Namespace"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lbsh/ExternalNameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p3, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lbsh/Variable;
    .locals 3

    iget-object v0, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lbsh/NameSpace;->a(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object p1

    move-object p2, p1

    return-object p2

    :cond_0
    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lbsh/NameSpace;->a(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Lbsh/Variable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    check-cast v1, Lbsh/Modifiers;

    invoke-direct {p2, p1, v2, v0, v1}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    :cond_1
    return-object p2
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lbsh/Variable;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p2, Lbsh/Variable;

    invoke-virtual {p0, p2}, Lbsh/ExternalNameSpace;->a(Lbsh/Variable;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lbsh/InterpreterError;

    const-string p2, "unexpected UtilEvalError"

    invoke-direct {p1, p2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_1

    check-cast p2, Lbsh/Primitive;

    invoke-static {p2}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/util/Vector;)V
    .locals 0

    invoke-super {p0, p1}, Lbsh/NameSpace;->a(Ljava/util/Vector;)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lbsh/NameSpace;->clear()V

    iget-object v0, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDeclaredVariables()[Lbsh/Variable;
    .locals 1

    invoke-super {p0}, Lbsh/NameSpace;->getDeclaredVariables()[Lbsh/Variable;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;Z)Lbsh/BshMethod;

    move-result-object p1

    return-object p1
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-super {p0}, Lbsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    invoke-virtual {p0}, Lbsh/ExternalNameSpace;->clear()V

    iput-object p1, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    return-void
.end method

.method public setMethod(Ljava/lang/String;Lbsh/BshMethod;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lbsh/NameSpace;->setMethod(Ljava/lang/String;Lbsh/BshMethod;)V

    return-void
.end method

.method public setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lbsh/NameSpace;->setTypedVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    invoke-virtual {p0, p1, p3}, Lbsh/ExternalNameSpace;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lbsh/NameSpace;->setVariable(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, p1, p2}, Lbsh/ExternalNameSpace;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    iget-object v0, p0, Lbsh/ExternalNameSpace;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

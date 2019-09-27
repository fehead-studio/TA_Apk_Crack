.class public Lcom/luajava/LuaState;
.super Ljava/lang/Object;


# static fields
.field public static final LUAI_MAXSTACK:I = 0xf4240

.field public static final LUA_ERRERR:I = 0x6

.field public static final LUA_ERRGCMM:I = 0x5

.field public static final LUA_ERRMEM:I = 0x4

.field public static final LUA_ERRRUN:I = 0x2

.field public static final LUA_ERRSYNTAX:I = 0x3

.field public static final LUA_GCCOLLECT:I = 0x2

.field public static final LUA_GCCOUNT:I = 0x3

.field public static final LUA_GCCOUNTB:I = 0x4

.field public static final LUA_GCRESTART:I = 0x1

.field public static final LUA_GCSETPAUSE:I = 0x6

.field public static final LUA_GCSETSTEPMUL:I = 0x7

.field public static final LUA_GCSTEP:I = 0x5

.field public static final LUA_GCSTOP:I = 0x0

.field public static final LUA_MULTRET:I = -0x1

.field public static final LUA_OPEQ:I = 0x0

.field public static final LUA_OPLE:I = 0x2

.field public static final LUA_OPLT:I = 0x1

.field public static final LUA_REGISTRYINDEX:I = -0xf4628

.field public static final LUA_RIDX_GLOBALS:I = 0x2

.field public static final LUA_RIDX_LAST:I = 0x2

.field public static final LUA_RIDX_MAINTHREAD:I = 0x1

.field public static final LUA_TBOOLEAN:I = 0x1

.field public static final LUA_TFUNCTION:I = 0x6

.field public static final LUA_TINTEGER:I = 0x9

.field public static final LUA_TLIGHTUSERDATA:I = 0x2

.field public static final LUA_TNIL:I = 0x0

.field public static final LUA_TNONE:I = -0x1

.field public static final LUA_TNUMBER:I = 0x3

.field public static final LUA_TSTRING:I = 0x4

.field public static final LUA_TTABLE:I = 0x5

.field public static final LUA_TTHREAD:I = 0x8

.field public static final LUA_TUSERDATA:I = 0x7

.field public static final LUA_YIELD:I = 0x1

.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private h:J

.field private i:Lcom/androlua/LuaContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Number;

    sput-object v0, Lcom/luajava/LuaState;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Byte;

    sput-object v0, Lcom/luajava/LuaState;->b:Ljava/lang/Class;

    const-class v0, Ljava/lang/Short;

    sput-object v0, Lcom/luajava/LuaState;->c:Ljava/lang/Class;

    const-class v0, Ljava/lang/Integer;

    sput-object v0, Lcom/luajava/LuaState;->d:Ljava/lang/Class;

    const-class v0, Ljava/lang/Long;

    sput-object v0, Lcom/luajava/LuaState;->e:Ljava/lang/Class;

    const-class v0, Ljava/lang/Float;

    sput-object v0, Lcom/luajava/LuaState;->f:Ljava/lang/Class;

    const-class v0, Ljava/lang/Double;

    sput-object v0, Lcom/luajava/LuaState;->g:Ljava/lang/Class;

    const-string v0, "luajava"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/luajava/LuaState;->_newstate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luajava/LuaState;->h:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/luajava/LuaState;->h:J

    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)J

    return-void
.end method

.method private synchronized native _LargError(JILjava/lang/String;)I
.end method

.method private synchronized native _LcallMeta(JILjava/lang/String;)I
.end method

.method private synchronized native _LcheckAny(JI)V
.end method

.method private synchronized native _LcheckInteger(JI)I
.end method

.method private synchronized native _LcheckNumber(JI)D
.end method

.method private synchronized native _LcheckStack(JILjava/lang/String;)V
.end method

.method private synchronized native _LcheckString(JI)Ljava/lang/String;
.end method

.method private synchronized native _LcheckType(JII)V
.end method

.method private synchronized native _LdoFile(JLjava/lang/String;)I
.end method

.method private synchronized native _LdoString(JLjava/lang/String;)I
.end method

.method private synchronized native _LgetMetaField(JILjava/lang/String;)I
.end method

.method private synchronized native _LgetMetatable(JLjava/lang/String;)V
.end method

.method private synchronized native _Lgsub(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native _LloadBuffer(J[BJLjava/lang/String;)I
.end method

.method private synchronized native _LloadFile(JLjava/lang/String;)I
.end method

.method private synchronized native _LloadString(JLjava/lang/String;)I
.end method

.method private synchronized native _LnewMetatable(JLjava/lang/String;)I
.end method

.method private synchronized native _LoptInteger(JII)I
.end method

.method private synchronized native _LoptNumber(JID)D
.end method

.method private synchronized native _LoptString(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native _Lref(JI)I
.end method

.method private synchronized native _LunRef(JII)V
.end method

.method private synchronized native _Lwhere(JI)V
.end method

.method private synchronized native _call(JII)V
.end method

.method private synchronized native _checkStack(JI)I
.end method

.method private synchronized native _close(J)V
.end method

.method private synchronized native _compare(JIII)I
.end method

.method private synchronized native _concat(JI)V
.end method

.method private synchronized native _copy(JII)V
.end method

.method private synchronized native _createTable(JII)V
.end method

.method private synchronized native _dump(JI)[B
.end method

.method private synchronized native _equal(JII)I
.end method

.method private synchronized native _error(J)I
.end method

.method private synchronized native _gc(JII)I
.end method

.method private synchronized native _getField(JILjava/lang/String;)I
.end method

.method private synchronized native _getGlobal(JLjava/lang/String;)I
.end method

.method private synchronized native _getI(JIJ)I
.end method

.method private synchronized native _getMetaTable(JI)I
.end method

.method private synchronized native _getObjectFromUserdata(JI)Ljava/lang/Object;
.end method

.method private synchronized native _getTable(JI)I
.end method

.method private synchronized native _getTop(J)I
.end method

.method private synchronized native _getUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native _getUserValue(JI)I
.end method

.method private synchronized native _insert(JI)V
.end method

.method private synchronized native _isBoolean(JI)I
.end method

.method private synchronized native _isCFunction(JI)I
.end method

.method private synchronized native _isFunction(JI)I
.end method

.method private synchronized native _isInteger(JI)I
.end method

.method private synchronized native _isJavaFunction(JI)Z
.end method

.method private synchronized native _isNil(JI)I
.end method

.method private synchronized native _isNone(JI)I
.end method

.method private synchronized native _isNoneOrNil(JI)I
.end method

.method private synchronized native _isNumber(JI)I
.end method

.method private synchronized native _isObject(JI)Z
.end method

.method private synchronized native _isString(JI)I
.end method

.method private synchronized native _isTable(JI)I
.end method

.method private synchronized native _isThread(JI)I
.end method

.method private synchronized native _isUserdata(JI)I
.end method

.method private synchronized native _isYieldable(J)I
.end method

.method private synchronized native _lessThan(JII)I
.end method

.method private synchronized native _newTable(J)V
.end method

.method private synchronized native _newstate()J
.end method

.method private synchronized native _newthread(J)J
.end method

.method private synchronized native _next(JI)I
.end method

.method private synchronized native _objlen(JI)I
.end method

.method private synchronized native _openBase(J)V
.end method

.method private synchronized native _openDebug(J)V
.end method

.method private synchronized native _openIo(J)V
.end method

.method private synchronized native _openLibs(J)V
.end method

.method private synchronized native _openLuajava(J)V
.end method

.method private synchronized native _openMath(J)V
.end method

.method private synchronized native _openOs(J)V
.end method

.method private synchronized native _openPackage(J)V
.end method

.method private synchronized native _openString(J)V
.end method

.method private synchronized native _openTable(J)V
.end method

.method private synchronized native _pcall(JIII)I
.end method

.method private synchronized native _pop(JI)V
.end method

.method private synchronized native _pushBoolean(JI)V
.end method

.method private synchronized native _pushGlobalTable(J)V
.end method

.method private synchronized native _pushInteger(JJ)V
.end method

.method private synchronized native _pushJavaFunction(JLcom/luajava/JavaFunction;)V
.end method

.method private synchronized native _pushJavaObject(JLjava/lang/Object;)V
.end method

.method private synchronized native _pushLString(J[BI)V
.end method

.method private synchronized native _pushNil(J)V
.end method

.method private synchronized native _pushNumber(JD)V
.end method

.method private synchronized native _pushString(JLjava/lang/String;)V
.end method

.method private synchronized native _pushValue(JI)V
.end method

.method private synchronized native _rawGet(JI)I
.end method

.method private synchronized native _rawGetI(JIJ)I
.end method

.method private synchronized native _rawSet(JI)V
.end method

.method private synchronized native _rawSetI(JIJ)V
.end method

.method private synchronized native _rawequal(JII)I
.end method

.method private synchronized native _rawlen(JI)I
.end method

.method private synchronized native _remove(JI)V
.end method

.method private synchronized native _replace(JI)V
.end method

.method private synchronized native _resume(JJI)I
.end method

.method private synchronized native _rotate(JII)V
.end method

.method private synchronized native _setField(JILjava/lang/String;)V
.end method

.method private synchronized native _setGlobal(JLjava/lang/String;)V
.end method

.method private synchronized native _setI(JIJ)V
.end method

.method private synchronized native _setMetaTable(JI)I
.end method

.method private synchronized native _setTable(JI)V
.end method

.method private synchronized native _setTop(JI)V
.end method

.method private synchronized native _setUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native _setUserValue(JI)V
.end method

.method private synchronized native _status(J)I
.end method

.method private synchronized native _strlen(JI)I
.end method

.method private synchronized native _toBoolean(JI)I
.end method

.method private synchronized native _toBuffer(JI)[B
.end method

.method private synchronized native _toInteger(JI)J
.end method

.method private synchronized native _toNumber(JI)D
.end method

.method private synchronized native _toString(JI)Ljava/lang/String;
.end method

.method private synchronized native _toThread(JI)J
.end method

.method private synchronized native _type(JI)I
.end method

.method private synchronized native _typeName(JI)Ljava/lang/String;
.end method

.method private synchronized native _xmove(JJI)V
.end method

.method private synchronized native _yield(JI)I
.end method

.method public static convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Lcom/luajava/LuaState;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/luajava/LuaState;->d:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_6
    sget-object v0, Lcom/luajava/LuaState;->e:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_7
    sget-object v0, Lcom/luajava/LuaState;->f:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1

    :cond_8
    sget-object v0, Lcom/luajava/LuaState;->g:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    sget-object v0, Lcom/luajava/LuaState;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p1

    :cond_a
    sget-object v0, Lcom/luajava/LuaState;->c:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Short;-><init>(S)V

    return-object p1

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Lcom/luajava/LuaState;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/luajava/LuaState;->d:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_6
    sget-object v0, Lcom/luajava/LuaState;->e:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_7
    sget-object v0, Lcom/luajava/LuaState;->f:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1

    :cond_8
    sget-object v0, Lcom/luajava/LuaState;->g:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    sget-object v0, Lcom/luajava/LuaState;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p1

    :cond_a
    sget-object v0, Lcom/luajava/LuaState;->c:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Short;-><init>(S)V

    return-object p1

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public LargError(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LargError(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LcallMeta(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcallMeta(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LcheckAny(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckAny(JI)V

    return-void
.end method

.method public LcheckInteger(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckInteger(JI)I

    move-result p1

    return p1
.end method

.method public LcheckNumber(I)D
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckNumber(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public LcheckStack(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcheckStack(JILjava/lang/String;)V

    return-void
.end method

.method public LcheckString(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public LcheckType(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcheckType(JII)V

    return-void
.end method

.method public LdoFile(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LdoFile(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LdoString(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LdoString(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LgetMetaField(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LgetMetaField(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LgetMetatable(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LgetMetatable(JLjava/lang/String;)V

    return-void
.end method

.method public Lgsub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_Lgsub(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public LloadBuffer([BLjava/lang/String;)I
    .locals 7

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    array-length v0, p1

    int-to-long v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/luajava/LuaState;->_LloadBuffer(J[BJLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LloadFile(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadFile(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LloadString(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadString(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LnewMetatable(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LnewMetatable(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public LoptInteger(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LoptInteger(JII)I

    move-result p1

    return p1
.end method

.method public LoptNumber(ID)D
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_LoptNumber(JID)D

    move-result-wide p1

    return-wide p1
.end method

.method public LoptString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LoptString(JILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Lref(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_Lref(JI)I

    move-result p1

    return p1
.end method

.method public LunRef(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LunRef(JII)V

    return-void
.end method

.method public Lwhere(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_Lwhere(JI)V

    return-void
.end method

.method public call(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_call(JII)V

    return-void
.end method

.method public checkStack(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_checkStack(JI)I

    move-result p1

    return p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-static {v0, v1}, Lcom/luajava/LuaStateFactory;->removeLuaState(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_close(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/luajava/LuaState;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compare(III)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_compare(JIII)I

    move-result p1

    return p1
.end method

.method public concat(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_concat(JI)V

    return-void
.end method

.method public copy(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_copy(JII)V

    return-void
.end method

.method public createTable(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_createTable(JII)V

    return-void
.end method

.method public dump(I)[B
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_dump(JI)[B

    move-result-object p1

    return-object p1
.end method

.method public equal(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_equal(JII)I

    move-result p1

    return p1
.end method

.method public error()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_error(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "luaState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/luajava/LuaState;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to release luaState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/luajava/LuaState;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gc(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_gc(JII)I

    move-result p1

    return p1
.end method

.method public getContext()Lcom/androlua/LuaContext;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaState;->i:Lcom/androlua/LuaContext;

    return-object v0
.end method

.method public getField(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_getField(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFunction(I)Lcom/luajava/LuaFunction;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFunction(Ljava/lang/String;)Lcom/luajava/LuaFunction;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getGlobal(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getGlobal(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getI(IJ)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_getI(JIJ)I

    move-result p1

    return p1
.end method

.method public getLuaObject(I)Lcom/luajava/LuaObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/luajava/LuaFunction;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;I)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/luajava/LuaTable;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/luajava/LuaObject;
    .locals 5

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/luajava/LuaState;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Object must have the same LuaState as the parent!"

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;
    .locals 1

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushGlobalTable()V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->rawGet(I)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pop(I)V

    return-object p1
.end method

.method public getMetaTable(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getMetaTable(JI)I

    move-result p1

    return p1
.end method

.method public getObjectFromUserdata(I)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getObjectFromUserdata(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPointer()J
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    return-wide v0
.end method

.method public getTable(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getTable(JI)I

    move-result p1

    return p1
.end method

.method public getTop()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_getTop(J)I

    move-result v0

    return v0
.end method

.method public getUpValue(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_getUpValue(JII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserValue(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getUserValue(JI)I

    move-result p1

    return p1
.end method

.method public insert(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_insert(JI)V

    return-void
.end method

.method public isBoolean(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isBoolean(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCFunction(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isCFunction(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized isClosed()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFunction(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isFunction(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInteger(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isInteger(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isJavaFunction(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isJavaFunction(JI)Z

    move-result p1

    return p1
.end method

.method public isNil(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNil(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNone(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNone(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNoneOrNil(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNoneOrNil(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNumber(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNumber(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isObject(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isObject(JI)Z

    move-result p1

    return p1
.end method

.method public isString(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isString(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTable(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isTable(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isThread(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isThread(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUserdata(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isUserdata(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isYieldable()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_isYieldable(J)I

    move-result v0

    return v0
.end method

.method public lessThan(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_lessThan(JII)I

    move-result p1

    return p1
.end method

.method public newTable()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_newTable(J)V

    return-void
.end method

.method public newThread()Lcom/luajava/LuaState;
    .locals 3

    new-instance v0, Lcom/luajava/LuaState;

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v1, v2}, Lcom/luajava/LuaState;->_newthread(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/luajava/LuaState;-><init>(J)V

    invoke-static {v0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)J

    return-object v0
.end method

.method public next(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_next(JI)I

    move-result p1

    return p1
.end method

.method public objLen(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_objlen(JI)I

    move-result p1

    return p1
.end method

.method public openBase()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openBase(J)V

    return-void
.end method

.method public openDebug()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openDebug(J)V

    return-void
.end method

.method public openIo()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openIo(J)V

    return-void
.end method

.method public openLibs()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLibs(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLuajava(J)V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushPrimitive()V

    return-void
.end method

.method public openLuajava()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLuajava(J)V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushPrimitive()V

    return-void
.end method

.method public openMath()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openMath(J)V

    return-void
.end method

.method public openOs()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openOs(J)V

    return-void
.end method

.method public openPackage()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openPackage(J)V

    return-void
.end method

.method public openString()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openString(J)V

    return-void
.end method

.method public openTable()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openTable(J)V

    return-void
.end method

.method public pcall(III)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_pcall(JIII)I

    move-result p1

    return p1
.end method

.method public pop(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pop(JI)V

    return-void
.end method

.method public pushBoolean(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushBoolean(JI)V

    return-void
.end method

.method public pushContext(Lcom/androlua/LuaContext;)V
    .locals 1

    iput-object p1, p0, Lcom/luajava/LuaState;->i:Lcom/androlua/LuaContext;

    const-string v0, "_LuaContext"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const p1, -0xf4628

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->setTable(I)V

    return-void
.end method

.method public declared-synchronized pushGlobalTable()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushGlobalTable(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushInteger(J)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushInteger(JJ)V

    return-void
.end method

.method public pushJavaFunction(Lcom/luajava/JavaFunction;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushJavaFunction(JLcom/luajava/JavaFunction;)V

    return-void
.end method

.method public pushJavaObject(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushJavaObject(JLjava/lang/Object;)V

    return-void
.end method

.method public pushNil()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    return-void
.end method

.method public pushNumber(D)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushNumber(JD)V

    return-void
.end method

.method public pushObjectValue(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushNil()V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushBoolean(Z)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushInteger(J)V

    return-void

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    int-to-long v0, p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushNumber(D)V

    return-void

    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_2

    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    return-void

    :cond_9
    instance-of v0, p1, Lcom/luajava/LuaString;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/luajava/LuaString;

    invoke-virtual {p1}, Lcom/luajava/LuaString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString([B)V

    return-void

    :cond_a
    instance-of v0, p1, Lcom/luajava/JavaFunction;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/luajava/JavaFunction;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaFunction(Lcom/luajava/JavaFunction;)V

    return-void

    :cond_b
    instance-of v0, p1, Lcom/luajava/LuaObject;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    return-void

    :cond_c
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return-void
.end method

.method public pushPrimitive()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "byte"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "char"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "short"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "int"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "long"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "float"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "double"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    return-void
.end method

.method public pushString(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushString(JLjava/lang/String;)V

    return-void
.end method

.method public pushString([B)V
    .locals 3

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/luajava/LuaState;->_pushLString(J[BI)V

    return-void
.end method

.method public pushValue(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushValue(JI)V

    return-void
.end method

.method public rawGet(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawGet(JI)I

    move-result p1

    return p1
.end method

.method public rawGetI(IJ)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawGetI(JIJ)I

    move-result p1

    return p1
.end method

.method public rawLen(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawlen(JI)I

    move-result p1

    return p1
.end method

.method public rawSet(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawSet(JI)V

    return-void
.end method

.method public rawSetI(IJ)V
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawSetI(JIJ)V

    return-void
.end method

.method public rawequal(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_rawequal(JII)I

    move-result p1

    return p1
.end method

.method public remove(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_remove(JI)V

    return-void
.end method

.method public replace(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_replace(JI)V

    return-void
.end method

.method public resume(Lcom/luajava/LuaState;I)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    invoke-virtual {p1}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v3

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_resume(JJI)I

    move-result p1

    return p1
.end method

.method public rotate(II)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_rotate(JII)V

    return-void
.end method

.method public setField(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setField(JILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setGlobal(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setGlobal(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setI(IJ)V
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_setI(JIJ)V

    return-void
.end method

.method public setMetaTable(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setMetaTable(JI)I

    move-result p1

    return p1
.end method

.method public setTable(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setTable(JI)V

    return-void
.end method

.method public setTop(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setTop(JI)V

    return-void
.end method

.method public setUpValue(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setUpValue(JII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setUserValue(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setUserValue(JI)V

    return-void
.end method

.method public status()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_status(J)I

    move-result v0

    return v0
.end method

.method public strLen(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_strlen(JI)I

    move-result p1

    return p1
.end method

.method public toBoolean(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toBoolean(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toBuffer(I)[B
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toBuffer(JI)[B

    move-result-object p1

    return-object p1
.end method

.method public toInteger(I)J
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toInteger(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized toJavaObject(I)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getTable()Lcom/luajava/LuaTable;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isNil(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toNumber(I)D
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toNumber(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toThread(I)Lcom/luajava/LuaState;
    .locals 3

    new-instance v0, Lcom/luajava/LuaState;

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v1, v2, p1}, Lcom/luajava/LuaState;->_toThread(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/luajava/LuaState;-><init>(J)V

    return-object v0
.end method

.method public type(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_type(JI)I

    move-result p1

    return p1
.end method

.method public typeName(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_typeName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public xmove(Lcom/luajava/LuaState;I)V
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->h:J

    iget-wide v3, p1, Lcom/luajava/LuaState;->h:J

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_xmove(JJI)V

    return-void
.end method

.method public yield(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->h:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_yield(JI)I

    move-result p1

    return p1
.end method

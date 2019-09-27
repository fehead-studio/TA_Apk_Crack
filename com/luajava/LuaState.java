package com.luajava;

import android.util.Log;
import com.androlua.LuaContext;
import java.io.PrintStream;

public class LuaState {
  public static final int LUAI_MAXSTACK = 1000000;
  
  public static final int LUA_ERRERR = 6;
  
  public static final int LUA_ERRGCMM = 5;
  
  public static final int LUA_ERRMEM = 4;
  
  public static final int LUA_ERRRUN = 2;
  
  public static final int LUA_ERRSYNTAX = 3;
  
  public static final int LUA_GCCOLLECT = 2;
  
  public static final int LUA_GCCOUNT = 3;
  
  public static final int LUA_GCCOUNTB = 4;
  
  public static final int LUA_GCRESTART = 1;
  
  public static final int LUA_GCSETPAUSE = 6;
  
  public static final int LUA_GCSETSTEPMUL = 7;
  
  public static final int LUA_GCSTEP = 5;
  
  public static final int LUA_GCSTOP = 0;
  
  public static final int LUA_MULTRET = -1;
  
  public static final int LUA_OPEQ = 0;
  
  public static final int LUA_OPLE = 2;
  
  public static final int LUA_OPLT = 1;
  
  public static final int LUA_REGISTRYINDEX = -1001000;
  
  public static final int LUA_RIDX_GLOBALS = 2;
  
  public static final int LUA_RIDX_LAST = 2;
  
  public static final int LUA_RIDX_MAINTHREAD = 1;
  
  public static final int LUA_TBOOLEAN = 1;
  
  public static final int LUA_TFUNCTION = 6;
  
  public static final int LUA_TINTEGER = 9;
  
  public static final int LUA_TLIGHTUSERDATA = 2;
  
  public static final int LUA_TNIL = 0;
  
  public static final int LUA_TNONE = -1;
  
  public static final int LUA_TNUMBER = 3;
  
  public static final int LUA_TSTRING = 4;
  
  public static final int LUA_TTABLE = 5;
  
  public static final int LUA_TTHREAD = 8;
  
  public static final int LUA_TUSERDATA = 7;
  
  public static final int LUA_YIELD = 1;
  
  private static Class<?> a = Number.class;
  
  private static Class<?> b = Byte.class;
  
  private static Class<?> c = Short.class;
  
  private static Class<?> d = Integer.class;
  
  private static Class<?> e = Long.class;
  
  private static Class<?> f = Float.class;
  
  private static Class<?> g = Double.class;
  
  private long h = _newstate();
  
  private LuaContext i;
  
  static  {
    System.loadLibrary("luajava");
  }
  
  protected LuaState() {}
  
  protected LuaState(long paramLong) { LuaStateFactory.insertLuaState(this); }
  
  private native int _LargError(long paramLong, int paramInt, String paramString);
  
  private native int _LcallMeta(long paramLong, int paramInt, String paramString);
  
  private native void _LcheckAny(long paramLong, int paramInt);
  
  private native int _LcheckInteger(long paramLong, int paramInt);
  
  private native double _LcheckNumber(long paramLong, int paramInt);
  
  private native void _LcheckStack(long paramLong, int paramInt, String paramString);
  
  private native String _LcheckString(long paramLong, int paramInt);
  
  private native void _LcheckType(long paramLong, int paramInt1, int paramInt2);
  
  private native int _LdoFile(long paramLong, String paramString);
  
  private native int _LdoString(long paramLong, String paramString);
  
  private native int _LgetMetaField(long paramLong, int paramInt, String paramString);
  
  private native void _LgetMetatable(long paramLong, String paramString);
  
  private native String _Lgsub(long paramLong, String paramString1, String paramString2, String paramString3);
  
  private native int _LloadBuffer(long paramLong1, byte[] paramArrayOfByte, long paramLong2, String paramString);
  
  private native int _LloadFile(long paramLong, String paramString);
  
  private native int _LloadString(long paramLong, String paramString);
  
  private native int _LnewMetatable(long paramLong, String paramString);
  
  private native int _LoptInteger(long paramLong, int paramInt1, int paramInt2);
  
  private native double _LoptNumber(long paramLong, int paramInt, double paramDouble);
  
  private native String _LoptString(long paramLong, int paramInt, String paramString);
  
  private native int _Lref(long paramLong, int paramInt);
  
  private native void _LunRef(long paramLong, int paramInt1, int paramInt2);
  
  private native void _Lwhere(long paramLong, int paramInt);
  
  private native void _call(long paramLong, int paramInt1, int paramInt2);
  
  private native int _checkStack(long paramLong, int paramInt);
  
  private native void _close(long paramLong);
  
  private native int _compare(long paramLong, int paramInt1, int paramInt2, int paramInt3);
  
  private native void _concat(long paramLong, int paramInt);
  
  private native void _copy(long paramLong, int paramInt1, int paramInt2);
  
  private native void _createTable(long paramLong, int paramInt1, int paramInt2);
  
  private native byte[] _dump(long paramLong, int paramInt);
  
  private native int _equal(long paramLong, int paramInt1, int paramInt2);
  
  private native int _error(long paramLong);
  
  private native int _gc(long paramLong, int paramInt1, int paramInt2);
  
  private native int _getField(long paramLong, int paramInt, String paramString);
  
  private native int _getGlobal(long paramLong, String paramString);
  
  private native int _getI(long paramLong1, int paramInt, long paramLong2);
  
  private native int _getMetaTable(long paramLong, int paramInt);
  
  private native Object _getObjectFromUserdata(long paramLong, int paramInt);
  
  private native int _getTable(long paramLong, int paramInt);
  
  private native int _getTop(long paramLong);
  
  private native String _getUpValue(long paramLong, int paramInt1, int paramInt2);
  
  private native int _getUserValue(long paramLong, int paramInt);
  
  private native void _insert(long paramLong, int paramInt);
  
  private native int _isBoolean(long paramLong, int paramInt);
  
  private native int _isCFunction(long paramLong, int paramInt);
  
  private native int _isFunction(long paramLong, int paramInt);
  
  private native int _isInteger(long paramLong, int paramInt);
  
  private native boolean _isJavaFunction(long paramLong, int paramInt);
  
  private native int _isNil(long paramLong, int paramInt);
  
  private native int _isNone(long paramLong, int paramInt);
  
  private native int _isNoneOrNil(long paramLong, int paramInt);
  
  private native int _isNumber(long paramLong, int paramInt);
  
  private native boolean _isObject(long paramLong, int paramInt);
  
  private native int _isString(long paramLong, int paramInt);
  
  private native int _isTable(long paramLong, int paramInt);
  
  private native int _isThread(long paramLong, int paramInt);
  
  private native int _isUserdata(long paramLong, int paramInt);
  
  private native int _isYieldable(long paramLong);
  
  private native int _lessThan(long paramLong, int paramInt1, int paramInt2);
  
  private native void _newTable(long paramLong);
  
  private native long _newstate();
  
  private native long _newthread(long paramLong);
  
  private native int _next(long paramLong, int paramInt);
  
  private native int _objlen(long paramLong, int paramInt);
  
  private native void _openBase(long paramLong);
  
  private native void _openDebug(long paramLong);
  
  private native void _openIo(long paramLong);
  
  private native void _openLibs(long paramLong);
  
  private native void _openLuajava(long paramLong);
  
  private native void _openMath(long paramLong);
  
  private native void _openOs(long paramLong);
  
  private native void _openPackage(long paramLong);
  
  private native void _openString(long paramLong);
  
  private native void _openTable(long paramLong);
  
  private native int _pcall(long paramLong, int paramInt1, int paramInt2, int paramInt3);
  
  private native void _pop(long paramLong, int paramInt);
  
  private native void _pushBoolean(long paramLong, int paramInt);
  
  private native void _pushGlobalTable(long paramLong);
  
  private native void _pushInteger(long paramLong1, long paramLong2);
  
  private native void _pushJavaFunction(long paramLong, JavaFunction paramJavaFunction);
  
  private native void _pushJavaObject(long paramLong, Object paramObject);
  
  private native void _pushLString(long paramLong, byte[] paramArrayOfByte, int paramInt);
  
  private native void _pushNil(long paramLong);
  
  private native void _pushNumber(long paramLong, double paramDouble);
  
  private native void _pushString(long paramLong, String paramString);
  
  private native void _pushValue(long paramLong, int paramInt);
  
  private native int _rawGet(long paramLong, int paramInt);
  
  private native int _rawGetI(long paramLong1, int paramInt, long paramLong2);
  
  private native void _rawSet(long paramLong, int paramInt);
  
  private native void _rawSetI(long paramLong1, int paramInt, long paramLong2);
  
  private native int _rawequal(long paramLong, int paramInt1, int paramInt2);
  
  private native int _rawlen(long paramLong, int paramInt);
  
  private native void _remove(long paramLong, int paramInt);
  
  private native void _replace(long paramLong, int paramInt);
  
  private native int _resume(long paramLong1, long paramLong2, int paramInt);
  
  private native void _rotate(long paramLong, int paramInt1, int paramInt2);
  
  private native void _setField(long paramLong, int paramInt, String paramString);
  
  private native void _setGlobal(long paramLong, String paramString);
  
  private native void _setI(long paramLong1, int paramInt, long paramLong2);
  
  private native int _setMetaTable(long paramLong, int paramInt);
  
  private native void _setTable(long paramLong, int paramInt);
  
  private native void _setTop(long paramLong, int paramInt);
  
  private native String _setUpValue(long paramLong, int paramInt1, int paramInt2);
  
  private native void _setUserValue(long paramLong, int paramInt);
  
  private native int _status(long paramLong);
  
  private native int _strlen(long paramLong, int paramInt);
  
  private native int _toBoolean(long paramLong, int paramInt);
  
  private native byte[] _toBuffer(long paramLong, int paramInt);
  
  private native long _toInteger(long paramLong, int paramInt);
  
  private native double _toNumber(long paramLong, int paramInt);
  
  private native String _toString(long paramLong, int paramInt);
  
  private native long _toThread(long paramLong, int paramInt);
  
  private native int _type(long paramLong, int paramInt);
  
  private native String _typeName(long paramLong, int paramInt);
  
  private native void _xmove(long paramLong1, long paramLong2, int paramInt);
  
  private native int _yield(long paramLong, int paramInt);
  
  public static Number convertLuaNumber(Double paramDouble, Class<?> paramClass) {
    if (paramClass.isPrimitive()) {
      if (paramClass == int.class)
        return Integer.valueOf(paramDouble.intValue()); 
      if (paramClass == long.class)
        return Long.valueOf(paramDouble.longValue()); 
      if (paramClass == float.class)
        return Float.valueOf(paramDouble.floatValue()); 
      if (paramClass == double.class)
        return Double.valueOf(paramDouble.doubleValue()); 
      if (paramClass == byte.class)
        return Byte.valueOf(paramDouble.byteValue()); 
      if (paramClass == short.class)
        return Short.valueOf(paramDouble.shortValue()); 
    } else if (paramClass.isAssignableFrom(a)) {
      if (paramClass.isAssignableFrom(d))
        return new Integer(paramDouble.intValue()); 
      if (paramClass.isAssignableFrom(e))
        return new Long(paramDouble.longValue()); 
      if (paramClass.isAssignableFrom(f))
        return new Float(paramDouble.floatValue()); 
      if (paramClass.isAssignableFrom(g))
        return paramDouble; 
      if (paramClass.isAssignableFrom(b))
        return new Byte(paramDouble.byteValue()); 
      if (paramClass.isAssignableFrom(c))
        return new Short(paramDouble.shortValue()); 
    } 
    return null;
  }
  
  public static Number convertLuaNumber(Long paramLong, Class<?> paramClass) {
    if (paramClass.isPrimitive()) {
      if (paramClass == int.class)
        return Integer.valueOf(paramLong.intValue()); 
      if (paramClass == long.class)
        return Long.valueOf(paramLong.longValue()); 
      if (paramClass == float.class)
        return Float.valueOf(paramLong.floatValue()); 
      if (paramClass == double.class)
        return Double.valueOf(paramLong.doubleValue()); 
      if (paramClass == byte.class)
        return Byte.valueOf(paramLong.byteValue()); 
      if (paramClass == short.class)
        return Short.valueOf(paramLong.shortValue()); 
    } else if (paramClass.isAssignableFrom(a)) {
      if (paramClass.isAssignableFrom(d))
        return new Integer(paramLong.intValue()); 
      if (paramClass.isAssignableFrom(e))
        return new Long(paramLong.longValue()); 
      if (paramClass.isAssignableFrom(f))
        return new Float(paramLong.floatValue()); 
      if (paramClass.isAssignableFrom(g))
        return paramLong; 
      if (paramClass.isAssignableFrom(b))
        return new Byte(paramLong.byteValue()); 
      if (paramClass.isAssignableFrom(c))
        return new Short(paramLong.shortValue()); 
    } 
    return null;
  }
  
  public int LargError(int paramInt, String paramString) { return _LargError(this.h, paramInt, paramString); }
  
  public int LcallMeta(int paramInt, String paramString) { return _LcallMeta(this.h, paramInt, paramString); }
  
  public void LcheckAny(int paramInt) { _LcheckAny(this.h, paramInt); }
  
  public int LcheckInteger(int paramInt) { return _LcheckInteger(this.h, paramInt); }
  
  public double LcheckNumber(int paramInt) { return _LcheckNumber(this.h, paramInt); }
  
  public void LcheckStack(int paramInt, String paramString) { _LcheckStack(this.h, paramInt, paramString); }
  
  public String LcheckString(int paramInt) { return _LcheckString(this.h, paramInt); }
  
  public void LcheckType(int paramInt1, int paramInt2) { _LcheckType(this.h, paramInt1, paramInt2); }
  
  public int LdoFile(String paramString) { return _LdoFile(this.h, paramString); }
  
  public int LdoString(String paramString) { return _LdoString(this.h, paramString); }
  
  public int LgetMetaField(int paramInt, String paramString) { return _LgetMetaField(this.h, paramInt, paramString); }
  
  public void LgetMetatable(String paramString) { _LgetMetatable(this.h, paramString); }
  
  public String Lgsub(String paramString1, String paramString2, String paramString3) { return _Lgsub(this.h, paramString1, paramString2, paramString3); }
  
  public int LloadBuffer(byte[] paramArrayOfByte, String paramString) { return _LloadBuffer(this.h, paramArrayOfByte, paramArrayOfByte.length, paramString); }
  
  public int LloadFile(String paramString) { return _LloadFile(this.h, paramString); }
  
  public int LloadString(String paramString) { return _LloadString(this.h, paramString); }
  
  public int LnewMetatable(String paramString) { return _LnewMetatable(this.h, paramString); }
  
  public int LoptInteger(int paramInt1, int paramInt2) { return _LoptInteger(this.h, paramInt1, paramInt2); }
  
  public double LoptNumber(int paramInt, double paramDouble) { return _LoptNumber(this.h, paramInt, paramDouble); }
  
  public String LoptString(int paramInt, String paramString) { return _LoptString(this.h, paramInt, paramString); }
  
  public int Lref(int paramInt) { return _Lref(this.h, paramInt); }
  
  public void LunRef(int paramInt1, int paramInt2) { _LunRef(this.h, paramInt1, paramInt2); }
  
  public void Lwhere(int paramInt) { _Lwhere(this.h, paramInt); }
  
  public void call(int paramInt1, int paramInt2) { _call(this.h, paramInt1, paramInt2); }
  
  public int checkStack(int paramInt) { return _checkStack(this.h, paramInt); }
  
  public void close() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield h : J
    //   6: invokestatic removeLuaState : (J)V
    //   9: aload_0
    //   10: aload_0
    //   11: getfield h : J
    //   14: invokespecial _close : (J)V
    //   17: aload_0
    //   18: lconst_0
    //   19: putfield h : J
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	25	finally }
  
  public int compare(int paramInt1, int paramInt2, int paramInt3) { return _compare(this.h, paramInt1, paramInt2, paramInt3); }
  
  public void concat(int paramInt) { _concat(this.h, paramInt); }
  
  public void copy(int paramInt1, int paramInt2) { _copy(this.h, paramInt1, paramInt2); }
  
  public void createTable(int paramInt1, int paramInt2) { _createTable(this.h, paramInt1, paramInt2); }
  
  public byte[] dump(int paramInt) { return _dump(this.h, paramInt); }
  
  public int equal(int paramInt1, int paramInt2) { return _equal(this.h, paramInt1, paramInt2); }
  
  public int error() { return _error(this.h); }
  
  protected void finalize() {
    stringBuilder = new StringBuilder();
    stringBuilder.append("finalize: ");
    stringBuilder.append(this.h);
    Log.i("luaState", stringBuilder.toString());
    try {
      close();
      return;
    } catch (Exception stringBuilder) {
      PrintStream printStream = System.err;
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("Unable to release luaState ");
      stringBuilder1.append(this.h);
      printStream.println(stringBuilder1.toString());
      return;
    } 
  }
  
  public int gc(int paramInt1, int paramInt2) { return _gc(this.h, paramInt1, paramInt2); }
  
  public LuaContext getContext() { return this.i; }
  
  public int getField(int paramInt, String paramString) { return _getField(this.h, paramInt, paramString); }
  
  public LuaFunction getFunction(int paramInt) {
    LuaObject luaObject = getLuaObject(paramInt);
    return luaObject.isFunction() ? luaObject.getFunction() : null;
  }
  
  public LuaFunction getFunction(String paramString) {
    LuaObject luaObject = getLuaObject(paramString);
    return luaObject.isFunction() ? luaObject.getFunction() : null;
  }
  
  public int getGlobal(String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield h : J
    //   7: aload_1
    //   8: invokespecial _getGlobal : (JLjava/lang/String;)I
    //   11: istore_2
    //   12: aload_0
    //   13: monitorexit
    //   14: iload_2
    //   15: ireturn
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	16	finally }
  
  public int getI(int paramInt, long paramLong) { return _getI(this.h, paramInt, paramLong); }
  
  public LuaObject getLuaObject(int paramInt) { return isFunction(paramInt) ? new LuaFunction(this, paramInt) : (isTable(paramInt) ? new LuaTable(this, paramInt) : new LuaObject(this, paramInt)); }
  
  public LuaObject getLuaObject(LuaObject paramLuaObject1, LuaObject paramLuaObject2) {
    if (paramLuaObject1.getLuaState().getPointer() != this.h || paramLuaObject1.getLuaState().getPointer() != paramLuaObject2.getLuaState().getPointer())
      throw new LuaException("Object must have the same LuaState as the parent!"); 
    return new LuaObject(paramLuaObject1, paramLuaObject2);
  }
  
  public LuaObject getLuaObject(LuaObject paramLuaObject, Number paramNumber) { return new LuaObject(paramLuaObject, paramNumber); }
  
  public LuaObject getLuaObject(LuaObject paramLuaObject, String paramString) { return new LuaObject(paramLuaObject, paramString); }
  
  public LuaObject getLuaObject(String paramString) {
    pushGlobalTable();
    pushString(paramString);
    rawGet(-2);
    LuaObject luaObject = getLuaObject(-1);
    pop(2);
    return luaObject;
  }
  
  public int getMetaTable(int paramInt) { return _getMetaTable(this.h, paramInt); }
  
  public Object getObjectFromUserdata(int paramInt) { return _getObjectFromUserdata(this.h, paramInt); }
  
  public long getPointer() { return this.h; }
  
  public int getTable(int paramInt) { return _getTable(this.h, paramInt); }
  
  public int getTop() { return _getTop(this.h); }
  
  public String getUpValue(int paramInt1, int paramInt2) { return _getUpValue(this.h, paramInt1, paramInt2); }
  
  public int getUserValue(int paramInt) { return _getUserValue(this.h, paramInt); }
  
  public void insert(int paramInt) { _insert(this.h, paramInt); }
  
  public boolean isBoolean(int paramInt) { return (_isBoolean(this.h, paramInt) != 0); }
  
  public boolean isCFunction(int paramInt) { return (_isCFunction(this.h, paramInt) != 0); }
  
  public boolean isClosed() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield h : J
    //   6: lstore_1
    //   7: lload_1
    //   8: lconst_0
    //   9: lcmp
    //   10: ifne -> 18
    //   13: iconst_1
    //   14: istore_3
    //   15: goto -> 20
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: monitorexit
    //   22: iload_3
    //   23: ireturn
    //   24: astore #4
    //   26: aload_0
    //   27: monitorexit
    //   28: aload #4
    //   30: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	24	finally }
  
  public boolean isFunction(int paramInt) { return (_isFunction(this.h, paramInt) != 0); }
  
  public boolean isInteger(int paramInt) { return (_isInteger(this.h, paramInt) != 0); }
  
  public boolean isJavaFunction(int paramInt) { return _isJavaFunction(this.h, paramInt); }
  
  public boolean isNil(int paramInt) { return (_isNil(this.h, paramInt) != 0); }
  
  public boolean isNone(int paramInt) { return (_isNone(this.h, paramInt) != 0); }
  
  public boolean isNoneOrNil(int paramInt) { return (_isNoneOrNil(this.h, paramInt) != 0); }
  
  public boolean isNumber(int paramInt) { return (_isNumber(this.h, paramInt) != 0); }
  
  public boolean isObject(int paramInt) { return _isObject(this.h, paramInt); }
  
  public boolean isString(int paramInt) { return (_isString(this.h, paramInt) != 0); }
  
  public boolean isTable(int paramInt) { return (_isTable(this.h, paramInt) != 0); }
  
  public boolean isThread(int paramInt) { return (_isThread(this.h, paramInt) != 0); }
  
  public boolean isUserdata(int paramInt) { return (_isUserdata(this.h, paramInt) != 0); }
  
  public int isYieldable() { return _isYieldable(this.h); }
  
  public int lessThan(int paramInt1, int paramInt2) { return _lessThan(this.h, paramInt1, paramInt2); }
  
  public void newTable() { _newTable(this.h); }
  
  public LuaState newThread() {
    LuaState luaState = new LuaState(_newthread(this.h));
    LuaStateFactory.insertLuaState(luaState);
    return luaState;
  }
  
  public int next(int paramInt) { return _next(this.h, paramInt); }
  
  public int objLen(int paramInt) { return _objlen(this.h, paramInt); }
  
  public void openBase() { _openBase(this.h); }
  
  public void openDebug() { _openDebug(this.h); }
  
  public void openIo() { _openIo(this.h); }
  
  public void openLibs() {
    _openLibs(this.h);
    _openLuajava(this.h);
    pushPrimitive();
  }
  
  public void openLuajava() {
    _openLuajava(this.h);
    pushPrimitive();
  }
  
  public void openMath() { _openMath(this.h); }
  
  public void openOs() { _openOs(this.h); }
  
  public void openPackage() { _openPackage(this.h); }
  
  public void openString() { _openString(this.h); }
  
  public void openTable() { _openTable(this.h); }
  
  public int pcall(int paramInt1, int paramInt2, int paramInt3) { return _pcall(this.h, paramInt1, paramInt2, paramInt3); }
  
  public void pop(int paramInt) { _pop(this.h, paramInt); }
  
  public void pushBoolean(boolean paramBoolean) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  public void pushContext(LuaContext paramLuaContext) {
    this.i = paramLuaContext;
    pushString("_LuaContext");
    pushJavaObject(paramLuaContext);
    setTable(-1001000);
  }
  
  public void pushGlobalTable() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield h : J
    //   7: invokespecial _pushGlobalTable : (J)V
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	13	finally }
  
  public void pushInteger(long paramLong) { _pushInteger(this.h, paramLong); }
  
  public void pushJavaFunction(JavaFunction paramJavaFunction) { _pushJavaFunction(this.h, paramJavaFunction); }
  
  public void pushJavaObject(Object paramObject) { _pushJavaObject(this.h, paramObject); }
  
  public void pushNil() { _pushNil(this.h); }
  
  public void pushNumber(double paramDouble) { _pushNumber(this.h, paramDouble); }
  
  public void pushObjectValue(Object paramObject) {
    long l;
    if (paramObject == null) {
      pushNil();
      return;
    } 
    if (paramObject instanceof Boolean) {
      pushBoolean(((Boolean)paramObject).booleanValue());
      return;
    } 
    if (paramObject instanceof Long) {
      l = ((Long)paramObject).longValue();
    } else {
      byte b1;
      if (paramObject instanceof Integer) {
        b1 = ((Integer)paramObject).intValue();
      } else if (paramObject instanceof Short) {
        b1 = ((Short)paramObject).shortValue();
      } else if (paramObject instanceof Character) {
        b1 = ((Character)paramObject).charValue();
      } else if (paramObject instanceof Byte) {
        b1 = ((Byte)paramObject).byteValue();
      } else {
        double d1;
        if (paramObject instanceof Float) {
          d1 = ((Float)paramObject).floatValue();
        } else if (paramObject instanceof Double) {
          d1 = ((Double)paramObject).doubleValue();
        } else {
          if (paramObject instanceof String) {
            pushString((String)paramObject);
            return;
          } 
          if (paramObject instanceof LuaString) {
            pushString(((LuaString)paramObject).toByteArray());
            return;
          } 
          if (paramObject instanceof JavaFunction) {
            pushJavaFunction((JavaFunction)paramObject);
            return;
          } 
          Object object = paramObject;
          if (paramObject instanceof LuaObject) {
            paramObject = (LuaObject)paramObject;
            object = paramObject;
            if (paramObject.getLuaState() == this) {
              paramObject.push();
              return;
            } 
          } 
          pushJavaObject(object);
          return;
        } 
        pushNumber(d1);
        return;
      } 
      l = b1;
    } 
    pushInteger(l);
  }
  
  public void pushPrimitive() {
    pushJavaObject(boolean.class);
    setGlobal("boolean");
    pushJavaObject(byte.class);
    setGlobal("byte");
    pushJavaObject(char.class);
    setGlobal("char");
    pushJavaObject(short.class);
    setGlobal("short");
    pushJavaObject(int.class);
    setGlobal("int");
    pushJavaObject(long.class);
    setGlobal("long");
    pushJavaObject(float.class);
    setGlobal("float");
    pushJavaObject(double.class);
    setGlobal("double");
  }
  
  public void pushString(String paramString) {
    if (paramString == null) {
      _pushNil(this.h);
      return;
    } 
    _pushString(this.h, paramString);
  }
  
  public void pushString(byte[] paramArrayOfByte) {
    if (paramArrayOfByte == null) {
      _pushNil(this.h);
      return;
    } 
    _pushLString(this.h, paramArrayOfByte, paramArrayOfByte.length);
  }
  
  public void pushValue(int paramInt) { _pushValue(this.h, paramInt); }
  
  public int rawGet(int paramInt) { return _rawGet(this.h, paramInt); }
  
  public int rawGetI(int paramInt, long paramLong) { return _rawGetI(this.h, paramInt, paramLong); }
  
  public int rawLen(int paramInt) { return _rawlen(this.h, paramInt); }
  
  public void rawSet(int paramInt) { _rawSet(this.h, paramInt); }
  
  public void rawSetI(int paramInt, long paramLong) { _rawSetI(this.h, paramInt, paramLong); }
  
  public int rawequal(int paramInt1, int paramInt2) { return _rawequal(this.h, paramInt1, paramInt2); }
  
  public void remove(int paramInt) { _remove(this.h, paramInt); }
  
  public void replace(int paramInt) { _replace(this.h, paramInt); }
  
  public int resume(LuaState paramLuaState, int paramInt) { return _resume(this.h, paramLuaState.getPointer(), paramInt); }
  
  public void rotate(int paramInt1, int paramInt2) { _rotate(this.h, paramInt1, paramInt2); }
  
  public void setField(int paramInt, String paramString) { _setField(this.h, paramInt, paramString); }
  
  public void setGlobal(String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield h : J
    //   7: aload_1
    //   8: invokespecial _setGlobal : (JLjava/lang/String;)V
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: astore_1
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_1
    //   18: athrow
    // Exception table:
    //   from	to	target	type
    //   2	11	14	finally }
  
  public void setI(int paramInt, long paramLong) { _setI(this.h, paramInt, paramLong); }
  
  public int setMetaTable(int paramInt) { return _setMetaTable(this.h, paramInt); }
  
  public void setTable(int paramInt) { _setTable(this.h, paramInt); }
  
  public void setTop(int paramInt) { _setTop(this.h, paramInt); }
  
  public String setUpValue(int paramInt1, int paramInt2) { return _setUpValue(this.h, paramInt1, paramInt2); }
  
  public void setUserValue(int paramInt) { _setUserValue(this.h, paramInt); }
  
  public int status() { return _status(this.h); }
  
  public int strLen(int paramInt) { return _strlen(this.h, paramInt); }
  
  public boolean toBoolean(int paramInt) { return (_toBoolean(this.h, paramInt) != 0); }
  
  public byte[] toBuffer(int paramInt) { return _toBuffer(this.h, paramInt); }
  
  public long toInteger(int paramInt) { return _toInteger(this.h, paramInt); }
  
  public Object toJavaObject(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual isBoolean : (I)Z
    //   7: istore_2
    //   8: aconst_null
    //   9: astore_3
    //   10: iload_2
    //   11: ifeq -> 26
    //   14: aload_0
    //   15: iload_1
    //   16: invokevirtual toBoolean : (I)Z
    //   19: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   22: astore_3
    //   23: goto -> 165
    //   26: aload_0
    //   27: iload_1
    //   28: invokevirtual type : (I)I
    //   31: iconst_4
    //   32: if_icmpne -> 44
    //   35: aload_0
    //   36: iload_1
    //   37: invokevirtual toString : (I)Ljava/lang/String;
    //   40: astore_3
    //   41: goto -> 165
    //   44: aload_0
    //   45: iload_1
    //   46: invokevirtual isFunction : (I)Z
    //   49: ifeq -> 64
    //   52: aload_0
    //   53: iload_1
    //   54: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   57: invokevirtual getFunction : ()Lcom/luajava/LuaFunction;
    //   60: astore_3
    //   61: goto -> 165
    //   64: aload_0
    //   65: iload_1
    //   66: invokevirtual isTable : (I)Z
    //   69: ifeq -> 84
    //   72: aload_0
    //   73: iload_1
    //   74: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   77: invokevirtual getTable : ()Lcom/luajava/LuaTable;
    //   80: astore_3
    //   81: goto -> 165
    //   84: aload_0
    //   85: iload_1
    //   86: invokevirtual type : (I)I
    //   89: iconst_3
    //   90: if_icmpne -> 125
    //   93: aload_0
    //   94: iload_1
    //   95: invokevirtual isInteger : (I)Z
    //   98: ifeq -> 113
    //   101: aload_0
    //   102: iload_1
    //   103: invokevirtual toInteger : (I)J
    //   106: invokestatic valueOf : (J)Ljava/lang/Long;
    //   109: astore_3
    //   110: goto -> 165
    //   113: aload_0
    //   114: iload_1
    //   115: invokevirtual toNumber : (I)D
    //   118: invokestatic valueOf : (D)Ljava/lang/Double;
    //   121: astore_3
    //   122: goto -> 165
    //   125: aload_0
    //   126: iload_1
    //   127: invokevirtual isUserdata : (I)Z
    //   130: ifeq -> 159
    //   133: aload_0
    //   134: iload_1
    //   135: invokevirtual isObject : (I)Z
    //   138: ifeq -> 150
    //   141: aload_0
    //   142: iload_1
    //   143: invokevirtual getObjectFromUserdata : (I)Ljava/lang/Object;
    //   146: astore_3
    //   147: goto -> 165
    //   150: aload_0
    //   151: iload_1
    //   152: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   155: astore_3
    //   156: goto -> 165
    //   159: aload_0
    //   160: iload_1
    //   161: invokevirtual isNil : (I)Z
    //   164: pop
    //   165: aload_0
    //   166: monitorexit
    //   167: aload_3
    //   168: areturn
    //   169: astore_3
    //   170: aload_0
    //   171: monitorexit
    //   172: aload_3
    //   173: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	169	finally
    //   14	23	169	finally
    //   26	41	169	finally
    //   44	61	169	finally
    //   64	81	169	finally
    //   84	110	169	finally
    //   113	122	169	finally
    //   125	147	169	finally
    //   150	156	169	finally
    //   159	165	169	finally }
  
  public double toNumber(int paramInt) { return _toNumber(this.h, paramInt); }
  
  public String toString(int paramInt) { return _toString(this.h, paramInt); }
  
  public LuaState toThread(int paramInt) { return new LuaState(_toThread(this.h, paramInt)); }
  
  public int type(int paramInt) { return _type(this.h, paramInt); }
  
  public String typeName(int paramInt) { return _typeName(this.h, paramInt); }
  
  public void xmove(LuaState paramLuaState, int paramInt) { _xmove(this.h, paramLuaState.h, paramInt); }
  
  public int yield(int paramInt) { return _yield(this.h, paramInt); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
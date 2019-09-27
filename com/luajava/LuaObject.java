package com.luajava;

import java.io.PrintStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.StringTokenizer;

public class LuaObject implements Serializable {
  protected int a;
  
  protected final LuaState b;
  
  protected LuaObject(LuaObject paramLuaObject1, LuaObject paramLuaObject2) {
    if (paramLuaObject1.getLuaState() != paramLuaObject2.getLuaState())
      throw new LuaException("LuaStates must be the same!"); 
    synchronized (paramLuaObject1.getLuaState()) {
      if (!paramLuaObject1.isTable() && !paramLuaObject1.isUserdata())
        throw new LuaException("Object parent should be a table or userdata ."); 
      this.b = paramLuaObject1.getLuaState();
      paramLuaObject1.push();
      paramLuaObject2.push();
      this.b.getTable(-2);
      this.b.remove(-2);
      a(-1);
      this.b.pop(1);
      return;
    } 
  }
  
  protected LuaObject(LuaObject paramLuaObject, Number paramNumber) {
    synchronized (paramLuaObject.getLuaState()) {
      this.b = paramLuaObject.getLuaState();
      if (!paramLuaObject.isTable() && !paramLuaObject.isUserdata())
        throw new LuaException("Object parent should be a table or userdata ."); 
      paramLuaObject.push();
      this.b.pushNumber(paramNumber.doubleValue());
      this.b.getTable(-2);
      this.b.remove(-2);
      a(-1);
      this.b.pop(1);
      return;
    } 
  }
  
  protected LuaObject(LuaObject paramLuaObject, String paramString) {
    synchronized (paramLuaObject.getLuaState()) {
      this.b = paramLuaObject.getLuaState();
      if (!paramLuaObject.isTable() && !paramLuaObject.isUserdata())
        throw new LuaException("Object parent should be a table or userdata ."); 
      paramLuaObject.push();
      this.b.pushString(paramString);
      this.b.getTable(-2);
      this.b.remove(-2);
      a(-1);
      this.b.pop(1);
      return;
    } 
  }
  
  protected LuaObject(LuaState paramLuaState) { this.b = paramLuaState; }
  
  protected LuaObject(LuaState paramLuaState, int paramInt) { // Byte code:
    //   0: aload_0
    //   1: invokespecial <init> : ()V
    //   4: aload_1
    //   5: monitorenter
    //   6: aload_0
    //   7: aload_1
    //   8: putfield b : Lcom/luajava/LuaState;
    //   11: aload_0
    //   12: iload_2
    //   13: invokevirtual a : (I)V
    //   16: aload_1
    //   17: monitorexit
    //   18: return
    //   19: astore_3
    //   20: aload_1
    //   21: monitorexit
    //   22: aload_3
    //   23: athrow
    // Exception table:
    //   from	to	target	type
    //   6	18	19	finally
    //   20	22	19	finally }
  
  protected LuaObject(LuaState paramLuaState, String paramString) { // Byte code:
    //   0: aload_0
    //   1: invokespecial <init> : ()V
    //   4: aload_1
    //   5: monitorenter
    //   6: aload_0
    //   7: aload_1
    //   8: putfield b : Lcom/luajava/LuaState;
    //   11: aload_1
    //   12: aload_2
    //   13: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   16: pop
    //   17: aload_0
    //   18: iconst_m1
    //   19: invokevirtual a : (I)V
    //   22: aload_1
    //   23: iconst_1
    //   24: invokevirtual pop : (I)V
    //   27: aload_1
    //   28: monitorexit
    //   29: return
    //   30: astore_2
    //   31: aload_1
    //   32: monitorexit
    //   33: aload_2
    //   34: athrow
    // Exception table:
    //   from	to	target	type
    //   6	29	30	finally
    //   31	33	30	finally }
  
  public LuaObject _call(Object... paramVarArgs) { return _call_aux(paramVarArgs, 1)[0]; }
  
  public LuaObject[] _call_aux(Object[] paramArrayOfObject, int paramInt) {
    synchronized (this.b) {
      byte b1;
      if (!isFunction() && !isTable() && !isUserdata())
        throw new LuaException("Invalid object. Not a function, table or userdata ."); 
      int j = this.b.getTop();
      push();
      if (paramArrayOfObject != null) {
        int k = paramArrayOfObject.length;
        byte b2 = 0;
        while (true) {
          b1 = k;
          if (b2 < k) {
            Object object = paramArrayOfObject[b2];
            this.b.pushObjectValue(object);
            b2++;
            continue;
          } 
          break;
        } 
      } else {
        b1 = 0;
      } 
      int i = this.b.pcall(b1, paramInt, 0);
      if (i != 0) {
        if (this.b.isString(-1)) {
          str = this.b.toString(-1);
          this.b.pop(1);
        } else {
          str = "";
        } 
        if (i == 2) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Runtime error. ");
          stringBuilder.append(str);
          str = stringBuilder;
        } else if (i == 4) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Memory allocation error. ");
          stringBuilder.append(str);
          str = stringBuilder;
        } else if (i == 6) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Error while running the error handler function. ");
          stringBuilder.append(str);
          str = stringBuilder;
        } else {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Lua Error code ");
          stringBuilder.append(i);
          stringBuilder.append(". ");
          stringBuilder.append(str);
          str = stringBuilder.toString();
          throw new LuaException(str);
        } 
        String str = str.toString();
        throw new LuaException(str);
      } 
      i = paramInt;
      if (paramInt == -1)
        i = this.b.getTop() - j; 
      if (this.b.getTop() - j < i)
        throw new LuaException("Invalid Number of Results ."); 
      LuaObject[] arrayOfLuaObject = new LuaObject[i];
      while (i > 0) {
        arrayOfLuaObject[i - 1] = this.b.getLuaObject(-1);
        this.b.pop(1);
        i--;
      } 
      return arrayOfLuaObject;
    } 
  }
  
  protected void a(int paramInt) {
    synchronized (this.b) {
      this.b.pushValue(paramInt);
      this.a = this.b.Lref(-1001000);
      return;
    } 
  }
  
  public Object[] asArray() {
    synchronized (this.b) {
      if (!isTable())
        throw new LuaException("Invalid object. Not a table ."); 
      push();
      int i = this.b.objLen(-1);
      Object object = Array.newInstance(Object.class, i);
      byte b1 = 1;
      while (true) {
        if (b1 <= i) {
          this.b.pushInteger(b1);
          this.b.getTable(-2);
          try {
            Array.set(object, b1 - true, this.b.toJavaObject(-1));
          } catch (LuaException luaException) {}
          this.b.pop(1);
          b1++;
          continue;
        } 
        this.b.pop(1);
        return (Object[])object;
      } 
    } 
  }
  
  public Map asMap(LuaState paramLuaState, Class<?> paramClass, int paramInt) { // Byte code:
    //   0: aload_1
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual isTable : ()Z
    //   6: ifne -> 19
    //   9: new com/luajava/LuaException
    //   12: dup
    //   13: ldc 'Invalid object. Not a table .'
    //   15: invokespecial <init> : (Ljava/lang/String;)V
    //   18: athrow
    //   19: new java/util/HashMap
    //   22: dup
    //   23: invokespecial <init> : ()V
    //   26: astore_2
    //   27: aload_0
    //   28: invokevirtual push : ()V
    //   31: aload_1
    //   32: invokevirtual pushNil : ()V
    //   35: aload_1
    //   36: iload_3
    //   37: invokevirtual next : (I)I
    //   40: istore #4
    //   42: iload #4
    //   44: ifeq -> 71
    //   47: aload_2
    //   48: aload_1
    //   49: bipush #-2
    //   51: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   54: aload_1
    //   55: iconst_m1
    //   56: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   59: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   62: pop
    //   63: aload_1
    //   64: iconst_1
    //   65: invokevirtual pop : (I)V
    //   68: goto -> 35
    //   71: aload_1
    //   72: iconst_1
    //   73: invokevirtual pop : (I)V
    //   76: aload_1
    //   77: monitorexit
    //   78: aload_2
    //   79: areturn
    //   80: astore_2
    //   81: aload_1
    //   82: monitorexit
    //   83: aload_2
    //   84: athrow
    //   85: astore #5
    //   87: goto -> 63
    // Exception table:
    //   from	to	target	type
    //   2	19	80	finally
    //   19	35	80	finally
    //   35	42	80	finally
    //   47	63	85	com/luajava/LuaException
    //   47	63	80	finally
    //   63	68	80	finally
    //   71	78	80	finally
    //   81	83	80	finally }
  
  public Object call(Object... paramVarArgs) { return call_aux(paramVarArgs, 1)[0]; }
  
  public Object[] call_aux(Object[] paramArrayOfObject, int paramInt) {
    synchronized (this.b) {
      byte b1;
      if (!isFunction() && !isTable() && !isUserdata())
        throw new LuaException("Invalid object. Not a function, table or userdata ."); 
      int j = this.b.getTop();
      push();
      if (paramArrayOfObject != null) {
        int k = paramArrayOfObject.length;
        byte b2 = 0;
        while (true) {
          b1 = k;
          if (b2 < k) {
            Object object = paramArrayOfObject[b2];
            this.b.pushObjectValue(object);
            b2++;
            continue;
          } 
          break;
        } 
      } else {
        b1 = 0;
      } 
      int i = this.b.pcall(b1, paramInt, 0);
      if (i != 0) {
        if (this.b.isString(-1)) {
          str = this.b.toString(-1);
          this.b.pop(1);
        } else {
          str = "";
        } 
        if (i == 2) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Runtime error. ");
          stringBuilder.append(str);
          str = stringBuilder;
        } else if (i == 4) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Memory allocation error. ");
          stringBuilder.append(str);
          str = stringBuilder;
        } else if (i == 6) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Error while running the error handler function. ");
          stringBuilder.append(str);
          str = stringBuilder;
        } else {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("Lua Error code ");
          stringBuilder.append(i);
          stringBuilder.append(". ");
          stringBuilder.append(str);
          str = stringBuilder.toString();
          throw new LuaException(str);
        } 
        String str = str.toString();
        throw new LuaException(str);
      } 
      i = paramInt;
      if (paramInt == -1)
        i = this.b.getTop() - j; 
      if (this.b.getTop() - j < i)
        throw new LuaException("Invalid Number of Results ."); 
      paramArrayOfObject = new Object[i];
      while (i > 0) {
        paramArrayOfObject[i - 1] = this.b.toJavaObject(-1);
        this.b.pop(1);
        i--;
      } 
      return paramArrayOfObject;
    } 
  }
  
  public Object createProxy(Class paramClass) {
    synchronized (this.b) {
      if (!isTable() && !isFunction())
        throw new LuaException("Invalid Object. Must be Table or Function."); 
      if (isFunction() && paramClass.getMethods().length != 1)
        throw new LuaException("Invalid Object. Must be a interface Method of Function."); 
      if (isTable() && getTable().isList())
        throw new LuaException("Invalid Object. Must be Table is Not Array."); 
      LuaInvocationHandler luaInvocationHandler = new LuaInvocationHandler(this);
      return Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, luaInvocationHandler);
    } 
  }
  
  public Object createProxy(String paramString) {
    synchronized (this.b) {
      if (!isTable())
        throw new LuaException("Invalid Object. Must be Table."); 
      StringTokenizer stringTokenizer = new StringTokenizer(paramString, ",");
      Class[] arrayOfClass = new Class[stringTokenizer.countTokens()];
      for (byte b1 = 0; stringTokenizer.hasMoreTokens(); b1++)
        arrayOfClass[b1] = Class.forName(stringTokenizer.nextToken()); 
      LuaInvocationHandler luaInvocationHandler = new LuaInvocationHandler(this);
      return Proxy.newProxyInstance(getClass().getClassLoader(), arrayOfClass, luaInvocationHandler);
    } 
  }
  
  public byte[] dump() {
    synchronized (this.b) {
      if (!isFunction())
        throw new LuaException("Invalid object. Not a function ."); 
      push();
      byte[] arrayOfByte = this.b.dump(-1);
      this.b.pop(1);
      return arrayOfByte;
    } 
  }
  
  protected void finalize() {
    try {
      synchronized (this.b) {
        if (this.b.getPointer() != 0L)
          this.b.LunRef(-1001000, this.a); 
        return;
      } 
    } catch (Exception exception) {
      PrintStream printStream = System.err;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Unable to release object ");
      stringBuilder.append(this.a);
      printStream.println(stringBuilder.toString());
      return;
    } 
  }
  
  public boolean getBoolean() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.toBoolean(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public LuaObject getField(String paramString) { return this.b.getLuaObject(this, paramString); }
  
  public LuaFunction<?> getFunction() {
    synchronized (this.b) {
      push();
      LuaFunction luaFunction = new LuaFunction(this.b, -1);
      this.b.pop(1);
      return luaFunction;
    } 
  }
  
  public LuaObject getI(long paramLong) { return this.b.getLuaObject(this, Long.valueOf(paramLong)); }
  
  public long getInteger() {
    synchronized (this.b) {
      push();
      long l = this.b.toInteger(-1);
      this.b.pop(1);
      return l;
    } 
  }
  
  public LuaState getLuaState() { return this.b; }
  
  public double getNumber() {
    synchronized (this.b) {
      push();
      double d = this.b.toNumber(-1);
      this.b.pop(1);
      return d;
    } 
  }
  
  public Object getObject() {
    synchronized (this.b) {
      push();
      Object object = this.b.getObjectFromUserdata(-1);
      this.b.pop(1);
      return object;
    } 
  }
  
  public String getString() {
    synchronized (this.b) {
      push();
      String str = this.b.toString(-1);
      this.b.pop(1);
      return str;
    } 
  }
  
  public LuaTable<?, ?> getTable() {
    synchronized (this.b) {
      push();
      LuaTable luaTable = new LuaTable(this.b, -1);
      this.b.pop(1);
      return luaTable;
    } 
  }
  
  public boolean isBoolean() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isBoolean(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isFunction() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isFunction(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isInteger() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isInteger(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isJavaFunction() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isJavaFunction(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isJavaObject() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isObject(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isNil() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isNil(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isNumber() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isNumber(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isString() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isString(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isTable() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isTable(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public boolean isUserdata() {
    synchronized (this.b) {
      push();
      boolean bool = this.b.isUserdata(-1);
      this.b.pop(1);
      return bool;
    } 
  }
  
  public void pop() { this.b.pop(1); }
  
  public void push() { this.b.rawGetI(-1001000, this.a); }
  
  public void setField(String paramString, Object paramObject) {
    push();
    try {
      this.b.pushObjectValue(paramObject);
    } catch (LuaException paramObject) {
      this.b.pushNil();
    } 
    this.b.setField(-2, paramString);
    this.b.pop(1);
  }
  
  public void setI(long paramLong, Object paramObject) {
    push();
    try {
      this.b.pushObjectValue(paramObject);
    } catch (LuaException paramObject) {
      this.b.pushNil();
    } 
    this.b.setI(-2, paramLong);
    this.b.pop(1);
  }
  
  public String toString() {
    synchronized (this.b) {
      if (isNil())
        return "nil"; 
      if (isBoolean()) {
        boolean bool = getBoolean();
        return String.valueOf(bool);
      } 
      if (isNumber()) {
        double d = getNumber();
        return String.valueOf(d);
      } 
      if (isString())
        return getString(); 
      if (isFunction())
        return "Lua Function"; 
      if (isJavaObject())
        return getObject().toString(); 
      if (isUserdata())
        return "Userdata"; 
      if (isTable())
        return "Lua Table"; 
      if (isJavaFunction())
        return "Java Function"; 
      return null;
    } 
  }
  
  public int type() {
    synchronized (this.b) {
      push();
      int i = this.b.type(-1);
      this.b.pop(1);
      return i;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
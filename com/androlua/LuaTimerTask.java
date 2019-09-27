package com.androlua;

import com.androlua.util.TimerTaskX;
import com.luajava.JavaFunction;
import com.luajava.LuaException;
import com.luajava.LuaObject;
import com.luajava.LuaState;
import java.util.regex.Pattern;

public class LuaTimerTask extends TimerTaskX {
  private LuaState a;
  
  private LuaContext g;
  
  private String h;
  
  private Object[] i = new Object[0];
  
  private boolean j = true;
  
  private byte[] k;
  
  public LuaTimerTask(LuaContext paramLuaContext, LuaObject paramLuaObject) { this(paramLuaContext, paramLuaObject, null); }
  
  public LuaTimerTask(LuaContext paramLuaContext, LuaObject paramLuaObject, Object[] paramArrayOfObject) {
    this.g = paramLuaContext;
    if (paramArrayOfObject != null)
      this.i = paramArrayOfObject; 
    this.k = paramLuaObject.dump();
  }
  
  public LuaTimerTask(LuaContext paramLuaContext, String paramString) { this(paramLuaContext, paramString, null); }
  
  public LuaTimerTask(LuaContext paramLuaContext, String paramString, Object[] paramArrayOfObject) {
    this.g = paramLuaContext;
    this.h = paramString;
    if (paramArrayOfObject != null)
      this.i = paramArrayOfObject; 
  }
  
  private String a(int paramInt) {
    StringBuilder stringBuilder;
    switch (paramInt) {
      default:
        stringBuilder = new StringBuilder();
        stringBuilder.append("Unknown error ");
        stringBuilder.append(paramInt);
        return stringBuilder.toString();
      case 6:
        return "error error";
      case 5:
        return "GC error";
      case 4:
        return "Out of memory";
      case 3:
        return "Syntax error";
      case 2:
        return "Runtime error";
      case 1:
        break;
    } 
    return "Yield error";
  }
  
  private void a(String paramString, Object... paramVarArgs) {
    try {
      if (Pattern.matches("^\\w+$", paramString)) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(paramString);
        stringBuilder.append(".lua");
        doAsset(stringBuilder.toString(), paramVarArgs);
        return;
      } 
      if (Pattern.matches("^[\\w\\.\\_/]+$", paramString)) {
        this.a.getGlobal("luajava");
        this.a.pushString(this.g.getLuaDir());
        this.a.setField(-2, "luadir");
        this.a.pushString(paramString);
        this.a.setField(-2, "luapath");
        this.a.pop(1);
        b(paramString, paramVarArgs);
        return;
      } 
      c(paramString, paramVarArgs);
      return;
    } catch (Exception paramString) {
      this.g.sendError(toString(), paramString);
      return;
    } 
  }
  
  private void a(byte[] paramArrayOfByte, Object... paramVarArgs) {
    this.a.setTop(0);
    int n = this.a.LloadBuffer(paramArrayOfByte, "TimerTask");
    int m = n;
    if (n == 0) {
      this.a.getGlobal("debug");
      this.a.getField(-1, "traceback");
      this.a.remove(-2);
      this.a.insert(-2);
      n = paramVarArgs.length;
      for (m = 0; m < n; m++)
        this.a.pushObjectValue(paramVarArgs[m]); 
      n = this.a.pcall(n, 0, -2 - n);
      m = n;
      if (n == 0)
        return; 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(m));
    stringBuilder.append(": ");
    stringBuilder.append(this.a.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  private void b() { // Byte code:
    //   0: aload_0
    //   1: invokestatic newLuaState : ()Lcom/luajava/LuaState;
    //   4: putfield a : Lcom/luajava/LuaState;
    //   7: aload_0
    //   8: getfield a : Lcom/luajava/LuaState;
    //   11: invokevirtual openLibs : ()V
    //   14: aload_0
    //   15: getfield a : Lcom/luajava/LuaState;
    //   18: aload_0
    //   19: getfield g : Lcom/androlua/LuaContext;
    //   22: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   25: aload_0
    //   26: getfield g : Lcom/androlua/LuaContext;
    //   29: instanceof com/androlua/LuaActivity
    //   32: ifeq -> 51
    //   35: aload_0
    //   36: getfield a : Lcom/luajava/LuaState;
    //   39: astore_1
    //   40: ldc 'activity'
    //   42: astore_2
    //   43: aload_1
    //   44: aload_2
    //   45: invokevirtual setGlobal : (Ljava/lang/String;)V
    //   48: goto -> 72
    //   51: aload_0
    //   52: getfield g : Lcom/androlua/LuaContext;
    //   55: instanceof com/androlua/LuaService
    //   58: ifeq -> 72
    //   61: aload_0
    //   62: getfield a : Lcom/luajava/LuaState;
    //   65: astore_1
    //   66: ldc 'service'
    //   68: astore_2
    //   69: goto -> 43
    //   72: aload_0
    //   73: getfield a : Lcom/luajava/LuaState;
    //   76: aload_0
    //   77: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   80: aload_0
    //   81: getfield a : Lcom/luajava/LuaState;
    //   84: ldc 'this'
    //   86: invokevirtual setGlobal : (Ljava/lang/String;)V
    //   89: aload_0
    //   90: getfield a : Lcom/luajava/LuaState;
    //   93: aload_0
    //   94: getfield g : Lcom/androlua/LuaContext;
    //   97: invokevirtual pushContext : (Lcom/androlua/LuaContext;)V
    //   100: new com/androlua/LuaPrint
    //   103: dup
    //   104: aload_0
    //   105: getfield g : Lcom/androlua/LuaContext;
    //   108: aload_0
    //   109: getfield a : Lcom/luajava/LuaState;
    //   112: invokespecial <init> : (Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V
    //   115: ldc 'print'
    //   117: invokevirtual register : (Ljava/lang/String;)V
    //   120: aload_0
    //   121: getfield a : Lcom/luajava/LuaState;
    //   124: ldc 'package'
    //   126: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   129: pop
    //   130: aload_0
    //   131: getfield a : Lcom/luajava/LuaState;
    //   134: aload_0
    //   135: getfield g : Lcom/androlua/LuaContext;
    //   138: invokeinterface getLuaLpath : ()Ljava/lang/String;
    //   143: invokevirtual pushString : (Ljava/lang/String;)V
    //   146: aload_0
    //   147: getfield a : Lcom/luajava/LuaState;
    //   150: bipush #-2
    //   152: ldc 'path'
    //   154: invokevirtual setField : (ILjava/lang/String;)V
    //   157: aload_0
    //   158: getfield a : Lcom/luajava/LuaState;
    //   161: aload_0
    //   162: getfield g : Lcom/androlua/LuaContext;
    //   165: invokeinterface getLuaCpath : ()Ljava/lang/String;
    //   170: invokevirtual pushString : (Ljava/lang/String;)V
    //   173: aload_0
    //   174: getfield a : Lcom/luajava/LuaState;
    //   177: bipush #-2
    //   179: ldc 'cpath'
    //   181: invokevirtual setField : (ILjava/lang/String;)V
    //   184: aload_0
    //   185: getfield a : Lcom/luajava/LuaState;
    //   188: iconst_1
    //   189: invokevirtual pop : (I)V
    //   192: new com/androlua/LuaTimerTask$1
    //   195: dup
    //   196: aload_0
    //   197: aload_0
    //   198: getfield a : Lcom/luajava/LuaState;
    //   201: invokespecial <init> : (Lcom/androlua/LuaTimerTask;Lcom/luajava/LuaState;)V
    //   204: ldc 'set'
    //   206: invokevirtual register : (Ljava/lang/String;)V
    //   209: new com/androlua/LuaTimerTask$2
    //   212: dup
    //   213: aload_0
    //   214: aload_0
    //   215: getfield a : Lcom/luajava/LuaState;
    //   218: invokespecial <init> : (Lcom/androlua/LuaTimerTask;Lcom/luajava/LuaState;)V
    //   221: ldc 'call'
    //   223: invokevirtual register : (Ljava/lang/String;)V
    //   226: return }
  
  private void b(String paramString, Object... paramVarArgs) {
    this.a.setTop(0);
    int n = this.a.LloadFile(paramString);
    int m = n;
    if (n == 0) {
      this.a.getGlobal("debug");
      this.a.getField(-1, "traceback");
      this.a.remove(-2);
      this.a.insert(-2);
      n = paramVarArgs.length;
      for (m = 0; m < n; m++)
        this.a.pushObjectValue(paramVarArgs[m]); 
      n = this.a.pcall(n, 0, -2 - n);
      m = n;
      if (n == 0)
        return; 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(m));
    stringBuilder.append(": ");
    stringBuilder.append(this.a.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  private void c(String paramString, Object... paramVarArgs) {
    this.a.setTop(0);
    int n = this.a.LloadString(paramString);
    int m = n;
    if (n == 0) {
      this.a.getGlobal("debug");
      this.a.getField(-1, "traceback");
      this.a.remove(-2);
      this.a.insert(-2);
      n = paramVarArgs.length;
      for (m = 0; m < n; m++)
        this.a.pushObjectValue(paramVarArgs[m]); 
      n = this.a.pcall(n, 0, -2 - n);
      m = n;
      if (n == 0)
        return; 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(m));
    stringBuilder.append(": ");
    stringBuilder.append(this.a.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  private void d(String paramString, Object... paramVarArgs) {
    try {
      LuaState luaState = this.a;
      int m = 0;
      luaState.setTop(0);
      this.a.getGlobal(paramString);
      if (this.a.isFunction(-1)) {
        this.a.getGlobal("debug");
        this.a.getField(-1, "traceback");
        this.a.remove(-2);
        this.a.insert(-2);
        int n = paramVarArgs.length;
        while (m < n) {
          this.a.pushObjectValue(paramVarArgs[m]);
          m++;
        } 
        m = this.a.pcall(n, 1, -2 - n);
        if (m == 0)
          return; 
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a(m));
        stringBuilder.append(": ");
        stringBuilder.append(this.a.toString(-1));
        throw new LuaException(stringBuilder.toString());
      } 
    } catch (LuaException paramVarArgs) {
      LuaContext luaContext = this.g;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(toString());
      stringBuilder.append(" ");
      stringBuilder.append(paramString);
      luaContext.sendError(stringBuilder.toString(), paramVarArgs);
    } 
  }
  
  public boolean cancel() { return super.cancel(); }
  
  public void doAsset(String paramString, Object... paramVarArgs) {
    byte[] arrayOfByte = LuaUtil.readAsset(this.g.getContext(), paramString);
    this.a.setTop(0);
    int n = this.a.LloadBuffer(arrayOfByte, paramString);
    int m = n;
    if (n == 0) {
      this.a.getGlobal("debug");
      this.a.getField(-1, "traceback");
      this.a.remove(-2);
      this.a.insert(-2);
      n = paramVarArgs.length;
      for (m = 0; m < n; m++)
        this.a.pushObjectValue(paramVarArgs[m]); 
      n = this.a.pcall(n, 0, -2 - n);
      m = n;
      if (n == 0)
        return; 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(m));
    stringBuilder.append(": ");
    stringBuilder.append(this.a.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  public Object get(String paramString) {
    this.a.getGlobal(paramString);
    return this.a.toJavaObject(-1);
  }
  
  public boolean isEnabled() { return this.j; }
  
  public void run() {
    if (!this.j)
      return; 
    try {
      Object[] arrayOfObject;
      String str;
      if (this.a == null) {
        b();
        if (this.k != null) {
          str = this.k;
          arrayOfObject = this.i;
        } else {
          str = this.h;
          arrayOfObject = this.i;
          a(str, arrayOfObject);
        } 
      } else {
        this.a.getGlobal("run");
        if (!this.a.isNil(-1)) {
          d("run", new Object[0]);
        } else {
          if (this.k != null) {
            str = this.k;
            arrayOfObject = this.i;
          } else {
            str = this.h;
            arrayOfObject = this.i;
            a(str, arrayOfObject);
          } 
          a(str, arrayOfObject);
        } 
        this.a.gc(2, 1);
        System.gc();
      } 
      a(str, arrayOfObject);
    } catch (LuaException luaException) {
      this.g.sendError(toString(), luaException);
    } 
    this.a.gc(2, 1);
    System.gc();
  }
  
  public void set(String paramString, Object paramObject) {
    this.a.pushObjectValue(paramObject);
    this.a.setGlobal(paramString);
  }
  
  public void setArg(LuaObject paramLuaObject) { this.i = paramLuaObject.asArray(); }
  
  public void setArg(Object[] paramArrayOfObject) { this.i = paramArrayOfObject; }
  
  public void setEnabled(boolean paramBoolean) { this.j = paramBoolean; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaTimerTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
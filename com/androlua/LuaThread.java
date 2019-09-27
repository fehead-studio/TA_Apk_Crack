package com.androlua;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.luajava.JavaFunction;
import com.luajava.LuaException;
import com.luajava.LuaMetaTable;
import com.luajava.LuaObject;
import com.luajava.LuaState;
import java.util.regex.Pattern;

public class LuaThread extends Thread implements LuaGcable, LuaMetaTable, Runnable {
  private boolean a;
  
  private LuaState b;
  
  private Handler c;
  
  private LuaContext d;
  
  private boolean e;
  
  private String f;
  
  private Object[] g = new Object[0];
  
  private byte[] h;
  
  public boolean isRun = false;
  
  public LuaThread(LuaContext paramLuaContext, LuaObject paramLuaObject) { this(paramLuaContext, paramLuaObject, false, null); }
  
  public LuaThread(LuaContext paramLuaContext, LuaObject paramLuaObject, boolean paramBoolean) { this(paramLuaContext, paramLuaObject, paramBoolean, null); }
  
  public LuaThread(LuaContext paramLuaContext, LuaObject paramLuaObject, boolean paramBoolean, Object[] paramArrayOfObject) {
    this.d = paramLuaContext;
    if (paramArrayOfObject != null)
      this.g = paramArrayOfObject; 
    this.e = paramBoolean;
    this.h = paramLuaObject.dump();
  }
  
  public LuaThread(LuaContext paramLuaContext, LuaObject paramLuaObject, Object[] paramArrayOfObject) { this(paramLuaContext, paramLuaObject, false, paramArrayOfObject); }
  
  public LuaThread(LuaContext paramLuaContext, String paramString) { this(paramLuaContext, paramString, false, null); }
  
  public LuaThread(LuaContext paramLuaContext, String paramString, boolean paramBoolean) { this(paramLuaContext, paramString, paramBoolean, null); }
  
  public LuaThread(LuaContext paramLuaContext, String paramString, boolean paramBoolean, Object[] paramArrayOfObject) {
    paramLuaContext.regGc(this);
    this.d = paramLuaContext;
    this.f = paramString;
    this.e = paramBoolean;
    if (paramArrayOfObject != null)
      this.g = paramArrayOfObject; 
  }
  
  public LuaThread(LuaContext paramLuaContext, String paramString, Object[] paramArrayOfObject) { this(paramLuaContext, paramString, false, paramArrayOfObject); }
  
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
  
  private void a() { // Byte code:
    //   0: aload_0
    //   1: invokestatic newLuaState : ()Lcom/luajava/LuaState;
    //   4: putfield b : Lcom/luajava/LuaState;
    //   7: aload_0
    //   8: getfield b : Lcom/luajava/LuaState;
    //   11: invokevirtual openLibs : ()V
    //   14: aload_0
    //   15: getfield b : Lcom/luajava/LuaState;
    //   18: aload_0
    //   19: getfield d : Lcom/androlua/LuaContext;
    //   22: invokeinterface getContext : ()Landroid/content/Context;
    //   27: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   30: aload_0
    //   31: getfield d : Lcom/androlua/LuaContext;
    //   34: instanceof com/androlua/LuaActivity
    //   37: ifeq -> 56
    //   40: aload_0
    //   41: getfield b : Lcom/luajava/LuaState;
    //   44: astore_1
    //   45: ldc 'activity'
    //   47: astore_2
    //   48: aload_1
    //   49: aload_2
    //   50: invokevirtual setGlobal : (Ljava/lang/String;)V
    //   53: goto -> 77
    //   56: aload_0
    //   57: getfield d : Lcom/androlua/LuaContext;
    //   60: instanceof com/androlua/LuaService
    //   63: ifeq -> 77
    //   66: aload_0
    //   67: getfield b : Lcom/luajava/LuaState;
    //   70: astore_1
    //   71: ldc 'service'
    //   73: astore_2
    //   74: goto -> 48
    //   77: aload_0
    //   78: getfield b : Lcom/luajava/LuaState;
    //   81: aload_0
    //   82: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   85: aload_0
    //   86: getfield b : Lcom/luajava/LuaState;
    //   89: ldc 'this'
    //   91: invokevirtual setGlobal : (Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield b : Lcom/luajava/LuaState;
    //   98: aload_0
    //   99: getfield d : Lcom/androlua/LuaContext;
    //   102: invokevirtual pushContext : (Lcom/androlua/LuaContext;)V
    //   105: new com/androlua/LuaPrint
    //   108: dup
    //   109: aload_0
    //   110: getfield d : Lcom/androlua/LuaContext;
    //   113: aload_0
    //   114: getfield b : Lcom/luajava/LuaState;
    //   117: invokespecial <init> : (Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V
    //   120: ldc 'print'
    //   122: invokevirtual register : (Ljava/lang/String;)V
    //   125: aload_0
    //   126: getfield b : Lcom/luajava/LuaState;
    //   129: ldc 'package'
    //   131: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   134: pop
    //   135: aload_0
    //   136: getfield b : Lcom/luajava/LuaState;
    //   139: aload_0
    //   140: getfield d : Lcom/androlua/LuaContext;
    //   143: invokeinterface getLuaLpath : ()Ljava/lang/String;
    //   148: invokevirtual pushString : (Ljava/lang/String;)V
    //   151: aload_0
    //   152: getfield b : Lcom/luajava/LuaState;
    //   155: bipush #-2
    //   157: ldc 'path'
    //   159: invokevirtual setField : (ILjava/lang/String;)V
    //   162: aload_0
    //   163: getfield b : Lcom/luajava/LuaState;
    //   166: aload_0
    //   167: getfield d : Lcom/androlua/LuaContext;
    //   170: invokeinterface getLuaCpath : ()Ljava/lang/String;
    //   175: invokevirtual pushString : (Ljava/lang/String;)V
    //   178: aload_0
    //   179: getfield b : Lcom/luajava/LuaState;
    //   182: bipush #-2
    //   184: ldc 'cpath'
    //   186: invokevirtual setField : (ILjava/lang/String;)V
    //   189: aload_0
    //   190: getfield b : Lcom/luajava/LuaState;
    //   193: iconst_1
    //   194: invokevirtual pop : (I)V
    //   197: new com/androlua/LuaThread$2
    //   200: dup
    //   201: aload_0
    //   202: aload_0
    //   203: getfield b : Lcom/luajava/LuaState;
    //   206: invokespecial <init> : (Lcom/androlua/LuaThread;Lcom/luajava/LuaState;)V
    //   209: ldc 'set'
    //   211: invokevirtual register : (Ljava/lang/String;)V
    //   214: new com/androlua/LuaThread$3
    //   217: dup
    //   218: aload_0
    //   219: aload_0
    //   220: getfield b : Lcom/luajava/LuaState;
    //   223: invokespecial <init> : (Lcom/androlua/LuaThread;Lcom/luajava/LuaState;)V
    //   226: ldc 'call'
    //   228: invokevirtual register : (Ljava/lang/String;)V
    //   231: return }
  
  private void a(String paramString, Object paramObject) {
    try {
      this.b.pushObjectValue(paramObject);
      this.b.setGlobal(paramString);
      return;
    } catch (LuaException paramString) {
      this.d.sendError(toString(), paramString);
      return;
    } 
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
        this.b.getGlobal("luajava");
        this.b.pushString(this.d.getLuaDir());
        this.b.setField(-2, "luadir");
        this.b.pushString(paramString);
        this.b.setField(-2, "luapath");
        this.b.pop(1);
        b(paramString, paramVarArgs);
        return;
      } 
      c(paramString, paramVarArgs);
      return;
    } catch (Exception paramString) {
      this.d.sendError(toString(), paramString);
      quit();
      return;
    } 
  }
  
  private void a(byte[] paramArrayOfByte, Object... paramVarArgs) {
    try {
      this.b.setTop(0);
      int j = this.b.LloadBuffer(paramArrayOfByte, "TimerTask");
      int i = j;
      if (j == 0) {
        this.b.getGlobal("debug");
        this.b.getField(-1, "traceback");
        this.b.remove(-2);
        this.b.insert(-2);
        j = paramVarArgs.length;
        for (i = 0; i < j; i++)
          this.b.pushObjectValue(paramVarArgs[i]); 
        j = this.b.pcall(j, 0, -2 - j);
        i = j;
        if (j == 0)
          return; 
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(a(i));
      stringBuilder.append(": ");
      stringBuilder.append(this.b.toString(-1));
      throw new LuaException(stringBuilder.toString());
    } catch (Exception paramArrayOfByte) {
      this.d.sendError(toString(), paramArrayOfByte);
      quit();
      return;
    } 
  }
  
  private void b(String paramString, Object... paramVarArgs) {
    this.b.setTop(0);
    int j = this.b.LloadFile(paramString);
    int i = j;
    if (j == 0) {
      this.b.getGlobal("debug");
      this.b.getField(-1, "traceback");
      this.b.remove(-2);
      this.b.insert(-2);
      j = paramVarArgs.length;
      for (i = 0; i < j; i++)
        this.b.pushObjectValue(paramVarArgs[i]); 
      j = this.b.pcall(j, 0, -2 - j);
      i = j;
      if (j == 0)
        return; 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(i));
    stringBuilder.append(": ");
    stringBuilder.append(this.b.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  private void c(String paramString, Object... paramVarArgs) {
    this.b.setTop(0);
    int j = this.b.LloadString(paramString);
    int i = j;
    if (j == 0) {
      this.b.getGlobal("debug");
      this.b.getField(-1, "traceback");
      this.b.remove(-2);
      this.b.insert(-2);
      j = paramVarArgs.length;
      for (i = 0; i < j; i++)
        this.b.pushObjectValue(paramVarArgs[i]); 
      j = this.b.pcall(j, 0, -2 - j);
      i = j;
      if (j == 0)
        return; 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(i));
    stringBuilder.append(": ");
    stringBuilder.append(this.b.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  private void d(String paramString, Object... paramVarArgs) {
    try {
      LuaState luaState = this.b;
      int i = 0;
      luaState.setTop(0);
      this.b.getGlobal(paramString);
      if (this.b.isFunction(-1)) {
        this.b.getGlobal("debug");
        this.b.getField(-1, "traceback");
        this.b.remove(-2);
        this.b.insert(-2);
        int j = paramVarArgs.length;
        while (i < j) {
          this.b.pushObjectValue(paramVarArgs[i]);
          i++;
        } 
        i = this.b.pcall(j, 1, -2 - j);
        if (i == 0)
          return; 
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(a(i));
        stringBuilder.append(": ");
        stringBuilder.append(this.b.toString(-1));
        throw new LuaException(stringBuilder.toString());
      } 
    } catch (LuaException paramVarArgs) {
      LuaContext luaContext = this.d;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(toString());
      stringBuilder.append(" ");
      stringBuilder.append(paramString);
      luaContext.sendError(stringBuilder.toString(), paramVarArgs);
    } 
  }
  
  public Object __call(Object[] paramArrayOfObject) { return null; }
  
  public Object __index(String paramString) { return new LuaMetaTable(this, paramString) {
        public Object __call(Object[] param1ArrayOfObject) {
          this.b.call(this.a, param1ArrayOfObject);
          return null;
        }
        
        public Object __index(String param1String) { return null; }
        
        public void __newIndex(String param1String, Object param1Object) {}
      }; }
  
  public void __newIndex(String paramString, Object paramObject) { set(paramString, paramObject); }
  
  public void call(String paramString) { push(3, paramString); }
  
  public void call(String paramString, Object[] paramArrayOfObject) {
    if (paramArrayOfObject.length == 0) {
      push(3, paramString);
      return;
    } 
    push(1, paramString, paramArrayOfObject);
  }
  
  public void doAsset(String paramString, Object... paramVarArgs) {
    byte[] arrayOfByte = LuaUtil.readAsset(this.d.getContext(), paramString);
    this.b.setTop(0);
    int j = this.b.LloadBuffer(arrayOfByte, paramString);
    int i = j;
    if (j == 0) {
      this.b.getGlobal("debug");
      this.b.getField(-1, "traceback");
      this.b.remove(-2);
      this.b.insert(-2);
      j = paramVarArgs.length;
      for (i = 0; i < j; i++)
        this.b.pushObjectValue(paramVarArgs[i]); 
      j = this.b.pcall(j, 0, -2 - j);
      i = j;
      if (j == 0)
        return; 
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(i));
    stringBuilder.append(": ");
    stringBuilder.append(this.b.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  public void gc() {
    quit();
    this.a = true;
  }
  
  public Object get(String paramString) {
    this.b.getGlobal(paramString);
    return this.b.toJavaObject(-1);
  }
  
  public boolean isGc() { return this.a; }
  
  public void push(int paramInt, String paramString) {
    if (!this.isRun) {
      this.d.sendMsg("thread is not running");
      return;
    } 
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    message.setData(bundle);
    message.what = paramInt;
    this.c.sendMessage(message);
  }
  
  public void push(int paramInt, String paramString, Object[] paramArrayOfObject) {
    if (!this.isRun) {
      this.d.sendMsg("thread is not running");
      return;
    } 
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    bundle.putSerializable("args", paramArrayOfObject);
    message.setData(bundle);
    message.what = paramInt;
    this.c.sendMessage(message);
  }
  
  public void quit() {
    if (this.isRun) {
      this.isRun = false;
      this.c.getLooper().quit();
    } 
  }
  
  public void run() {
    try {
      if (this.b == null) {
        a();
        if (this.h != null) {
          a(this.h, this.g);
        } else {
          a(this.f, this.g);
        } 
      } 
      if (this.e) {
        Looper.prepare();
        this.c = new ThreadHandler(this, null);
        this.isRun = true;
        this.b.getGlobal("run");
        if (!this.b.isNil(-1)) {
          this.b.pop(1);
          d("run", new Object[0]);
        } 
        Looper.loop();
      } 
      this.isRun = false;
      this.b.gc(2, 1);
      System.gc();
      return;
    } catch (LuaException luaException) {
      this.d.sendError(toString(), luaException);
      return;
    } 
  }
  
  public void set(String paramString, Object paramObject) { push(4, paramString, new Object[] { paramObject }); }
  
  private class ThreadHandler extends Handler {
    private ThreadHandler(LuaThread this$0) {}
    
    public void handleMessage(Message param1Message) {
      super.handleMessage(param1Message);
      Bundle bundle = param1Message.getData();
      switch (param1Message.what) {
        default:
          return;
        case 4:
          LuaThread.a(this.a, bundle.getString("data"), (Object[])bundle.getSerializable("args")[0]);
          return;
        case 3:
          LuaThread.b(this.a, bundle.getString("data"), new Object[0]);
          return;
        case 2:
          LuaThread.a(this.a, bundle.getString("data"), new Object[0]);
          return;
        case 1:
          LuaThread.b(this.a, bundle.getString("data"), (Object[])bundle.getSerializable("args"));
          return;
        case 0:
          break;
      } 
      LuaThread.a(this.a, bundle.getString("data"), (Object[])bundle.getSerializable("args"));
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
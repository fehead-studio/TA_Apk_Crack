package com.androlua;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.widget.Toast;
import com.a.a.a.a.a.a.a;
import com.luajava.JavaFunction;
import com.luajava.LuaException;
import com.luajava.LuaObject;
import com.luajava.LuaState;
import com.luajava.LuaStateFactory;
import dalvik.system.DexClassLoader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class LuaService extends Service implements LuaBroadcastReceiver.OnReceiveListener, LuaContext {
  private static LuaService b;
  
  LuaBinder a = new LuaBinder(this);
  
  private LuaDexLoader c;
  
  private ArrayList<LuaGcable> d = new ArrayList();
  
  private String e;
  
  private MainHandler f;
  
  private String g;
  
  private LuaState h;
  
  private String i;
  
  private String j;
  
  private String k;
  
  private String l;
  
  public String luaCpath;
  
  public String luaDir;
  
  private String m;
  
  private BroadcastReceiver n;
  
  private StringBuilder o = new StringBuilder();
  
  private Toast p;
  
  private StringBuilder q = new StringBuilder();
  
  private long r;
  
  private LuaResources s;
  
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
  
  private void a() {
    this.h = LuaStateFactory.newLuaState();
    this.h.openLibs();
    this.h.pushJavaObject(this);
    this.h.setGlobal("service");
    this.h.getGlobal("service");
    this.h.setGlobal("this");
    this.h.pushContext(this);
    this.h.getGlobal("luajava");
    this.h.pushString(this.m);
    this.h.setField(-2, "luaextdir");
    this.h.pushString(this.luaDir);
    this.h.setField(-2, "luadir");
    this.h.pushString(this.i);
    this.h.setField(-2, "luapath");
    this.h.pop(1);
    new LuaAssetLoader(this, this.h);
    this.h.getGlobal("package");
    this.h.pushString(this.e);
    this.h.setField(-2, "path");
    this.h.pushString(this.luaCpath);
    this.h.setField(-2, "cpath");
    this.h.pop(1);
    (new JavaFunction(this, this.h) {
        public int execute() { // Byte code:
          //   0: aload_0
          //   1: getfield b : Lcom/luajava/LuaState;
          //   4: invokevirtual getTop : ()I
          //   7: istore_1
          //   8: iconst_2
          //   9: istore_2
          //   10: iload_1
          //   11: iconst_2
          //   12: if_icmpge -> 26
          //   15: aload_0
          //   16: getfield a : Lcom/androlua/LuaService;
          //   19: ldc ''
          //   21: invokevirtual sendMsg : (Ljava/lang/String;)V
          //   24: iconst_0
          //   25: ireturn
          //   26: aload_0
          //   27: getfield b : Lcom/luajava/LuaState;
          //   30: invokevirtual getTop : ()I
          //   33: istore_3
          //   34: iconst_1
          //   35: istore_1
          //   36: iload_2
          //   37: iload_3
          //   38: if_icmpgt -> 254
          //   41: aload_0
          //   42: getfield b : Lcom/luajava/LuaState;
          //   45: iload_2
          //   46: invokevirtual type : (I)I
          //   49: istore_3
          //   50: aconst_null
          //   51: astore #4
          //   53: aload_0
          //   54: getfield b : Lcom/luajava/LuaState;
          //   57: iload_3
          //   58: invokevirtual typeName : (I)Ljava/lang/String;
          //   61: astore #5
          //   63: aload #5
          //   65: invokevirtual hashCode : ()I
          //   68: istore_3
          //   69: iload_3
          //   70: ldc -266011147
          //   72: if_icmpeq -> 97
          //   75: iload_3
          //   76: ldc 64711720
          //   78: if_icmpeq -> 84
          //   81: goto -> 112
          //   84: aload #5
          //   86: ldc 'boolean'
          //   88: invokevirtual equals : (Ljava/lang/Object;)Z
          //   91: ifeq -> 112
          //   94: goto -> 114
          //   97: aload #5
          //   99: ldc 'userdata'
          //   101: invokevirtual equals : (Ljava/lang/Object;)Z
          //   104: ifeq -> 112
          //   107: iconst_0
          //   108: istore_1
          //   109: goto -> 114
          //   112: iconst_m1
          //   113: istore_1
          //   114: iload_1
          //   115: tableswitch default -> 136, 0 -> 174, 1 -> 149
          //   136: aload_0
          //   137: getfield b : Lcom/luajava/LuaState;
          //   140: iload_2
          //   141: invokevirtual toString : (I)Ljava/lang/String;
          //   144: astore #4
          //   146: goto -> 196
          //   149: aload_0
          //   150: getfield b : Lcom/luajava/LuaState;
          //   153: iload_2
          //   154: invokevirtual toBoolean : (I)Z
          //   157: ifeq -> 167
          //   160: ldc 'true'
          //   162: astore #4
          //   164: goto -> 196
          //   167: ldc 'false'
          //   169: astore #4
          //   171: goto -> 164
          //   174: aload_0
          //   175: getfield b : Lcom/luajava/LuaState;
          //   178: iload_2
          //   179: invokevirtual toJavaObject : (I)Ljava/lang/Object;
          //   182: astore #6
          //   184: aload #6
          //   186: ifnull -> 196
          //   189: aload #6
          //   191: invokevirtual toString : ()Ljava/lang/String;
          //   194: astore #4
          //   196: aload #4
          //   198: ifnonnull -> 208
          //   201: aload #5
          //   203: astore #4
          //   205: goto -> 208
          //   208: aload_0
          //   209: getfield a : Lcom/androlua/LuaService;
          //   212: invokestatic a : (Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;
          //   215: ldc '\\t'
          //   217: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   220: pop
          //   221: aload_0
          //   222: getfield a : Lcom/androlua/LuaService;
          //   225: invokestatic a : (Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;
          //   228: aload #4
          //   230: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   233: pop
          //   234: aload_0
          //   235: getfield a : Lcom/androlua/LuaService;
          //   238: invokestatic a : (Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;
          //   241: ldc '\\t'
          //   243: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   246: pop
          //   247: iload_2
          //   248: iconst_1
          //   249: iadd
          //   250: istore_2
          //   251: goto -> 26
          //   254: aload_0
          //   255: getfield a : Lcom/androlua/LuaService;
          //   258: aload_0
          //   259: getfield a : Lcom/androlua/LuaService;
          //   262: invokestatic a : (Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;
          //   265: invokevirtual toString : ()Ljava/lang/String;
          //   268: iconst_1
          //   269: aload_0
          //   270: getfield a : Lcom/androlua/LuaService;
          //   273: invokestatic a : (Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;
          //   276: invokevirtual length : ()I
          //   279: iconst_1
          //   280: isub
          //   281: invokevirtual substring : (II)Ljava/lang/String;
          //   284: invokevirtual sendMsg : (Ljava/lang/String;)V
          //   287: aload_0
          //   288: getfield a : Lcom/androlua/LuaService;
          //   291: invokestatic a : (Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;
          //   294: iconst_0
          //   295: invokevirtual setLength : (I)V
          //   298: iconst_0
          //   299: ireturn }
      }).register("print");
    (new JavaFunction(this, this.h) {
        public int execute() {
          ((LuaThread)this.b.toJavaObject(2)).set(this.b.toString(3), this.b.toJavaObject(4));
          return 0;
        }
      }).register("set");
    (new JavaFunction(this, this.h) {
        public int execute() {
          LuaThread luaThread = (LuaThread)this.b.toJavaObject(2);
          int i = this.b.getTop();
          if (i > 3) {
            Object[] arrayOfObject = new Object[i - 3];
            for (byte b = 4; b <= i; b++)
              arrayOfObject[b - 4] = this.b.toJavaObject(b); 
            luaThread.call(this.b.toString(3), arrayOfObject);
          } else if (i == 3) {
            luaThread.call(this.b.toString(3));
          } 
          return 0;
        }
      }).register("call");
  }
  
  private void a(String paramString, Object paramObject) {
    try {
      this.h.pushObjectValue(paramObject);
      this.h.setGlobal(paramString);
      return;
    } catch (LuaException paramString) {
      sendMsg(paramString.getMessage());
      return;
    } 
  }
  
  private void a(String paramString1, String paramString2) {
    try {
      if ((new File(paramString1)).exists()) {
        FileInputStream fileInputStream = new FileInputStream(paramString1);
        FileOutputStream fileOutputStream = new FileOutputStream(paramString2);
        byte[] arrayOfByte = new byte[4096];
        int i1 = 0;
        while (true) {
          int i2 = fileInputStream.read(arrayOfByte);
          if (i2 != -1) {
            i1 += i2;
            System.out.println(i1);
            fileOutputStream.write(arrayOfByte, 0, i2);
            continue;
          } 
          break;
        } 
        fileInputStream.close();
        return;
      } 
    } catch (Exception paramString1) {
      System.out.println("复制文件操作出错");
      a.a(paramString1);
    } 
  }
  
  private static byte[] a(InputStream paramInputStream) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
    byte[] arrayOfByte2 = new byte[4096];
    while (true) {
      int i1 = paramInputStream.read(arrayOfByte2);
      if (-1 != i1) {
        byteArrayOutputStream.write(arrayOfByte2, 0, i1);
        continue;
      } 
      break;
    } 
    byte[] arrayOfByte1 = byteArrayOutputStream.toByteArray();
    byteArrayOutputStream.close();
    return arrayOfByte1;
  }
  
  public static LuaService getService() { return b; }
  
  public void call(String paramString) { push(2, paramString); }
  
  public void call(String paramString, Object[] paramArrayOfObject) {
    if (paramArrayOfObject.length == 0) {
      push(2, paramString);
      return;
    } 
    push(3, paramString, paramArrayOfObject);
  }
  
  public Object doAsset(String paramString, Object... paramVarArgs) {
    try {
      byte[] arrayOfByte = readAsset(paramString);
      this.h.setTop(0);
      int i3 = this.h.LloadBuffer(arrayOfByte, paramString);
      i1 = i3;
      if (i3 == 0) {
        this.h.getGlobal("debug");
        this.h.getField(-1, "traceback");
        this.h.remove(-2);
        this.h.insert(-2);
        if (paramVarArgs != null) {
          i1 = paramVarArgs.length;
        } else {
          i1 = 0;
        } 
      } else {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append(a(i1));
        stringBuilder1.append(": ");
        stringBuilder1.append(this.h.toString(-1));
        throw new LuaException(stringBuilder1.toString());
      } 
    } catch (Exception paramString) {
      sendMsg(paramString.getMessage());
      return null;
    } 
    int i2;
    for (i2 = 0; i2 < i1; i2++)
      this.h.pushObjectValue(paramVarArgs[i2]); 
    i2 = this.h.pcall(i1, 0, -2 - i1);
    int i1 = i2;
    if (i2 == 0)
      return this.h.toJavaObject(-1); 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(i1));
    stringBuilder.append(": ");
    stringBuilder.append(this.h.toString(-1));
    throw new LuaException(stringBuilder.toString());
  }
  
  public Object doFile(String paramString) { return doFile(paramString, new Object[0]); }
  
  public Object doFile(String paramString, Object[] paramArrayOfObject) {
    int i1 = 0;
    String str = paramString;
    try {
      String str1;
      if (paramString.charAt(0) != '/') {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append(this.luaDir);
        stringBuilder1.append("/");
        stringBuilder1.append(paramString);
        str1 = stringBuilder1.toString();
      } 
      this.h.setTop(0);
      int i3 = this.h.LloadFile(str1);
      int i2 = i3;
      if (i3 == 0) {
        this.h.getGlobal("debug");
        this.h.getField(-1, "traceback");
        this.h.remove(-2);
        this.h.insert(-2);
        if (paramArrayOfObject != null) {
          i3 = paramArrayOfObject.length;
          i2 = i1;
          i1 = i3;
        } else {
          i3 = 0;
          i2 = i1;
          i1 = i3;
        } 
        while (i2 < i1) {
          this.h.pushObjectValue(paramArrayOfObject[i2]);
          i2++;
        } 
        i1 = this.h.pcall(i1, 1, -2 - i1);
        i2 = i1;
        if (i1 == 0)
          return this.h.toJavaObject(-1); 
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(a(i2));
      stringBuilder.append(": ");
      stringBuilder.append(this.h.toString(-1));
      throw new LuaException(stringBuilder.toString());
    } catch (LuaException paramString) {
      sendMsg(paramString.getMessage());
      return null;
    } 
  }
  
  public Object doString(String paramString, Object... paramVarArgs) {
    try {
      LuaState luaState = this.h;
      int i2 = 0;
      luaState.setTop(0);
      int i3 = this.h.LloadString(paramString);
      int i1 = i3;
      if (i3 == 0) {
        this.h.getGlobal("debug");
        this.h.getField(-1, "traceback");
        this.h.remove(-2);
        this.h.insert(-2);
        if (paramVarArgs != null) {
          i3 = paramVarArgs.length;
          i1 = i2;
          i2 = i3;
        } else {
          i3 = 0;
          i1 = i2;
          i2 = i3;
        } 
        while (i1 < i2) {
          this.h.pushObjectValue(paramVarArgs[i1]);
          i1++;
        } 
        i2 = this.h.pcall(i2, 1, -2 - i2);
        i1 = i2;
        if (i2 == 0)
          return this.h.toJavaObject(-1); 
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(a(i1));
      stringBuilder.append(": ");
      stringBuilder.append(this.h.toString(-1));
      throw new LuaException(stringBuilder.toString());
    } catch (LuaException paramString) {
      sendMsg(paramString.getMessage());
      return null;
    } 
  }
  
  public Object get(String paramString) {
    this.h.getGlobal(paramString);
    return this.h.toJavaObject(-1);
  }
  
  public AssetManager getAssets() { return (this.c != null && this.c.getAssets() != null) ? this.c.getAssets() : super.getAssets(); }
  
  public LuaBinder getBinder() { return this.a; }
  
  public ArrayList<ClassLoader> getClassLoaders() { return this.c.getClassLoaders(); }
  
  public Context getContext() { return this; }
  
  public Map getGlobalData() { return LuaApplication.getInstance().getGlobalData(); }
  
  public int getHeight() { return (getResources().getDisplayMetrics()).heightPixels; }
  
  public HashMap<String, String> getLibrarys() { return this.c.getLibrarys(); }
  
  public String getLuaCpath() { return this.luaCpath; }
  
  public String getLuaDir() { return this.luaDir; }
  
  public String getLuaDir(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.luaDir);
    stringBuilder.append("/");
    stringBuilder.append(paramString);
    File file = new File(stringBuilder.toString());
    return (!file.exists() && !file.mkdirs()) ? null : file.getAbsolutePath();
  }
  
  public String getLuaExtDir() { return this.m; }
  
  public String getLuaExtDir(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.m);
    stringBuilder.append("/");
    stringBuilder.append(paramString);
    File file = new File(stringBuilder.toString());
    return (!file.exists() && !file.mkdirs()) ? null : file.getAbsolutePath();
  }
  
  public String getLuaExtPath(String paramString) { return (new File(getLuaExtDir(), paramString)).getAbsolutePath(); }
  
  public String getLuaExtPath(String paramString1, String paramString2) { return (new File(getLuaExtDir(paramString1), paramString2)).getAbsolutePath(); }
  
  public String getLuaLpath() { return this.e; }
  
  public String getLuaPath() { return this.i; }
  
  public String getLuaPath(String paramString) { return (new File(getLuaDir(), paramString)).getAbsolutePath(); }
  
  public String getLuaPath(String paramString1, String paramString2) { return (new File(getLuaDir(paramString1), paramString2)).getAbsolutePath(); }
  
  public LuaResources getLuaResources() {
    Resources resources2 = super.getResources();
    Resources resources1 = resources2;
    if (this.c != null) {
      resources1 = resources2;
      if (this.c.getResources() != null)
        resources1 = this.c.getResources(); 
    } 
    this.s = new LuaResources(getAssets(), resources1.getDisplayMetrics(), resources1.getConfiguration());
    this.s.setSuperResources(resources1);
    return this.s;
  }
  
  public LuaState getLuaState() { return this.h; }
  
  public Resources getResources() { return (this.c != null && this.c.getResources() != null) ? this.c.getResources() : ((this.s != null) ? this.s : super.getResources()); }
  
  public Object getSharedData(String paramString) { return LuaApplication.getInstance().getSharedData(paramString); }
  
  public Object getSharedData(String paramString, Object paramObject) { return LuaApplication.getInstance().getSharedData(paramString, paramObject); }
  
  public Resources getSuperResources() { return super.getResources(); }
  
  public int getWidth() { return (getResources().getDisplayMetrics()).widthPixels; }
  
  public DexClassLoader loadDex(String paramString) { return this.c.loadDex(paramString); }
  
  public Object loadLib(String paramString) {
    String str;
    int i1 = paramString.indexOf(".");
    if (i1 > 0) {
      str = paramString.substring(0, i1);
    } else {
      str = paramString;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.l);
    stringBuilder.append("/lib");
    stringBuilder.append(str);
    stringBuilder.append(".so");
    if (!(new File(stringBuilder.toString())).exists()) {
      StringBuilder stringBuilder1;
      stringBuilder = new StringBuilder();
      stringBuilder.append(this.luaDir);
      stringBuilder.append("/lib");
      stringBuilder.append(str);
      stringBuilder.append(".so");
      if (!(new File(stringBuilder.toString())).exists()) {
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append("can not find lib ");
        stringBuilder1.append(paramString);
        throw new LuaException(stringBuilder1.toString());
      } 
      stringBuilder = new StringBuilder();
      stringBuilder.append(this.luaDir);
      stringBuilder.append("/lib");
      stringBuilder.append(stringBuilder1);
      stringBuilder.append(".so");
      String str1 = stringBuilder.toString();
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(this.l);
      stringBuilder2.append("/lib");
      stringBuilder2.append(stringBuilder1);
      stringBuilder2.append(".so");
      a(str1, stringBuilder2.toString());
    } 
    return this.h.getLuaObject("require").call(new Object[] { paramString });
  }
  
  public void loadResources(String paramString) { this.c.loadResources(paramString); }
  
  public LuaAsyncTask newTask(LuaObject paramLuaObject) { return newTask(paramLuaObject, null, null); }
  
  public LuaAsyncTask newTask(LuaObject paramLuaObject1, LuaObject paramLuaObject2) { return newTask(paramLuaObject1, null, paramLuaObject2); }
  
  public LuaAsyncTask newTask(LuaObject paramLuaObject1, LuaObject paramLuaObject2, LuaObject paramLuaObject3) { return new LuaAsyncTask(this, paramLuaObject1, paramLuaObject2, paramLuaObject3); }
  
  public LuaThread newThread(LuaObject paramLuaObject) { return newThread(paramLuaObject, null); }
  
  public LuaThread newThread(LuaObject paramLuaObject, Object[] paramArrayOfObject) { return new LuaThread(this, paramLuaObject, true, paramArrayOfObject); }
  
  public LuaTimer newTimer(LuaObject paramLuaObject) { return newTimer(paramLuaObject, null); }
  
  public LuaTimer newTimer(LuaObject paramLuaObject, Object[] paramArrayOfObject) { return new LuaTimer(this, paramLuaObject, paramArrayOfObject); }
  
  public IBinder onBind(Intent paramIntent) {
    startForeground(1, new Notification());
    return new LuaBinder(this);
  }
  
  public void onCreate() {
    super.onCreate();
    b = this;
    LuaApplication luaApplication = (LuaApplication)getApplication();
    this.j = luaApplication.getLocalDir();
    this.k = luaApplication.getOdexDir();
    this.l = luaApplication.getLibDir();
    this.g = luaApplication.getMdDir();
    this.luaCpath = luaApplication.getLuaCpath();
    this.luaDir = this.j;
    this.e = luaApplication.getLuaLpath();
    this.m = luaApplication.getLuaExtDir();
    this.f = new MainHandler(this);
  }
  
  public void onDestroy() {
    runFunc("onDestroy", new Object[0]);
    if (this.n != null)
      unregisterReceiver(this.n); 
    super.onDestroy();
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) { runFunc("onReceive", new Object[] { paramContext, paramIntent }); }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    b = this;
    if (this.h == null) {
      startForeground(1, new Notification());
      this.i = paramIntent.getStringExtra("luaPath");
      this.luaDir = paramIntent.getStringExtra("luaDir");
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(this.luaDir);
      stringBuilder.append("/?.lua;");
      stringBuilder.append(this.luaDir);
      stringBuilder.append("/lua/?.lua;");
      stringBuilder.append(this.luaDir);
      stringBuilder.append("/?/init.lua;");
      stringBuilder.append(this.e);
      this.e = stringBuilder.toString();
      uri = paramIntent.getData();
      try {
        String str;
        a();
        this.c = new LuaDexLoader(this);
        this.c.loadLibs();
        if (uri != null) {
          str = uri.getPath();
        } else {
          str = "service.lua";
        } 
        doFile(str);
      } catch (Exception uri) {
        sendMsg(uri.getMessage());
      } 
    } 
    runFunc("onStartCommand", new Object[] { paramIntent, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    runFunc("onStart", (Object[])paramIntent.getSerializableExtra("arg"));
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
  
  public boolean onUnbind(Intent paramIntent) { return super.onUnbind(paramIntent); }
  
  public void push(int paramInt, String paramString) {
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    message.setData(bundle);
    message.what = paramInt;
    this.f.sendMessage(message);
  }
  
  public void push(int paramInt, String paramString, Object[] paramArrayOfObject) {
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    bundle.putSerializable("args", paramArrayOfObject);
    message.setData(bundle);
    message.what = paramInt;
    this.f.sendMessage(message);
  }
  
  public byte[] readAsset(String paramString) {
    InputStream inputStream = getAssets().open(paramString);
    byte[] arrayOfByte = a(inputStream);
    inputStream.close();
    return arrayOfByte;
  }
  
  public void regGc(LuaGcable paramLuaGcable) { this.d.add(paramLuaGcable); }
  
  public Intent registerReceiver(IntentFilter paramIntentFilter) {
    if (this.n != null)
      unregisterReceiver(this.n); 
    this.n = new LuaBroadcastReceiver(this);
    return registerReceiver(this.n, paramIntentFilter);
  }
  
  public Intent registerReceiver(LuaBroadcastReceiver.OnReceiveListener paramOnReceiveListener, IntentFilter paramIntentFilter) { return registerReceiver(new LuaBroadcastReceiver(paramOnReceiveListener), paramIntentFilter); }
  
  public Intent registerReceiver(LuaBroadcastReceiver paramLuaBroadcastReceiver, IntentFilter paramIntentFilter) { return registerReceiver(paramLuaBroadcastReceiver, paramIntentFilter); }
  
  public Object runFunc(String paramString, Object... paramVarArgs) {
    if (this.h != null)
      try {
        LuaState luaState = this.h;
        byte b1 = 0;
        luaState.setTop(0);
        this.h.getGlobal(paramString);
        if (this.h.isFunction(-1)) {
          this.h.getGlobal("debug");
          this.h.getField(-1, "traceback");
          this.h.remove(-2);
          this.h.insert(-2);
          if (paramVarArgs != null) {
            i1 = paramVarArgs.length;
          } else {
            i1 = 0;
          } 
          while (b1 < i1) {
            this.h.pushObjectValue(paramVarArgs[b1]);
            b1++;
          } 
          int i1 = this.h.pcall(i1, 1, -2 - i1);
          if (i1 == 0)
            return this.h.toJavaObject(-1); 
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(a(i1));
          stringBuilder.append(": ");
          stringBuilder.append(this.h.toString(-1));
          throw new LuaException(stringBuilder.toString());
        } 
      } catch (LuaException paramVarArgs) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(paramString);
        stringBuilder.append(" ");
        stringBuilder.append(paramVarArgs.getMessage());
        sendMsg(stringBuilder.toString());
      }  
    return null;
  }
  
  public void sendError(String paramString, Exception paramException) { runFunc("onError", new Object[] { paramString, paramException }); }
  
  public void sendMsg(String paramString) {
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    message.setData(bundle);
    message.what = 0;
    this.f.sendMessage(message);
    Log.i("lua", paramString);
  }
  
  public void set(String paramString, Object paramObject) { push(1, paramString, new Object[] { paramObject }); }
  
  public void setBinder(LuaBinder paramLuaBinder) { this.a = paramLuaBinder; }
  
  public void setLuaExtDir(String paramString) { // Byte code:
    //   0: invokestatic getExternalStorageState : ()Ljava/lang/String;
    //   3: ldc_w 'mounted'
    //   6: invokevirtual equals : (Ljava/lang/Object;)Z
    //   9: ifeq -> 38
    //   12: new java/io/File
    //   15: dup
    //   16: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   19: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   22: aload_1
    //   23: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   26: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   29: astore_1
    //   30: aload_0
    //   31: aload_1
    //   32: putfield m : Ljava/lang/String;
    //   35: goto -> 136
    //   38: new java/io/File
    //   41: dup
    //   42: ldc_w '/storage'
    //   45: invokespecial <init> : (Ljava/lang/String;)V
    //   48: invokevirtual listFiles : ()[Ljava/io/File;
    //   51: astore #4
    //   53: aload #4
    //   55: arraylength
    //   56: istore_3
    //   57: iconst_0
    //   58: istore_2
    //   59: iload_2
    //   60: iload_3
    //   61: if_icmpge -> 116
    //   64: aload #4
    //   66: iload_2
    //   67: aaload
    //   68: astore #5
    //   70: aload #5
    //   72: invokevirtual list : ()[Ljava/lang/String;
    //   75: astore #6
    //   77: aload #6
    //   79: ifnonnull -> 85
    //   82: goto -> 109
    //   85: aload #6
    //   87: arraylength
    //   88: iconst_5
    //   89: if_icmple -> 109
    //   92: aload_0
    //   93: new java/io/File
    //   96: dup
    //   97: aload #5
    //   99: aload_1
    //   100: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   103: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   106: putfield m : Ljava/lang/String;
    //   109: iload_2
    //   110: iconst_1
    //   111: iadd
    //   112: istore_2
    //   113: goto -> 59
    //   116: aload_0
    //   117: getfield m : Ljava/lang/String;
    //   120: ifnonnull -> 136
    //   123: aload_0
    //   124: aload_1
    //   125: iconst_0
    //   126: invokevirtual getDir : (Ljava/lang/String;I)Ljava/io/File;
    //   129: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   132: astore_1
    //   133: goto -> 30
    //   136: new java/io/File
    //   139: dup
    //   140: aload_0
    //   141: getfield m : Ljava/lang/String;
    //   144: invokespecial <init> : (Ljava/lang/String;)V
    //   147: astore_1
    //   148: aload_1
    //   149: invokevirtual exists : ()Z
    //   152: ifne -> 160
    //   155: aload_1
    //   156: invokevirtual mkdirs : ()Z
    //   159: pop
    //   160: return }
  
  public boolean setSharedData(String paramString, Object paramObject) { return LuaApplication.getInstance().setSharedData(paramString, paramObject); }
  
  @SuppressLint({"ShowToast"})
  public void showToast(String paramString) {
    try {
      long l1 = System.currentTimeMillis();
      if (this.p == null || l1 - this.r > 1000L) {
        this.q.setLength(0);
        this.p = Toast.makeText(this, paramString, 1);
        this.q.append(paramString);
      } else {
        this.q.append("\n");
        this.q.append(paramString);
        this.p.setText(this.q.toString());
        this.p.setDuration(1);
      } 
      this.r = l1;
      this.p.show();
      return;
    } catch (Exception paramString) {
      a.a(paramString);
      return;
    } 
  }
  
  public LuaAsyncTask task(long paramLong, LuaObject paramLuaObject) { return task(paramLong, null, null); }
  
  public LuaAsyncTask task(long paramLong, Object[] paramArrayOfObject, LuaObject paramLuaObject) {
    LuaAsyncTask luaAsyncTask = new LuaAsyncTask(this, paramLong, paramLuaObject);
    luaAsyncTask.execute(paramArrayOfObject);
    return luaAsyncTask;
  }
  
  public LuaAsyncTask task(LuaObject paramLuaObject) { return task(paramLuaObject, null, null, null); }
  
  public LuaAsyncTask task(LuaObject paramLuaObject1, LuaObject paramLuaObject2, LuaObject paramLuaObject3) { return task(paramLuaObject1, null, paramLuaObject2, paramLuaObject3); }
  
  public LuaAsyncTask task(LuaObject paramLuaObject, Object[] paramArrayOfObject) { return task(paramLuaObject, paramArrayOfObject, null, null); }
  
  public LuaAsyncTask task(LuaObject paramLuaObject1, Object[] paramArrayOfObject, LuaObject paramLuaObject2) { return task(paramLuaObject1, null, null, paramLuaObject2); }
  
  public LuaAsyncTask task(LuaObject paramLuaObject1, Object[] paramArrayOfObject, LuaObject paramLuaObject2, LuaObject paramLuaObject3) {
    LuaAsyncTask luaAsyncTask = new LuaAsyncTask(this, paramLuaObject1, paramLuaObject2, paramLuaObject3);
    luaAsyncTask.execute(paramArrayOfObject);
    return luaAsyncTask;
  }
  
  public LuaThread thread(LuaObject paramLuaObject) {
    LuaThread luaThread = newThread(paramLuaObject, null);
    luaThread.start();
    return luaThread;
  }
  
  public LuaThread thread(LuaObject paramLuaObject, Object[] paramArrayOfObject) {
    LuaThread luaThread = new LuaThread(this, paramLuaObject, true, paramArrayOfObject);
    luaThread.start();
    return luaThread;
  }
  
  public Ticker ticker(LuaObject paramLuaObject, long paramLong) {
    Ticker ticker = new Ticker();
    ticker.setOnTickListener(new Ticker.OnTickListener(this, paramLuaObject) {
          public void onTick() {
            try {
              this.a.call(new Object[0]);
              return;
            } catch (LuaException luaException) {
              a.a(luaException);
              this.b.sendError("onTick", luaException);
              return;
            } 
          }
        });
    ticker.setPeriod(paramLong);
    ticker.start();
    return ticker;
  }
  
  public LuaTimer timer(LuaObject paramLuaObject, long paramLong) { return timer(paramLuaObject, 0L, paramLong, null); }
  
  public LuaTimer timer(LuaObject paramLuaObject, long paramLong1, long paramLong2) { return timer(paramLuaObject, paramLong1, paramLong2, null); }
  
  public LuaTimer timer(LuaObject paramLuaObject, long paramLong1, long paramLong2, Object[] paramArrayOfObject) {
    LuaTimer luaTimer = new LuaTimer(this, paramLuaObject, paramArrayOfObject);
    luaTimer.start(paramLong1, paramLong2);
    return luaTimer;
  }
  
  public LuaTimer timer(LuaObject paramLuaObject, long paramLong, Object[] paramArrayOfObject) { return timer(paramLuaObject, 0L, paramLong, paramArrayOfObject); }
  
  public class LuaBinder extends Binder {
    public LuaBinder(LuaService this$0) {}
    
    public LuaService getService() { return this.a; }
  }
  
  public class MainHandler extends Handler {
    public MainHandler(LuaService this$0) {}
    
    public void handleMessage(Message param1Message) {
      String str2;
      Serializable serializable;
      Bundle bundle;
      super.handleMessage(param1Message);
      switch (param1Message.what) {
        default:
          return;
        case 3:
          str2 = param1Message.getData().getString("data");
          serializable = param1Message.getData().getSerializable("args");
          this.a.runFunc(str2, (Object[])serializable);
          return;
        case 2:
          serializable = serializable.getData().getString("data");
          this.a.runFunc(serializable, new Object[0]);
          return;
        case 1:
          bundle = serializable.getData();
          LuaService.a(this.a, bundle.getString("data"), (Object[])bundle.getSerializable("args")[0]);
          return;
        case 0:
          break;
      } 
      String str1 = bundle.getData().getString("data");
      this.a.showToast(str1);
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
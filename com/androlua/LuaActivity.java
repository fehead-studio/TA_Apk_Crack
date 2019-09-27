package com.androlua;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.FileProvider;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.StrictMode;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.MimeTypeMap;
import android.widget.ArrayListAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.a.a.a.a.a.a.a;
import com.baidu.mobstat.StatService;
import com.luajava.JavaFunction;
import com.luajava.LuaException;
import com.luajava.LuaObject;
import com.luajava.LuaState;
import com.luajava.LuaStateFactory;
import dalvik.system.DexClassLoader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class LuaActivity extends Activity implements LuaBroadcastReceiver.OnReceiveListener, LuaContext {
  private static String J;
  
  private static final HashMap<String, LuaActivity> K;
  
  private static ArrayList<String> a = new ArrayList();
  
  private String A;
  
  private LuaBroadcastReceiver B;
  
  private String C;
  
  private String D;
  
  private boolean E;
  
  private boolean F = true;
  
  private LuaResources G;
  
  private ArrayList<LuaGcable> H = new ArrayList();
  
  private String I = "main";
  
  private LuaObject L;
  
  private String b;
  
  private Handler c;
  
  private TextView d;
  
  private String e;
  
  private LuaDexLoader f;
  
  private int g;
  
  private int h;
  
  private ListView i;
  
  private ArrayListAdapter<String> j;
  
  private LuaState k;
  
  private String l;
  
  private StringBuilder m = new StringBuilder();
  
  private Boolean n = Boolean.valueOf(false);
  
  private Toast o;
  
  private LinearLayout p;
  
  private boolean q;
  
  private long r;
  
  private Menu s;
  
  private LuaObject t;
  
  private LuaObject u;
  
  private LuaObject v;
  
  private LuaObject w;
  
  private String x;
  
  private String y;
  
  private String z;
  
  static  {
    K = new HashMap();
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
  
  private String a(File paramFile) {
    int i1 = paramFile.getName().lastIndexOf('.');
    if (i1 >= 0) {
      String str = paramFile.getName().substring(i1 + 1);
      str = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
      if (str != null)
        return str; 
    } 
    return "application/octet-stream";
  }
  
  private void a() {
    try {
      Field field = ClassLoader.getSystemClassLoader().loadClass("de.robv.android.xposed.XposedBridge").getDeclaredField("disableHooks");
      field.setAccessible(true);
      field.set(null, Boolean.valueOf(true));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  private void a(Object paramObject, String paramString) {
    try {
      Field field = paramObject.getClass().getDeclaredField(paramString);
      field.setAccessible(true);
      ((HashMap)field.get(paramObject)).clear();
      paramObject = new LuaDialog(this);
      paramObject.setTitle("提示3");
      paramObject.setMessage("你的手机运行环境不安全");
      paramObject.setPosButton("确定");
      paramObject.show();
      return;
    } catch (Exception paramObject) {
      a.a(paramObject);
      return;
    } 
  }
  
  private void a(String paramString, Object paramObject) {
    LuaState luaState = this.k;
    /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{com/luajava/LuaState}, name=null} */
    try {
      this.k.pushObjectValue(paramObject);
      this.k.setGlobal(paramString);
    } catch (LuaException paramString) {
      sendError("setField", paramString);
    } finally {}
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{com/luajava/LuaState}, name=null} */
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
  
  private void b() {
    try {
      Object object = ClassLoader.getSystemClassLoader().loadClass("de.robv.android.xposed.XposedHelpers").newInstance();
      if (object != null) {
        a(object, "fieldCache");
        a(object, "methodCache");
        a(object, "constructorCache");
      } 
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  private void c() {
    this.k = LuaStateFactory.newLuaState();
    this.k.openLibs();
    this.k.pushJavaObject(this);
    this.k.setGlobal("activity");
    this.k.getGlobal("activity");
    this.k.setGlobal("this");
    this.k.pushContext(this);
    this.k.getGlobal("luajava");
    this.k.pushString(this.A);
    this.k.setField(-2, "luaextdir");
    this.k.pushString(this.b);
    this.k.setField(-2, "luadir");
    this.k.pushString(this.l);
    this.k.setField(-2, "luapath");
    this.k.pop(1);
    d();
    (new LuaPrint(this, this.k)).register("print");
    this.k.getGlobal("package");
    this.k.pushString(this.C);
    this.k.setField(-2, "path");
    this.k.pushString(this.e);
    this.k.setField(-2, "cpath");
    this.k.pop(1);
    (new JavaFunction(this, this.k) {
        public int execute() {
          ((LuaThread)this.b.toJavaObject(2)).set(this.b.toString(3), this.b.toJavaObject(4));
          return 0;
        }
      }).register("set");
    (new JavaFunction(this, this.k) {
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
  
  private void d() {
    stringBuilder = new StringBuilder();
    stringBuilder.append(this.b);
    stringBuilder.append("/init.lua");
    if (!(new File(stringBuilder.toString())).exists())
      return; 
    try {
      LuaState luaState = this.k;
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(this.b);
      stringBuilder1.append("/init.lua");
      int i2 = luaState.LloadFile(stringBuilder1.toString());
      int i1 = i2;
      if (i2 == 0) {
        this.k.newTable();
        LuaObject luaObject = this.k.getLuaObject(-1);
        this.k.setUpValue(-2, 1);
        i1 = this.k.pcall(0, 0, 0);
        if (i1 == 0) {
          if (J == null) {
            LuaObject luaObject2 = luaObject.getField("app_key");
            if (luaObject2.isString()) {
              J = luaObject2.toString();
              StatService.setAppKey(luaObject2.toString());
            } 
            luaObject2 = luaObject.getField("app_channel");
            if (luaObject2.isString())
              StatService.setAppChannel(this, luaObject2.toString(), true); 
            StatService.setOn(this, 1);
          } 
          LuaObject luaObject1 = luaObject.getField("appname");
          if (luaObject1.isString())
            setTitle(luaObject1.getString()); 
          luaObject1 = luaObject.getField("app_name");
          if (luaObject1.isString())
            setTitle(luaObject1.getString()); 
          luaObject1 = luaObject.getField("debugmode");
          if (luaObject1.isBoolean())
            this.F = luaObject1.getBoolean(); 
          luaObject1 = luaObject.getField("debug_mode");
          if (luaObject1.isBoolean())
            this.F = luaObject1.getBoolean(); 
          luaObject = luaObject.getField("theme");
          if (luaObject.isNumber()) {
            setTheme((int)luaObject.getInteger());
            return;
          } 
          if (luaObject.isString()) {
            setTheme(android.R.style.class.getField(luaObject.getString()).getInt(null));
            return;
          } 
        } else {
          StringBuilder stringBuilder2 = new StringBuilder();
          stringBuilder2.append(a(i1));
          stringBuilder2.append(": ");
          stringBuilder2.append(this.k.toString(-1));
          throw new LuaException(stringBuilder2.toString());
        } 
      } else {
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(a(i1));
        stringBuilder2.append(": ");
        stringBuilder2.append(this.k.toString(-1));
        throw new LuaException(stringBuilder2.toString());
      } 
    } catch (Exception stringBuilder) {
      sendMsg(stringBuilder.getMessage());
      return;
    } 
  }
  
  public static LuaActivity getActivity(String paramString) { return (LuaActivity)K.get(paramString); }
  
  public void assetsToSD(String paramString1, String paramString2) {
    FileOutputStream fileOutputStream = new FileOutputStream(paramString2);
    InputStream inputStream = getAssets().open(paramString1);
    byte[] arrayOfByte = new byte[4096];
    while (true) {
      int i1 = inputStream.read(arrayOfByte);
      if (i1 > 0) {
        fileOutputStream.write(arrayOfByte, 0, i1);
        continue;
      } 
      break;
    } 
    fileOutputStream.flush();
    inputStream.close();
    fileOutputStream.close();
  }
  
  public boolean bindService(int paramInt) { return bindService(new ServiceConnection(this) {
          public void onServiceConnected(ComponentName param1ComponentName, IBinder param1IBinder) { this.a.runFunc("onServiceConnected", new Object[] { param1ComponentName, ((LuaService.LuaBinder)param1IBinder).getService() }); }
          
          public void onServiceDisconnected(ComponentName param1ComponentName) { this.a.runFunc("onServiceDisconnected", new Object[] { param1ComponentName }); }
        }paramInt); }
  
  public boolean bindService(ServiceConnection paramServiceConnection, int paramInt) {
    Intent intent = new Intent(this, LuaService.class);
    intent.putExtra("luaDir", this.b);
    intent.putExtra("luaPath", this.l);
    return bindService(intent, paramServiceConnection, paramInt);
  }
  
  public void call(String paramString) { push(2, paramString); }
  
  public void call(String paramString, Object[] paramArrayOfObject) {
    if (paramArrayOfObject.length == 0) {
      push(2, paramString);
      return;
    } 
    push(3, paramString, paramArrayOfObject);
  }
  
  public void createShortcut(String paramString1, String paramString2) {
    String str;
    Intent intent = new Intent("android.intent.action.MAIN");
    intent.addCategory("android.intent.category.DEFAULT");
    intent.setClassName(getPackageName(), LuaActivity.class.getName());
    intent.setData(Uri.parse(paramString1));
    if (Build.VERSION.SDK_INT >= 22) {
      intent.addFlags(524288);
      intent.addFlags(134217728);
    } 
    if (Build.VERSION.SDK_INT >= 26) {
      ShortcutManager shortcutManager = (ShortcutManager)getSystemService("shortcut");
      str = (new ShortcutInfo.Builder(this, paramString1)).setIcon(Icon.createWithResource(this, 2130771968)).setShortLabel(paramString2).setIntent(intent).build();
      try {
        shortcutManager.requestPinShortcut(str, null);
        return;
      } catch (Exception null) {
        a.a(str);
        String str1 = "添加快捷方式出错";
      } 
    } else {
      Intent intent1 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
      Intent.ShortcutIconResource shortcutIconResource = Intent.ShortcutIconResource.fromContext(this, 2130771968);
      intent1.putExtra("android.intent.extra.shortcut.NAME", paramString2);
      intent1.putExtra("android.intent.extra.shortcut.INTENT", intent);
      intent1.putExtra("duplicate", 0);
      intent1.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", shortcutIconResource);
      sendBroadcast(intent1);
      str = "已添加快捷方式";
    } 
    Toast.makeText(this, str, 0).show();
  }
  
  public void createShortcut(String paramString1, String paramString2, String paramString3) {
    String str;
    Intent intent = new Intent("android.intent.action.MAIN");
    intent.addCategory("android.intent.category.DEFAULT");
    intent.setClassName(getPackageName(), LuaActivity.class.getName());
    intent.setData(Uri.parse(paramString1));
    if (Build.VERSION.SDK_INT >= 22) {
      intent.addFlags(524288);
      intent.addFlags(134217728);
    } 
    if (Build.VERSION.SDK_INT >= 26) {
      ShortcutManager shortcutManager = (ShortcutManager)getSystemService("shortcut");
      str = (new ShortcutInfo.Builder(this, paramString1)).setIcon(Icon.createWithFilePath(paramString3)).setShortLabel(paramString2).setIntent(intent).build();
      try {
        shortcutManager.requestPinShortcut(str, null);
        return;
      } catch (Exception null) {
        a.a(str);
        String str1 = "添加快捷方式出错";
      } 
    } else {
      Intent intent1 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
      intent1.putExtra("android.intent.extra.shortcut.NAME", paramString2);
      intent1.putExtra("android.intent.extra.shortcut.INTENT", intent);
      intent1.putExtra("duplicate", 0);
      intent1.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeFile(paramString3));
      sendBroadcast(intent1);
      str = "已添加快捷方式";
    } 
    Toast.makeText(this, str, 0).show();
  }
  
  public Object doAsset(String paramString, Object... paramVarArgs) { // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: iload #4
    //   5: istore_3
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual readAsset : (Ljava/lang/String;)[B
    //   11: astore #6
    //   13: iload #4
    //   15: istore_3
    //   16: aload_0
    //   17: getfield k : Lcom/luajava/LuaState;
    //   20: iconst_0
    //   21: invokevirtual setTop : (I)V
    //   24: iload #4
    //   26: istore_3
    //   27: aload_0
    //   28: getfield k : Lcom/luajava/LuaState;
    //   31: aload #6
    //   33: aload_1
    //   34: invokevirtual LloadBuffer : ([BLjava/lang/String;)I
    //   37: istore #4
    //   39: iload #4
    //   41: ifne -> 248
    //   44: aload_0
    //   45: getfield k : Lcom/luajava/LuaState;
    //   48: ldc_w 'debug'
    //   51: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   54: pop
    //   55: aload_0
    //   56: getfield k : Lcom/luajava/LuaState;
    //   59: iconst_m1
    //   60: ldc_w 'traceback'
    //   63: invokevirtual getField : (ILjava/lang/String;)I
    //   66: pop
    //   67: aload_0
    //   68: getfield k : Lcom/luajava/LuaState;
    //   71: bipush #-2
    //   73: invokevirtual remove : (I)V
    //   76: aload_0
    //   77: getfield k : Lcom/luajava/LuaState;
    //   80: bipush #-2
    //   82: invokevirtual insert : (I)V
    //   85: aload_2
    //   86: arraylength
    //   87: istore #5
    //   89: iconst_0
    //   90: istore_3
    //   91: iload_3
    //   92: iload #5
    //   94: if_icmpge -> 114
    //   97: aload_0
    //   98: getfield k : Lcom/luajava/LuaState;
    //   101: aload_2
    //   102: iload_3
    //   103: aaload
    //   104: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   107: iload_3
    //   108: iconst_1
    //   109: iadd
    //   110: istore_3
    //   111: goto -> 91
    //   114: aload_0
    //   115: getfield k : Lcom/luajava/LuaState;
    //   118: iload #5
    //   120: iconst_0
    //   121: bipush #-2
    //   123: iload #5
    //   125: isub
    //   126: invokevirtual pcall : (III)I
    //   129: istore_3
    //   130: iload_3
    //   131: istore #4
    //   133: iload_3
    //   134: ifne -> 146
    //   137: aload_0
    //   138: getfield k : Lcom/luajava/LuaState;
    //   141: iconst_m1
    //   142: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   145: areturn
    //   146: iload #4
    //   148: istore_3
    //   149: new java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial <init> : ()V
    //   156: astore_1
    //   157: iload #4
    //   159: istore_3
    //   160: aload_1
    //   161: aload_0
    //   162: iload #4
    //   164: invokespecial a : (I)Ljava/lang/String;
    //   167: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: iload #4
    //   173: istore_3
    //   174: aload_1
    //   175: ldc_w ': '
    //   178: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: pop
    //   182: iload #4
    //   184: istore_3
    //   185: aload_1
    //   186: aload_0
    //   187: getfield k : Lcom/luajava/LuaState;
    //   190: iconst_m1
    //   191: invokevirtual toString : (I)Ljava/lang/String;
    //   194: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: pop
    //   198: iload #4
    //   200: istore_3
    //   201: new com/luajava/LuaException
    //   204: dup
    //   205: aload_1
    //   206: invokevirtual toString : ()Ljava/lang/String;
    //   209: invokespecial <init> : (Ljava/lang/String;)V
    //   212: athrow
    //   213: astore_1
    //   214: aload_0
    //   215: aload_0
    //   216: iload_3
    //   217: invokespecial a : (I)Ljava/lang/String;
    //   220: invokevirtual setTitle : (Ljava/lang/CharSequence;)V
    //   223: aload_0
    //   224: aload_0
    //   225: getfield p : Landroid/widget/LinearLayout;
    //   228: invokevirtual setContentView : (Landroid/view/View;)V
    //   231: aload_0
    //   232: aload_1
    //   233: invokevirtual getMessage : ()Ljava/lang/String;
    //   236: invokevirtual sendMsg : (Ljava/lang/String;)V
    //   239: aconst_null
    //   240: areturn
    //   241: astore_1
    //   242: iload #4
    //   244: istore_3
    //   245: goto -> 214
    //   248: goto -> 146
    // Exception table:
    //   from	to	target	type
    //   6	13	213	java/lang/Exception
    //   16	24	213	java/lang/Exception
    //   27	39	213	java/lang/Exception
    //   44	89	241	java/lang/Exception
    //   97	107	241	java/lang/Exception
    //   114	130	241	java/lang/Exception
    //   137	146	213	java/lang/Exception
    //   149	157	213	java/lang/Exception
    //   160	171	213	java/lang/Exception
    //   174	182	213	java/lang/Exception
    //   185	198	213	java/lang/Exception
    //   201	213	213	java/lang/Exception }
  
  public Object doFile(String paramString) { return doFile(paramString, new Object[0]); }
  
  public Object doFile(String paramString, Object[] paramArrayOfObject) { // Byte code:
    //   0: aload_1
    //   1: astore #8
    //   3: aload_1
    //   4: iconst_0
    //   5: invokevirtual charAt : (I)C
    //   8: bipush #47
    //   10: if_icmpeq -> 55
    //   13: new java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial <init> : ()V
    //   20: astore #8
    //   22: aload #8
    //   24: aload_0
    //   25: getfield b : Ljava/lang/String;
    //   28: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: aload #8
    //   34: ldc_w '/'
    //   37: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: pop
    //   41: aload #8
    //   43: aload_1
    //   44: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: aload #8
    //   50: invokevirtual toString : ()Ljava/lang/String;
    //   53: astore #8
    //   55: aload_0
    //   56: getfield k : Lcom/luajava/LuaState;
    //   59: iconst_0
    //   60: invokevirtual setTop : (I)V
    //   63: aload_0
    //   64: getfield k : Lcom/luajava/LuaState;
    //   67: aload #8
    //   69: invokevirtual LloadFile : (Ljava/lang/String;)I
    //   72: istore #5
    //   74: iload #5
    //   76: istore #4
    //   78: iload #5
    //   80: ifne -> 226
    //   83: iload #5
    //   85: istore_3
    //   86: aload_0
    //   87: getfield k : Lcom/luajava/LuaState;
    //   90: ldc_w 'debug'
    //   93: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   96: pop
    //   97: iload #5
    //   99: istore_3
    //   100: aload_0
    //   101: getfield k : Lcom/luajava/LuaState;
    //   104: iconst_m1
    //   105: ldc_w 'traceback'
    //   108: invokevirtual getField : (ILjava/lang/String;)I
    //   111: pop
    //   112: iload #5
    //   114: istore_3
    //   115: aload_0
    //   116: getfield k : Lcom/luajava/LuaState;
    //   119: bipush #-2
    //   121: invokevirtual remove : (I)V
    //   124: iload #5
    //   126: istore_3
    //   127: aload_0
    //   128: getfield k : Lcom/luajava/LuaState;
    //   131: bipush #-2
    //   133: invokevirtual insert : (I)V
    //   136: iload #5
    //   138: istore_3
    //   139: aload_2
    //   140: arraylength
    //   141: istore #6
    //   143: iconst_0
    //   144: istore #4
    //   146: iload #4
    //   148: iload #6
    //   150: if_icmpge -> 176
    //   153: iload #5
    //   155: istore_3
    //   156: aload_0
    //   157: getfield k : Lcom/luajava/LuaState;
    //   160: aload_2
    //   161: iload #4
    //   163: aaload
    //   164: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   167: iload #4
    //   169: iconst_1
    //   170: iadd
    //   171: istore #4
    //   173: goto -> 146
    //   176: iload #5
    //   178: istore_3
    //   179: aload_0
    //   180: getfield k : Lcom/luajava/LuaState;
    //   183: iload #6
    //   185: iconst_1
    //   186: bipush #-2
    //   188: iload #6
    //   190: isub
    //   191: invokevirtual pcall : (III)I
    //   194: istore #4
    //   196: iload #4
    //   198: ifne -> 219
    //   201: aload_0
    //   202: getfield k : Lcom/luajava/LuaState;
    //   205: iconst_m1
    //   206: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   209: astore_1
    //   210: aload_1
    //   211: areturn
    //   212: astore_1
    //   213: iload #4
    //   215: istore_3
    //   216: goto -> 336
    //   219: goto -> 226
    //   222: astore_1
    //   223: goto -> 336
    //   226: iload #4
    //   228: istore_3
    //   229: new android/content/Intent
    //   232: dup
    //   233: invokespecial <init> : ()V
    //   236: astore_1
    //   237: iload #4
    //   239: istore_3
    //   240: aload_1
    //   241: ldc_w 'data'
    //   244: aload_0
    //   245: getfield k : Lcom/luajava/LuaState;
    //   248: iconst_m1
    //   249: invokevirtual toString : (I)Ljava/lang/String;
    //   252: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   255: pop
    //   256: iload #4
    //   258: istore_3
    //   259: aload_0
    //   260: iload #4
    //   262: aload_1
    //   263: invokevirtual setResult : (ILandroid/content/Intent;)V
    //   266: iload #4
    //   268: istore_3
    //   269: new java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial <init> : ()V
    //   276: astore_1
    //   277: iload #4
    //   279: istore_3
    //   280: aload_1
    //   281: aload_0
    //   282: iload #4
    //   284: invokespecial a : (I)Ljava/lang/String;
    //   287: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: pop
    //   291: iload #4
    //   293: istore_3
    //   294: aload_1
    //   295: ldc_w ': '
    //   298: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: pop
    //   302: iload #4
    //   304: istore_3
    //   305: aload_1
    //   306: aload_0
    //   307: getfield k : Lcom/luajava/LuaState;
    //   310: iconst_m1
    //   311: invokevirtual toString : (I)Ljava/lang/String;
    //   314: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: pop
    //   318: iload #4
    //   320: istore_3
    //   321: new com/luajava/LuaException
    //   324: dup
    //   325: aload_1
    //   326: invokevirtual toString : ()Ljava/lang/String;
    //   329: invokespecial <init> : (Ljava/lang/String;)V
    //   332: athrow
    //   333: astore_1
    //   334: iconst_0
    //   335: istore_3
    //   336: aload_0
    //   337: aload_0
    //   338: iload_3
    //   339: invokespecial a : (I)Ljava/lang/String;
    //   342: invokevirtual setTitle : (Ljava/lang/CharSequence;)V
    //   345: aload_0
    //   346: aload_0
    //   347: getfield p : Landroid/widget/LinearLayout;
    //   350: invokevirtual setContentView : (Landroid/view/View;)V
    //   353: aload_0
    //   354: aload_1
    //   355: invokevirtual getMessage : ()Ljava/lang/String;
    //   358: invokevirtual sendMsg : (Ljava/lang/String;)V
    //   361: aload_1
    //   362: invokevirtual getMessage : ()Ljava/lang/String;
    //   365: astore_1
    //   366: aload_1
    //   367: ldc_w 'android.permission.'
    //   370: invokevirtual indexOf : (Ljava/lang/String;)I
    //   373: istore_3
    //   374: iload_3
    //   375: ifle -> 557
    //   378: iload_3
    //   379: ldc_w 'android.permission.'
    //   382: invokevirtual length : ()I
    //   385: iadd
    //   386: istore_3
    //   387: aload_1
    //   388: ldc_w '.'
    //   391: iload_3
    //   392: invokevirtual indexOf : (Ljava/lang/String;I)I
    //   395: istore #4
    //   397: iload #4
    //   399: iload_3
    //   400: if_icmple -> 557
    //   403: aload_1
    //   404: iload_3
    //   405: iload #4
    //   407: invokevirtual substring : (II)Ljava/lang/String;
    //   410: astore_2
    //   411: aload_0
    //   412: getfield k : Lcom/luajava/LuaState;
    //   415: ldc_w 'require'
    //   418: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   421: pop
    //   422: aload_0
    //   423: getfield k : Lcom/luajava/LuaState;
    //   426: ldc_w 'permission'
    //   429: invokevirtual pushString : (Ljava/lang/String;)V
    //   432: aload_0
    //   433: getfield k : Lcom/luajava/LuaState;
    //   436: iconst_1
    //   437: iconst_0
    //   438: iconst_0
    //   439: invokevirtual pcall : (III)I
    //   442: pop
    //   443: aload_0
    //   444: getfield k : Lcom/luajava/LuaState;
    //   447: ldc_w 'permission_info'
    //   450: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   453: pop
    //   454: aload_0
    //   455: getfield k : Lcom/luajava/LuaState;
    //   458: iconst_m1
    //   459: aload_2
    //   460: invokevirtual getField : (ILjava/lang/String;)I
    //   463: pop
    //   464: aload_2
    //   465: astore_1
    //   466: aload_0
    //   467: getfield k : Lcom/luajava/LuaState;
    //   470: iconst_m1
    //   471: invokevirtual isString : (I)Z
    //   474: ifeq -> 525
    //   477: new java/lang/StringBuilder
    //   480: dup
    //   481: invokespecial <init> : ()V
    //   484: astore_1
    //   485: aload_1
    //   486: aload_2
    //   487: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: pop
    //   491: aload_1
    //   492: ldc_w ' ('
    //   495: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   498: pop
    //   499: aload_1
    //   500: aload_0
    //   501: getfield k : Lcom/luajava/LuaState;
    //   504: iconst_m1
    //   505: invokevirtual toString : (I)Ljava/lang/String;
    //   508: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   511: pop
    //   512: aload_1
    //   513: ldc_w ')'
    //   516: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   519: pop
    //   520: aload_1
    //   521: invokevirtual toString : ()Ljava/lang/String;
    //   524: astore_1
    //   525: new java/lang/StringBuilder
    //   528: dup
    //   529: invokespecial <init> : ()V
    //   532: astore_2
    //   533: aload_2
    //   534: ldc_w '权限错误: '
    //   537: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   540: pop
    //   541: aload_2
    //   542: aload_1
    //   543: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   546: pop
    //   547: aload_0
    //   548: aload_2
    //   549: invokevirtual toString : ()Ljava/lang/String;
    //   552: invokevirtual sendMsg : (Ljava/lang/String;)V
    //   555: aconst_null
    //   556: areturn
    //   557: aload_0
    //   558: getfield E : Z
    //   561: istore #7
    //   563: aconst_null
    //   564: areturn
    // Exception table:
    //   from	to	target	type
    //   3	55	333	com/luajava/LuaException
    //   55	74	333	com/luajava/LuaException
    //   86	97	222	com/luajava/LuaException
    //   100	112	222	com/luajava/LuaException
    //   115	124	222	com/luajava/LuaException
    //   127	136	222	com/luajava/LuaException
    //   139	143	222	com/luajava/LuaException
    //   156	167	222	com/luajava/LuaException
    //   179	196	222	com/luajava/LuaException
    //   201	210	212	com/luajava/LuaException
    //   229	237	222	com/luajava/LuaException
    //   240	256	222	com/luajava/LuaException
    //   259	266	222	com/luajava/LuaException
    //   269	277	222	com/luajava/LuaException
    //   280	291	222	com/luajava/LuaException
    //   294	302	222	com/luajava/LuaException
    //   305	318	222	com/luajava/LuaException
    //   321	333	222	com/luajava/LuaException }
  
  public Object doString(String paramString, Object... paramVarArgs) {
    try {
      LuaState luaState = this.k;
      int i2 = 0;
      luaState.setTop(0);
      int i3 = this.k.LloadString(paramString);
      int i1 = i3;
      if (i3 == 0) {
        this.k.getGlobal("debug");
        this.k.getField(-1, "traceback");
        this.k.remove(-2);
        this.k.insert(-2);
        i3 = paramVarArgs.length;
        for (i1 = i2; i1 < i3; i1++)
          this.k.pushObjectValue(paramVarArgs[i1]); 
        i2 = this.k.pcall(i3, 1, -2 - i3);
        i1 = i2;
        if (i2 == 0)
          return this.k.toJavaObject(-1); 
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(a(i1));
      stringBuilder.append(": ");
      stringBuilder.append(this.k.toString(-1));
      throw new LuaException(stringBuilder.toString());
    } catch (LuaException paramString) {
      sendMsg(paramString.getMessage());
      return null;
    } 
  }
  
  public void finish(boolean paramBoolean) {
    if (!paramBoolean) {
      finish();
      return;
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      Intent intent = getIntent();
      if (intent != null && (intent.getFlags() & 0x80000) != 0) {
        finishAndRemoveTask();
        return;
      } 
    } 
    finish();
  }
  
  public Object get(String paramString) {
    synchronized (this.k) {
      this.k.getGlobal(paramString);
      return this.k.toJavaObject(-1);
    } 
  }
  
  public Object getArg(int paramInt) {
    Object[] arrayOfObject = (Object[])getIntent().getSerializableExtra("arg");
    return (arrayOfObject == null || arrayOfObject.length >= paramInt) ? null : arrayOfObject[paramInt];
  }
  
  public AssetManager getAssets() { return (this.f != null && this.f.getAssets() != null) ? this.f.getAssets() : super.getAssets(); }
  
  public ArrayList<ClassLoader> getClassLoaders() { return this.f.getClassLoaders(); }
  
  public Context getContext() { return this; }
  
  public View getDecorView() { return getWindow().getDecorView(); }
  
  public Map getGlobalData() { return ((LuaApplication)getApplication()).getGlobalData(); }
  
  public int getHeight() { return this.h; }
  
  public HashMap<String, String> getLibrarys() { return this.f.getLibrarys(); }
  
  public String getLocalDir() { return this.x; }
  
  public String getLuaCpath() { return this.e; }
  
  public String getLuaDir() { return this.b; }
  
  public String getLuaDir(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.b);
    stringBuilder.append("/");
    stringBuilder.append(paramString);
    File file = new File(stringBuilder.toString());
    return (!file.exists() && !file.mkdirs()) ? null : file.getAbsolutePath();
  }
  
  public String getLuaExtDir() { return this.A; }
  
  public String getLuaExtDir(String paramString) {
    File file = new File(getLuaExtDir(), paramString);
    return (!file.exists() && !file.mkdirs()) ? null : file.getAbsolutePath();
  }
  
  public String getLuaExtPath(String paramString) { return (new File(getLuaExtDir(), paramString)).getAbsolutePath(); }
  
  public String getLuaExtPath(String paramString1, String paramString2) { return (new File(getLuaExtDir(paramString1), paramString2)).getAbsolutePath(); }
  
  public String getLuaLpath() { return this.C; }
  
  public String getLuaPath() {
    Uri uri = getIntent().getData();
    if (uri == null)
      return null; 
    String str2 = uri.getPath();
    String str1 = str2;
    str1 = str2;
    if (!(new File(str2)).exists() && (new File(getLuaPath(str2))).exists())
      str1 = getLuaPath(str2); 
    this.l = str1;
    File file = new File(str1);
    this.b = (new File(this.l)).getParent();
    if (file.getName().equals("main.lua") && (new File(this.b, "init.lua")).exists()) {
      if (!a.contains(this.b)) {
        a.add(this.b);
        return str1;
      } 
    } else {
      for (String str = this.b; str != null; str = (new File(str)).getParent()) {
        if (a.contains(str)) {
          this.b = str;
          return str1;
        } 
        if ((new File(str, "main.lua")).exists() && (new File(str, "init.lua")).exists()) {
          this.b = str;
          if (!a.contains(this.b)) {
            a.add(this.b);
            return str1;
          } 
          break;
        } 
      } 
    } 
    return str1;
  }
  
  public String getLuaPath(String paramString) { return (new File(getLuaDir(), paramString)).getAbsolutePath(); }
  
  public String getLuaPath(String paramString1, String paramString2) { return (new File(getLuaDir(paramString1), paramString2)).getAbsolutePath(); }
  
  public LuaResources getLuaResources() {
    Resources resources2 = super.getResources();
    Resources resources1 = resources2;
    if (this.f != null) {
      resources1 = resources2;
      if (this.f.getResources() != null)
        resources1 = this.f.getResources(); 
    } 
    this.G = new LuaResources(getAssets(), resources1.getDisplayMetrics(), resources1.getConfiguration());
    this.G.setSuperResources(resources1);
    return this.G;
  }
  
  public LuaState getLuaState() { return this.k; }
  
  public Menu getOptionsMenu() { return this.s; }
  
  public String getPathFromUri(Uri paramUri) { // Byte code:
    //   0: aload_1
    //   1: ifnull -> 169
    //   4: iconst_1
    //   5: istore_2
    //   6: aload_1
    //   7: invokevirtual getScheme : ()Ljava/lang/String;
    //   10: astore #4
    //   12: aload #4
    //   14: invokevirtual hashCode : ()I
    //   17: istore_3
    //   18: iload_3
    //   19: ldc_w 3143036
    //   22: if_icmpeq -> 51
    //   25: iload_3
    //   26: ldc_w 951530617
    //   29: if_icmpeq -> 35
    //   32: goto -> 65
    //   35: aload #4
    //   37: ldc_w 'content'
    //   40: invokevirtual equals : (Ljava/lang/Object;)Z
    //   43: ifeq -> 65
    //   46: iconst_0
    //   47: istore_2
    //   48: goto -> 67
    //   51: aload #4
    //   53: ldc_w 'file'
    //   56: invokevirtual equals : (Ljava/lang/Object;)Z
    //   59: ifeq -> 65
    //   62: goto -> 67
    //   65: iconst_m1
    //   66: istore_2
    //   67: iload_2
    //   68: tableswitch default -> 92, 0 -> 100, 1 -> 95
    //   92: goto -> 169
    //   95: aload_1
    //   96: invokevirtual getPath : ()Ljava/lang/String;
    //   99: areturn
    //   100: aload_0
    //   101: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   104: aload_1
    //   105: iconst_1
    //   106: anewarray java/lang/String
    //   109: dup
    //   110: iconst_0
    //   111: ldc_w '_data'
    //   114: aastore
    //   115: aconst_null
    //   116: aconst_null
    //   117: aconst_null
    //   118: invokevirtual query : (Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   121: astore_1
    //   122: aload_1
    //   123: ifnull -> 169
    //   126: aload_1
    //   127: aload_0
    //   128: invokevirtual getPackageName : ()Ljava/lang/String;
    //   131: invokeinterface getColumnIndexOrThrow : (Ljava/lang/String;)I
    //   136: istore_2
    //   137: iload_2
    //   138: ifge -> 144
    //   141: goto -> 169
    //   144: aload_1
    //   145: iload_2
    //   146: invokeinterface getString : (I)Ljava/lang/String;
    //   151: astore #4
    //   153: aload_1
    //   154: invokeinterface moveToFirst : ()Z
    //   159: pop
    //   160: aload_1
    //   161: invokeinterface close : ()V
    //   166: aload #4
    //   168: areturn
    //   169: aconst_null
    //   170: areturn }
  
  public String getQuery(String paramString) {
    Uri uri = getIntent().getData();
    return (uri == null) ? null : uri.getQueryParameter(paramString);
  }
  
  public Resources getResources() { return (this.f != null && this.f.getResources() != null) ? this.f.getResources() : ((this.G != null) ? this.G : super.getResources()); }
  
  public Object getSharedData(String paramString) { return LuaApplication.getInstance().getSharedData(paramString); }
  
  public Object getSharedData(String paramString, Object paramObject) { return LuaApplication.getInstance().getSharedData(paramString, paramObject); }
  
  public Resources getSuperResources() { return super.getResources(); }
  
  public Uri getUriForFile(File paramFile) { return FileProvider.getUriForFile(this, getPackageName(), paramFile); }
  
  public Uri getUriForPath(String paramString) { return FileProvider.getUriForFile(this, getPackageName(), new File(paramString)); }
  
  public int getWidth() { return this.g; }
  
  public void initMain() { a.add(getLocalDir()); }
  
  public void installApk(String paramString) {
    Intent intent = new Intent("android.intent.action.VIEW");
    File file = new File(paramString);
    intent.setFlags(1);
    intent.setDataAndType(getUriForFile(file), a(file));
    startActivity(intent.addFlags(268435456).createChooser(intent, file.getName()));
  }
  
  public DexClassLoader loadApp(String paramString) { return this.f.loadApp(paramString); }
  
  public Bitmap loadBitmap(String paramString) { return LuaBitmap.getBitmap(this, paramString); }
  
  public DexClassLoader loadDex(String paramString) { return this.f.loadDex(paramString); }
  
  public Object loadLib(String paramString) {
    String str;
    int i1 = paramString.indexOf(".");
    if (i1 > 0) {
      str = paramString.substring(0, i1);
    } else {
      str = paramString;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.z);
    stringBuilder.append("/lib");
    stringBuilder.append(str);
    stringBuilder.append(".so");
    if (!(new File(stringBuilder.toString())).exists()) {
      StringBuilder stringBuilder1;
      stringBuilder = new StringBuilder();
      stringBuilder.append(this.b);
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
      stringBuilder.append(this.b);
      stringBuilder.append("/lib");
      stringBuilder.append(stringBuilder1);
      stringBuilder.append(".so");
      String str1 = stringBuilder.toString();
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append(this.z);
      stringBuilder2.append("/lib");
      stringBuilder2.append(stringBuilder1);
      stringBuilder2.append(".so");
      LuaUtil.copyFile(str1, stringBuilder2.toString());
    } 
    return this.k.getLuaObject("require").call(new Object[] { paramString });
  }
  
  public void loadResources(String paramString) { this.f.loadResources(paramString); }
  
  public void newActivity(int paramInt, String paramString) { newActivity(paramInt, paramString, null); }
  
  public void newActivity(int paramInt1, String paramString, int paramInt2, int paramInt3) { newActivity(paramInt1, paramString, paramInt2, paramInt3, null); }
  
  public void newActivity(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean) { newActivity(paramInt1, paramString, paramInt2, paramInt3, null, paramBoolean); }
  
  public void newActivity(int paramInt1, String paramString, int paramInt2, int paramInt3, Object[] paramArrayOfObject) { newActivity(paramInt1, paramString, paramInt2, paramInt3, paramArrayOfObject, false); }
  
  public void newActivity(int paramInt1, String paramString, int paramInt2, int paramInt3, Object[] paramArrayOfObject, boolean paramBoolean) { // Byte code:
    //   0: new android/content/Intent
    //   3: dup
    //   4: aload_0
    //   5: ldc com/androlua/LuaActivity
    //   7: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   10: astore #8
    //   12: iload #6
    //   14: ifeq -> 30
    //   17: new android/content/Intent
    //   20: dup
    //   21: aload_0
    //   22: ldc_w com/androlua/LuaActivityX
    //   25: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   28: astore #8
    //   30: aload #8
    //   32: ldc_w 'name'
    //   35: aload_2
    //   36: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   39: pop
    //   40: aload_2
    //   41: astore #7
    //   43: aload_2
    //   44: iconst_0
    //   45: invokevirtual charAt : (I)C
    //   48: bipush #47
    //   50: if_icmpeq -> 95
    //   53: new java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial <init> : ()V
    //   60: astore #7
    //   62: aload #7
    //   64: aload_0
    //   65: getfield b : Ljava/lang/String;
    //   68: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload #7
    //   74: ldc_w '/'
    //   77: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload #7
    //   83: aload_2
    //   84: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: pop
    //   88: aload #7
    //   90: invokevirtual toString : ()Ljava/lang/String;
    //   93: astore #7
    //   95: new java/io/File
    //   98: dup
    //   99: aload #7
    //   101: invokespecial <init> : (Ljava/lang/String;)V
    //   104: astore #9
    //   106: aload #9
    //   108: invokevirtual isDirectory : ()Z
    //   111: ifeq -> 189
    //   114: new java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial <init> : ()V
    //   121: astore_2
    //   122: aload_2
    //   123: aload #7
    //   125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_2
    //   130: ldc_w '/main.lua'
    //   133: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: pop
    //   137: new java/io/File
    //   140: dup
    //   141: aload_2
    //   142: invokevirtual toString : ()Ljava/lang/String;
    //   145: invokespecial <init> : (Ljava/lang/String;)V
    //   148: invokevirtual exists : ()Z
    //   151: ifeq -> 189
    //   154: new java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial <init> : ()V
    //   161: astore_2
    //   162: aload_2
    //   163: aload #7
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: ldc_w '/main.lua'
    //   172: astore #7
    //   174: aload_2
    //   175: aload #7
    //   177: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: aload_2
    //   182: invokevirtual toString : ()Ljava/lang/String;
    //   185: astore_2
    //   186: goto -> 245
    //   189: aload #9
    //   191: invokevirtual isDirectory : ()Z
    //   194: ifne -> 208
    //   197: aload #7
    //   199: astore_2
    //   200: aload #9
    //   202: invokevirtual exists : ()Z
    //   205: ifne -> 245
    //   208: aload #7
    //   210: astore_2
    //   211: aload #7
    //   213: ldc_w '.lua'
    //   216: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   219: ifne -> 245
    //   222: new java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial <init> : ()V
    //   229: astore_2
    //   230: aload_2
    //   231: aload #7
    //   233: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: pop
    //   237: ldc_w '.lua'
    //   240: astore #7
    //   242: goto -> 174
    //   245: new java/io/File
    //   248: dup
    //   249: aload_2
    //   250: invokespecial <init> : (Ljava/lang/String;)V
    //   253: invokevirtual exists : ()Z
    //   256: ifne -> 268
    //   259: new java/io/FileNotFoundException
    //   262: dup
    //   263: aload_2
    //   264: invokespecial <init> : (Ljava/lang/String;)V
    //   267: athrow
    //   268: new java/lang/StringBuilder
    //   271: dup
    //   272: invokespecial <init> : ()V
    //   275: astore #7
    //   277: aload #7
    //   279: ldc_w 'file://'
    //   282: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: pop
    //   286: aload #7
    //   288: aload_2
    //   289: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: pop
    //   293: aload #8
    //   295: aload #7
    //   297: invokevirtual toString : ()Ljava/lang/String;
    //   300: invokestatic parse : (Ljava/lang/String;)Landroid/net/Uri;
    //   303: invokevirtual setData : (Landroid/net/Uri;)Landroid/content/Intent;
    //   306: pop
    //   307: iload #6
    //   309: ifeq -> 338
    //   312: getstatic android/os/Build$VERSION.SDK_INT : I
    //   315: bipush #21
    //   317: if_icmplt -> 338
    //   320: aload #8
    //   322: ldc_w 524288
    //   325: invokevirtual addFlags : (I)Landroid/content/Intent;
    //   328: pop
    //   329: aload #8
    //   331: ldc_w 134217728
    //   334: invokevirtual addFlags : (I)Landroid/content/Intent;
    //   337: pop
    //   338: aload #5
    //   340: ifnull -> 354
    //   343: aload #8
    //   345: ldc_w 'arg'
    //   348: aload #5
    //   350: invokevirtual putExtra : (Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   353: pop
    //   354: iload #6
    //   356: ifeq -> 368
    //   359: aload_0
    //   360: aload #8
    //   362: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   365: goto -> 375
    //   368: aload_0
    //   369: aload #8
    //   371: iload_1
    //   372: invokevirtual startActivityForResult : (Landroid/content/Intent;I)V
    //   375: aload_0
    //   376: iload_3
    //   377: iload #4
    //   379: invokevirtual overridePendingTransition : (II)V
    //   382: return }
  
  public void newActivity(int paramInt, String paramString, boolean paramBoolean) { newActivity(paramInt, paramString, null, paramBoolean); }
  
  public void newActivity(int paramInt, String paramString, Object[] paramArrayOfObject) { newActivity(paramInt, paramString, paramArrayOfObject, false); }
  
  public void newActivity(int paramInt, String paramString, Object[] paramArrayOfObject, boolean paramBoolean) { // Byte code:
    //   0: new android/content/Intent
    //   3: dup
    //   4: aload_0
    //   5: ldc com/androlua/LuaActivity
    //   7: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   10: astore #6
    //   12: iload #4
    //   14: ifeq -> 30
    //   17: new android/content/Intent
    //   20: dup
    //   21: aload_0
    //   22: ldc_w com/androlua/LuaActivityX
    //   25: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   28: astore #6
    //   30: aload #6
    //   32: ldc_w 'name'
    //   35: aload_2
    //   36: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   39: pop
    //   40: aload_2
    //   41: astore #5
    //   43: aload_2
    //   44: iconst_0
    //   45: invokevirtual charAt : (I)C
    //   48: bipush #47
    //   50: if_icmpeq -> 95
    //   53: new java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial <init> : ()V
    //   60: astore #5
    //   62: aload #5
    //   64: aload_0
    //   65: getfield b : Ljava/lang/String;
    //   68: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload #5
    //   74: ldc_w '/'
    //   77: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload #5
    //   83: aload_2
    //   84: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: pop
    //   88: aload #5
    //   90: invokevirtual toString : ()Ljava/lang/String;
    //   93: astore #5
    //   95: new java/io/File
    //   98: dup
    //   99: aload #5
    //   101: invokespecial <init> : (Ljava/lang/String;)V
    //   104: astore #7
    //   106: aload #7
    //   108: invokevirtual isDirectory : ()Z
    //   111: ifeq -> 189
    //   114: new java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial <init> : ()V
    //   121: astore_2
    //   122: aload_2
    //   123: aload #5
    //   125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_2
    //   130: ldc_w '/main.lua'
    //   133: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: pop
    //   137: new java/io/File
    //   140: dup
    //   141: aload_2
    //   142: invokevirtual toString : ()Ljava/lang/String;
    //   145: invokespecial <init> : (Ljava/lang/String;)V
    //   148: invokevirtual exists : ()Z
    //   151: ifeq -> 189
    //   154: new java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial <init> : ()V
    //   161: astore_2
    //   162: aload_2
    //   163: aload #5
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: ldc_w '/main.lua'
    //   172: astore #5
    //   174: aload_2
    //   175: aload #5
    //   177: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: aload_2
    //   182: invokevirtual toString : ()Ljava/lang/String;
    //   185: astore_2
    //   186: goto -> 245
    //   189: aload #7
    //   191: invokevirtual isDirectory : ()Z
    //   194: ifne -> 208
    //   197: aload #5
    //   199: astore_2
    //   200: aload #7
    //   202: invokevirtual exists : ()Z
    //   205: ifne -> 245
    //   208: aload #5
    //   210: astore_2
    //   211: aload #5
    //   213: ldc_w '.lua'
    //   216: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   219: ifne -> 245
    //   222: new java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial <init> : ()V
    //   229: astore_2
    //   230: aload_2
    //   231: aload #5
    //   233: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: pop
    //   237: ldc_w '.lua'
    //   240: astore #5
    //   242: goto -> 174
    //   245: new java/io/File
    //   248: dup
    //   249: aload_2
    //   250: invokespecial <init> : (Ljava/lang/String;)V
    //   253: invokevirtual exists : ()Z
    //   256: ifne -> 268
    //   259: new java/io/FileNotFoundException
    //   262: dup
    //   263: aload_2
    //   264: invokespecial <init> : (Ljava/lang/String;)V
    //   267: athrow
    //   268: iload #4
    //   270: ifeq -> 299
    //   273: getstatic android/os/Build$VERSION.SDK_INT : I
    //   276: bipush #21
    //   278: if_icmplt -> 299
    //   281: aload #6
    //   283: ldc_w 524288
    //   286: invokevirtual addFlags : (I)Landroid/content/Intent;
    //   289: pop
    //   290: aload #6
    //   292: ldc_w 134217728
    //   295: invokevirtual addFlags : (I)Landroid/content/Intent;
    //   298: pop
    //   299: new java/lang/StringBuilder
    //   302: dup
    //   303: invokespecial <init> : ()V
    //   306: astore #5
    //   308: aload #5
    //   310: ldc_w 'file://'
    //   313: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: pop
    //   317: aload #5
    //   319: aload_2
    //   320: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: pop
    //   324: aload #6
    //   326: aload #5
    //   328: invokevirtual toString : ()Ljava/lang/String;
    //   331: invokestatic parse : (Ljava/lang/String;)Landroid/net/Uri;
    //   334: invokevirtual setData : (Landroid/net/Uri;)Landroid/content/Intent;
    //   337: pop
    //   338: aload_3
    //   339: ifnull -> 352
    //   342: aload #6
    //   344: ldc_w 'arg'
    //   347: aload_3
    //   348: invokevirtual putExtra : (Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   351: pop
    //   352: iload #4
    //   354: ifeq -> 364
    //   357: aload_0
    //   358: aload #6
    //   360: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   363: return
    //   364: aload_0
    //   365: aload #6
    //   367: iload_1
    //   368: invokevirtual startActivityForResult : (Landroid/content/Intent;I)V
    //   371: return }
  
  public void newActivity(String paramString) { newActivity(1, paramString, null); }
  
  public void newActivity(String paramString, int paramInt1, int paramInt2) { newActivity(1, paramString, paramInt1, paramInt2, null); }
  
  public void newActivity(String paramString, int paramInt1, int paramInt2, boolean paramBoolean) { newActivity(1, paramString, paramInt1, paramInt2, null, paramBoolean); }
  
  public void newActivity(String paramString, int paramInt1, int paramInt2, Object[] paramArrayOfObject) { newActivity(1, paramString, paramInt1, paramInt2, paramArrayOfObject); }
  
  public void newActivity(String paramString, int paramInt1, int paramInt2, Object[] paramArrayOfObject, boolean paramBoolean) { newActivity(1, paramString, paramInt1, paramInt2, paramArrayOfObject, paramBoolean); }
  
  public void newActivity(String paramString, boolean paramBoolean) { newActivity(1, paramString, null, paramBoolean); }
  
  public void newActivity(String paramString, Object[] paramArrayOfObject) { newActivity(1, paramString, paramArrayOfObject); }
  
  public void newActivity(String paramString, Object[] paramArrayOfObject, boolean paramBoolean) { newActivity(1, paramString, paramArrayOfObject, paramBoolean); }
  
  public LuaAsyncTask newTask(LuaObject paramLuaObject) { return newTask(paramLuaObject, null, null); }
  
  public LuaAsyncTask newTask(LuaObject paramLuaObject1, LuaObject paramLuaObject2) { return newTask(paramLuaObject1, null, paramLuaObject2); }
  
  public LuaAsyncTask newTask(LuaObject paramLuaObject1, LuaObject paramLuaObject2, LuaObject paramLuaObject3) { return new LuaAsyncTask(this, paramLuaObject1, paramLuaObject2, paramLuaObject3); }
  
  public LuaThread newThread(LuaObject paramLuaObject) { return newThread(paramLuaObject, null); }
  
  public LuaThread newThread(LuaObject paramLuaObject, Object[] paramArrayOfObject) { return new LuaThread(this, paramLuaObject, true, paramArrayOfObject); }
  
  public LuaTimer newTimer(LuaObject paramLuaObject) { return newTimer(paramLuaObject, null); }
  
  public LuaTimer newTimer(LuaObject paramLuaObject, Object[] paramArrayOfObject) { return new LuaTimer(this, paramLuaObject, paramArrayOfObject); }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramIntent != null) {
      String str = paramIntent.getStringExtra("name");
      if (str != null) {
        Object[] arrayOfObject = (Object[])paramIntent.getSerializableExtra("data");
        if (arrayOfObject == null) {
          runFunc("onResult", new Object[] { str });
        } else {
          Object[] arrayOfObject1 = new Object[arrayOfObject.length + 1];
          arrayOfObject1[0] = str;
          byte b1;
          for (b1 = 0; b1 < arrayOfObject.length; b1 = b2) {
            byte b2 = b1 + true;
            arrayOfObject1[b2] = arrayOfObject[b1];
          } 
          Object object = runFunc("onResult", arrayOfObject1);
          if (object != null && object.getClass() == Boolean.class && ((Boolean)object).booleanValue())
            return; 
        } 
      } 
    } 
    runFunc("onActivityResult", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), paramIntent });
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    super.onConfigurationChanged(paramConfiguration);
    WindowManager windowManager = (WindowManager)getSystemService("window");
    DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    this.g = displayMetrics.widthPixels;
    this.h = displayMetrics.heightPixels;
    runFunc("onConfigurationChanged", new Object[] { paramConfiguration });
  }
  
  public void onContentChanged() {
    super.onContentChanged();
    this.q = true;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem) {
    runFunc("onContextItemSelected", new Object[] { paramMenuItem });
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public void onCreate(Bundle paramBundle) {
    setTheme(16974064);
    StrictMode.setThreadPolicy((new StrictMode.ThreadPolicy.Builder()).permitAll().build());
    super.onCreate(null);
    WindowManager windowManager = (WindowManager)getSystemService("window");
    DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    this.g = displayMetrics.widthPixels;
    this.h = displayMetrics.heightPixels;
    this.p = new LinearLayout(this);
    ScrollView scrollView = new ScrollView(this);
    byte b1 = 1;
    scrollView.setFillViewport(true);
    this.d = new TextView(this);
    this.d.setTextColor(-16777216);
    scrollView.addView(this.d, new ViewGroup.LayoutParams(-1, -2));
    this.d.setText("");
    this.d.setTextIsSelectable(true);
    this.i = new ListView(this);
    this.i.setFastScrollEnabled(true);
    this.j = new ArrayListAdapter<String>(this, this, 17367043) {
        public View getView(int param1Int, View param1View, ViewGroup param1ViewGroup) {
          TextView textView = (TextView)super.getView(param1Int, param1View, param1ViewGroup);
          if (param1View == null)
            textView.setTextIsSelectable(true); 
          return textView;
        }
      };
    this.i.setAdapter(this.j);
    this.p.addView(this.i, new ViewGroup.LayoutParams(-1, -2));
    LuaApplication luaApplication = (LuaApplication)getApplication();
    if (luaApplication.getClass() != LuaApplication.class)
      do {
      
      } while (luaApplication.getClass() != LuaApplication.class); 
    this.x = luaApplication.getLocalDir();
    this.y = luaApplication.getOdexDir();
    this.z = luaApplication.getLibDir();
    this.D = luaApplication.getMdDir();
    this.e = luaApplication.getLuaCpath();
    this.b = this.x;
    this.C = luaApplication.getLuaLpath();
    this.A = luaApplication.getLuaExtDir();
    this.c = new MainHandler(this);
    try {
      this.d.setText("");
      this.j.clear();
      Object[] arrayOfObject2 = (Object[])getIntent().getSerializableExtra("arg");
      Object[] arrayOfObject1 = arrayOfObject2;
      if (arrayOfObject2 == null)
        arrayOfObject1 = new Object[0]; 
      this.l = getLuaPath();
      this.I = (new File(this.l)).getName();
      int i1 = this.I.lastIndexOf(".");
      if (i1 > 0)
        this.I = this.I.substring(0, i1); 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(this.b);
      stringBuilder.append("/?.lua;");
      stringBuilder.append(this.b);
      stringBuilder.append("/lua/?.lua;");
      stringBuilder.append(this.b);
      stringBuilder.append("/?/init.lua;");
      stringBuilder.append(this.C);
      this.C = stringBuilder.toString();
      c();
      this.f = new LuaDexLoader(this);
      this.f.loadLibs();
      K.put(this.I, this);
      doFile(this.l, arrayOfObject1);
      this.n = Boolean.valueOf(true);
      if (!this.I.equals("main"))
        runFunc("main", arrayOfObject1); 
      runFunc(this.I, arrayOfObject1);
      runFunc("onCreate", new Object[] { paramBundle });
      if (!this.q) {
        TypedArray typedArray = getTheme().obtainStyledAttributes(new int[] { 16842801, 16842806, 16843599 });
        i1 = typedArray.getColor(0, 16711935);
        int i2 = typedArray.getColor(1, 16711935);
        typedArray.recycle();
        this.d.setTextColor(i2);
        this.p.setBackgroundColor(i1);
        setContentView(this.p);
      } 
      this.L = this.k.getLuaObject("onKeyShortcut");
      if (this.L.isNil())
        this.L = null; 
      this.t = this.k.getLuaObject("onKeyDown");
      if (this.t.isNil())
        this.t = null; 
      this.u = this.k.getLuaObject("onKeyUp");
      if (this.u.isNil())
        this.u = null; 
      this.v = this.k.getLuaObject("onKeyLongPress");
      if (this.v.isNil())
        this.v = null; 
      this.w = this.k.getLuaObject("onTouchEvent");
      if (this.w.isNil())
        this.w = null; 
      luaObject = this.k.getLuaObject("onAccessibilityEvent");
      if (luaObject.isFunction())
        LuaAccessibilityService.onAccessibilityEvent = luaObject.getFunction(); 
      a();
      b();
      try {
        throw new RuntimeException("");
      } catch (Exception luaObject) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a.a(luaObject, new PrintStream(byteArrayOutputStream));
        String[] arrayOfString = byteArrayOutputStream.toString().split("\n");
        while (b1 < arrayOfString.length) {
          String str = arrayOfString[b1];
          if (str.contains("com.androlua") || str.contains("com.nirenr.talkman") || str.contains("android.app") || str.contains("android.os") || str.contains("java.lang") || str.contains("com.android")) {
            b1++;
            continue;
          } 
          runFunc("onHook", new Object[0]);
          return;
        } 
        return;
      } 
    } catch (Exception paramBundle) {
      sendMsg(paramBundle.getMessage());
      setContentView(this.p);
      return;
    } 
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo) {
    runFunc("onCreateContextMenu", new Object[] { paramContextMenu, paramView, paramContextMenuInfo });
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    this.s = paramMenu;
    runFunc("onCreateOptionsMenu", new Object[] { paramMenu });
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy() {
    if (this.B != null)
      unregisterReceiver(this.B); 
    Iterator iterator = this.H.iterator();
    while (iterator.hasNext())
      ((LuaGcable)iterator.next()).gc(); 
    K.remove(this.I);
    runFunc("onDestroy", new Object[0]);
    super.onDestroy();
    System.gc();
    this.k.gc(2, 1);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    if (this.t != null)
      try {
        Object object = this.t.call(new Object[] { Integer.valueOf(paramInt), paramKeyEvent });
        if (object != null && object.getClass() == Boolean.class) {
          boolean bool = ((Boolean)object).booleanValue();
          if (bool)
            return true; 
        } 
      } catch (LuaException luaException) {
        sendError("onKeyDown", luaException);
      }  
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent) {
    if (this.v != null)
      try {
        Object object = this.v.call(new Object[] { Integer.valueOf(paramInt), paramKeyEvent });
        if (object != null && object.getClass() == Boolean.class) {
          boolean bool = ((Boolean)object).booleanValue();
          if (bool)
            return true; 
        } 
      } catch (LuaException luaException) {
        sendError("onKeyLongPress", luaException);
      }  
    return super.onKeyLongPress(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent) {
    if (this.L != null)
      try {
        Object object = this.L.call(new Object[] { Integer.valueOf(paramInt), paramKeyEvent });
        if (object != null && object.getClass() == Boolean.class) {
          boolean bool = ((Boolean)object).booleanValue();
          if (bool)
            return true; 
        } 
      } catch (LuaException luaException) {
        sendError("onKeyShortcut", luaException);
      }  
    return super.onKeyShortcut(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
    if (this.u != null)
      try {
        Object object = this.u.call(new Object[] { Integer.valueOf(paramInt), paramKeyEvent });
        if (object != null && object.getClass() == Boolean.class) {
          boolean bool = ((Boolean)object).booleanValue();
          if (bool)
            return true; 
        } 
      } catch (LuaException luaException) {
        sendError("onKeyUp", luaException);
      }  
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem) {
    if (!paramMenuItem.hasSubMenu())
      runFunc("onMenuItemSelected", new Object[] { Integer.valueOf(paramInt), paramMenuItem }); 
    return super.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    Object object;
    if (!paramMenuItem.hasSubMenu()) {
      object = runFunc("onOptionsItemSelected", new Object[] { paramMenuItem });
    } else {
      object = null;
    } 
    return (object != null && object.getClass() == Boolean.class && ((Boolean)object).booleanValue()) ? true : super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause() {
    super.onPause();
    runFunc("onPause", new Object[0]);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) { runFunc("onReceive", new Object[] { paramContext, paramIntent }); }
  
  protected void onResume() {
    super.onResume();
    runFunc("onResume", new Object[0]);
  }
  
  protected void onStart() {
    super.onStart();
    runFunc("onStart", new Object[0]);
    StatService.onPageStart(this, this.I);
  }
  
  protected void onStop() {
    super.onStop();
    runFunc("onStop", new Object[0]);
    StatService.onPageEnd(this, this.I);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    if (this.w != null)
      try {
        Object object = this.w.call(new Object[] { paramMotionEvent });
        if (object != null && object.getClass() == Boolean.class) {
          boolean bool = ((Boolean)object).booleanValue();
          if (bool)
            return true; 
        } 
      } catch (LuaException luaException) {
        sendError("onTouchEvent", luaException);
      }  
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void push(int paramInt, String paramString) {
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    message.setData(bundle);
    message.what = paramInt;
    this.c.sendMessage(message);
  }
  
  public void push(int paramInt, String paramString, Object[] paramArrayOfObject) {
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    bundle.putSerializable("args", paramArrayOfObject);
    message.setData(bundle);
    message.what = paramInt;
    this.c.sendMessage(message);
  }
  
  public byte[] readAsset(String paramString) {
    InputStream inputStream = getAssets().open(paramString);
    byte[] arrayOfByte = a(inputStream);
    inputStream.close();
    return arrayOfByte;
  }
  
  public void regGc(LuaGcable paramLuaGcable) { this.H.add(paramLuaGcable); }
  
  public Intent registerReceiver(IntentFilter paramIntentFilter) {
    if (this.B != null)
      unregisterReceiver(this.B); 
    this.B = new LuaBroadcastReceiver(this);
    return registerReceiver(this.B, paramIntentFilter);
  }
  
  public Intent registerReceiver(LuaBroadcastReceiver.OnReceiveListener paramOnReceiveListener, IntentFilter paramIntentFilter) { return registerReceiver(new LuaBroadcastReceiver(paramOnReceiveListener), paramIntentFilter); }
  
  public Intent registerReceiver(LuaBroadcastReceiver paramLuaBroadcastReceiver, IntentFilter paramIntentFilter) { return registerReceiver(paramLuaBroadcastReceiver, paramIntentFilter); }
  
  public void result(Object[] paramArrayOfObject) {
    Intent intent = new Intent();
    intent.putExtra("name", getIntent().getStringExtra("name"));
    intent.putExtra("data", paramArrayOfObject);
    setResult(0, intent);
    finish();
  }
  
  public Object runFunc(String paramString, Object... paramVarArgs) {
    if (this.k != null) {
      LuaState luaState = this.k;
      /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{com/luajava/LuaState}, name=null} */
      try {
        LuaState luaState1 = this.k;
        int i1 = 0;
        luaState1.setTop(0);
        this.k.pushGlobalTable();
        this.k.pushString(paramString);
        this.k.rawGet(-2);
        if (this.k.isFunction(-1)) {
          this.k.getGlobal("debug");
          this.k.getField(-1, "traceback");
          this.k.remove(-2);
          this.k.insert(-2);
          int i2 = paramVarArgs.length;
          while (i1 < i2) {
            this.k.pushObjectValue(paramVarArgs[i1]);
            i1++;
          } 
          i1 = this.k.pcall(i2, 1, -2 - i2);
          if (i1 == 0) {
            Object object = this.k.toJavaObject(-1);
            /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{com/luajava/LuaState}, name=null} */
            return object;
          } 
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(a(i1));
          stringBuilder.append(": ");
          stringBuilder.append(this.k.toString(-1));
          throw new LuaException(stringBuilder.toString());
        } 
      } catch (LuaException paramVarArgs) {
        sendError(paramString, paramVarArgs);
      } finally {}
      /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{com/luajava/LuaState}, name=null} */
    } 
    return null;
  }
  
  public void sendError(String paramString, Exception paramException) {
    Object object = runFunc("onError", new Object[] { paramString, paramException });
    if (object != null && object.getClass() == Boolean.class && ((Boolean)object).booleanValue())
      return; 
    object = new StringBuilder();
    object.append(paramString);
    object.append(": ");
    object.append(paramException.getMessage());
    sendMsg(object.toString());
  }
  
  public void sendMsg(String paramString) {
    Message message = new Message();
    Bundle bundle = new Bundle();
    bundle.putString("data", paramString);
    message.setData(bundle);
    message.what = 0;
    this.c.sendMessage(message);
    Log.i("lua", paramString);
  }
  
  public void set(String paramString, Object paramObject) { push(1, paramString, new Object[] { paramObject }); }
  
  public void setContentView(LuaObject paramLuaObject) { setContentView(paramLuaObject, null); }
  
  public void setContentView(LuaObject paramLuaObject1, LuaObject paramLuaObject2) {
    Object[] arrayOfObject;
    LuaObject luaObject = this.k.getLuaObject("loadlayout");
    if (paramLuaObject1.isString()) {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = paramLuaObject1.getString();
      arrayOfObject1[1] = paramLuaObject2;
      arrayOfObject = arrayOfObject1;
    } else if (arrayOfObject.isTable()) {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = arrayOfObject;
      arrayOfObject1[1] = paramLuaObject2;
      arrayOfObject = arrayOfObject1;
    } else {
      throw new LuaException("layout may be table or string.");
    } 
    View view = (View)luaObject.call(arrayOfObject);
    setContentView(view);
  }
  
  public void setContentView(String paramString) { setContentView(paramString, null); }
  
  public void setContentView(String paramString, LuaObject paramLuaObject) { setContentView((View)this.k.getLuaObject("loadlayout").call(new Object[] { paramString, paramLuaObject })); }
  
  public void setDebug(boolean paramBoolean) { this.F = paramBoolean; }
  
  public void setFragment(Fragment paramFragment) {
    this.q = true;
    getFragmentManager().beginTransaction().replace(16908290, paramFragment).commit();
  }
  
  public void setLuaDir(String paramString) { this.b = paramString; }
  
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
    //   32: putfield A : Ljava/lang/String;
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
    //   106: putfield A : Ljava/lang/String;
    //   109: iload_2
    //   110: iconst_1
    //   111: iadd
    //   112: istore_2
    //   113: goto -> 59
    //   116: aload_0
    //   117: getfield A : Ljava/lang/String;
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
    //   141: getfield A : Ljava/lang/String;
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
  
  public void setTitle(CharSequence paramCharSequence) {
    super.setTitle(paramCharSequence);
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityManager.TaskDescription taskDescription;
      try {
        ActivityManager.TaskDescription taskDescription1 = new ActivityManager.TaskDescription(paramCharSequence.toString(), loadBitmap(getLuaPath("icon.png")));
        taskDescription = taskDescription1;
      } catch (IOException iOException) {
        a.a(iOException);
        taskDescription = new ActivityManager.TaskDescription(taskDescription.toString());
      } 
      setTaskDescription(taskDescription);
    } 
  }
  
  public void shareFile(String paramString) {
    Intent intent = new Intent("android.intent.action.SEND");
    File file = new File(paramString);
    intent.setType(a(file));
    intent.setFlags(1);
    startActivity(intent.putExtra("android.intent.extra.STREAM", getUriForFile(file)).createChooser(intent, file.getName()));
  }
  
  @SuppressLint({"ShowToast"})
  public void showToast(String paramString) {
    long l1 = System.currentTimeMillis();
    if (this.o == null || l1 - this.r > 1000L) {
      this.m.setLength(0);
      this.o = Toast.makeText(this, paramString, 1);
      this.m.append(paramString);
      this.o.show();
    } else {
      this.m.append("\n");
      this.m.append(paramString);
      this.o.setText(this.m.toString());
      this.o.setDuration(1);
    } 
    this.r = l1;
  }
  
  public ComponentName startService() { return startService(null, null); }
  
  public ComponentName startService(String paramString) { return startService(paramString, null); }
  
  public ComponentName startService(String paramString, Object[] paramArrayOfObject) {
    Intent intent = new Intent(this, LuaService.class);
    intent.putExtra("luaDir", this.b);
    intent.putExtra("luaPath", this.l);
    if (paramString != null) {
      StringBuilder stringBuilder;
      if (paramString.charAt(0) != '/') {
        stringBuilder = new StringBuilder();
        stringBuilder.append("file://");
        stringBuilder.append(this.b);
        stringBuilder.append("/");
        stringBuilder.append(paramString);
        paramString = ".lua";
      } else {
        stringBuilder = new StringBuilder();
        stringBuilder.append("file://");
      } 
      stringBuilder.append(paramString);
      intent.setData(Uri.parse(stringBuilder.toString()));
    } 
    if (paramArrayOfObject != null)
      intent.putExtra("arg", paramArrayOfObject); 
    return startService(intent);
  }
  
  public ComponentName startService(Object[] paramArrayOfObject) { return startService(null, paramArrayOfObject); }
  
  public boolean stopService() { return stopService(new Intent(this, LuaService.class)); }
  
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
  
  public long test(String paramString, int paramInt) {
    long l1 = System.currentTimeMillis();
    for (byte b1 = 0; b1 < paramInt; b1++)
      this.k.LdoString(paramString); 
    return System.currentTimeMillis() - l1;
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
    ticker.start();
    ticker.setPeriod(paramLong);
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
  
  public void unZipAssets(String paramString1, String paramString2) {
    File file = new File(paramString2);
    if (!file.exists())
      file.mkdirs(); 
    try {
      InputStream inputStream = getAssets().open(paramString1);
      ZipInputStream zipInputStream = new ZipInputStream(inputStream);
      ZipEntry zipEntry = zipInputStream.getNextEntry();
      byte[] arrayOfByte = new byte[4096];
      while (zipEntry != null) {
        if (zipEntry.isDirectory()) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(paramString2);
          stringBuilder.append(File.separator);
          stringBuilder.append(zipEntry.getName());
          (new File(stringBuilder.toString())).mkdir();
        } else {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(paramString2);
          stringBuilder.append(File.separator);
          stringBuilder.append(zipEntry.getName());
          File file1 = new File(stringBuilder.toString());
          file1.createNewFile();
          FileOutputStream fileOutputStream = new FileOutputStream(file1);
          while (true) {
            int i1 = zipInputStream.read(arrayOfByte);
            if (i1 > 0) {
              fileOutputStream.write(arrayOfByte, 0, i1);
              continue;
            } 
            break;
          } 
          fileOutputStream.close();
        } 
        zipEntry = zipInputStream.getNextEntry();
      } 
      zipInputStream.close();
      return;
    } catch (IOException paramString1) {
      return;
    } 
  }
  
  public class MainHandler extends Handler {
    public MainHandler(LuaActivity this$0) {}
    
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
          LuaActivity.a(this.a, bundle.getString("data"), (Object[])bundle.getSerializable("args")[0]);
          return;
        case 0:
          break;
      } 
      String str1 = bundle.getData().getString("data");
      if (LuaActivity.a(this.a))
        this.a.showToast(str1); 
      TextView textView = LuaActivity.b(this.a);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str1);
      stringBuilder.append("\n");
      textView.append(stringBuilder.toString());
      LuaActivity.c(this.a).add(str1);
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
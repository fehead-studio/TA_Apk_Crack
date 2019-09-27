package com.androlua;

import android.app.Application;
import android.content.Context;
import android.content.FileProvider;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.widget.Toast;
import com.luajava.LuaState;
import com.luajava.LuaTable;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class LuaApplication extends Application implements LuaContext {
  private static LuaApplication h;
  
  private static HashMap<String, Object> i = new HashMap();
  
  protected String a;
  
  protected String b;
  
  protected String c;
  
  protected String d;
  
  protected String e;
  
  protected String f;
  
  protected String g;
  
  private SharedPreferences j;
  
  private static SharedPreferences a(Context paramContext) {
    if (Build.VERSION.SDK_INT >= 24) {
      Context context = paramContext.createDeviceProtectedStorageContext();
      return (context != null) ? PreferenceManager.getDefaultSharedPreferences(context) : PreferenceManager.getDefaultSharedPreferences(paramContext);
    } 
    return PreferenceManager.getDefaultSharedPreferences(paramContext);
  }
  
  public static LuaApplication getInstance() { return h; }
  
  public void call(String paramString, Object[] paramArrayOfObject) {}
  
  public Object doFile(String paramString, Object[] paramArrayOfObject) { return null; }
  
  public Object get(String paramString) { return i.get(paramString); }
  
  public ArrayList<ClassLoader> getClassLoaders() { return null; }
  
  public Context getContext() { return this; }
  
  public Map getGlobalData() { return i; }
  
  public int getHeight() { return (getResources().getDisplayMetrics()).heightPixels; }
  
  public String getLibDir() { return this.c; }
  
  public String getLocalDir() { return this.a; }
  
  public String getLuaCpath() { return this.e; }
  
  public String getLuaDir() { return this.a; }
  
  public String getLuaDir(String paramString) { return this.a; }
  
  public String getLuaExtDir() { return this.g; }
  
  public String getLuaExtDir(String paramString) {
    File file = new File(getLuaExtDir(), paramString);
    return (!file.exists() && !file.mkdirs()) ? file.getAbsolutePath() : file.getAbsolutePath();
  }
  
  public String getLuaExtPath(String paramString) { return (new File(getLuaExtDir(), paramString)).getAbsolutePath(); }
  
  public String getLuaExtPath(String paramString1, String paramString2) { return (new File(getLuaExtDir(paramString1), paramString2)).getAbsolutePath(); }
  
  public String getLuaLpath() { return this.f; }
  
  public String getLuaPath() { return null; }
  
  public String getLuaPath(String paramString) { return (new File(getLuaDir(), paramString)).getAbsolutePath(); }
  
  public String getLuaPath(String paramString1, String paramString2) { return (new File(getLuaDir(paramString1), paramString2)).getAbsolutePath(); }
  
  public LuaState getLuaState() { return null; }
  
  public String getMdDir() { return this.d; }
  
  public String getOdexDir() { return this.b; }
  
  public String getPathFromUri(Uri paramUri) { // Byte code:
    //   0: aload_1
    //   1: ifnull -> 168
    //   4: iconst_1
    //   5: istore_2
    //   6: aload_0
    //   7: invokevirtual getPackageName : ()Ljava/lang/String;
    //   10: astore #4
    //   12: aload_1
    //   13: invokevirtual getScheme : ()Ljava/lang/String;
    //   16: astore #5
    //   18: aload #5
    //   20: invokevirtual hashCode : ()I
    //   23: istore_3
    //   24: iload_3
    //   25: ldc 3143036
    //   27: if_icmpeq -> 54
    //   30: iload_3
    //   31: ldc 951530617
    //   33: if_icmpeq -> 39
    //   36: goto -> 67
    //   39: aload #5
    //   41: ldc 'content'
    //   43: invokevirtual equals : (Ljava/lang/Object;)Z
    //   46: ifeq -> 67
    //   49: iconst_0
    //   50: istore_2
    //   51: goto -> 69
    //   54: aload #5
    //   56: ldc 'file'
    //   58: invokevirtual equals : (Ljava/lang/Object;)Z
    //   61: ifeq -> 67
    //   64: goto -> 69
    //   67: iconst_m1
    //   68: istore_2
    //   69: iload_2
    //   70: tableswitch default -> 92, 0 -> 100, 1 -> 95
    //   92: goto -> 168
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
    //   111: aload #4
    //   113: aastore
    //   114: aconst_null
    //   115: aconst_null
    //   116: aconst_null
    //   117: invokevirtual query : (Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   120: astore_1
    //   121: aload_1
    //   122: ifnull -> 168
    //   125: aload_1
    //   126: aload_0
    //   127: invokevirtual getPackageName : ()Ljava/lang/String;
    //   130: invokeinterface getColumnIndexOrThrow : (Ljava/lang/String;)I
    //   135: istore_2
    //   136: iload_2
    //   137: ifge -> 143
    //   140: goto -> 168
    //   143: aload_1
    //   144: iload_2
    //   145: invokeinterface getString : (I)Ljava/lang/String;
    //   150: astore #4
    //   152: aload_1
    //   153: invokeinterface moveToFirst : ()Z
    //   158: pop
    //   159: aload_1
    //   160: invokeinterface close : ()V
    //   165: aload #4
    //   167: areturn
    //   168: aconst_null
    //   169: areturn }
  
  public Object getSharedData(String paramString) { return this.j.getAll().get(paramString); }
  
  public Object getSharedData(String paramString, Object paramObject) {
    Object object = this.j.getAll().get(paramString);
    return (object == null) ? paramObject : object;
  }
  
  public Uri getUriForFile(File paramFile) { return FileProvider.getUriForFile(this, getPackageName(), paramFile); }
  
  public Uri getUriForPath(String paramString) { return FileProvider.getUriForFile(this, getPackageName(), new File(paramString)); }
  
  public int getWidth() { return (getResources().getDisplayMetrics()).widthPixels; }
  
  public void onCreate() { // Byte code:
    //   0: aload_0
    //   1: invokespecial onCreate : ()V
    //   4: aload_0
    //   5: putstatic com/androlua/LuaApplication.h : Lcom/androlua/LuaApplication;
    //   8: invokestatic getInstance : ()Lcom/androlua/CrashHandler;
    //   11: aload_0
    //   12: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   15: invokevirtual init : (Landroid/content/Context;)V
    //   18: aload_0
    //   19: aload_0
    //   20: invokestatic a : (Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   23: putfield j : Landroid/content/SharedPreferences;
    //   26: invokestatic getExternalStorageState : ()Ljava/lang/String;
    //   29: ldc 'mounted'
    //   31: invokevirtual equals : (Ljava/lang/Object;)Z
    //   34: ifeq -> 83
    //   37: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   40: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   43: astore_3
    //   44: new java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial <init> : ()V
    //   51: astore #4
    //   53: aload #4
    //   55: aload_3
    //   56: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: aload #4
    //   62: ldc_w '/AndroLua'
    //   65: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload #4
    //   71: invokevirtual toString : ()Ljava/lang/String;
    //   74: astore_3
    //   75: aload_0
    //   76: aload_3
    //   77: putfield g : Ljava/lang/String;
    //   80: goto -> 201
    //   83: new java/io/File
    //   86: dup
    //   87: ldc_w '/storage'
    //   90: invokespecial <init> : (Ljava/lang/String;)V
    //   93: invokevirtual listFiles : ()[Ljava/io/File;
    //   96: astore_3
    //   97: aload_3
    //   98: arraylength
    //   99: istore_2
    //   100: iconst_0
    //   101: istore_1
    //   102: iload_1
    //   103: iload_2
    //   104: if_icmpge -> 179
    //   107: aload_3
    //   108: iload_1
    //   109: aaload
    //   110: astore #4
    //   112: aload #4
    //   114: invokevirtual list : ()[Ljava/lang/String;
    //   117: astore #5
    //   119: aload #5
    //   121: ifnonnull -> 127
    //   124: goto -> 172
    //   127: aload #5
    //   129: arraylength
    //   130: iconst_5
    //   131: if_icmple -> 172
    //   134: new java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial <init> : ()V
    //   141: astore #5
    //   143: aload #5
    //   145: aload #4
    //   147: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   150: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: pop
    //   154: aload #5
    //   156: ldc_w '/AndroLua'
    //   159: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: pop
    //   163: aload_0
    //   164: aload #5
    //   166: invokevirtual toString : ()Ljava/lang/String;
    //   169: putfield g : Ljava/lang/String;
    //   172: iload_1
    //   173: iconst_1
    //   174: iadd
    //   175: istore_1
    //   176: goto -> 102
    //   179: aload_0
    //   180: getfield g : Ljava/lang/String;
    //   183: ifnonnull -> 201
    //   186: aload_0
    //   187: ldc_w 'AndroLua'
    //   190: iconst_0
    //   191: invokevirtual getDir : (Ljava/lang/String;I)Ljava/io/File;
    //   194: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   197: astore_3
    //   198: goto -> 75
    //   201: new java/io/File
    //   204: dup
    //   205: aload_0
    //   206: getfield g : Ljava/lang/String;
    //   209: invokespecial <init> : (Ljava/lang/String;)V
    //   212: astore_3
    //   213: aload_3
    //   214: invokevirtual exists : ()Z
    //   217: ifne -> 225
    //   220: aload_3
    //   221: invokevirtual mkdirs : ()Z
    //   224: pop
    //   225: aload_0
    //   226: aload_0
    //   227: invokevirtual getFilesDir : ()Ljava/io/File;
    //   230: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   233: putfield a : Ljava/lang/String;
    //   236: aload_0
    //   237: aload_0
    //   238: ldc_w 'odex'
    //   241: iconst_0
    //   242: invokevirtual getDir : (Ljava/lang/String;I)Ljava/io/File;
    //   245: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   248: putfield b : Ljava/lang/String;
    //   251: aload_0
    //   252: aload_0
    //   253: ldc_w 'lib'
    //   256: iconst_0
    //   257: invokevirtual getDir : (Ljava/lang/String;I)Ljava/io/File;
    //   260: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   263: putfield c : Ljava/lang/String;
    //   266: aload_0
    //   267: aload_0
    //   268: ldc_w 'lua'
    //   271: iconst_0
    //   272: invokevirtual getDir : (Ljava/lang/String;I)Ljava/io/File;
    //   275: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   278: putfield d : Ljava/lang/String;
    //   281: new java/lang/StringBuilder
    //   284: dup
    //   285: invokespecial <init> : ()V
    //   288: astore_3
    //   289: aload_3
    //   290: aload_0
    //   291: invokevirtual getApplicationInfo : ()Landroid/content/pm/ApplicationInfo;
    //   294: getfield nativeLibraryDir : Ljava/lang/String;
    //   297: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: pop
    //   301: aload_3
    //   302: ldc_w '/lib?.so;'
    //   305: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: pop
    //   309: aload_3
    //   310: aload_0
    //   311: getfield c : Ljava/lang/String;
    //   314: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: pop
    //   318: aload_3
    //   319: ldc_w '/lib?.so'
    //   322: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: pop
    //   326: aload_0
    //   327: aload_3
    //   328: invokevirtual toString : ()Ljava/lang/String;
    //   331: putfield e : Ljava/lang/String;
    //   334: new java/lang/StringBuilder
    //   337: dup
    //   338: invokespecial <init> : ()V
    //   341: astore_3
    //   342: aload_3
    //   343: aload_0
    //   344: getfield d : Ljava/lang/String;
    //   347: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: pop
    //   351: aload_3
    //   352: ldc_w '/?.lua;'
    //   355: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: pop
    //   359: aload_3
    //   360: aload_0
    //   361: getfield d : Ljava/lang/String;
    //   364: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: pop
    //   368: aload_3
    //   369: ldc_w '/lua/?.lua;'
    //   372: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: pop
    //   376: aload_3
    //   377: aload_0
    //   378: getfield d : Ljava/lang/String;
    //   381: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: pop
    //   385: aload_3
    //   386: ldc_w '/?/init.lua;'
    //   389: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: pop
    //   393: aload_0
    //   394: aload_3
    //   395: invokevirtual toString : ()Ljava/lang/String;
    //   398: putfield f : Ljava/lang/String;
    //   401: return }
  
  public void regGc(LuaGcable paramLuaGcable) {}
  
  public void sendError(String paramString, Exception paramException) {}
  
  public void sendMsg(String paramString) { Toast.makeText(this, paramString, 0).show(); }
  
  public void set(String paramString, Object paramObject) { i.put(paramString, paramObject); }
  
  public void setLuaExtDir(String paramString) {
    if (Environment.getExternalStorageState().equals("mounted")) {
      paramString = (new File(Environment.getExternalStorageDirectory().getAbsolutePath(), paramString)).getAbsolutePath();
    } else {
      for (File file : (new File("/storage")).listFiles()) {
        String[] arrayOfString = file.list();
        if (arrayOfString != null && arrayOfString.length > 5)
          this.g = (new File(file, paramString)).getAbsolutePath(); 
      } 
      if (this.g == null) {
        paramString = getDir(paramString, 0).getAbsolutePath();
      } else {
        return;
      } 
    } 
    this.g = paramString;
  }
  
  public boolean setSharedData(String paramString, Object paramObject) {
    SharedPreferences.Editor editor = this.j.edit();
    if (paramObject == null) {
      editor.remove(paramString);
    } else if (paramObject instanceof String) {
      editor.putString(paramString, paramObject.toString());
    } else if (paramObject instanceof Long) {
      editor.putLong(paramString, ((Long)paramObject).longValue());
    } else if (paramObject instanceof Integer) {
      editor.putInt(paramString, ((Integer)paramObject).intValue());
    } else if (paramObject instanceof Float) {
      editor.putFloat(paramString, ((Float)paramObject).floatValue());
    } else {
      if (paramObject instanceof Set) {
        paramObject = (Set)paramObject;
      } else if (paramObject instanceof LuaTable) {
        paramObject = (HashSet)((LuaTable)paramObject).values();
      } else {
        if (paramObject instanceof Boolean) {
          editor.putBoolean(paramString, ((Boolean)paramObject).booleanValue());
          editor.apply();
          return true;
        } 
        return false;
      } 
      editor.putStringSet(paramString, paramObject);
    } 
    editor.apply();
    return true;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import android.content.Context;
import android.text.TextUtils;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.jar.JarFile;

class ax {
  static  {
  
  }
  
  private static DexClassLoader a(Context paramContext) { // Byte code:
    //   0: ldc com/baidu/mobstat/ax
    //   2: monitorenter
    //   3: getstatic com/baidu/mobstat/ax.a : Ldalvik/system/DexClassLoader;
    //   6: ifnull -> 18
    //   9: getstatic com/baidu/mobstat/ax.a : Ldalvik/system/DexClassLoader;
    //   12: astore_0
    //   13: ldc com/baidu/mobstat/ax
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: ldc '.remote.jar'
    //   21: invokevirtual getFileStreamPath : (Ljava/lang/String;)Ljava/io/File;
    //   24: astore_2
    //   25: aload_2
    //   26: ifnull -> 43
    //   29: aload_2
    //   30: invokevirtual isFile : ()Z
    //   33: istore_1
    //   34: iload_1
    //   35: ifne -> 43
    //   38: ldc com/baidu/mobstat/ax
    //   40: monitorexit
    //   41: aconst_null
    //   42: areturn
    //   43: aload_0
    //   44: aload_2
    //   45: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   48: invokestatic b : (Landroid/content/Context;Ljava/lang/String;)Z
    //   51: ifne -> 76
    //   54: ldc 'remote jar version lower than min limit, need delete'
    //   56: invokestatic a : (Ljava/lang/String;)V
    //   59: aload_2
    //   60: invokevirtual isFile : ()Z
    //   63: ifeq -> 71
    //   66: aload_2
    //   67: invokevirtual delete : ()Z
    //   70: pop
    //   71: ldc com/baidu/mobstat/ax
    //   73: monitorexit
    //   74: aconst_null
    //   75: areturn
    //   76: aload_0
    //   77: aload_2
    //   78: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   81: invokestatic c : (Landroid/content/Context;Ljava/lang/String;)Z
    //   84: ifne -> 109
    //   87: ldc 'remote jar md5 is not right, need delete'
    //   89: invokestatic a : (Ljava/lang/String;)V
    //   92: aload_2
    //   93: invokevirtual isFile : ()Z
    //   96: ifeq -> 104
    //   99: aload_2
    //   100: invokevirtual delete : ()Z
    //   103: pop
    //   104: ldc com/baidu/mobstat/ax
    //   106: monitorexit
    //   107: aconst_null
    //   108: areturn
    //   109: aload_0
    //   110: ldc 'outdex'
    //   112: iconst_0
    //   113: invokevirtual getDir : (Ljava/lang/String;I)Ljava/io/File;
    //   116: astore_3
    //   117: new dalvik/system/DexClassLoader
    //   120: dup
    //   121: aload_2
    //   122: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   125: aload_3
    //   126: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   129: aconst_null
    //   130: aload_0
    //   131: invokevirtual getClassLoader : ()Ljava/lang/ClassLoader;
    //   134: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   137: putstatic com/baidu/mobstat/ax.a : Ldalvik/system/DexClassLoader;
    //   140: goto -> 148
    //   143: astore_0
    //   144: aload_0
    //   145: invokestatic a : (Ljava/lang/Throwable;)V
    //   148: getstatic com/baidu/mobstat/ax.a : Ldalvik/system/DexClassLoader;
    //   151: astore_0
    //   152: ldc com/baidu/mobstat/ax
    //   154: monitorexit
    //   155: aload_0
    //   156: areturn
    //   157: astore_0
    //   158: ldc com/baidu/mobstat/ax
    //   160: monitorexit
    //   161: aload_0
    //   162: athrow
    // Exception table:
    //   from	to	target	type
    //   3	13	157	finally
    //   18	25	157	finally
    //   29	34	157	finally
    //   43	71	157	finally
    //   76	104	157	finally
    //   109	117	157	finally
    //   117	140	143	java/lang/Exception
    //   117	140	157	finally
    //   144	148	157	finally
    //   148	152	157	finally }
  
  public static Class<?> a(Context paramContext, String paramString) {
    DexClassLoader dexClassLoader = a(paramContext);
    return (dexClassLoader == null) ? null : dexClassLoader.loadClass(paramString);
  }
  
  public static void a(Context paramContext, l paraml) { // Byte code:
    //   0: ldc com/baidu/mobstat/ax
    //   2: monitorenter
    //   3: getstatic com/baidu/mobstat/ax.b : Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq -> 15
    //   11: ldc com/baidu/mobstat/ax
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: invokestatic n : (Landroid/content/Context;)Z
    //   19: ifne -> 31
    //   22: ldc 'isWifiAvailable = false, will not to update'
    //   24: invokestatic a : (Ljava/lang/String;)V
    //   27: ldc com/baidu/mobstat/ax
    //   29: monitorexit
    //   30: return
    //   31: aload_1
    //   32: aload_0
    //   33: invokeinterface a : (Landroid/content/Context;)Z
    //   38: ifne -> 50
    //   41: ldc 'check time, will not to update'
    //   43: invokestatic a : (Ljava/lang/String;)V
    //   46: ldc com/baidu/mobstat/ax
    //   48: monitorexit
    //   49: return
    //   50: ldc 'can start update config'
    //   52: invokestatic a : (Ljava/lang/String;)V
    //   55: new com/baidu/mobstat/ay
    //   58: dup
    //   59: aload_0
    //   60: aload_1
    //   61: invokespecial <init> : (Landroid/content/Context;Lcom/baidu/mobstat/l;)V
    //   64: invokevirtual start : ()V
    //   67: iconst_1
    //   68: putstatic com/baidu/mobstat/ax.b : Z
    //   71: ldc com/baidu/mobstat/ax
    //   73: monitorexit
    //   74: return
    //   75: astore_0
    //   76: ldc com/baidu/mobstat/ax
    //   78: monitorexit
    //   79: aload_0
    //   80: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	75	finally
    //   15	27	75	finally
    //   31	46	75	finally
    //   50	71	75	finally }
  
  private static String b(String paramString) {
    JarFile jarFile3 = null;
    jarFile2 = null;
    str = jarFile2;
    try {
      exception = new File(paramString);
      str = jarFile2;
      if (exception.exists()) {
        str = jarFile2;
        StringBuilder stringBuilder1 = new StringBuilder();
        str = jarFile2;
        stringBuilder1.append("file size: ");
        str = jarFile2;
        stringBuilder1.append(exception.length());
        str = jarFile2;
        bd.b(stringBuilder1.toString());
      } 
      str = jarFile2;
      jarFile2 = new JarFile(paramString);
      try {
        return jarFile2.getManifest().getMainAttributes().getValue("Plugin-Version");
      } catch (Exception str) {
      
      } finally {
        JarFile jarFile;
        paramString = null;
      } 
    } catch (Exception exception) {
      jarFile2 = jarFile3;
    } finally {}
    JarFile jarFile1 = jarFile2;
    bd.a(exception);
    jarFile1 = jarFile2;
    StringBuilder stringBuilder = new StringBuilder();
    jarFile1 = jarFile2;
    stringBuilder.append("baidu remote sdk is not ready");
    jarFile1 = jarFile2;
    stringBuilder.append(paramString);
    jarFile1 = jarFile2;
    bd.a(stringBuilder.toString());
    if (jarFile2 != null)
      try {
        jarFile2.close();
      } catch (Exception paramString) {} 
    return "";
  }
  
  private static boolean b(Context paramContext, String paramString) {
    boolean bool;
    str = b(paramString);
    boolean bool2 = TextUtils.isEmpty(str);
    boolean bool1 = false;
    if (bool2)
      return false; 
    try {
      bool = Integer.valueOf(str).intValue();
    } catch (Exception str) {
      bd.b(str);
      bool = false;
    } 
    if (bool >= 4)
      bool1 = true; 
    return bool1;
  }
  
  private static boolean c(Context paramContext, String paramString) {
    String str2 = cx.a(new File(paramString));
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append("remote.jar local file digest value digest = ");
    stringBuilder2.append(str2);
    bd.a(stringBuilder2.toString());
    if (TextUtils.isEmpty(str2)) {
      str1 = "remote.jar local file digest value fail";
      bd.a(str1);
      return false;
    } 
    paramString = b(paramString);
    stringBuilder2 = new StringBuilder();
    stringBuilder2.append("remote.jar local file digest value version = ");
    stringBuilder2.append(paramString);
    bd.a(stringBuilder2.toString());
    if (TextUtils.isEmpty(paramString))
      return false; 
    String str1 = d(str1, paramString);
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append("remote.jar config digest value remoteJarMd5 = ");
    stringBuilder1.append(str1);
    bd.a(stringBuilder1.toString());
    if (TextUtils.isEmpty(str1)) {
      str1 = "remote.jar config digest value lost";
      bd.a(str1);
      return false;
    } 
    return str2.equals(str1);
  }
  
  private static String d(Context paramContext, String paramString) { return az.a(paramContext).c(paramString); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
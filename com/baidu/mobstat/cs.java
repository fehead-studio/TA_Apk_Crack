package com.baidu.mobstat;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;

public final class cs {
  private static final Proxy a = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.172", 80));
  
  private static final Proxy b = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80));
  
  public static File a(String paramString) {
    if (!"mounted".equals(a()))
      return null; 
    try {
      exception = Environment.getExternalStorageDirectory();
    } catch (Exception exception) {
      exception = null;
    } 
    return (exception == null) ? null : new File(exception, paramString);
  }
  
  public static String a() {
    try {
      return Environment.getExternalStorageState();
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static String a(Context paramContext, String paramString) {
    try {
      fileInputStream = paramContext.openFileInput(paramString);
      try {
        arrayOfByte = a(fileInputStream);
        FileInputStream fileInputStream1 = fileInputStream;
        if (arrayOfByte != null)
          return str; 
      } catch (Exception paramString) {
        FileInputStream fileInputStream1 = fileInputStream;
      } finally {}
      cy.a(fileInputStream);
      throw paramString;
    } catch (Exception paramContext) {
    
    } finally {
      paramContext = null;
      cy.a(paramContext);
    } 
    cy.a(paramString);
    return "";
  }
  
  @SuppressLint({"DefaultLocale"})
  public static HttpURLConnection a(Context paramContext, String paramString, int paramInt1, int paramInt2) { // Byte code:
    //   0: new java/net/URL
    //   3: dup
    //   4: aload_1
    //   5: invokespecial <init> : (Ljava/lang/String;)V
    //   8: astore #4
    //   10: aload_0
    //   11: ldc 'connectivity'
    //   13: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   16: checkcast android/net/ConnectivityManager
    //   19: astore_1
    //   20: aload_1
    //   21: iconst_0
    //   22: invokevirtual getNetworkInfo : (I)Landroid/net/NetworkInfo;
    //   25: astore_0
    //   26: aload_1
    //   27: iconst_1
    //   28: invokevirtual getNetworkInfo : (I)Landroid/net/NetworkInfo;
    //   31: astore_1
    //   32: aload_1
    //   33: ifnull -> 62
    //   36: aload_1
    //   37: invokevirtual isAvailable : ()Z
    //   40: ifeq -> 62
    //   43: ldc 'WIFI is available'
    //   45: invokestatic a : (Ljava/lang/String;)V
    //   48: aload #4
    //   50: invokevirtual openConnection : ()Ljava/net/URLConnection;
    //   53: astore_0
    //   54: aload_0
    //   55: checkcast java/net/HttpURLConnection
    //   58: astore_0
    //   59: goto -> 159
    //   62: aload_0
    //   63: ifnull -> 157
    //   66: aload_0
    //   67: invokevirtual isAvailable : ()Z
    //   70: ifeq -> 157
    //   73: aload_0
    //   74: invokevirtual getExtraInfo : ()Ljava/lang/String;
    //   77: astore_0
    //   78: aload_0
    //   79: ifnull -> 90
    //   82: aload_0
    //   83: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   86: astore_0
    //   87: goto -> 93
    //   90: ldc ''
    //   92: astore_0
    //   93: aload_0
    //   94: invokestatic a : (Ljava/lang/String;)V
    //   97: aload_0
    //   98: ldc 'cmwap'
    //   100: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   103: ifne -> 143
    //   106: aload_0
    //   107: ldc 'uniwap'
    //   109: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   112: ifne -> 143
    //   115: aload_0
    //   116: ldc '3gwap'
    //   118: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   121: ifeq -> 127
    //   124: goto -> 143
    //   127: aload_0
    //   128: ldc 'ctwap'
    //   130: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   133: ifeq -> 157
    //   136: getstatic com/baidu/mobstat/cs.b : Ljava/net/Proxy;
    //   139: astore_0
    //   140: goto -> 147
    //   143: getstatic com/baidu/mobstat/cs.a : Ljava/net/Proxy;
    //   146: astore_0
    //   147: aload #4
    //   149: aload_0
    //   150: invokevirtual openConnection : (Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   153: astore_0
    //   154: goto -> 54
    //   157: aconst_null
    //   158: astore_0
    //   159: aload_0
    //   160: astore_1
    //   161: aload_0
    //   162: ifnonnull -> 174
    //   165: aload #4
    //   167: invokevirtual openConnection : ()Ljava/net/URLConnection;
    //   170: checkcast java/net/HttpURLConnection
    //   173: astore_1
    //   174: aload_1
    //   175: iload_2
    //   176: invokevirtual setConnectTimeout : (I)V
    //   179: aload_1
    //   180: iload_3
    //   181: invokevirtual setReadTimeout : (I)V
    //   184: aload_1
    //   185: areturn }
  
  public static void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean) {
    if (paramContext == null)
      return; 
    if (paramBoolean) {
      b1 = 32768;
    } else {
      b1 = 0;
    } 
    try {
    
    } catch (Exception paramContext) {
    
    } finally {
      paramContext = null;
      cy.a(paramContext);
    } 
    cy.a(paramContext);
  }
  
  public static void a(String paramString1, String paramString2, boolean paramBoolean) {
    str2 = null;
    String str1 = null;
    try {
      file = a(paramString1);
    } catch (Exception paramString1) {
    
    } finally {
      paramString1 = str1;
      cy.a(paramString1);
    } 
    cy.a(paramString1);
  }
  
  private static byte[] a(InputStream paramInputStream) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    return cy.a(paramInputStream, byteArrayOutputStream) ? byteArrayOutputStream.toByteArray() : null;
  }
  
  public static String b(String paramString) {
    file = a(paramString);
    if (file != null && file.exists()) {
      try {
      
      } catch (Exception file) {
      
      } finally {
        file = null;
        cy.a(file);
      } 
      cy.a(SYNTHETIC_LOCAL_VARIABLE_1);
    } 
    return "";
  }
  
  public static boolean b(Context paramContext, String paramString) { return paramContext.deleteFile(paramString); }
  
  public static boolean c(Context paramContext, String paramString) { return paramContext.getFileStreamPath(paramString).exists(); }
  
  public static boolean c(String paramString) {
    File file = a(paramString);
    return (file != null && file.isFile()) ? file.delete() : 0;
  }
  
  public static HttpURLConnection d(Context paramContext, String paramString) { return a(paramContext, paramString, 50000, 50000); }
  
  public static boolean e(Context paramContext, String paramString) {
    boolean bool = false;
    try {
      int i = paramContext.checkCallingOrSelfPermission(paramString);
      if (i != -1)
        bool = true; 
      return bool;
    } catch (Exception paramContext) {
      cz.b("Check permission failed.");
      return false;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
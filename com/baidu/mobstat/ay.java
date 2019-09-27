package com.baidu.mobstat;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

class ay extends Thread {
  private Context a;
  
  private l b;
  
  public ay(Context paramContext, l paraml) {
    this.a = paramContext;
    this.b = paraml;
  }
  
  private void a() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 'start get config and download jar'
    //   4: invokestatic a : (Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield a : Landroid/content/Context;
    //   11: astore #7
    //   13: aload_0
    //   14: getfield b : Lcom/baidu/mobstat/l;
    //   17: astore #8
    //   19: aload_0
    //   20: aload #7
    //   22: invokespecial b : (Landroid/content/Context;)Ljava/lang/String;
    //   25: astore_3
    //   26: new java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial <init> : ()V
    //   33: astore #4
    //   35: aload #4
    //   37: ldc 'update req url is:'
    //   39: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: pop
    //   43: aload #4
    //   45: aload_3
    //   46: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: aload #4
    //   52: invokevirtual toString : ()Ljava/lang/String;
    //   55: invokestatic c : (Ljava/lang/String;)V
    //   58: aload #7
    //   60: aload_3
    //   61: invokestatic d : (Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   64: astore #6
    //   66: aload #6
    //   68: invokevirtual connect : ()V
    //   71: aload #6
    //   73: ldc 'X-CONFIG'
    //   75: invokevirtual getHeaderField : (Ljava/lang/String;)Ljava/lang/String;
    //   78: astore #9
    //   80: new java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial <init> : ()V
    //   87: astore_3
    //   88: aload_3
    //   89: ldc 'config is: '
    //   91: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: pop
    //   95: aload_3
    //   96: aload #9
    //   98: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: pop
    //   102: aload_3
    //   103: invokevirtual toString : ()Ljava/lang/String;
    //   106: invokestatic a : (Ljava/lang/String;)V
    //   109: aload #6
    //   111: ldc 'X-SIGN'
    //   113: invokevirtual getHeaderField : (Ljava/lang/String;)Ljava/lang/String;
    //   116: astore #10
    //   118: new java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial <init> : ()V
    //   125: astore_3
    //   126: aload_3
    //   127: ldc 'sign is: '
    //   129: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: pop
    //   133: aload_3
    //   134: aload #10
    //   136: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: pop
    //   140: aload_3
    //   141: invokevirtual toString : ()Ljava/lang/String;
    //   144: invokestatic a : (Ljava/lang/String;)V
    //   147: aload #6
    //   149: invokevirtual getResponseCode : ()I
    //   152: istore_1
    //   153: new java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial <init> : ()V
    //   160: astore_3
    //   161: aload_3
    //   162: ldc 'update response code is: '
    //   164: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: aload_3
    //   169: iload_1
    //   170: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   173: pop
    //   174: aload_3
    //   175: invokevirtual toString : ()Ljava/lang/String;
    //   178: invokestatic a : (Ljava/lang/String;)V
    //   181: aload #6
    //   183: invokevirtual getContentLength : ()I
    //   186: istore_2
    //   187: new java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial <init> : ()V
    //   194: astore_3
    //   195: aload_3
    //   196: ldc 'update response content length is: '
    //   198: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: pop
    //   202: aload_3
    //   203: iload_2
    //   204: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   207: pop
    //   208: aload_3
    //   209: invokevirtual toString : ()Ljava/lang/String;
    //   212: invokestatic a : (Ljava/lang/String;)V
    //   215: iload_1
    //   216: sipush #200
    //   219: if_icmpne -> 310
    //   222: iload_2
    //   223: ifle -> 310
    //   226: aload #7
    //   228: ldc '.remote.jar'
    //   230: iconst_0
    //   231: invokevirtual openFileOutput : (Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   234: astore_3
    //   235: aload_3
    //   236: astore #5
    //   238: aload_3
    //   239: astore #4
    //   241: aload #6
    //   243: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   246: aload_3
    //   247: invokestatic a : (Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    //   250: ifeq -> 264
    //   253: aload_3
    //   254: astore #4
    //   256: ldc 'save remote jar success'
    //   258: invokestatic a : (Ljava/lang/String;)V
    //   261: aload_3
    //   262: astore #5
    //   264: aload #5
    //   266: invokestatic a : (Ljava/io/Closeable;)V
    //   269: goto -> 310
    //   272: astore #5
    //   274: goto -> 288
    //   277: astore_3
    //   278: aconst_null
    //   279: astore #4
    //   281: goto -> 303
    //   284: astore #5
    //   286: aconst_null
    //   287: astore_3
    //   288: aload_3
    //   289: astore #4
    //   291: aload #5
    //   293: invokestatic b : (Ljava/lang/Throwable;)V
    //   296: aload_3
    //   297: astore #5
    //   299: goto -> 264
    //   302: astore_3
    //   303: aload #4
    //   305: invokestatic a : (Ljava/io/Closeable;)V
    //   308: aload_3
    //   309: athrow
    //   310: aconst_null
    //   311: invokestatic a : (Ldalvik/system/DexClassLoader;)Ldalvik/system/DexClassLoader;
    //   314: pop
    //   315: invokestatic a : ()V
    //   318: aload #9
    //   320: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   323: ifne -> 337
    //   326: aload #8
    //   328: aload #7
    //   330: aload #9
    //   332: invokeinterface a : (Landroid/content/Context;Ljava/lang/String;)V
    //   337: aload #10
    //   339: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   342: ifne -> 356
    //   345: aload #8
    //   347: aload #7
    //   349: aload #10
    //   351: invokeinterface b : (Landroid/content/Context;Ljava/lang/String;)V
    //   356: aload #6
    //   358: invokevirtual disconnect : ()V
    //   361: ldc 'finish get config and download jar'
    //   363: invokestatic a : (Ljava/lang/String;)V
    //   366: aload_0
    //   367: monitorexit
    //   368: return
    //   369: astore_3
    //   370: aload #6
    //   372: invokevirtual disconnect : ()V
    //   375: aload_3
    //   376: athrow
    //   377: astore_3
    //   378: aload_0
    //   379: monitorexit
    //   380: aload_3
    //   381: athrow
    // Exception table:
    //   from	to	target	type
    //   2	66	377	finally
    //   66	215	369	finally
    //   226	235	284	java/io/IOException
    //   226	235	277	finally
    //   241	253	272	java/io/IOException
    //   241	253	302	finally
    //   256	261	272	java/io/IOException
    //   256	261	302	finally
    //   264	269	369	finally
    //   291	296	302	finally
    //   303	310	369	finally
    //   310	337	369	finally
    //   337	356	369	finally
    //   356	366	377	finally
    //   370	377	377	finally }
  
  private void a(Context paramContext) { this.b.a(paramContext, System.currentTimeMillis()); }
  
  private String b(Context paramContext) {
    String str2;
    File file = paramContext.getFileStreamPath(".remote.jar");
    if (file != null && file.exists()) {
      file = paramContext.getFileStreamPath(".remote.jar");
      if (file != null) {
        String str = ax.a(file.getAbsolutePath());
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("startDownload remote jar file version = ");
        stringBuilder.append(str);
        bd.a(stringBuilder.toString());
        if (!TextUtils.isEmpty(str)) {
          ArrayList arrayList1 = new ArrayList();
          StringBuilder stringBuilder6 = new StringBuilder();
          stringBuilder6.append("");
          stringBuilder6.append(str);
          arrayList1.add(new BasicNameValuePair("dynamicVersion", stringBuilder6.toString()));
          arrayList1.add(new BasicNameValuePair("packageName", dc.p(paramContext)));
          arrayList1.add(new BasicNameValuePair("appVersion", dc.f(paramContext)));
          arrayList1.add(new BasicNameValuePair("cuid", dc.a(paramContext)));
          arrayList1.add(new BasicNameValuePair("platform", "Android"));
          arrayList1.add(new BasicNameValuePair("m", Build.MODEL));
          StringBuilder stringBuilder4 = new StringBuilder();
          stringBuilder4.append(Build.VERSION.SDK_INT);
          stringBuilder4.append("");
          arrayList1.add(new BasicNameValuePair("s", stringBuilder4.toString()));
          arrayList1.add(new BasicNameValuePair("o", Build.VERSION.RELEASE));
          arrayList1.add(new BasicNameValuePair("i", "13"));
          str2 = URLEncodedUtils.format(arrayList1, "utf-8");
          StringBuilder stringBuilder5 = new StringBuilder();
          stringBuilder5.append(bb.c);
          stringBuilder5.append("?");
          stringBuilder5.append(str2);
          return stringBuilder5.toString();
        } 
      } 
    } 
    String str3 = "13";
    ArrayList arrayList = new ArrayList();
    StringBuilder stringBuilder3 = new StringBuilder();
    stringBuilder3.append("");
    stringBuilder3.append(str3);
    arrayList.add(new BasicNameValuePair("dynamicVersion", stringBuilder3.toString()));
    arrayList.add(new BasicNameValuePair("packageName", dc.p(str2)));
    arrayList.add(new BasicNameValuePair("appVersion", dc.f(str2)));
    arrayList.add(new BasicNameValuePair("cuid", dc.a(str2)));
    arrayList.add(new BasicNameValuePair("platform", "Android"));
    arrayList.add(new BasicNameValuePair("m", Build.MODEL));
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(Build.VERSION.SDK_INT);
    stringBuilder1.append("");
    arrayList.add(new BasicNameValuePair("s", stringBuilder1.toString()));
    arrayList.add(new BasicNameValuePair("o", Build.VERSION.RELEASE));
    arrayList.add(new BasicNameValuePair("i", "13"));
    String str1 = URLEncodedUtils.format(arrayList, "utf-8");
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(bb.c);
    stringBuilder2.append("?");
    stringBuilder2.append(str1);
    return stringBuilder2.toString();
  }
  
  public void run() {
    try {
      byte b1;
      if (bb.a) {
        b1 = 3;
      } else {
        b1 = 10;
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("start version check in ");
      stringBuilder.append(b1);
      stringBuilder.append("s");
      bd.a(stringBuilder.toString());
      sleep((b1 * 'Ϩ'));
      a();
      a(this.a);
    } catch (Exception exception) {
      bd.a(exception);
    } 
    ax.a(false);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
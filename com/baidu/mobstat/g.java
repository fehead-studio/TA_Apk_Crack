package com.baidu.mobstat;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.a.a.a.a.a.a.a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.crypto.Cipher;
import org.json.JSONArray;
import org.json.JSONObject;

public final class g {
  private static final String a;
  
  private static j e;
  
  private final Context b;
  
  private int c = 0;
  
  private PublicKey d;
  
  static  {
    String str1 = new String(b.a(new byte[] { 
            77, 122, 65, 121, 77, 84, 73, 120, 77, 68, 
            73, 61 }));
    String str2 = new String(b.a(new byte[] { 
            90, 71, 108, 106, 100, 87, 82, 112, 89, 87, 
            73, 61 }));
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str1);
    stringBuilder.append(str2);
    a = stringBuilder.toString();
  }
  
  private g(Context paramContext) {
    this.b = paramContext.getApplicationContext();
    a();
  }
  
  public static String a(Context paramContext) { return c(paramContext).b(); }
  
  private static String a(File paramFile) { // Byte code:
    //   0: new java/io/FileReader
    //   3: dup
    //   4: aload_0
    //   5: invokespecial <init> : (Ljava/io/File;)V
    //   8: astore_2
    //   9: aload_2
    //   10: astore_0
    //   11: sipush #8192
    //   14: newarray char
    //   16: astore_3
    //   17: aload_2
    //   18: astore_0
    //   19: new java/io/CharArrayWriter
    //   22: dup
    //   23: invokespecial <init> : ()V
    //   26: astore #4
    //   28: aload_2
    //   29: astore_0
    //   30: aload_2
    //   31: aload_3
    //   32: invokevirtual read : ([C)I
    //   35: istore_1
    //   36: iload_1
    //   37: ifle -> 53
    //   40: aload_2
    //   41: astore_0
    //   42: aload #4
    //   44: aload_3
    //   45: iconst_0
    //   46: iload_1
    //   47: invokevirtual write : ([CII)V
    //   50: goto -> 28
    //   53: aload_2
    //   54: astore_0
    //   55: aload #4
    //   57: invokevirtual toString : ()Ljava/lang/String;
    //   60: astore_3
    //   61: aload_2
    //   62: ifnull -> 76
    //   65: aload_2
    //   66: invokevirtual close : ()V
    //   69: aload_3
    //   70: areturn
    //   71: astore_0
    //   72: aload_0
    //   73: invokestatic b : (Ljava/lang/Throwable;)V
    //   76: aload_3
    //   77: areturn
    //   78: astore_3
    //   79: goto -> 91
    //   82: astore_2
    //   83: aconst_null
    //   84: astore_0
    //   85: goto -> 115
    //   88: astore_3
    //   89: aconst_null
    //   90: astore_2
    //   91: aload_2
    //   92: astore_0
    //   93: aload_3
    //   94: invokestatic b : (Ljava/lang/Throwable;)V
    //   97: aload_2
    //   98: ifnull -> 112
    //   101: aload_2
    //   102: invokevirtual close : ()V
    //   105: aconst_null
    //   106: areturn
    //   107: astore_0
    //   108: aload_0
    //   109: invokestatic b : (Ljava/lang/Throwable;)V
    //   112: aconst_null
    //   113: areturn
    //   114: astore_2
    //   115: aload_0
    //   116: ifnull -> 131
    //   119: aload_0
    //   120: invokevirtual close : ()V
    //   123: goto -> 131
    //   126: astore_0
    //   127: aload_0
    //   128: invokestatic b : (Ljava/lang/Throwable;)V
    //   131: aload_2
    //   132: athrow
    // Exception table:
    //   from	to	target	type
    //   0	9	88	java/lang/Exception
    //   0	9	82	finally
    //   11	17	78	java/lang/Exception
    //   11	17	114	finally
    //   19	28	78	java/lang/Exception
    //   19	28	114	finally
    //   30	36	78	java/lang/Exception
    //   30	36	114	finally
    //   42	50	78	java/lang/Exception
    //   42	50	114	finally
    //   55	61	78	java/lang/Exception
    //   55	61	114	finally
    //   65	69	71	java/lang/Exception
    //   93	97	114	finally
    //   101	105	107	java/lang/Exception
    //   119	123	126	java/lang/Exception }
  
  private static String a(byte[] paramArrayOfByte) {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("Argument b ( byte array ) is null! "); 
    String str = "";
    for (byte b1 = 0; b1 < paramArrayOfByte.length; b1++) {
      StringBuilder stringBuilder;
      String str1 = Integer.toHexString(paramArrayOfByte[b1] & 0xFF);
      if (str1.length() == 1) {
        stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        str = "0";
      } else {
        stringBuilder = new StringBuilder();
      } 
      stringBuilder.append(str);
      stringBuilder.append(str1);
      str = stringBuilder.toString();
    } 
    return str.toLowerCase();
  }
  
  private List<i> a(Intent paramIntent, boolean paramBoolean) {
    ArrayList arrayList = new ArrayList();
    PackageManager packageManager = this.b.getPackageManager();
    List list = packageManager.queryBroadcastReceivers(paramIntent, 0);
    if (list != null) {
      Iterator iterator = list.iterator();
      while (true) {
        if (iterator.hasNext()) {
          ResolveInfo resolveInfo = (ResolveInfo)iterator.next();
          if (resolveInfo.activityInfo != null && resolveInfo.activityInfo.applicationInfo != null)
            try {
              Bundle bundle = (packageManager.getReceiverInfo(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), 128)).metaData;
              if (bundle == null)
                continue; 
              String str = bundle.getString("galaxy_data");
              if (TextUtils.isEmpty(str))
                continue; 
              byte[] arrayOfByte = b.a(str.getBytes("utf-8"));
              JSONObject jSONObject = new JSONObject(new String(arrayOfByte));
              i i = new i(null);
              i.b = jSONObject.getInt("priority");
              i.a = resolveInfo.activityInfo.applicationInfo;
              if (this.b.getPackageName().equals(resolveInfo.activityInfo.applicationInfo.packageName))
                i.d = true; 
              if (paramBoolean) {
                String str1 = bundle.getString("galaxy_sf");
                if (!TextUtils.isEmpty(str1)) {
                  PackageInfo packageInfo = packageManager.getPackageInfo(resolveInfo.activityInfo.applicationInfo.packageName, 64);
                  JSONArray jSONArray = jSONObject.getJSONArray("sigs");
                  String[] arrayOfString = new String[jSONArray.length()];
                  byte b1;
                  for (b1 = 0; b1 < arrayOfString.length; b1++)
                    arrayOfString[b1] = jSONArray.getString(b1); 
                  if (a(arrayOfString, a(packageInfo.signatures))) {
                    byte[] arrayOfByte1 = a(b.a(str1.getBytes()), this.d);
                    arrayOfByte = d.a(arrayOfByte);
                    if (arrayOfByte1 != null && Arrays.equals(arrayOfByte1, arrayOfByte)) {
                      b1 = 1;
                    } else {
                      b1 = 0;
                    } 
                    if (b1 != 0)
                      i.c = true; 
                  } 
                } 
              } 
              arrayList.add(i);
              continue;
            } catch (Exception exception) {
              continue;
            }  
          continue;
        } 
        Collections.sort(arrayList, new h(this));
        return arrayList;
      } 
    } 
    Collections.sort(arrayList, new h(this));
    return arrayList;
  }
  
  private void a() {
    try {
    
    } catch (Exception null) {
    
    } finally {
      throwable = null;
      if (throwable != null)
        try {
          throwable.close();
        } catch (Exception throwable) {
          b(throwable);
        }  
    } 
    if (throwable != null) {
      throwable.close();
      return;
    } 
  }
  
  @SuppressLint({"NewApi"})
  private boolean a(String paramString) {
    if (Build.VERSION.SDK_INT >= 24) {
      b1 = 0;
    } else {
      b1 = 1;
    } 
    String str2 = null;
    fileOutputStream = null;
    try {
      exception = this.b.openFileOutput("libcuid.so", b1);
      try {
        exception.write(paramString.getBytes());
        exception.flush();
        return (b1 == 0) ? k.a((new File(this.b.getFilesDir(), "libcuid.so")).getAbsolutePath(), 436) : 1;
      } catch (Exception fileOutputStream) {
        FileOutputStream fileOutputStream1 = exception;
      } finally {
        paramString = null;
      } 
    } catch (Exception exception) {
      paramString = str2;
    } finally {}
    String str1 = paramString;
    b(exception);
    if (paramString != null)
      try {
        paramString.close();
        return false;
      } catch (Exception paramString) {
        b(paramString);
      }  
    return false;
  }
  
  private boolean a(String paramString1, String paramString2) {
    try {
      return Settings.System.putString(this.b.getContentResolver(), paramString1, paramString2);
    } catch (Exception paramString1) {
      b(paramString1);
      return false;
    } 
  }
  
  private boolean a(String[] paramArrayOfString1, String[] paramArrayOfString2) {
    byte b1 = 0;
    if (paramArrayOfString1 != null && paramArrayOfString2 != null) {
      if (paramArrayOfString1.length != paramArrayOfString2.length)
        return false; 
      HashSet hashSet2 = new HashSet();
      int i = paramArrayOfString1.length;
      byte b2;
      for (b2 = 0; b2 < i; b2++)
        hashSet2.add(paramArrayOfString1[b2]); 
      HashSet hashSet1 = new HashSet();
      i = paramArrayOfString2.length;
      for (b2 = b1; b2 < i; b2++)
        hashSet1.add(paramArrayOfString2[b2]); 
      return hashSet2.equals(hashSet1);
    } 
    return false;
  }
  
  private static byte[] a(byte[] paramArrayOfByte, PublicKey paramPublicKey) {
    Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    cipher.init(2, paramPublicKey);
    return cipher.doFinal(paramArrayOfByte);
  }
  
  private String[] a(Signature[] paramArrayOfSignature) {
    String[] arrayOfString = new String[paramArrayOfSignature.length];
    for (byte b1 = 0; b1 < arrayOfString.length; b1++)
      arrayOfString[b1] = a(d.a(paramArrayOfSignature[b1].toByteArray())); 
    return arrayOfString;
  }
  
  private j b() { // Byte code:
    //   0: aload_0
    //   1: new android/content/Intent
    //   4: dup
    //   5: ldc_w 'com.baidu.intent.action.GALAXY'
    //   8: invokespecial <init> : (Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield b : Landroid/content/Context;
    //   15: invokevirtual getPackageName : ()Ljava/lang/String;
    //   18: invokevirtual setPackage : (Ljava/lang/String;)Landroid/content/Intent;
    //   21: iconst_1
    //   22: invokespecial a : (Landroid/content/Intent;Z)Ljava/util/List;
    //   25: astore #5
    //   27: iconst_0
    //   28: istore_2
    //   29: aload #5
    //   31: ifnull -> 105
    //   34: aload #5
    //   36: invokeinterface size : ()I
    //   41: ifne -> 47
    //   44: goto -> 105
    //   47: aload #5
    //   49: iconst_0
    //   50: invokeinterface get : (I)Ljava/lang/Object;
    //   55: checkcast com/baidu/mobstat/i
    //   58: astore #5
    //   60: aload #5
    //   62: getfield c : Z
    //   65: istore #4
    //   67: iload #4
    //   69: istore_3
    //   70: aload #5
    //   72: getfield c : Z
    //   75: ifne -> 131
    //   78: iconst_0
    //   79: istore_1
    //   80: iload #4
    //   82: istore_3
    //   83: iload_1
    //   84: iconst_3
    //   85: if_icmpge -> 131
    //   88: ldc_w 'DeviceId'
    //   91: ldc_w 'galaxy config err, In the release version of the signature should be matched'
    //   94: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   97: pop
    //   98: iload_1
    //   99: iconst_1
    //   100: iadd
    //   101: istore_1
    //   102: goto -> 80
    //   105: iconst_0
    //   106: istore_1
    //   107: iload_1
    //   108: iconst_3
    //   109: if_icmpge -> 129
    //   112: ldc_w 'DeviceId'
    //   115: ldc_w 'galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy'
    //   118: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   121: pop
    //   122: iload_1
    //   123: iconst_1
    //   124: iadd
    //   125: istore_1
    //   126: goto -> 107
    //   129: iconst_0
    //   130: istore_3
    //   131: new java/io/File
    //   134: dup
    //   135: aload_0
    //   136: getfield b : Landroid/content/Context;
    //   139: invokevirtual getFilesDir : ()Ljava/io/File;
    //   142: ldc_w 'libcuid.so'
    //   145: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   148: astore #5
    //   150: aload #5
    //   152: invokevirtual exists : ()Z
    //   155: istore #4
    //   157: aconst_null
    //   158: astore #9
    //   160: aconst_null
    //   161: astore #8
    //   163: iload #4
    //   165: ifeq -> 184
    //   168: aload #5
    //   170: invokestatic a : (Ljava/io/File;)Ljava/lang/String;
    //   173: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   176: invokestatic a : (Ljava/lang/String;)Lcom/baidu/mobstat/j;
    //   179: astore #5
    //   181: goto -> 187
    //   184: aconst_null
    //   185: astore #5
    //   187: aload #5
    //   189: astore #6
    //   191: aload #5
    //   193: ifnonnull -> 414
    //   196: aload_0
    //   197: aload_0
    //   198: getfield c : I
    //   201: bipush #16
    //   203: ior
    //   204: putfield c : I
    //   207: aload_0
    //   208: new android/content/Intent
    //   211: dup
    //   212: ldc_w 'com.baidu.intent.action.GALAXY'
    //   215: invokespecial <init> : (Ljava/lang/String;)V
    //   218: iload_3
    //   219: invokespecial a : (Landroid/content/Intent;Z)Ljava/util/List;
    //   222: astore #10
    //   224: aload #5
    //   226: astore #6
    //   228: aload #10
    //   230: ifnull -> 414
    //   233: ldc_w 'files'
    //   236: astore #7
    //   238: aload_0
    //   239: getfield b : Landroid/content/Context;
    //   242: invokevirtual getFilesDir : ()Ljava/io/File;
    //   245: astore #6
    //   247: ldc_w 'files'
    //   250: aload #6
    //   252: invokevirtual getName : ()Ljava/lang/String;
    //   255: invokevirtual equals : (Ljava/lang/Object;)Z
    //   258: ifne -> 309
    //   261: new java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial <init> : ()V
    //   268: astore #7
    //   270: aload #7
    //   272: ldc_w 'fetal error:: app files dir name is unexpectedly :: '
    //   275: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: pop
    //   279: aload #7
    //   281: aload #6
    //   283: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   286: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: pop
    //   290: ldc_w 'DeviceId'
    //   293: aload #7
    //   295: invokevirtual toString : ()Ljava/lang/String;
    //   298: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   301: pop
    //   302: aload #6
    //   304: invokevirtual getName : ()Ljava/lang/String;
    //   307: astore #7
    //   309: aload #10
    //   311: invokeinterface iterator : ()Ljava/util/Iterator;
    //   316: astore #10
    //   318: aload #5
    //   320: astore #6
    //   322: aload #10
    //   324: invokeinterface hasNext : ()Z
    //   329: ifeq -> 414
    //   332: aload #10
    //   334: invokeinterface next : ()Ljava/lang/Object;
    //   339: checkcast com/baidu/mobstat/i
    //   342: astore #6
    //   344: aload #6
    //   346: getfield d : Z
    //   349: ifeq -> 355
    //   352: goto -> 318
    //   355: new java/io/File
    //   358: dup
    //   359: new java/io/File
    //   362: dup
    //   363: aload #6
    //   365: getfield a : Landroid/content/pm/ApplicationInfo;
    //   368: getfield dataDir : Ljava/lang/String;
    //   371: aload #7
    //   373: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   376: ldc_w 'libcuid.so'
    //   379: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   382: astore #6
    //   384: aload #6
    //   386: invokevirtual exists : ()Z
    //   389: ifeq -> 318
    //   392: aload #6
    //   394: invokestatic a : (Ljava/io/File;)Ljava/lang/String;
    //   397: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   400: invokestatic a : (Ljava/lang/String;)Lcom/baidu/mobstat/j;
    //   403: astore #6
    //   405: aload #6
    //   407: astore #5
    //   409: aload #6
    //   411: ifnull -> 318
    //   414: aload #6
    //   416: astore #5
    //   418: aload #6
    //   420: ifnonnull -> 438
    //   423: aload_0
    //   424: ldc_w 'com.baidu.deviceid.v2'
    //   427: invokespecial b : (Ljava/lang/String;)Ljava/lang/String;
    //   430: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   433: invokestatic a : (Ljava/lang/String;)Lcom/baidu/mobstat/j;
    //   436: astore #5
    //   438: aload_0
    //   439: ldc_w 'android.permission.READ_EXTERNAL_STORAGE'
    //   442: invokespecial c : (Ljava/lang/String;)Z
    //   445: istore_3
    //   446: aload #5
    //   448: astore #6
    //   450: aload #5
    //   452: ifnonnull -> 479
    //   455: aload #5
    //   457: astore #6
    //   459: iload_3
    //   460: ifeq -> 479
    //   463: aload_0
    //   464: aload_0
    //   465: getfield c : I
    //   468: iconst_2
    //   469: ior
    //   470: putfield c : I
    //   473: aload_0
    //   474: invokespecial e : ()Lcom/baidu/mobstat/j;
    //   477: astore #6
    //   479: aload #6
    //   481: astore #5
    //   483: aload #6
    //   485: ifnonnull -> 505
    //   488: aload_0
    //   489: aload_0
    //   490: getfield c : I
    //   493: bipush #8
    //   495: ior
    //   496: putfield c : I
    //   499: aload_0
    //   500: invokespecial d : ()Lcom/baidu/mobstat/j;
    //   503: astore #5
    //   505: aload #5
    //   507: ifnonnull -> 545
    //   510: iload_3
    //   511: ifeq -> 545
    //   514: aload_0
    //   515: aload_0
    //   516: getfield c : I
    //   519: iconst_1
    //   520: ior
    //   521: putfield c : I
    //   524: aload_0
    //   525: ldc ''
    //   527: invokespecial h : (Ljava/lang/String;)Ljava/lang/String;
    //   530: astore #6
    //   532: aload_0
    //   533: aload #6
    //   535: invokespecial d : (Ljava/lang/String;)Lcom/baidu/mobstat/j;
    //   538: astore #5
    //   540: iconst_1
    //   541: istore_1
    //   542: goto -> 550
    //   545: aconst_null
    //   546: astore #6
    //   548: iload_2
    //   549: istore_1
    //   550: aload #5
    //   552: astore #7
    //   554: aload #5
    //   556: ifnonnull -> 713
    //   559: aload_0
    //   560: aload_0
    //   561: getfield c : I
    //   564: iconst_4
    //   565: ior
    //   566: putfield c : I
    //   569: iload_1
    //   570: ifne -> 581
    //   573: aload_0
    //   574: ldc ''
    //   576: invokespecial h : (Ljava/lang/String;)Ljava/lang/String;
    //   579: astore #6
    //   581: new com/baidu/mobstat/j
    //   584: dup
    //   585: aconst_null
    //   586: invokespecial <init> : (Lcom/baidu/mobstat/h;)V
    //   589: astore #7
    //   591: aload_0
    //   592: getfield b : Landroid/content/Context;
    //   595: invokestatic b : (Landroid/content/Context;)Ljava/lang/String;
    //   598: astore #5
    //   600: getstatic android/os/Build$VERSION.SDK_INT : I
    //   603: bipush #23
    //   605: if_icmpge -> 659
    //   608: invokestatic randomUUID : ()Ljava/util/UUID;
    //   611: invokevirtual toString : ()Ljava/lang/String;
    //   614: astore #10
    //   616: new java/lang/StringBuilder
    //   619: dup
    //   620: invokespecial <init> : ()V
    //   623: astore #11
    //   625: aload #11
    //   627: aload #6
    //   629: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   632: pop
    //   633: aload #11
    //   635: aload #5
    //   637: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   640: pop
    //   641: aload #11
    //   643: aload #10
    //   645: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   648: pop
    //   649: aload #11
    //   651: invokevirtual toString : ()Ljava/lang/String;
    //   654: astore #5
    //   656: goto -> 692
    //   659: new java/lang/StringBuilder
    //   662: dup
    //   663: invokespecial <init> : ()V
    //   666: astore #10
    //   668: aload #10
    //   670: ldc_w 'com.baidu'
    //   673: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   676: pop
    //   677: aload #10
    //   679: aload #5
    //   681: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: pop
    //   685: aload #10
    //   687: invokevirtual toString : ()Ljava/lang/String;
    //   690: astore #5
    //   692: aload #7
    //   694: aload #5
    //   696: invokevirtual getBytes : ()[B
    //   699: iconst_1
    //   700: invokestatic a : ([BZ)Ljava/lang/String;
    //   703: putfield a : Ljava/lang/String;
    //   706: aload #7
    //   708: aload #6
    //   710: putfield b : Ljava/lang/String;
    //   713: new java/io/File
    //   716: dup
    //   717: aload_0
    //   718: getfield b : Landroid/content/Context;
    //   721: invokevirtual getFilesDir : ()Ljava/io/File;
    //   724: ldc_w 'libcuid.so'
    //   727: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   730: astore #6
    //   732: aload_0
    //   733: getfield c : I
    //   736: bipush #16
    //   738: iand
    //   739: ifne -> 754
    //   742: aload #9
    //   744: astore #5
    //   746: aload #6
    //   748: invokevirtual exists : ()Z
    //   751: ifne -> 782
    //   754: aload #8
    //   756: astore #5
    //   758: aconst_null
    //   759: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   762: ifeq -> 775
    //   765: aload #7
    //   767: invokevirtual a : ()Ljava/lang/String;
    //   770: invokestatic e : (Ljava/lang/String;)Ljava/lang/String;
    //   773: astore #5
    //   775: aload_0
    //   776: aload #5
    //   778: invokespecial a : (Ljava/lang/String;)Z
    //   781: pop
    //   782: aload_0
    //   783: invokespecial c : ()Z
    //   786: istore_3
    //   787: aload #5
    //   789: astore #6
    //   791: iload_3
    //   792: ifeq -> 853
    //   795: aload_0
    //   796: getfield c : I
    //   799: iconst_2
    //   800: iand
    //   801: ifne -> 821
    //   804: aload #5
    //   806: astore #6
    //   808: aload_0
    //   809: ldc_w 'com.baidu.deviceid.v2'
    //   812: invokespecial b : (Ljava/lang/String;)Ljava/lang/String;
    //   815: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   818: ifeq -> 853
    //   821: aload #5
    //   823: astore #6
    //   825: aload #5
    //   827: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   830: ifeq -> 843
    //   833: aload #7
    //   835: invokevirtual a : ()Ljava/lang/String;
    //   838: invokestatic e : (Ljava/lang/String;)Ljava/lang/String;
    //   841: astore #6
    //   843: aload_0
    //   844: ldc_w 'com.baidu.deviceid.v2'
    //   847: aload #6
    //   849: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Z
    //   852: pop
    //   853: aload_0
    //   854: ldc_w 'android.permission.WRITE_EXTERNAL_STORAGE'
    //   857: invokespecial c : (Ljava/lang/String;)Z
    //   860: ifeq -> 923
    //   863: new java/io/File
    //   866: dup
    //   867: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   870: ldc_w 'backups/.SystemConfig/.cuid2'
    //   873: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   876: astore #5
    //   878: aload_0
    //   879: getfield c : I
    //   882: bipush #8
    //   884: iand
    //   885: ifne -> 896
    //   888: aload #5
    //   890: invokevirtual exists : ()Z
    //   893: ifne -> 923
    //   896: aload #6
    //   898: astore #5
    //   900: aload #6
    //   902: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   905: ifeq -> 918
    //   908: aload #7
    //   910: invokevirtual a : ()Ljava/lang/String;
    //   913: invokestatic e : (Ljava/lang/String;)Ljava/lang/String;
    //   916: astore #5
    //   918: aload #5
    //   920: invokestatic g : (Ljava/lang/String;)V
    //   923: iload_3
    //   924: ifeq -> 975
    //   927: iconst_1
    //   928: aload_0
    //   929: getfield c : I
    //   932: iand
    //   933: ifne -> 949
    //   936: aload_0
    //   937: ldc_w 'com.baidu.deviceid'
    //   940: invokespecial b : (Ljava/lang/String;)Ljava/lang/String;
    //   943: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   946: ifeq -> 975
    //   949: aload_0
    //   950: ldc_w 'com.baidu.deviceid'
    //   953: aload #7
    //   955: getfield a : Ljava/lang/String;
    //   958: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Z
    //   961: pop
    //   962: aload_0
    //   963: ldc_w 'bd_setting_i'
    //   966: aload #7
    //   968: getfield b : Ljava/lang/String;
    //   971: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Z
    //   974: pop
    //   975: iload_3
    //   976: ifeq -> 1035
    //   979: aload #7
    //   981: getfield b : Ljava/lang/String;
    //   984: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   987: ifne -> 1035
    //   990: new java/io/File
    //   993: dup
    //   994: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   997: ldc_w 'backups/.SystemConfig/.cuid'
    //   1000: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   1003: astore #5
    //   1005: aload_0
    //   1006: getfield c : I
    //   1009: iconst_2
    //   1010: iand
    //   1011: ifne -> 1022
    //   1014: aload #5
    //   1016: invokevirtual exists : ()Z
    //   1019: ifne -> 1035
    //   1022: aload #7
    //   1024: getfield b : Ljava/lang/String;
    //   1027: aload #7
    //   1029: getfield a : Ljava/lang/String;
    //   1032: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)V
    //   1035: aload #7
    //   1037: areturn }
  
  public static String b(Context paramContext) {
    String str2 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
      str1 = ""; 
    return str1;
  }
  
  private String b(String paramString) {
    try {
      return Settings.System.getString(this.b.getContentResolver(), paramString);
    } catch (Exception paramString) {
      b(paramString);
      return null;
    } 
  }
  
  private static void b(String paramString1, String paramString2) {
    if (TextUtils.isEmpty(paramString1))
      return; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramString1);
    stringBuilder.append("=");
    stringBuilder.append(paramString2);
    file1 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
    File file2 = new File(file1, ".cuid");
    try {
      if (file1.exists() && !file1.isDirectory()) {
        File file4;
        Random random = new Random();
        File file3 = file1.getParentFile();
        String str = file1.getName();
        do {
          StringBuilder stringBuilder1 = new StringBuilder();
          stringBuilder1.append(str);
          stringBuilder1.append(random.nextInt());
          stringBuilder1.append(".tmp");
          file4 = new File(file3, stringBuilder1.toString());
        } while (file4.exists());
        file1.renameTo(file4);
        file4.delete();
      } 
      file1.mkdirs();
      FileWriter fileWriter = new FileWriter(file2, false);
      fileWriter.write(b.a(a.a(a, a, stringBuilder.toString().getBytes()), "utf-8"));
      fileWriter.flush();
      fileWriter.close();
      return;
    } catch (IOException|Exception file1) {
      return;
    } 
  }
  
  private static void b(Throwable paramThrowable) {}
  
  private static j c(Context paramContext) { // Byte code:
    //   0: getstatic com/baidu/mobstat/g.e : Lcom/baidu/mobstat/j;
    //   3: ifnonnull -> 49
    //   6: ldc com/baidu/mobstat/j
    //   8: monitorenter
    //   9: getstatic com/baidu/mobstat/g.e : Lcom/baidu/mobstat/j;
    //   12: ifnonnull -> 37
    //   15: invokestatic uptimeMillis : ()J
    //   18: pop2
    //   19: new com/baidu/mobstat/g
    //   22: dup
    //   23: aload_0
    //   24: invokespecial <init> : (Landroid/content/Context;)V
    //   27: invokespecial b : ()Lcom/baidu/mobstat/j;
    //   30: putstatic com/baidu/mobstat/g.e : Lcom/baidu/mobstat/j;
    //   33: invokestatic uptimeMillis : ()J
    //   36: pop2
    //   37: ldc com/baidu/mobstat/j
    //   39: monitorexit
    //   40: goto -> 49
    //   43: astore_0
    //   44: ldc com/baidu/mobstat/j
    //   46: monitorexit
    //   47: aload_0
    //   48: athrow
    //   49: getstatic com/baidu/mobstat/g.e : Lcom/baidu/mobstat/j;
    //   52: areturn
    // Exception table:
    //   from	to	target	type
    //   9	37	43	finally
    //   37	40	43	finally
    //   44	47	43	finally }
  
  private boolean c() { return c("android.permission.WRITE_SETTINGS"); }
  
  private boolean c(String paramString) { return (this.b.checkPermission(paramString, Process.myPid(), Process.myUid()) == 0); }
  
  private j d() {
    String str3 = b("com.baidu.deviceid");
    String str2 = b("bd_setting_i");
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str2 = h("");
      str1 = str2;
      if (!TextUtils.isEmpty(str2)) {
        a("bd_setting_i", str2);
        str1 = str2;
      } 
    } 
    str2 = str3;
    if (TextUtils.isEmpty(str3)) {
      str2 = b(this.b);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("com.baidu");
      stringBuilder.append(str1);
      stringBuilder.append(str2);
      str2 = b(c.a(stringBuilder.toString().getBytes(), true));
    } 
    if (!TextUtils.isEmpty(str2)) {
      j j1 = new j(null);
      j1.a = str2;
      j1.b = str1;
      return j1;
    } 
    return null;
  }
  
  private j d(String paramString) { // Byte code:
    //   0: getstatic android/os/Build$VERSION.SDK_INT : I
    //   3: bipush #23
    //   5: if_icmpge -> 13
    //   8: iconst_1
    //   9: istore_2
    //   10: goto -> 15
    //   13: iconst_0
    //   14: istore_2
    //   15: iload_2
    //   16: ifeq -> 28
    //   19: aload_1
    //   20: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   23: ifeq -> 28
    //   26: aconst_null
    //   27: areturn
    //   28: ldc ''
    //   30: astore #8
    //   32: new java/io/File
    //   35: dup
    //   36: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   39: ldc_w 'baidu/.cuid'
    //   42: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   45: astore #4
    //   47: aload #4
    //   49: invokevirtual exists : ()Z
    //   52: ifeq -> 60
    //   55: iconst_0
    //   56: istore_3
    //   57: goto -> 77
    //   60: new java/io/File
    //   63: dup
    //   64: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   67: ldc_w 'backups/.SystemConfig/.cuid'
    //   70: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   73: astore #4
    //   75: iconst_1
    //   76: istore_3
    //   77: aload #8
    //   79: astore #7
    //   81: aload_1
    //   82: astore #6
    //   84: new java/io/BufferedReader
    //   87: dup
    //   88: new java/io/FileReader
    //   91: dup
    //   92: aload #4
    //   94: invokespecial <init> : (Ljava/io/File;)V
    //   97: invokespecial <init> : (Ljava/io/Reader;)V
    //   100: astore #4
    //   102: aload #8
    //   104: astore #7
    //   106: aload_1
    //   107: astore #6
    //   109: new java/lang/StringBuilder
    //   112: dup
    //   113: invokespecial <init> : ()V
    //   116: astore #5
    //   118: aload #8
    //   120: astore #7
    //   122: aload_1
    //   123: astore #6
    //   125: aload #4
    //   127: invokevirtual readLine : ()Ljava/lang/String;
    //   130: astore #9
    //   132: aload #9
    //   134: ifnull -> 171
    //   137: aload #8
    //   139: astore #7
    //   141: aload_1
    //   142: astore #6
    //   144: aload #5
    //   146: aload #9
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: pop
    //   152: aload #8
    //   154: astore #7
    //   156: aload_1
    //   157: astore #6
    //   159: aload #5
    //   161: ldc_w '\\r\\n'
    //   164: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: pop
    //   168: goto -> 118
    //   171: aload #8
    //   173: astore #7
    //   175: aload_1
    //   176: astore #6
    //   178: aload #4
    //   180: invokevirtual close : ()V
    //   183: aload #8
    //   185: astore #7
    //   187: aload_1
    //   188: astore #6
    //   190: new java/lang/String
    //   193: dup
    //   194: getstatic com/baidu/mobstat/g.a : Ljava/lang/String;
    //   197: getstatic com/baidu/mobstat/g.a : Ljava/lang/String;
    //   200: aload #5
    //   202: invokevirtual toString : ()Ljava/lang/String;
    //   205: invokevirtual getBytes : ()[B
    //   208: invokestatic a : ([B)[B
    //   211: invokestatic b : (Ljava/lang/String;Ljava/lang/String;[B)[B
    //   214: invokespecial <init> : ([B)V
    //   217: ldc_w '='
    //   220: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   223: astore #9
    //   225: aload #8
    //   227: astore #4
    //   229: aload_1
    //   230: astore #5
    //   232: aload #9
    //   234: ifnull -> 326
    //   237: aload #8
    //   239: astore #4
    //   241: aload_1
    //   242: astore #5
    //   244: aload #8
    //   246: astore #7
    //   248: aload_1
    //   249: astore #6
    //   251: aload #9
    //   253: arraylength
    //   254: iconst_2
    //   255: if_icmpne -> 326
    //   258: iload_2
    //   259: ifeq -> 289
    //   262: aload #8
    //   264: astore #7
    //   266: aload_1
    //   267: astore #6
    //   269: aload_1
    //   270: aload #9
    //   272: iconst_0
    //   273: aaload
    //   274: invokevirtual equals : (Ljava/lang/Object;)Z
    //   277: ifeq -> 289
    //   280: aload #9
    //   282: iconst_1
    //   283: aaload
    //   284: astore #5
    //   286: goto -> 398
    //   289: aload #8
    //   291: astore #4
    //   293: aload_1
    //   294: astore #5
    //   296: iload_2
    //   297: ifne -> 326
    //   300: aload #8
    //   302: astore #7
    //   304: aload_1
    //   305: astore #6
    //   307: aload_1
    //   308: astore #4
    //   310: aload_1
    //   311: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   314: ifeq -> 408
    //   317: aload #9
    //   319: iconst_1
    //   320: aaload
    //   321: astore #4
    //   323: goto -> 408
    //   326: aload #4
    //   328: astore #7
    //   330: aload #5
    //   332: astore #6
    //   334: iload_3
    //   335: ifne -> 361
    //   338: aload #4
    //   340: astore #7
    //   342: aload #5
    //   344: astore #6
    //   346: aload #5
    //   348: aload #4
    //   350: invokestatic b : (Ljava/lang/String;Ljava/lang/String;)V
    //   353: aload #5
    //   355: astore #6
    //   357: aload #4
    //   359: astore #7
    //   361: aload #7
    //   363: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   366: ifne -> 392
    //   369: new com/baidu/mobstat/j
    //   372: dup
    //   373: aconst_null
    //   374: invokespecial <init> : (Lcom/baidu/mobstat/h;)V
    //   377: astore_1
    //   378: aload_1
    //   379: aload #7
    //   381: putfield a : Ljava/lang/String;
    //   384: aload_1
    //   385: aload #6
    //   387: putfield b : Ljava/lang/String;
    //   390: aload_1
    //   391: areturn
    //   392: aconst_null
    //   393: areturn
    //   394: astore_1
    //   395: goto -> 361
    //   398: aload #5
    //   400: astore #4
    //   402: aload_1
    //   403: astore #5
    //   405: goto -> 326
    //   408: aload #9
    //   410: iconst_1
    //   411: aaload
    //   412: astore #5
    //   414: aload #4
    //   416: astore_1
    //   417: goto -> 398
    // Exception table:
    //   from	to	target	type
    //   84	102	394	java/io/FileNotFoundException
    //   84	102	394	java/io/IOException
    //   84	102	394	java/lang/Exception
    //   109	118	394	java/io/FileNotFoundException
    //   109	118	394	java/io/IOException
    //   109	118	394	java/lang/Exception
    //   125	132	394	java/io/FileNotFoundException
    //   125	132	394	java/io/IOException
    //   125	132	394	java/lang/Exception
    //   144	152	394	java/io/FileNotFoundException
    //   144	152	394	java/io/IOException
    //   144	152	394	java/lang/Exception
    //   159	168	394	java/io/FileNotFoundException
    //   159	168	394	java/io/IOException
    //   159	168	394	java/lang/Exception
    //   178	183	394	java/io/FileNotFoundException
    //   178	183	394	java/io/IOException
    //   178	183	394	java/lang/Exception
    //   190	225	394	java/io/FileNotFoundException
    //   190	225	394	java/io/IOException
    //   190	225	394	java/lang/Exception
    //   251	258	394	java/io/FileNotFoundException
    //   251	258	394	java/io/IOException
    //   251	258	394	java/lang/Exception
    //   269	280	394	java/io/FileNotFoundException
    //   269	280	394	java/io/IOException
    //   269	280	394	java/lang/Exception
    //   310	317	394	java/io/FileNotFoundException
    //   310	317	394	java/io/IOException
    //   310	317	394	java/lang/Exception
    //   346	353	394	java/io/FileNotFoundException
    //   346	353	394	java/io/IOException
    //   346	353	394	java/lang/Exception }
  
  private j e() {
    File file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
    if (file.exists()) {
      str = a(file);
      if (!TextUtils.isEmpty(str))
        try {
          return j.a(new String(a.b(a, a, b.a(str.getBytes()))));
        } catch (Exception str) {
          a.a(str);
        }  
    } 
    return null;
  }
  
  private static String e(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return null; 
    try {
      return b.a(a.a(a, a, paramString.getBytes()), "utf-8");
    } catch (UnsupportedEncodingException|Exception paramString) {
      b(paramString);
      return "";
    } 
  }
  
  private static String f(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return null; 
    try {
      return new String(a.b(a, a, b.a(paramString.getBytes())));
    } catch (Exception paramString) {
      b(paramString);
      return "";
    } 
  }
  
  private static void g(String paramString) {
    File file1 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
    File file2 = new File(file1, ".cuid2");
    try {
      if (file1.exists() && !file1.isDirectory()) {
        File file4;
        Random random = new Random();
        File file3 = file1.getParentFile();
        String str = file1.getName();
        do {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(str);
          stringBuilder.append(random.nextInt());
          stringBuilder.append(".tmp");
          file4 = new File(file3, stringBuilder.toString());
        } while (file4.exists());
        file1.renameTo(file4);
        file4.delete();
      } 
      file1.mkdirs();
      FileWriter fileWriter = new FileWriter(file2, false);
      fileWriter.write(paramString);
      fileWriter.flush();
      fileWriter.close();
      return;
    } catch (IOException|Exception paramString) {
      return;
    } 
  }
  
  private String h(String paramString) {
    Exception exception2 = null;
    try {
      TelephonyManager telephonyManager = (TelephonyManager)this.b.getSystemService("phone");
      exception1 = exception2;
      if (telephonyManager != null)
        exception1 = telephonyManager.getDeviceId(); 
    } catch (Exception exception1) {
      Log.e("DeviceId", "Read IMEI failed", exception1);
      exception1 = exception2;
    } 
    String str = i(exception1);
    return TextUtils.isEmpty(str) ? paramString : str;
  }
  
  private static String i(String paramString) {
    String str = paramString;
    if (paramString != null) {
      str = paramString;
      if (paramString.contains(":"))
        str = ""; 
    } 
    return str;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
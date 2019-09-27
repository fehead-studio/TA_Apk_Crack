package com.baidu.mobstat;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

public class dc {
  private static String a;
  
  private static String b;
  
  private static final Pattern c = Pattern.compile("\\s*|\t|\r|\n");
  
  public static String a() { // Byte code:
    //   0: new java/lang/StringBuffer
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #4
    //   9: bipush #20
    //   11: newarray char
    //   13: astore #5
    //   15: new java/io/InputStreamReader
    //   18: dup
    //   19: new java/io/FileInputStream
    //   22: dup
    //   23: ldc '/sys/class/net/eth0/address'
    //   25: invokespecial <init> : (Ljava/lang/String;)V
    //   28: invokespecial <init> : (Ljava/io/InputStream;)V
    //   31: astore_3
    //   32: aload_3
    //   33: astore_2
    //   34: aload_3
    //   35: aload #5
    //   37: invokevirtual read : ([C)I
    //   40: istore_1
    //   41: iload_1
    //   42: iconst_m1
    //   43: if_icmpeq -> 112
    //   46: aload_3
    //   47: astore_2
    //   48: iload_1
    //   49: aload #5
    //   51: arraylength
    //   52: if_icmpne -> 214
    //   55: aload_3
    //   56: astore_2
    //   57: aload #5
    //   59: aload #5
    //   61: arraylength
    //   62: iconst_1
    //   63: isub
    //   64: caload
    //   65: bipush #13
    //   67: if_icmpeq -> 214
    //   70: aload_3
    //   71: astore_2
    //   72: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   75: aload #5
    //   77: invokevirtual print : ([C)V
    //   80: goto -> 32
    //   83: iload_0
    //   84: iload_1
    //   85: if_icmpge -> 32
    //   88: aload #5
    //   90: iload_0
    //   91: caload
    //   92: bipush #13
    //   94: if_icmpeq -> 219
    //   97: aload_3
    //   98: astore_2
    //   99: aload #4
    //   101: aload #5
    //   103: iload_0
    //   104: caload
    //   105: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   108: pop
    //   109: goto -> 219
    //   112: aload_3
    //   113: astore_2
    //   114: aload #4
    //   116: invokevirtual toString : ()Ljava/lang/String;
    //   119: invokevirtual trim : ()Ljava/lang/String;
    //   122: ldc ':'
    //   124: ldc ''
    //   126: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   129: astore #4
    //   131: aload_3
    //   132: ifnull -> 147
    //   135: aload_3
    //   136: invokevirtual close : ()V
    //   139: aload #4
    //   141: areturn
    //   142: astore_2
    //   143: aload_2
    //   144: invokestatic a : (Ljava/lang/Throwable;)V
    //   147: aload #4
    //   149: areturn
    //   150: astore #4
    //   152: goto -> 165
    //   155: astore_2
    //   156: aconst_null
    //   157: astore_3
    //   158: goto -> 196
    //   161: astore #4
    //   163: aconst_null
    //   164: astore_3
    //   165: aload_3
    //   166: astore_2
    //   167: aload #4
    //   169: invokestatic a : (Ljava/lang/Throwable;)V
    //   172: aload_3
    //   173: ifnull -> 187
    //   176: aload_3
    //   177: invokevirtual close : ()V
    //   180: aconst_null
    //   181: areturn
    //   182: astore_2
    //   183: aload_2
    //   184: invokestatic a : (Ljava/lang/Throwable;)V
    //   187: aconst_null
    //   188: areturn
    //   189: astore #4
    //   191: aload_2
    //   192: astore_3
    //   193: aload #4
    //   195: astore_2
    //   196: aload_3
    //   197: ifnull -> 212
    //   200: aload_3
    //   201: invokevirtual close : ()V
    //   204: goto -> 212
    //   207: astore_3
    //   208: aload_3
    //   209: invokestatic a : (Ljava/lang/Throwable;)V
    //   212: aload_2
    //   213: athrow
    //   214: iconst_0
    //   215: istore_0
    //   216: goto -> 83
    //   219: iload_0
    //   220: iconst_1
    //   221: iadd
    //   222: istore_0
    //   223: goto -> 83
    // Exception table:
    //   from	to	target	type
    //   9	32	161	java/lang/Exception
    //   9	32	155	finally
    //   34	41	150	java/lang/Exception
    //   34	41	189	finally
    //   48	55	150	java/lang/Exception
    //   48	55	189	finally
    //   57	70	150	java/lang/Exception
    //   57	70	189	finally
    //   72	80	150	java/lang/Exception
    //   72	80	189	finally
    //   99	109	150	java/lang/Exception
    //   99	109	189	finally
    //   114	131	150	java/lang/Exception
    //   114	131	189	finally
    //   135	139	142	java/io/IOException
    //   167	172	189	finally
    //   176	180	182	java/io/IOException
    //   200	204	207	java/io/IOException }
  
  private static String a(byte paramByte) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("00");
    stringBuilder.append(Integer.toHexString(paramByte));
    stringBuilder.append(":");
    String str = stringBuilder.toString();
    return str.substring(str.length() - 3);
  }
  
  public static String a(int paramInt, Context paramContext) {
    try {
      return cr.c(paramInt, a(paramContext).getBytes());
    } catch (Exception paramContext) {
      cz.a(paramContext);
      return "";
    } 
  }
  
  public static String a(Context paramContext) {
    String str = de.a(paramContext);
    return c.matcher(str).replaceAll("");
  }
  
  public static String a(Context paramContext, int paramInt) {
    String str = u(paramContext);
    return TextUtils.isEmpty(str) ? "" : cr.c(paramInt, str.getBytes());
  }
  
  public static String a(Context paramContext, String paramString) {
    String str = "";
    PackageManager packageManager = paramContext.getPackageManager();
    try {
      ApplicationInfo applicationInfo = packageManager.getApplicationInfo(paramContext.getPackageName(), 128);
      Object object = str;
      if (applicationInfo != null) {
        object = null;
        if (applicationInfo.metaData != null)
          object = applicationInfo.metaData.get(paramString); 
        if (object == null) {
          object = new StringBuilder();
          object.append("null,can't find information for key:");
          object.append(paramString);
          cz.a(object.toString());
          return "";
        } 
        object = object.toString();
      } 
      return object;
    } catch (Exception paramContext) {
      return "";
    } 
  }
  
  public static int b(Context paramContext) {
    DisplayMetrics displayMetrics1;
    DisplayMetrics displayMetrics2 = new DisplayMetrics();
    try {
      displayMetrics1 = d(paramContext);
    } catch (Exception paramContext) {
      cz.a(paramContext);
      displayMetrics1 = displayMetrics2;
    } 
    return displayMetrics1.widthPixels;
  }
  
  @TargetApi(9)
  private static String b() {
    if (Build.VERSION.SDK_INT < 9)
      return ""; 
    try {
      Iterator iterator = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
      while (iterator.hasNext()) {
        NetworkInterface networkInterface = (NetworkInterface)iterator.next();
        if (!networkInterface.getName().equalsIgnoreCase("wlan0"))
          continue; 
        byte[] arrayOfByte = networkInterface.getHardwareAddress();
        if (arrayOfByte == null)
          return ""; 
        StringBuilder stringBuilder = new StringBuilder();
        int i = arrayOfByte.length;
        for (byte b1 = 0; b1 < i; b1++) {
          stringBuilder.append(String.format("%02x:", new Object[] { Byte.valueOf(arrayOfByte[b1]) }));
        } 
        if (stringBuilder.length() > 0)
          stringBuilder.deleteCharAt(stringBuilder.length() - 1); 
        return stringBuilder.toString();
      } 
    } catch (Throwable throwable) {
      cz.b(throwable);
    } 
    return "";
  }
  
  public static String b(int paramInt, Context paramContext) {
    String str = j(paramContext);
    return TextUtils.isEmpty(str) ? "" : cr.c(paramInt, str.getBytes());
  }
  
  private static String b(Context paramContext, String paramString) {
    String str;
    Context context = null;
    if (paramString == null)
      return null; 
    int i = paramString.lastIndexOf(':');
    paramContext = context;
    if (i > 0) {
      i++;
      paramContext = context;
      if (i < paramString.length())
        str = paramString.substring(i); 
    } 
    return str;
  }
  
  public static int c(Context paramContext) {
    DisplayMetrics displayMetrics1;
    DisplayMetrics displayMetrics2 = new DisplayMetrics();
    try {
      displayMetrics1 = d(paramContext);
    } catch (Exception paramContext) {
      cz.a(paramContext);
      displayMetrics1 = displayMetrics2;
    } 
    return displayMetrics1.heightPixels;
  }
  
  public static String c(int paramInt, Context paramContext) {
    String str1 = d(paramInt, paramContext);
    if (!TextUtils.isEmpty(str1)) {
      str1 = cr.c(paramInt, str1.getBytes());
    } else {
      str1 = null;
    } 
    String str2 = str1;
    if (TextUtils.isEmpty(str1))
      str2 = ""; 
    return str2;
  }
  
  private static String c(Context paramContext, String paramString) {
    ApplicationInfo applicationInfo = paramContext.getApplicationInfo();
    if (applicationInfo == null)
      return null; 
    String str = applicationInfo.processName;
    return (str != null && !str.equals(paramString)) ? paramString : null;
  }
  
  public static DisplayMetrics d(Context paramContext) {
    DisplayMetrics displayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
    return displayMetrics;
  }
  
  public static String d(int paramInt, Context paramContext) {
    String str3 = a();
    String str2 = str3;
    if (TextUtils.isEmpty(str3))
      str2 = e(paramInt, paramContext); 
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
      str1 = ""; 
    return str1;
  }
  
  public static int e(Context paramContext) {
    PackageManager packageManager = paramContext.getPackageManager();
    str = paramContext.getPackageName();
    try {
      return (packageManager.getPackageInfo(str, 0)).versionCode;
    } catch (Exception str) {
      cz.b("Get app version code exception");
      return 1;
    } 
  }
  
  @SuppressLint({"NewApi"})
  public static String e(int paramInt, Context paramContext) {
    Object object2;
    StringBuffer stringBuffer = new StringBuffer();
    Object object1 = null;
    inetAddress = null;
    try {
      Enumeration enumeration = NetworkInterface.getNetworkInterfaces();
      label43: while (true) {
        object1 = inetAddress;
        object2 = inetAddress;
        if (enumeration.hasMoreElements()) {
          object1 = inetAddress;
          NetworkInterface networkInterface = (NetworkInterface)enumeration.nextElement();
          object1 = inetAddress;
          Enumeration enumeration1 = networkInterface.getInetAddresses();
          object2 = inetAddress;
          while (true) {
            inetAddress = object2;
            object1 = object2;
            if (enumeration1.hasMoreElements()) {
              object1 = object2;
              inetAddress = (InetAddress)enumeration1.nextElement();
              object1 = object2;
              if (!inetAddress.isAnyLocalAddress()) {
                object1 = object2;
                if (inetAddress instanceof java.net.Inet4Address) {
                  object1 = object2;
                  if (inetAddress.isLoopbackAddress())
                    continue; 
                  object1 = object2;
                  if (inetAddress.isSiteLocalAddress()) {
                    object1 = object2;
                    object2 = networkInterface.getHardwareAddress();
                    continue;
                  } 
                  object1 = object2;
                  if (!inetAddress.isLinkLocalAddress())
                    break; 
                } 
              } 
              continue;
            } 
            continue label43;
          } 
          object1 = object2;
          byte[] arrayOfByte = networkInterface.getHardwareAddress();
          continue;
        } 
        break;
      } 
    } catch (Exception inetAddress) {
      cz.a(inetAddress);
      object2 = object1;
    } 
    if (object2 != null) {
      for (paramInt = 0; paramInt < object2.length; paramInt++)
        stringBuffer.append(a(object2[paramInt])); 
      return stringBuffer.substring(0, stringBuffer.length() - 1).replaceAll(":", "");
    } 
    String str2 = b(paramInt, paramContext);
    String str1 = str2;
    if (str2 != null)
      str1 = str2.replaceAll(":", ""); 
    return str1;
  }
  
  public static String f(int paramInt, Context paramContext) {
    String str = k(paramContext);
    return TextUtils.isEmpty(str) ? "" : cr.c(paramInt, str.getBytes());
  }
  
  public static String f(Context paramContext) {
    PackageManager packageManager = paramContext.getPackageManager();
    str = paramContext.getPackageName();
    try {
      return (packageManager.getPackageInfo(str, 0)).versionName;
    } catch (android.content.pm.PackageManager.NameNotFoundException str) {
      cz.b("get app version name exception");
      return "";
    } 
  }
  
  public static String g(int paramInt, Context paramContext) {
    String str = m(paramContext);
    return TextUtils.isEmpty(str) ? "" : cr.d(paramInt, str.getBytes());
  }
  
  public static String g(Context paramContext) {
    String str = String.format("%s_%s_%s", new Object[] { Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0) });
    try {
      if (cs.e(paramContext, "android.permission.ACCESS_FINE_LOCATION") || cs.e(paramContext, "android.permission.ACCESS_COARSE_LOCATION")) {
        GsmCellLocation gsmCellLocation = ((TelephonyManager)paramContext.getSystemService("phone")).getCellLocation();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(gsmCellLocation);
        stringBuilder.append("");
        cz.a(stringBuilder.toString());
        if (gsmCellLocation == null)
          return str; 
        if (gsmCellLocation instanceof GsmCellLocation) {
          gsmCellLocation = (GsmCellLocation)gsmCellLocation;
          return String.format("%s_%s_%s", new Object[] { String.format("%d", new Object[] { Integer.valueOf(gsmCellLocation.getCid()) }), String.format("%d", new Object[] { Integer.valueOf(gsmCellLocation.getLac()) }), Integer.valueOf(0) });
        } 
        String[] arrayOfString = gsmCellLocation.toString().replace("[", "").replace("]", "").split(",");
        return String.format("%s_%s_%s", new Object[] { arrayOfString[0], arrayOfString[3], arrayOfString[4] });
      } 
    } catch (Exception paramContext) {
      cz.a("Get Location", paramContext);
    } 
    return str;
  }
  
  public static String h(int paramInt, Context paramContext) {
    str = p(paramContext);
    if (!TextUtils.isEmpty(str))
      try {
        return cr.c(paramInt, str.getBytes());
      } catch (Exception str) {
        cz.b(str);
      }  
    return "";
  }
  
  public static String h(Context paramContext) {
    try {
      if (cs.e(paramContext, "android.permission.ACCESS_FINE_LOCATION")) {
        Location location = ((LocationManager)paramContext.getSystemService("location")).getLastKnownLocation("gps");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("location: ");
        stringBuilder.append(location);
        cz.b(stringBuilder.toString());
        if (location != null)
          return String.format("%s_%s_%s", new Object[] { Long.valueOf(location.getTime()), Double.valueOf(location.getLongitude()), Double.valueOf(location.getLatitude()) }); 
      } 
    } catch (Exception paramContext) {
      cz.b(paramContext);
    } 
    return "";
  }
  
  public static String i(Context paramContext) { return (Build.VERSION.SDK_INT < 23) ? j(paramContext) : b(); }
  
  public static String j(Context paramContext) {
    try {
      if (cs.e(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
        WifiInfo wifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
        if (wifiInfo != null) {
          String str = wifiInfo.getMacAddress();
          if (!TextUtils.isEmpty(str))
            return str; 
        } 
      } else {
        cz.c("You need the android.Manifest.permission.ACCESS_WIFI_STATE permission. Open AndroidManifest.xml and just before the final </manifest> tag add: android.permission.ACCESS_WIFI_STATE");
      } 
    } catch (Exception paramContext) {
      cz.b(paramContext);
    } 
    return "";
  }
  
  @SuppressLint({"NewApi"})
  public static String k(Context paramContext) {
    String str = Build.BRAND;
    if ("4.1.1".equals(Build.VERSION.RELEASE) && "TCT".equals(str))
      return ""; 
    try {
      if (cs.e(paramContext, "android.permission.BLUETOOTH")) {
        BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (bluetoothAdapter != null) {
          String str1 = bluetoothAdapter.getAddress();
          if (str1 != null)
            return str1; 
        } 
      } 
    } catch (Exception paramContext) {
      cz.b(paramContext);
    } 
    return "";
  }
  
  public static String l(Context paramContext) {
    String str = m(paramContext);
    return TextUtils.isEmpty(str) ? "" : cq.a(str.getBytes());
  }
  
  public static String m(Context paramContext) { // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 7
    //   4: ldc ''
    //   6: areturn
    //   7: aload_0
    //   8: ldc_w 'android.permission.ACCESS_WIFI_STATE'
    //   11: invokestatic e : (Landroid/content/Context;Ljava/lang/String;)Z
    //   14: ifne -> 20
    //   17: ldc ''
    //   19: areturn
    //   20: iconst_0
    //   21: istore_3
    //   22: aload_0
    //   23: ldc_w 'android.permission.ACCESS_FINE_LOCATION'
    //   26: invokestatic e : (Landroid/content/Context;Ljava/lang/String;)Z
    //   29: ifeq -> 53
    //   32: aload_0
    //   33: ldc_w 'location'
    //   36: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   39: checkcast android/location/LocationManager
    //   42: ldc_w 'gps'
    //   45: invokevirtual isProviderEnabled : (Ljava/lang/String;)Z
    //   48: istore #4
    //   50: goto -> 69
    //   53: iconst_0
    //   54: istore #4
    //   56: goto -> 69
    //   59: astore #5
    //   61: aload #5
    //   63: invokestatic a : (Ljava/lang/Throwable;)V
    //   66: goto -> 53
    //   69: aload_0
    //   70: ldc_w 'wifi'
    //   73: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   76: checkcast android/net/wifi/WifiManager
    //   79: astore #5
    //   81: aload #5
    //   83: invokevirtual getConnectionInfo : ()Landroid/net/wifi/WifiInfo;
    //   86: astore #6
    //   88: aload #5
    //   90: invokevirtual getScanResults : ()Ljava/util/List;
    //   93: astore #5
    //   95: goto -> 128
    //   98: astore #7
    //   100: aload #6
    //   102: astore #5
    //   104: goto -> 112
    //   107: astore #7
    //   109: aconst_null
    //   110: astore #5
    //   112: aload #7
    //   114: invokestatic a : (Ljava/lang/Throwable;)V
    //   117: aconst_null
    //   118: astore #7
    //   120: aload #5
    //   122: astore #6
    //   124: aload #7
    //   126: astore #5
    //   128: aload #5
    //   130: ifnull -> 155
    //   133: aload #5
    //   135: invokeinterface size : ()I
    //   140: ifeq -> 155
    //   143: aload #5
    //   145: new com/baidu/mobstat/dd
    //   148: dup
    //   149: invokespecial <init> : ()V
    //   152: invokestatic sort : (Ljava/util/List;Ljava/util/Comparator;)V
    //   155: new org/json/JSONArray
    //   158: dup
    //   159: invokespecial <init> : ()V
    //   162: astore #9
    //   164: iconst_0
    //   165: istore_1
    //   166: iconst_1
    //   167: istore_2
    //   168: aload #5
    //   170: ifnull -> 367
    //   173: iload_1
    //   174: aload #5
    //   176: invokeinterface size : ()I
    //   181: if_icmpge -> 367
    //   184: iload_1
    //   185: bipush #30
    //   187: if_icmpge -> 367
    //   190: aload #5
    //   192: iload_1
    //   193: invokeinterface get : (I)Ljava/lang/Object;
    //   198: checkcast android/net/wifi/ScanResult
    //   201: astore #10
    //   203: new java/lang/StringBuilder
    //   206: dup
    //   207: invokespecial <init> : ()V
    //   210: astore #11
    //   212: aload #11
    //   214: aload #10
    //   216: getfield BSSID : Ljava/lang/String;
    //   219: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: pop
    //   223: aload #11
    //   225: ldc_w '|'
    //   228: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: pop
    //   232: aload #10
    //   234: getfield SSID : Ljava/lang/String;
    //   237: ldc_w '\|'
    //   240: ldc ''
    //   242: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   245: astore #8
    //   247: aload #8
    //   249: astore #7
    //   251: aload #8
    //   253: invokevirtual length : ()I
    //   256: bipush #30
    //   258: if_icmple -> 271
    //   261: aload #8
    //   263: iconst_0
    //   264: bipush #30
    //   266: invokevirtual substring : (II)Ljava/lang/String;
    //   269: astore #7
    //   271: aload #11
    //   273: aload #7
    //   275: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: pop
    //   279: aload #11
    //   281: ldc_w '|'
    //   284: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: pop
    //   288: aload #11
    //   290: aload #10
    //   292: getfield level : I
    //   295: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   298: pop
    //   299: aload #11
    //   301: ldc_w '|'
    //   304: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: pop
    //   308: aload #6
    //   310: ifnull -> 489
    //   313: aload #10
    //   315: getfield BSSID : Ljava/lang/String;
    //   318: aload #6
    //   320: invokevirtual getBSSID : ()Ljava/lang/String;
    //   323: invokevirtual equals : (Ljava/lang/Object;)Z
    //   326: ifeq -> 489
    //   329: goto -> 332
    //   332: aload #11
    //   334: iload_2
    //   335: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   338: pop
    //   339: aload #9
    //   341: aload #11
    //   343: invokevirtual toString : ()Ljava/lang/String;
    //   346: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   349: pop
    //   350: goto -> 360
    //   353: astore #7
    //   355: aload #7
    //   357: invokestatic a : (Ljava/lang/Throwable;)V
    //   360: iload_1
    //   361: iconst_1
    //   362: iadd
    //   363: istore_1
    //   364: goto -> 166
    //   367: aload #9
    //   369: invokevirtual length : ()I
    //   372: ifne -> 377
    //   375: aconst_null
    //   376: areturn
    //   377: new org/json/JSONObject
    //   380: dup
    //   381: invokespecial <init> : ()V
    //   384: astore #5
    //   386: new java/lang/StringBuilder
    //   389: dup
    //   390: invokespecial <init> : ()V
    //   393: astore #6
    //   395: aload #6
    //   397: invokestatic currentTimeMillis : ()J
    //   400: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   403: pop
    //   404: aload #6
    //   406: ldc_w '|'
    //   409: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: pop
    //   413: iload_3
    //   414: istore_1
    //   415: iload #4
    //   417: ifeq -> 422
    //   420: iconst_1
    //   421: istore_1
    //   422: aload #6
    //   424: iload_1
    //   425: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   428: pop
    //   429: aload #6
    //   431: ldc_w '|'
    //   434: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: pop
    //   438: aload #6
    //   440: aload_0
    //   441: invokestatic h : (Landroid/content/Context;)Ljava/lang/String;
    //   444: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: pop
    //   448: aload #5
    //   450: ldc_w 'ap-list'
    //   453: aload #9
    //   455: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   458: pop
    //   459: aload #5
    //   461: ldc_w 'meta-data'
    //   464: aload #6
    //   466: invokevirtual toString : ()Ljava/lang/String;
    //   469: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   472: pop
    //   473: aload #5
    //   475: invokevirtual toString : ()Ljava/lang/String;
    //   478: astore_0
    //   479: aload_0
    //   480: areturn
    //   481: astore_0
    //   482: aload_0
    //   483: invokestatic a : (Ljava/lang/Throwable;)V
    //   486: ldc ''
    //   488: areturn
    //   489: iconst_0
    //   490: istore_2
    //   491: goto -> 332
    // Exception table:
    //   from	to	target	type
    //   22	50	59	java/lang/Exception
    //   69	88	107	java/lang/Throwable
    //   88	95	98	java/lang/Throwable
    //   190	247	353	java/lang/Exception
    //   251	271	353	java/lang/Exception
    //   271	308	353	java/lang/Exception
    //   313	329	353	java/lang/Exception
    //   332	350	353	java/lang/Exception
    //   386	413	481	java/lang/Exception
    //   422	479	481	java/lang/Exception }
  
  public static boolean n(Context paramContext) {
    if (paramContext != null)
      try {
        NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isAvailable()) {
          boolean bool = networkInfo.isConnected();
          if (bool)
            return true; 
        } 
      } catch (Exception paramContext) {
        cz.a(paramContext);
      }  
    return false;
  }
  
  public static String o(Context paramContext) {
    String str1;
    String str2 = "";
    try {
      exception = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      str1 = str2;
      if (exception != null) {
        str1 = exception.getTypeName();
        try {
          return (!str1.equals("WIFI") && exception.getSubtypeName() != null) ? exception.getSubtypeName() : str1;
        } catch (Exception null) {}
      } else {
        return str1;
      } 
    } catch (Exception exception) {
      str1 = str2;
    } 
    cz.a(exception);
    return str1;
  }
  
  public static String p(Context paramContext) { return (paramContext != null) ? paramContext.getPackageName() : ""; }
  
  public static String q(Context paramContext) {
    String str2 = b;
    String str1 = str2;
    if (str2 == null) {
      String str3;
      String str4 = v(paramContext);
      str2 = b(paramContext, str4);
      str1 = str2;
      if (TextUtils.isEmpty(str2))
        str1 = c(paramContext, str4); 
      if (str1 == null) {
        str3 = "";
      } else {
        str3 = str1;
      } 
      b = str3;
      str1 = str3;
    } 
    return str1;
  }
  
  public static String r(Context paramContext) {
    String str1;
    String str2 = "";
    String str3 = v(paramContext);
    if (str3 == null)
      return ""; 
    PackageManager packageManager = paramContext.getPackageManager();
    try {
      str1 = packageManager.getPackageInfo(paramContext.getPackageName(), 4);
    } catch (android.content.pm.PackageManager.NameNotFoundException paramContext) {
      paramContext = null;
    } 
    if (paramContext == null)
      return ""; 
    ServiceInfo[] arrayOfServiceInfo = paramContext.services;
    if (arrayOfServiceInfo == null)
      return ""; 
    int i = arrayOfServiceInfo.length;
    byte b1 = 0;
    while (true) {
      str1 = str2;
      if (b1 < i) {
        ServiceInfo serviceInfo = arrayOfServiceInfo[b1];
        if (str3.equals(serviceInfo.processName)) {
          str1 = serviceInfo.name;
          break;
        } 
        b1++;
        continue;
      } 
      break;
    } 
    str2 = str1;
    if (str1 == null)
      str2 = ""; 
    return str2;
  }
  
  public static boolean s(Context paramContext) {
    if (paramContext != null)
      try {
        boolean bool = paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch");
        if (bool)
          return true; 
      } catch (Exception paramContext) {
        cz.b(paramContext);
      }  
    return false;
  }
  
  public static String t(Context paramContext) {
    try {
      ActivityManager activityManager = (ActivityManager)paramContext.getSystemService("activity");
      ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
      activityManager.getMemoryInfo(memoryInfo);
      JSONObject jSONObject1 = new JSONObject();
      jSONObject1.put("m", memoryInfo.availMem);
      jSONObject1.put("l", memoryInfo.lowMemory);
      jSONObject1.put("t", memoryInfo.threshold);
      JSONArray jSONArray = new JSONArray();
      jSONArray.put(jSONObject1);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(System.currentTimeMillis());
      JSONObject jSONObject2 = new JSONObject();
      jSONObject2.put("app_mem", jSONArray);
      jSONObject2.put("meta-data", stringBuilder.toString());
      return cq.a(jSONObject2.toString().getBytes());
    } catch (Exception paramContext) {
      cz.a(paramContext);
      return "";
    } 
  }
  
  private static String u(Context paramContext) {
    try {
      BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if (bluetoothAdapter != null) {
        String str = bluetoothAdapter.getName();
        if (str != null)
          return str; 
      } 
    } catch (Exception paramContext) {
      cz.b(paramContext);
    } 
    return "";
  }
  
  private static String v(Context paramContext) {
    String str1 = a;
    String str2 = str1;
    if (str1 == null) {
      String str;
      try {
        List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
        byte b1 = 0;
        while (true) {
          str = str1;
          if (list != null) {
            str = str1;
            if (b1 < list.size()) {
              ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)list.get(b1);
              if (runningAppProcessInfo != null && runningAppProcessInfo.pid == Process.myPid()) {
                String str3 = runningAppProcessInfo.processName;
                break;
              } 
              b1++;
              continue;
            } 
          } 
          break;
        } 
      } catch (Exception paramContext) {
        cz.b(paramContext);
        str = str1;
      } 
      str1 = str;
      if (str == null)
        str1 = ""; 
      a = str1;
      str2 = str1;
    } 
    return str2;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\dc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
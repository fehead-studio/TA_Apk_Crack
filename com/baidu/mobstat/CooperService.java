package com.baidu.mobstat;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class CooperService extends bk implements ICooperService {
  private static CooperService a;
  
  private bu b = new bu();
  
  static CooperService a() { // Byte code:
    //   0: ldc com/baidu/mobstat/CooperService
    //   2: monitorenter
    //   3: getstatic com/baidu/mobstat/CooperService.a : Lcom/baidu/mobstat/CooperService;
    //   6: ifnonnull -> 19
    //   9: new com/baidu/mobstat/CooperService
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic com/baidu/mobstat/CooperService.a : Lcom/baidu/mobstat/CooperService;
    //   19: getstatic com/baidu/mobstat/CooperService.a : Lcom/baidu/mobstat/CooperService;
    //   22: astore_0
    //   23: ldc com/baidu/mobstat/CooperService
    //   25: monitorexit
    //   26: aload_0
    //   27: areturn
    //   28: astore_0
    //   29: ldc com/baidu/mobstat/CooperService
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	28	finally
    //   19	23	28	finally }
  
  private static String a(Context paramContext) {
    String str2 = dc.j(paramContext);
    String str1 = str2;
    if (!TextUtils.isEmpty(str2))
      str1 = str2.replaceAll(":", ""); 
    return str1;
  }
  
  private String a(Context paramContext, boolean paramBoolean) {
    String str1;
    if (paramBoolean) {
      str1 = b(paramContext);
    } else {
      str1 = a(str1);
    } 
    String str2 = str1;
    if (TextUtils.isEmpty(str1))
      str2 = ""; 
    return str2;
  }
  
  private static String b(Context paramContext) {
    String str2 = dc.i(paramContext);
    String str1 = str2;
    if (!TextUtils.isEmpty(str2))
      str1 = str2.replaceAll(":", ""); 
    return str1;
  }
  
  private static String c(Context paramContext) {
    String str2 = dc.k(paramContext);
    String str1 = str2;
    if (!TextUtils.isEmpty(str2))
      str1 = str2.replaceAll(":", ""); 
    return str1;
  }
  
  private String d(Context paramContext) {
    try {
      if (this.b.m == null || this.b.m.equals("")) {
        boolean bool = bj.a().g(paramContext);
        if (bool)
          this.b.m = bj.a().f(paramContext); 
        if (!bool || this.b.m == null || this.b.m.equals(""))
          this.b.m = dc.a(paramContext, "BaiduMobAd_CHANNEL"); 
      } 
    } catch (Exception paramContext) {
      cz.a(paramContext);
    } 
    return this.b.m;
  }
  
  public boolean checkCellLocationSetting(Context paramContext) { return "true".equalsIgnoreCase(dc.a(paramContext, "BaiduMobAd_CELL_LOCATION")); }
  
  public boolean checkGPSLocationSetting(Context paramContext) { return "true".equals(dc.a(paramContext, "BaiduMobAd_GPS_LOCATION")); }
  
  public boolean checkWifiLocationSetting(Context paramContext) { return "true".equalsIgnoreCase(dc.a(paramContext, "BaiduMobAd_WIFI_LOCATION")); }
  
  public void enableDeviceMac(Context paramContext, boolean paramBoolean) { bj.a().d(paramContext, paramBoolean); }
  
  public String getAppChannel(Context paramContext) { return d(paramContext); }
  
  public String getAppKey(Context paramContext) {
    if (this.b.f == null)
      this.b.f = dc.a(paramContext, "BaiduMobAd_STAT_ID"); 
    return this.b.f;
  }
  
  public int getAppVersionCode(Context paramContext) {
    if (this.b.h == -1)
      this.b.h = dc.e(paramContext); 
    return this.b.h;
  }
  
  public String getAppVersionName(Context paramContext) {
    if (TextUtils.isEmpty(this.b.i))
      this.b.i = dc.f(paramContext); 
    return this.b.i;
  }
  
  public String getCUID(Context paramContext, boolean paramBoolean) {
    if (this.b.g == null) {
      this.b.g = bj.a().e(paramContext);
      if (this.b.g == null || "".equalsIgnoreCase(this.b.g))
        try {
          this.b.g = de.a(paramContext);
          Matcher matcher = Pattern.compile("\\s*|\t|\r|\n").matcher(this.b.g);
          this.b.g = matcher.replaceAll("");
          this.b.g = getSecretValue(this.b.g);
          bj.a().b(paramContext, this.b.g);
        } catch (Exception paramContext) {
          cz.c(paramContext.getMessage());
        }  
    } 
    if (paramBoolean)
      return this.b.g; 
    try {
      String str = this.b.g;
      if (!TextUtils.isEmpty(str))
        return new String(cr.b(1, ct.a(str.getBytes()))); 
    } catch (Exception paramContext) {
      cz.a(paramContext);
    } 
    return null;
  }
  
  public String getDeviceId(TelephonyManager paramTelephonyManager, Context paramContext) { // Byte code:
    //   0: aload_0
    //   1: getfield b : Lcom/baidu/mobstat/bu;
    //   4: getfield j : Ljava/lang/String;
    //   7: astore_3
    //   8: aload_3
    //   9: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   12: ifne -> 23
    //   15: aload_0
    //   16: getfield b : Lcom/baidu/mobstat/bu;
    //   19: getfield j : Ljava/lang/String;
    //   22: areturn
    //   23: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   26: aload_2
    //   27: invokevirtual i : (Landroid/content/Context;)Z
    //   30: ifeq -> 52
    //   33: aload_0
    //   34: getfield b : Lcom/baidu/mobstat/bu;
    //   37: astore_1
    //   38: aload_0
    //   39: aload_2
    //   40: invokevirtual getMacIdForTv : (Landroid/content/Context;)Ljava/lang/String;
    //   43: astore_2
    //   44: aload_1
    //   45: aload_2
    //   46: putfield j : Ljava/lang/String;
    //   49: goto -> 15
    //   52: aload_1
    //   53: ifnonnull -> 59
    //   56: goto -> 15
    //   59: ldc '\s*|\\t|\\r|\\n'
    //   61: invokestatic compile : (Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   64: astore #4
    //   66: aload_1
    //   67: invokevirtual getDeviceId : ()Ljava/lang/String;
    //   70: astore #5
    //   72: aload_3
    //   73: astore_1
    //   74: aload #5
    //   76: ifnull -> 102
    //   79: aload #4
    //   81: aload #5
    //   83: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   86: ldc ''
    //   88: invokevirtual replaceAll : (Ljava/lang/String;)Ljava/lang/String;
    //   91: astore_1
    //   92: goto -> 102
    //   95: astore_1
    //   96: aload_1
    //   97: invokestatic a : (Ljava/lang/Throwable;)V
    //   100: aload_3
    //   101: astore_1
    //   102: aload_1
    //   103: ifnull -> 117
    //   106: aload_1
    //   107: astore_3
    //   108: aload_1
    //   109: ldc '000000000000000'
    //   111: invokevirtual equals : (Ljava/lang/Object;)Z
    //   114: ifeq -> 122
    //   117: aload_2
    //   118: invokestatic a : (Landroid/content/Context;)Ljava/lang/String;
    //   121: astore_3
    //   122: aload_2
    //   123: invokestatic s : (Landroid/content/Context;)Z
    //   126: ifeq -> 160
    //   129: aload_3
    //   130: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   133: ifne -> 145
    //   136: aload_3
    //   137: ldc '000000000000000'
    //   139: invokevirtual equals : (Ljava/lang/Object;)Z
    //   142: ifeq -> 160
    //   145: aload_2
    //   146: invokestatic c : (Landroid/content/Context;)Ljava/lang/String;
    //   149: astore_1
    //   150: aload_1
    //   151: astore_3
    //   152: goto -> 160
    //   155: astore_1
    //   156: aload_1
    //   157: invokestatic a : (Ljava/lang/Throwable;)V
    //   160: aload_3
    //   161: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   164: ifne -> 178
    //   167: aload_3
    //   168: astore_1
    //   169: aload_3
    //   170: ldc '000000000000000'
    //   172: invokevirtual equals : (Ljava/lang/Object;)Z
    //   175: ifeq -> 186
    //   178: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   181: aload_2
    //   182: invokevirtual d : (Landroid/content/Context;)Ljava/lang/String;
    //   185: astore_1
    //   186: aload_1
    //   187: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   190: ifne -> 204
    //   193: aload_1
    //   194: astore_3
    //   195: aload_1
    //   196: ldc '000000000000000'
    //   198: invokevirtual equals : (Ljava/lang/Object;)Z
    //   201: ifeq -> 283
    //   204: new java/lang/StringBuilder
    //   207: dup
    //   208: invokespecial <init> : ()V
    //   211: astore_1
    //   212: aload_1
    //   213: new java/util/Date
    //   216: dup
    //   217: invokespecial <init> : ()V
    //   220: invokevirtual getTime : ()J
    //   223: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   226: pop
    //   227: aload_1
    //   228: ldc ''
    //   230: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: pop
    //   234: aload_1
    //   235: invokevirtual toString : ()Ljava/lang/String;
    //   238: astore_1
    //   239: new java/lang/StringBuilder
    //   242: dup
    //   243: invokespecial <init> : ()V
    //   246: astore_3
    //   247: aload_3
    //   248: ldc 'hol'
    //   250: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: pop
    //   254: aload_3
    //   255: aload_1
    //   256: invokevirtual hashCode : ()I
    //   259: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   262: pop
    //   263: aload_3
    //   264: ldc 'mes'
    //   266: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: pop
    //   270: aload_3
    //   271: invokevirtual toString : ()Ljava/lang/String;
    //   274: astore_3
    //   275: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   278: aload_2
    //   279: aload_3
    //   280: invokevirtual a : (Landroid/content/Context;Ljava/lang/String;)V
    //   283: aload_0
    //   284: getfield b : Lcom/baidu/mobstat/bu;
    //   287: aload_3
    //   288: putfield j : Ljava/lang/String;
    //   291: aload_0
    //   292: getfield b : Lcom/baidu/mobstat/bu;
    //   295: astore_1
    //   296: aload_0
    //   297: aload_0
    //   298: getfield b : Lcom/baidu/mobstat/bu;
    //   301: getfield j : Ljava/lang/String;
    //   304: invokevirtual getSecretValue : (Ljava/lang/String;)Ljava/lang/String;
    //   307: astore_2
    //   308: goto -> 44
    // Exception table:
    //   from	to	target	type
    //   66	72	95	java/lang/Exception
    //   79	92	95	java/lang/Exception
    //   145	150	155	java/lang/Exception }
  
  public bu getHeadObject() { return this.b; }
  
  public JSONObject getHeaderExt(Context paramContext) {
    String str = bj.a().k(paramContext);
    JSONObject jSONObject2 = new JSONObject();
    jSONObject1 = jSONObject2;
    if (!TextUtils.isEmpty(str))
      try {
        return new JSONObject(str);
      } catch (JSONException jSONObject1) {
        return jSONObject2;
      }  
    return jSONObject1;
  }
  
  public String getHost() { return Config.LOG_SEND_URL; }
  
  public String getLinkedWay(Context paramContext) {
    if (TextUtils.isEmpty(this.b.s))
      this.b.s = dc.o(paramContext); 
    return this.b.s;
  }
  
  public String getMTJSDKVersion() { return "3.7.5.5"; }
  
  public String getMacAddress(Context paramContext, boolean paramBoolean) {
    String str = "02:00:00:00:00:00".replace(":", "");
    if (!paramBoolean && Build.VERSION.SDK_INT >= 23)
      return getSecretValue(str); 
    if (TextUtils.isEmpty(this.b.t)) {
      String str1 = bj.a().h(paramContext);
      if (!TextUtils.isEmpty(str1)) {
        this.b.t = str1;
        return this.b.t;
      } 
      str1 = a(paramContext, paramBoolean);
      if (!TextUtils.isEmpty(str1) && !str.equals(str1)) {
        str = getSecretValue(str1);
        this.b.t = str;
        bj.a().d(paramContext, this.b.t);
        return this.b.t;
      } 
      this.b.t = "";
    } 
    return this.b.t;
  }
  
  public String getMacIdForTv(Context paramContext) {
    if (TextUtils.isEmpty(this.b.u)) {
      bu bu1;
      String str1;
      String str2 = bj.a().j(paramContext);
      if (!TextUtils.isEmpty(str2)) {
        bu1 = this.b;
        str1 = str2;
      } else {
        String str = dc.c(1, str1);
        if (!TextUtils.isEmpty(str)) {
          this.b.u = str;
          bj.a().e(str1, str);
          return this.b.u;
        } 
        bu1 = this.b;
        str1 = "";
      } 
      bu1.u = str1;
    } 
    return this.b.u;
  }
  
  public String getManufacturer() {
    if (TextUtils.isEmpty(this.b.p))
      this.b.p = Build.MANUFACTURER; 
    return this.b.p;
  }
  
  public String getOSSysVersion() {
    if (TextUtils.isEmpty(this.b.d))
      this.b.d = Build.VERSION.RELEASE; 
    return this.b.d;
  }
  
  public String getOSVersion() {
    if (TextUtils.isEmpty(this.b.c))
      this.b.c = Integer.toString(Build.VERSION.SDK_INT); 
    return this.b.c;
  }
  
  public String getOperator(TelephonyManager paramTelephonyManager) {
    if (TextUtils.isEmpty(this.b.n))
      this.b.n = paramTelephonyManager.getNetworkOperator(); 
    return this.b.n;
  }
  
  public String getPhoneModel() {
    if (TextUtils.isEmpty(this.b.o))
      this.b.o = Build.MODEL; 
    return this.b.o;
  }
  
  public String getSecretValue(String paramString) { return cr.c(1, paramString.getBytes()); }
  
  public int getTagValue() { return 1; }
  
  public String getUUID() { return UUID.randomUUID().toString().replace("-", ""); }
  
  public void installHeader(Context paramContext, JSONObject paramJSONObject) { this.b.a(paramContext, paramJSONObject); }
  
  public boolean isDeviceMacEnabled(Context paramContext) { return bj.a().l(paramContext); }
  
  public void resetHeadSign() { this.b.x = a().getUUID(); }
  
  public void setHeadSqCounted(boolean paramBoolean) {
    bu bu1;
    int i;
    if (paramBoolean) {
      bu1 = this.b;
      i = 0;
    } else {
      bu1 = this.b;
      i = bu1.z + 1;
    } 
    bu1.z = i;
  }
  
  public void setHeaderExt(Context paramContext, ExtraInfo paramExtraInfo) {
    JSONObject jSONObject = new JSONObject();
    if (paramExtraInfo != null)
      jSONObject = paramExtraInfo.dumpToJson(); 
    this.b.a(jSONObject);
    bj.a().f(paramContext, jSONObject.toString());
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\CooperService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import android.content.Context;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ba {
  public static final ba a = new ba();
  
  private void a(JSONObject paramJSONObject) {
    be be = new be(paramJSONObject);
    bc.b = be.a;
    bc.c = be.b;
    bc.d = be.c;
  }
  
  private boolean a() { return !y.a.b() ? true : (!y.b.b() ? true : (!y.c.b() ? true : (!y.d.b() ? true : (!y.e.b())))); }
  
  private void b(Context paramContext, JSONObject paramJSONObject) {
    JSONObject jSONObject = new JSONObject();
    int j = 0;
    try {
      jSONObject.put("he", paramJSONObject);
      int k = paramJSONObject.toString().length();
      j = 0 + k;
    } catch (JSONException paramJSONObject) {
      bd.a(paramJSONObject);
    } 
    bd.a("APP_MEM");
    int i = j;
    if (!az.a(paramContext).b()) {
      str = dc.t(paramContext);
      JSONArray jSONArray = new JSONArray();
      bd.a(str);
      jSONArray.put(str);
      i = j;
      if (jSONArray.length() > 0)
        try {
          jSONObject.put("app_mem3", jSONArray);
          i = jSONArray.toString().length();
          i = j + i;
        } catch (JSONException str) {
          bd.a(str);
          i = j;
        }  
    } 
    bd.a("APP_APK");
    List list = y.e.a(20480);
    jSONArray2 = new JSONArray();
    for (String str : list) {
      bd.a(str);
      jSONArray2.put(str);
    } 
    j = i;
    if (jSONArray2.length() > 0)
      try {
        jSONObject.put("app_apk3", jSONArray2);
        j = jSONArray2.toString().length();
        j = i + j;
      } catch (JSONException jSONArray2) {
        bd.a(jSONArray2);
        j = i;
      }  
    bd.a("APP_CHANGE");
    list = y.d.a(10240);
    jSONArray2 = new JSONArray();
    for (String str : list) {
      bd.a(str);
      jSONArray2.put(str);
    } 
    i = j;
    if (jSONArray2.length() > 0)
      try {
        jSONObject.put("app_change3", jSONArray2);
        i = jSONArray2.toString().length();
        i = j + i;
      } catch (JSONException jSONArray2) {
        bd.a(jSONArray2);
        i = j;
      }  
    bd.a("APP_TRACE");
    list = y.c.a(15360);
    jSONArray2 = new JSONArray();
    for (String str : list) {
      bd.a(str);
      jSONArray2.put(str);
    } 
    j = i;
    if (jSONArray2.length() > 0)
      try {
        jSONObject.put("app_trace3", jSONArray2);
        j = jSONArray2.toString().length();
        j = i + j;
      } catch (JSONException jSONArray2) {
        bd.a(jSONArray2);
        j = i;
      }  
    bd.a("APP_LIST");
    list = y.b.a(46080);
    jSONArray2 = new JSONArray();
    for (String str : list) {
      bd.a(str);
      jSONArray2.put(str);
    } 
    i = j;
    if (jSONArray2.length() > 0)
      try {
        jSONObject.put("app_list3", jSONArray2);
        i = jSONArray2.toString().length();
        i = j + i;
      } catch (JSONException jSONArray2) {
        bd.a(jSONArray2);
        i = j;
      }  
    bd.a("AP_LIST");
    list = y.a.a(184320 - i);
    jSONArray2 = new JSONArray();
    for (String str : list) {
      bd.a(str);
      jSONArray2.put(str);
    } 
    j = i;
    if (jSONArray2.length() > 0)
      try {
        jSONObject.put("ap_list3", jSONArray2);
        j = jSONArray2.toString().length();
        j = i + j;
      } catch (JSONException jSONArray2) {
        bd.a(jSONArray2);
        j = i;
      }  
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("log in bytes is almost :");
    stringBuilder.append(j);
    bd.a(stringBuilder.toString());
    JSONArray jSONArray1 = new JSONArray();
    jSONArray1.put(jSONObject);
    jSONObject = new JSONObject();
    try {
      jSONObject.put("payload", jSONArray1);
      al.a().a(paramContext, jSONObject.toString());
      return;
    } catch (Exception paramContext) {
      bd.a(paramContext);
      return;
    } 
  }
  
  private void c(Context paramContext) {
    bd.a("collectAPWithStretegy 1");
    az az = az.a(paramContext);
    long l1 = az.a(u.a);
    long l2 = System.currentTimeMillis();
    long l3 = az.e();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("now time: ");
    stringBuilder.append(l2);
    stringBuilder.append(": last time: ");
    stringBuilder.append(l1);
    stringBuilder.append("; time interval: ");
    stringBuilder.append(l3);
    bd.a(stringBuilder.toString());
    if (l1 == 0L || l2 - l1 > l3) {
      bd.a("collectAPWithStretegy 2");
      n.a(paramContext);
    } 
  }
  
  private void d(Context paramContext) {
    bd.a("collectAPPListWithStretegy 1");
    long l1 = System.currentTimeMillis();
    az az = az.a(paramContext);
    long l2 = az.a(u.b);
    long l3 = az.f();
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append("now time: ");
    stringBuilder2.append(l1);
    stringBuilder2.append(": last time: ");
    stringBuilder2.append(l2);
    stringBuilder2.append("; userInterval : ");
    stringBuilder2.append(l3);
    bd.a(stringBuilder2.toString());
    if (l2 == 0L || l1 - l2 > l3 || !az.a(l2)) {
      bd.a("collectUserAPPListWithStretegy 2");
      n.a(paramContext, false);
    } 
    l2 = az.a(u.c);
    l3 = az.g();
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append("now time: ");
    stringBuilder1.append(l1);
    stringBuilder1.append(": last time: ");
    stringBuilder1.append(l2);
    stringBuilder1.append("; sysInterval : ");
    stringBuilder1.append(l3);
    bd.a(stringBuilder1.toString());
    if (l2 == 0L || l1 - l2 > l3) {
      bd.a("collectSysAPPListWithStretegy 2");
      n.a(paramContext, true);
    } 
  }
  
  private void e(Context paramContext) {
    bd.a("collectAPPTraceWithStretegy 1");
    long l1 = System.currentTimeMillis();
    az az = az.a(paramContext);
    long l2 = az.a(u.e);
    long l3 = az.i();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("now time: ");
    stringBuilder.append(l1);
    stringBuilder.append(": last time: ");
    stringBuilder.append(l2);
    stringBuilder.append("; time interval: ");
    stringBuilder.append(l3);
    bd.a(stringBuilder.toString());
    if (l2 == 0L || l1 - l2 > l3) {
      bd.a("collectAPPTraceWithStretegy 2");
      n.b(paramContext, false);
    } 
  }
  
  private void f(Context paramContext) {
    bd.a("collectAPKWithStretegy 1");
    long l1 = System.currentTimeMillis();
    az az = az.a(paramContext);
    long l2 = az.a(u.g);
    long l3 = az.h();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("now time: ");
    stringBuilder.append(l1);
    stringBuilder.append(": last time: ");
    stringBuilder.append(l2);
    stringBuilder.append("; interval : ");
    stringBuilder.append(l3);
    bd.a(stringBuilder.toString());
    if (l2 == 0L || l1 - l2 > l3) {
      bd.a("collectAPKWithStretegy 2");
      n.b(paramContext);
    } 
  }
  
  private void g(Context paramContext) {
    az.a(paramContext).a(u.h, System.currentTimeMillis());
    JSONObject jSONObject = v.a(paramContext);
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("header: ");
    stringBuilder.append(jSONObject);
    bd.a(stringBuilder.toString());
    while (a())
      b(paramContext, jSONObject); 
  }
  
  public void a(Context paramContext, long paramLong) { az.a(paramContext).a(u.i, paramLong); }
  
  public void a(Context paramContext, String paramString) { az.a(paramContext).a(paramString); }
  
  public void a(Context paramContext, JSONObject paramJSONObject) {
    bd.a("startDataAnynalyzed start");
    a(paramJSONObject);
    az az = az.a(paramContext);
    boolean bool = az.a();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("is data collect closed:");
    stringBuilder.append(bool);
    bd.a(stringBuilder.toString());
    if (!bool) {
      if (!y.a.b(10000))
        c(paramContext); 
      if (!y.b.b(10000))
        d(paramContext); 
      if (!y.c.b(10000))
        e(paramContext); 
      if (bc.e && !y.e.b(10000))
        f(paramContext); 
      bool = dc.n(paramContext);
      if (bool && az.l()) {
        bd.a("sendLog");
        g(paramContext);
      } else {
        String str;
        if (!bool) {
          str = "isWifiAvailable = false, will not sendLog";
        } else {
          str = "can not sendLog due to time stratergy";
        } 
        bd.a(str);
      } 
    } 
    bd.a("startDataAnynalyzed finished");
  }
  
  public boolean a(Context paramContext) {
    az az = az.a(paramContext);
    long l1 = az.a(u.i);
    long l2 = az.c();
    long l3 = System.currentTimeMillis();
    if (l3 - l1 > l2) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("need to update, checkWithLastUpdateTime lastUpdateTime =");
      stringBuilder1.append(l1);
      stringBuilder1.append("nowTime=");
      stringBuilder1.append(l3);
      stringBuilder1.append(";timeInteveral=");
      stringBuilder1.append(l2);
      bd.a(stringBuilder1.toString());
      return true;
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("no need to update, checkWithLastUpdateTime lastUpdateTime =");
    stringBuilder.append(l1);
    stringBuilder.append("nowTime=");
    stringBuilder.append(l3);
    stringBuilder.append(";timeInteveral=");
    stringBuilder.append(l2);
    bd.a(stringBuilder.toString());
    return false;
  }
  
  public void b(Context paramContext, String paramString) { az.a(paramContext).b(paramString); }
  
  public boolean b(Context paramContext) { return (!az.a(paramContext).a() || a(paramContext)); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
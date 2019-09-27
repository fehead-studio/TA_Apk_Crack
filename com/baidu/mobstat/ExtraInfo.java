package com.baidu.mobstat;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class ExtraInfo {
  String a = "";
  
  String b = "";
  
  String c = "";
  
  String d = "";
  
  String e = "";
  
  String f = "";
  
  String g = "";
  
  String h = "";
  
  String i = "";
  
  String j = "";
  
  private static String a(String paramString) {
    String str = paramString;
    if (TextUtils.isEmpty(paramString))
      str = ""; 
    paramString = str;
    if (a(str, 1024))
      paramString = ""; 
    return paramString;
  }
  
  private static boolean a(String paramString, int paramInt) {
    boolean bool;
    boolean bool1 = false;
    if (paramString == null)
      return false; 
    try {
      bool = paramString.getBytes().length;
    } catch (Exception paramString) {
      bool = false;
    } 
    if (bool > paramInt)
      bool1 = true; 
    return bool1;
  }
  
  public JSONObject dumpToJson() {
    JSONObject jSONObject = new JSONObject();
    try {
      if (!TextUtils.isEmpty(this.a))
        jSONObject.put("v1", this.a); 
      if (!TextUtils.isEmpty(this.b))
        jSONObject.put("v2", this.b); 
      if (!TextUtils.isEmpty(this.c))
        jSONObject.put("v3", this.c); 
      if (!TextUtils.isEmpty(this.d))
        jSONObject.put("v4", this.d); 
      if (!TextUtils.isEmpty(this.e))
        jSONObject.put("v5", this.e); 
      if (!TextUtils.isEmpty(this.f))
        jSONObject.put("v6", this.f); 
      if (!TextUtils.isEmpty(this.g))
        jSONObject.put("v7", this.g); 
      if (!TextUtils.isEmpty(this.h))
        jSONObject.put("v8", this.h); 
      if (!TextUtils.isEmpty(this.i))
        jSONObject.put("v9", this.i); 
      if (!TextUtils.isEmpty(this.j)) {
        jSONObject.put("v10", this.j);
        return jSONObject;
      } 
    } catch (JSONException jSONException) {
      cz.c(jSONException);
    } 
    return jSONObject;
  }
  
  public String getV1() { return this.a; }
  
  public String getV10() { return this.j; }
  
  public String getV2() { return this.b; }
  
  public String getV3() { return this.c; }
  
  public String getV4() { return this.d; }
  
  public String getV5() { return this.e; }
  
  public String getV6() { return this.f; }
  
  public String getV7() { return this.g; }
  
  public String getV8() { return this.h; }
  
  public String getV9() { return this.i; }
  
  public void setV1(String paramString) { this.a = a(paramString); }
  
  public void setV10(String paramString) { this.j = a(paramString); }
  
  public void setV2(String paramString) { this.b = a(paramString); }
  
  public void setV3(String paramString) { this.c = a(paramString); }
  
  public void setV4(String paramString) { this.d = a(paramString); }
  
  public void setV5(String paramString) { this.e = a(paramString); }
  
  public void setV6(String paramString) { this.f = a(paramString); }
  
  public void setV7(String paramString) { this.g = a(paramString); }
  
  public void setV8(String paramString) { this.h = a(paramString); }
  
  public void setV9(String paramString) { this.i = a(paramString); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ExtraInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
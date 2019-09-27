package com.baidu.mobstat;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

class j {
  public String a;
  
  public String b;
  
  public int c = 2;
  
  private j() {}
  
  public static j a(String paramString) {
    if (TextUtils.isEmpty(paramString))
      return null; 
    try {
      JSONObject jSONObject = new JSONObject(paramString);
      paramString = jSONObject.getString("deviceid");
      String str = jSONObject.getString("imei");
      int i = jSONObject.getInt("ver");
      if (!TextUtils.isEmpty(paramString) && str != null) {
        j j1 = new j();
        j1.a = paramString;
        j1.b = str;
        j1.c = i;
        return j1;
      } 
    } catch (JSONException paramString) {
      g.a(paramString);
    } 
    return null;
  }
  
  public String a() {
    try {
      return (new JSONObject()).put("deviceid", this.a).put("imei", this.b).put("ver", this.c).toString();
    } catch (JSONException jSONException) {
      g.a(jSONException);
      return null;
    } 
  }
  
  public String b() {
    String str2 = this.b;
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
      str1 = "0"; 
    str1 = (new StringBuffer(str1)).reverse().toString();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.a);
    stringBuilder.append("|");
    stringBuilder.append(str1);
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
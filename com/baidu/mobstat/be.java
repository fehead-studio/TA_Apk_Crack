package com.baidu.mobstat;

import org.json.JSONException;
import org.json.JSONObject;

public class be {
  public boolean a = false;
  
  public String b = "";
  
  public boolean c = false;
  
  public be() {}
  
  public be(JSONObject paramJSONObject) {
    try {
      this.a = paramJSONObject.getBoolean("SDK_BPLUS_SERVICE");
    } catch (Exception exception) {
      bd.b(exception);
    } 
    try {
      this.b = paramJSONObject.getString("SDK_PRODUCT_LY");
    } catch (Exception exception) {
      bd.b(exception);
    } 
    try {
      this.c = paramJSONObject.getBoolean("SDK_LOCAL_SERVER");
      return;
    } catch (Exception paramJSONObject) {
      bd.b(paramJSONObject);
      return;
    } 
  }
  
  public JSONObject a() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("SDK_BPLUS_SERVICE", this.a);
    } catch (JSONException jSONException) {
      bd.b(jSONException);
    } 
    try {
      jSONObject.put("SDK_PRODUCT_LY", this.b);
    } catch (JSONException jSONException) {
      bd.b(jSONException);
    } 
    try {
      jSONObject.put("SDK_LOCAL_SERVER", this.c);
      return jSONObject;
    } catch (JSONException jSONException) {
      bd.b(jSONException);
      return jSONObject;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\be.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
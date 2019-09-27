package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONObject;

class q {
  static q a = new q();
  
  public void a(Context paramContext, String paramString1, String paramString2) {
    packageManager = paramContext.getPackageManager();
    if (!"android.intent.action.PACKAGE_REMOVED".equals(paramString1)) {
      try {
        str1 = (packageManager.getPackageInfo(paramString2, 8192)).versionName;
      } catch (android.content.pm.PackageManager.NameNotFoundException packageManager) {
        bd.a(packageManager);
        str1 = "unkown";
      } 
      try {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("n", paramString2);
        jSONObject2.put("a", paramString1);
        jSONObject2.put("v", str1);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject2);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(System.currentTimeMillis());
        JSONObject jSONObject1 = new JSONObject();
        jSONObject1.put("app_change", jSONArray);
        jSONObject1.put("meta-data", stringBuilder.toString());
        String str2 = cq.a(jSONObject1.toString().getBytes());
      } catch (Exception str1) {
        bd.b(str1.getMessage());
        str1 = "";
      } 
      if (!TextUtils.isEmpty(str1)) {
        long l = System.currentTimeMillis();
        y.d.a(l, str1);
      } 
      return;
    } 
    String str = "unkown";
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
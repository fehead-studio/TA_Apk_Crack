package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import org.json.JSONException;
import org.json.JSONObject;

public class v {
  public static JSONObject a(Context paramContext) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("s", Build.VERSION.SDK_INT);
      jSONObject.put("sv", Build.VERSION.RELEASE);
      jSONObject.put("ii", dc.a(2, paramContext));
      jSONObject.put("w", dc.b(paramContext));
      jSONObject.put("h", dc.c(paramContext));
      jSONObject.put("ly", bc.c);
      jSONObject.put("pv", "13");
      str = paramContext.getPackageName();
      PackageManager packageManager = paramContext.getPackageManager();
      try {
        PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
        jSONObject.put("pn", dc.h(2, paramContext));
        jSONObject.put("a", packageInfo.versionCode);
        jSONObject.put("n", packageInfo.versionName);
      } catch (Exception str) {
        bd.a(str);
      } 
      jSONObject.put("mc", dc.b(2, paramContext));
      jSONObject.put("bm", dc.f(2, paramContext));
      jSONObject.put("m", Build.MODEL);
      jSONObject.put("dn", dc.a(paramContext, 2));
      return jSONObject;
    } catch (JSONException paramContext) {
      bd.b(paramContext);
      return jSONObject;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
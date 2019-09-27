package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class o {
  static o a = new o();
  
  private void a(Context paramContext, ArrayList<p> paramArrayList) {
    String str = new StringBuilder();
    str.append(System.currentTimeMillis());
    try {
      JSONArray jSONArray = new JSONArray();
      Iterator iterator = paramArrayList.iterator();
      while (iterator.hasNext()) {
        JSONObject jSONObject1 = ((p)iterator.next()).a();
        if (jSONObject1 == null)
          continue; 
        jSONArray.put(jSONObject1);
      } 
      JSONObject jSONObject = new JSONObject();
      jSONObject.put("app_apk", jSONArray);
      jSONObject.put("meta-data", str.toString());
      String str1 = cq.a(jSONObject.toString().getBytes());
    } catch (Exception null) {
      bd.b(str);
      str = "";
    } 
    if (!TextUtils.isEmpty(str))
      y.e.a(System.currentTimeMillis(), str); 
  }
  
  private void b(Context paramContext) { a(paramContext, c(paramContext)); }
  
  private ArrayList<p> c(Context paramContext) {
    ArrayList arrayList = new ArrayList();
    for (PackageInfo packageInfo : d(paramContext)) {
      ApplicationInfo applicationInfo = packageInfo.applicationInfo;
      if (applicationInfo == null)
        continue; 
      String str3 = packageInfo.packageName;
      String str4 = packageInfo.versionName;
      String str2 = "";
      Signature[] arrayOfSignature = packageInfo.signatures;
      String str1 = str2;
      if (arrayOfSignature != null) {
        str1 = str2;
        if (arrayOfSignature.length != 0)
          str1 = arrayOfSignature[0].toChars().toString(); 
      } 
      str2 = cx.a(str1.getBytes());
      str1 = "";
      String str5 = applicationInfo.sourceDir;
      if (!TextUtils.isEmpty(str5))
        str1 = cx.a(new File(str5)); 
      arrayList.add(new p(str3, str4, str2, str1));
    } 
    return arrayList;
  }
  
  private ArrayList<PackageInfo> d(Context paramContext) {
    ArrayList arrayList = new ArrayList();
    packageManager = paramContext.getPackageManager();
    if (packageManager == null)
      return arrayList; 
    List list = new ArrayList(1);
    try {
      List list1 = packageManager.getInstalledPackages(64);
      list = list1;
    } catch (Exception packageManager) {
      bd.b(packageManager);
    } 
    for (PackageInfo packageInfo : list) {
      ApplicationInfo applicationInfo = packageInfo.applicationInfo;
      if (applicationInfo != null && (applicationInfo.flags & true) == 0)
        arrayList.add(packageInfo); 
    } 
    return arrayList;
  }
  
  public void a(Context paramContext) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial b : (Landroid/content/Context;)V
    //   7: aload_0
    //   8: monitorexit
    //   9: return
    //   10: astore_1
    //   11: aload_0
    //   12: monitorexit
    //   13: aload_1
    //   14: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	10	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
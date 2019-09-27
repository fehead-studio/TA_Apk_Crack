package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class r {
  static final r a = new r();
  
  private long a(String paramString) {
    if (paramString != null) {
      File file = new File(paramString);
      if (file != null && file.exists())
        return file.lastModified(); 
    } 
    return 0L;
  }
  
  private void a(boolean paramBoolean, String paramString1, String paramString2, PackageInfo paramPackageInfo, JSONArray paramJSONArray) {
    long l1;
    if (paramBoolean && paramPackageInfo.packageName.startsWith("com.android."))
      return; 
    long l2 = 0L;
    try {
      l1 = paramPackageInfo.firstInstallTime;
    } catch (Throwable throwable) {
      bd.b(throwable);
      l1 = 0L;
    } 
    try {
      long l = paramPackageInfo.lastUpdateTime;
      l2 = l;
    } catch (Throwable throwable) {
      bd.b(throwable);
    } 
    long l3 = a(paramString2);
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("n", paramPackageInfo.packageName);
      jSONObject.put("a", paramString1);
      jSONObject.put("v", String.valueOf(paramPackageInfo.versionName));
      jSONObject.put("f", l1);
      jSONObject.put("l", l2);
      jSONObject.put("m", l3);
      paramJSONArray.put(jSONObject);
      return;
    } catch (JSONException paramString1) {
      bd.b(paramString1);
      return;
    } 
  }
  
  private void b(Context paramContext, boolean paramBoolean) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge Z and I\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.useAs(TypeTransformer.java:868)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:668)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  public void a(Context paramContext, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: iload_2
    //   5: invokespecial b : (Landroid/content/Context;Z)V
    //   8: aload_0
    //   9: monitorexit
    //   10: return
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	11	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
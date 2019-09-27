package com.baidu.mobstat;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

class s {
  static s a = new s();
  
  private String b = "";
  
  private String a(Context paramContext, String paramString) {
    String str = paramContext.getPackageManager();
    if (str == null)
      return ""; 
    try {
      String str1 = (str.getPackageInfo(paramString, 0)).versionName;
    } catch (android.content.pm.PackageManager.NameNotFoundException null) {
      bd.b(str);
      str = "";
    } 
    paramString = str;
    if (str == null)
      paramString = ""; 
    return paramString;
  }
  
  private ArrayList<t> a(Context paramContext, int paramInt) { return (Build.VERSION.SDK_INT >= 21) ? c(paramContext, paramInt) : b(paramContext, paramInt); }
  
  private void a(Context paramContext, ArrayList<t> paramArrayList, boolean paramBoolean) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  private void a(Context paramContext, boolean paramBoolean, int paramInt) {
    ArrayList arrayList = a(paramContext, paramInt);
    if (arrayList != null) {
      if (arrayList.size() == 0)
        return; 
      if (paramBoolean) {
        String str = ((t)arrayList.get(0)).b();
        if (a(str, this.b))
          this.b = str; 
      } 
      a(paramContext, arrayList, paramBoolean);
    } 
  }
  
  private boolean a(int paramInt) { return (paramInt == 100 || paramInt == 200 || paramInt == 130); }
  
  private boolean a(String paramString1, String paramString2) { return (!TextUtils.isEmpty(paramString1) && !paramString1.equals(this.b)); }
  
  private ArrayList<t> b(Context paramContext, int paramInt) {
    activityManager = (ActivityManager)paramContext.getSystemService("activity");
    try {
      List list = activityManager.getRunningTasks(50);
    } catch (Exception activityManager) {
      bd.b(activityManager);
      activityManager = null;
    } 
    if (activityManager == null)
      return new ArrayList(); 
    LinkedHashMap linkedHashMap = new LinkedHashMap();
    for (ActivityManager.RunningTaskInfo runningTaskInfo : activityManager) {
      if (linkedHashMap.size() > paramInt)
        break; 
      ComponentName componentName = runningTaskInfo.topActivity;
      if (componentName == null)
        continue; 
      String str = componentName.getPackageName();
      if (TextUtils.isEmpty(str) || b(paramContext, str) || linkedHashMap.containsKey(str))
        continue; 
      linkedHashMap.put(str, new t(str, a(paramContext, str), ""));
    } 
    return new ArrayList(linkedHashMap.values());
  }
  
  private boolean b(Context paramContext, String paramString) {
    packageManager = paramContext.getPackageManager();
    if (packageManager == null)
      return false; 
    try {
      ApplicationInfo applicationInfo = (packageManager.getPackageInfo(paramString, 0)).applicationInfo;
      if (applicationInfo == null)
        return false; 
      int i = applicationInfo.flags;
      if ((i & true) != 0)
        return true; 
    } catch (android.content.pm.PackageManager.NameNotFoundException packageManager) {
      bd.b(packageManager);
    } 
    return false;
  }
  
  private ArrayList<t> c(Context paramContext, int paramInt) {
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (list == null)
      return new ArrayList(); 
    LinkedHashMap linkedHashMap = new LinkedHashMap();
    for (byte b1 = 0; b1 < list.size() && linkedHashMap.size() <= paramInt; b1++) {
      ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)list.get(b1);
      if (a(runningAppProcessInfo.importance)) {
        String[] arrayOfString = runningAppProcessInfo.pkgList;
        if (arrayOfString != null && arrayOfString.length != 0) {
          String str = runningAppProcessInfo.pkgList[0];
          if (!TextUtils.isEmpty(str) && !b(paramContext, str) && !linkedHashMap.containsKey(str))
            linkedHashMap.put(str, new t(str, a(paramContext, str), String.valueOf(runningAppProcessInfo.importance))); 
        } 
      } 
    } 
    return new ArrayList(linkedHashMap.values());
  }
  
  public void a(Context paramContext, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_1
    //   3: istore_3
    //   4: iload_2
    //   5: ifne -> 11
    //   8: bipush #20
    //   10: istore_3
    //   11: aload_0
    //   12: aload_1
    //   13: iload_2
    //   14: iload_3
    //   15: invokespecial a : (Landroid/content/Context;ZI)V
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: athrow
    // Exception table:
    //   from	to	target	type
    //   11	18	21	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
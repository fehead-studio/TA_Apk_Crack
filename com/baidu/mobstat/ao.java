package com.baidu.mobstat;

import android.app.ActivityManager;
import android.content.Context;
import java.util.List;

public static final abstract enum ao {
  a(1),
  b(2),
  c(3),
  d(4);
  
  private int e;
  
  ao(int paramInt1) { this.e = paramInt1; }
  
  public static ao a(int paramInt) {
    for (ao ao1 : values()) {
      if (ao1.e == paramInt)
        return ao1; 
    } 
    return b;
  }
  
  public static boolean b(Context paramContext) {
    activityManager = (ActivityManager)paramContext.getSystemService("activity");
    if (activityManager != null)
      try {
        List list = activityManager.getRunningServices(2147483647);
        for (byte b1 = 0; list != null && b1 < list.size(); b1++) {
          boolean bool = "com.baidu.bottom.service.BottomService".equals(((ActivityManager.RunningServiceInfo)list.get(b1)).service.getClassName());
          if (bool)
            return true; 
        } 
      } catch (Exception activityManager) {
        cz.a(activityManager);
      }  
    return false;
  }
  
  public abstract void a(Context paramContext);
  
  public String toString() { return String.valueOf(this.e); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
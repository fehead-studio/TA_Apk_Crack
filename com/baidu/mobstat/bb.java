package com.baidu.mobstat;

import android.os.Build;

public final class bb {
  public static boolean a = true;
  
  public static final String b;
  
  public static final String c;
  
  static  {
    String str;
    if (Build.VERSION.SDK_INT < 9) {
      str = "http://datax.baidu.com/xs.gif";
    } else {
      str = "https://datax.baidu.com/xs.gif";
    } 
    b = str;
    if (Build.VERSION.SDK_INT < 9) {
      str = "http://dxp.baidu.com/upgrade";
    } else {
      str = "https://dxp.baidu.com/upgrade";
    } 
    c = str;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
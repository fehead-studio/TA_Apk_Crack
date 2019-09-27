package com.androlua.util;

import android.app.Activity;
import android.util.DisplayMetrics;
import android.view.Display;

public class ScreenMetrics {
  private static int a;
  
  private static int b;
  
  private static boolean c;
  
  private static int d;
  
  private static Display e;
  
  private int f;
  
  private int g;
  
  static  {
  
  }
  
  public ScreenMetrics() {}
  
  public ScreenMetrics(int paramInt1, int paramInt2) {
    this.f = paramInt1;
    this.g = paramInt2;
  }
  
  public static int getDeviceScreenDensity() { return d; }
  
  public static int getDeviceScreenHeight() { return a; }
  
  public static int getDeviceScreenWidth() { return b; }
  
  public static void initIfNeeded(Activity paramActivity) {
    if (c)
      return; 
    DisplayMetrics displayMetrics = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
    a = displayMetrics.heightPixels;
    b = displayMetrics.widthPixels;
    d = displayMetrics.densityDpi;
    e = paramActivity.getWindowManager().getDefaultDisplay();
    c = true;
  }
  
  public static int rescaleX(int paramInt1, int paramInt2) {
    int i = paramInt1;
    if (paramInt2 != 0) {
      if (!c)
        return paramInt1; 
      i = paramInt1 * paramInt2 / b;
    } 
    return i;
  }
  
  public static int rescaleY(int paramInt1, int paramInt2) {
    int i = paramInt1;
    if (paramInt2 != 0) {
      if (!c)
        return paramInt1; 
      i = paramInt1 * paramInt2 / a;
    } 
    return i;
  }
  
  public static int scaleX(int paramInt1, int paramInt2) {
    int i = paramInt1;
    if (paramInt2 != 0) {
      if (!c)
        return paramInt1; 
      i = paramInt1 * b / paramInt2;
    } 
    return i;
  }
  
  public static int scaleY(int paramInt1, int paramInt2) {
    int i = paramInt1;
    if (paramInt2 != 0) {
      if (!c)
        return paramInt1; 
      i = paramInt1 * a / paramInt2;
    } 
    return i;
  }
  
  public int rescaleX(int paramInt) { return rescaleX(paramInt, this.f); }
  
  public int rescaleY(int paramInt) { return rescaleY(paramInt, this.g); }
  
  public int scaleX(int paramInt) { return scaleX(paramInt, this.f); }
  
  public int scaleY(int paramInt) { return scaleY(paramInt, this.g); }
  
  public void setDesignHeight(int paramInt) { this.g = paramInt; }
  
  public void setDesignWidth(int paramInt) { this.f = paramInt; }
  
  public void setScreenMetrics(int paramInt1, int paramInt2) {
    this.f = paramInt1;
    this.g = paramInt2;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\ScreenMetrics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
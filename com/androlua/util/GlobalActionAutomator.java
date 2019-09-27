package com.androlua.util;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.annotation.TargetApi;
import android.graphics.Path;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewConfiguration;

public class GlobalActionAutomator {
  private AccessibilityService a;
  
  private ScreenMetrics b;
  
  private Handler c;
  
  @TargetApi(24)
  public GlobalActionAutomator(AccessibilityService paramAccessibilityService, Handler paramHandler) {
    this.a = paramAccessibilityService;
    this.c = paramHandler;
  }
  
  private Path a(int[][] paramArrayOfInt) {
    Path path = new Path();
    path.moveTo(b(paramArrayOfInt[0][0]), c(paramArrayOfInt[0][1]));
    for (byte b1 = 1; b1 < paramArrayOfInt.length; b1++) {
      int[] arrayOfInt = paramArrayOfInt[b1];
      path.lineTo(b(arrayOfInt[0]), c(arrayOfInt[1]));
    } 
    return path;
  }
  
  private void a() {
    Looper looper = Looper.myLooper();
    if (looper != null)
      looper.quit(); 
  }
  
  @TargetApi(16)
  private boolean a(int paramInt) { return (this.a == null) ? false : this.a.performGlobalAction(paramInt); }
  
  private boolean a(GestureDescription paramGestureDescription) {
    VolatileDispose volatileDispose = new VolatileDispose();
    Log.i("GlobalActionAutomator", "dispatchGesture");
    return this.a.dispatchGesture(paramGestureDescription, new AccessibilityService.GestureResultCallback(this, volatileDispose) {
          public void onCancelled(GestureDescription param1GestureDescription) {
            Log.i("GlobalActionAutomator", "onCancelled");
            this.a.setAndNotify(Boolean.valueOf(false));
          }
          
          public void onCompleted(GestureDescription param1GestureDescription) {
            Log.i("GlobalActionAutomator", "onCompleted");
            this.a.setAndNotify(Boolean.valueOf(true));
          }
        }this.c);
  }
  
  private int b(int paramInt) { return (this.b == null) ? paramInt : this.b.scaleX(paramInt); }
  
  private void b() {
    if (Looper.myLooper() == null)
      Looper.prepare(); 
  }
  
  private boolean b(GestureDescription paramGestureDescription) {
    b();
    VolatileBox volatileBox = new VolatileBox(Boolean.valueOf(false));
    Handler handler = new Handler(Looper.myLooper());
    this.a.dispatchGesture(paramGestureDescription, new AccessibilityService.GestureResultCallback(this, volatileBox) {
          public void onCancelled(GestureDescription param1GestureDescription) {
            this.a.set(Boolean.valueOf(false));
            GlobalActionAutomator.a(this.b);
          }
          
          public void onCompleted(GestureDescription param1GestureDescription) {
            this.a.set(Boolean.valueOf(true));
            GlobalActionAutomator.a(this.b);
          }
        }handler);
    Looper.loop();
    return ((Boolean)volatileBox.get()).booleanValue();
  }
  
  private int c(int paramInt) { return (this.b == null) ? paramInt : this.b.scaleY(paramInt); }
  
  public boolean back() { return a(1); }
  
  public boolean click(int paramInt1, int paramInt2) { return press(paramInt1, paramInt2, ViewConfiguration.getTapTimeout()); }
  
  public boolean gesture(long paramLong1, long paramLong2, Path paramPath) { return gestures(new GestureDescription.StrokeDescription[] { new GestureDescription.StrokeDescription(paramPath, paramLong1, paramLong2) }); }
  
  public boolean gesture(long paramLong1, long paramLong2, int[]... paramVarArgs) { return gestures(new GestureDescription.StrokeDescription[] { new GestureDescription.StrokeDescription(a(paramVarArgs), paramLong1, paramLong2) }); }
  
  public void gestureAsync(long paramLong1, long paramLong2, int[]... paramVarArgs) { gesturesAsync(new GestureDescription.StrokeDescription[] { new GestureDescription.StrokeDescription(a(paramVarArgs), paramLong1, paramLong2) }); }
  
  public boolean gestures(GestureDescription.StrokeDescription... paramVarArgs) {
    AccessibilityService accessibilityService = this.a;
    byte b1 = 0;
    if (accessibilityService == null)
      return false; 
    GestureDescription.Builder builder = new GestureDescription.Builder();
    int i = paramVarArgs.length;
    while (b1 < i) {
      builder.addStroke(paramVarArgs[b1]);
      b1++;
    } 
    return (this.c == null) ? b(builder.build()) : a(builder.build());
  }
  
  public void gesturesAsync(GestureDescription.StrokeDescription... paramVarArgs) {
    if (this.a == null)
      return; 
    GestureDescription.Builder builder = new GestureDescription.Builder();
    int i = paramVarArgs.length;
    for (byte b1 = 0; b1 < i; b1++)
      builder.addStroke(paramVarArgs[b1]); 
    this.a.dispatchGesture(builder.build(), null, null);
  }
  
  public boolean home() { return a(2); }
  
  public boolean longClick(int paramInt1, int paramInt2) { return gesture(0L, (ViewConfiguration.getLongPressTimeout() + 200), new int[][] { { paramInt1, paramInt2 } }); }
  
  public boolean notifications() { return a(4); }
  
  public boolean powerDialog() { return a(6); }
  
  public boolean press(int paramInt1, int paramInt2, int paramInt3) { return gesture(0L, paramInt3, new int[][] { { paramInt1, paramInt2 } }); }
  
  public boolean quickSettings() { return a(5); }
  
  public boolean recents() { return a(3); }
  
  public void setScreenMetrics(ScreenMetrics paramScreenMetrics) { this.b = paramScreenMetrics; }
  
  public void setService(AccessibilityService paramAccessibilityService) { this.a = paramAccessibilityService; }
  
  public boolean splitScreen() { return a(7); }
  
  public boolean swipe(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    long l = paramInt5;
    int[] arrayOfInt = { paramInt3, paramInt4 };
    return gesture(0L, l, new int[][] { { paramInt1, paramInt2 }, arrayOfInt });
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\GlobalActionAutomator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
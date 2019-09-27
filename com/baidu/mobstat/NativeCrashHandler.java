package com.baidu.mobstat;

import android.content.Context;
import android.util.Log;
import java.io.File;

public final class NativeCrashHandler {
  private static boolean a;
  
  private static Context b;
  
  static  {
    try {
      System.loadLibrary("crash_analysis");
      a = true;
      return;
    } catch (Throwable throwable) {
      Log.w("NativeCrashHandler", "Load library failed.");
      return;
    } 
  }
  
  public static void doNativeCrash() {
    if (a)
      try {
        nativeException();
        return;
      } catch (Throwable throwable) {
        Log.w("NativeCrashHandler", "Invoke method nativeException failed.");
      }  
  }
  
  public static void init(Context paramContext) {
    if (paramContext == null)
      return; 
    b = paramContext.getApplicationContext();
    if (a) {
      file = paramContext.getCacheDir();
      if (file.exists() && file.isDirectory())
        try {
          nativeInit(file.getAbsolutePath());
          return;
        } catch (Throwable file) {
          Log.w("NativeCrashHandler", "Invoke method nativeInit failed.");
        }  
    } 
  }
  
  private static native void nativeException();
  
  private static native void nativeInit(String paramString);
  
  private static native void nativeProcess(String paramString);
  
  private static native void nativeUnint();
  
  public static void onCrashCallbackFromNative(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("crash: ");
    stringBuilder.append(paramString);
    Log.w("NativeCrashHandler", stringBuilder.toString());
    long l = System.currentTimeMillis();
    bl.a().a(l, paramString, "NativeException", 1);
  }
  
  public static void process(String paramString) {
    if (paramString != null) {
      if (paramString.length() == 0)
        return; 
      if (a) {
        File file = new File(paramString);
        if (file.exists() && file.isFile())
          try {
            nativeProcess(paramString);
            return;
          } catch (Throwable paramString) {
            Log.w("NativeCrashHandler", "Invoke method nativeProcess failed.");
          }  
      } 
    } 
  }
  
  public static void uninit() {
    if (a)
      try {
        nativeUnint();
        return;
      } catch (Throwable throwable) {
        Log.w("NativeCrashHandler", "Invoke method nativeUnint failed.");
      }  
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\NativeCrashHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
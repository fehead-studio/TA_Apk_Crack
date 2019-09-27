package com.b.a.b;

import android.util.Log;

public class q extends Exception {
  public static void a(String paramString) { a(false, paramString); }
  
  public static void a(boolean paramBoolean, String paramString) {
    if (!paramBoolean) {
      System.err.print("TextWarrior assertion failed: ");
      System.err.println(paramString);
      Log.i("lua", paramString);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
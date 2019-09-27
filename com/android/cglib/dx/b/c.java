package com.android.cglib.dx.b;

public final class c {
  public static boolean a(int paramInt) {
    boolean bool = false;
    if (paramInt < -1)
      return false; 
    if (paramInt == -1)
      return true; 
    int i = paramInt & 0xFF;
    if (i != 0) {
      if (i == 255)
        return true; 
      if ((paramInt & 0xFF00) == 0)
        bool = true; 
      return bool;
    } 
    return true;
  }
  
  public static boolean b(int paramInt) { return (paramInt >= 255); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
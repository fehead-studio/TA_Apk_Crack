package com.android.cglib.dx.d;

public final class n {
  public static int a(int paramInt) {
    int i = paramInt >> 7;
    for (paramInt = 0; i != 0; paramInt++)
      i >>= 7; 
    return paramInt + 1;
  }
  
  public static void a(e parame, int paramInt) {
    while (true) {
      int i = paramInt >>> 7;
      if (i != 0) {
        parame.b((byte)(paramInt & 0x7F | 0x80));
        paramInt = i;
        continue;
      } 
      break;
    } 
    parame.b((byte)(paramInt & 0x7F));
  }
  
  public static void b(e parame, int paramInt) {
    byte b;
    int j = paramInt >> 7;
    if ((0x80000000 & paramInt) == 0) {
      b = 0;
    } else {
      b = -1;
    } 
    boolean bool = true;
    int i = paramInt;
    for (paramInt = j; bool; paramInt >>= 7) {
      if (paramInt != b || (paramInt & true) != (i >> 6 & true)) {
        bool = true;
      } else {
        bool = false;
      } 
      if (bool) {
        j = 128;
      } else {
        j = 0;
      } 
      parame.b((byte)(i & 0x7F | j));
      i = paramInt;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
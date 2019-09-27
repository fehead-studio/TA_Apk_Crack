package com.android.cglib.dx.d;

public final class b {
  public static int a(int paramInt1, int paramInt2) {
    paramInt2 = Integer.numberOfTrailingZeros(paramInt1 & ((1 << paramInt2) - 1 ^ 0xFFFFFFFF));
    paramInt1 = paramInt2;
    if (paramInt2 == 32)
      paramInt1 = -1; 
    return paramInt1;
  }
  
  public static boolean a(int[] paramArrayOfInt, int paramInt) { return ((paramArrayOfInt[paramInt >> 5] & 1 << (paramInt & 0x1F)) != 0); }
  
  public static int[] a(int paramInt) { return new int[paramInt + 31 >> 5]; }
  
  public static void b(int[] paramArrayOfInt, int paramInt) {
    int i = paramInt >> 5;
    paramArrayOfInt[i] = 1 << (paramInt & 0x1F) | paramArrayOfInt[i];
  }
  
  public static void c(int[] paramArrayOfInt, int paramInt) {
    int i = paramInt >> 5;
    paramArrayOfInt[i] = (1 << (paramInt & 0x1F) ^ 0xFFFFFFFF) & paramArrayOfInt[i];
  }
  
  public static int d(int[] paramArrayOfInt, int paramInt) {
    int j = paramArrayOfInt.length;
    int i = paramInt & 0x1F;
    for (paramInt >>= 5; paramInt < j; paramInt++) {
      int k = paramArrayOfInt[paramInt];
      if (k != 0) {
        i = a(k, i);
        if (i >= 0)
          return (paramInt << 5) + i; 
      } 
      i = 0;
    } 
    return -1;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
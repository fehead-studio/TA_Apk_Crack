package com.nirenr;

import android.graphics.Point;

public class ColorPoint {
  public int blue;
  
  public int green;
  
  public int offset;
  
  public int red;
  
  public int x;
  
  public int y;
  
  public ColorPoint(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6) {
    this.x = paramInt1;
    this.y = paramInt2;
    this.red = paramInt3;
    this.green = paramInt4;
    this.blue = paramInt5;
    this.offset = paramInt6;
  }
  
  public ColorPoint(Point paramPoint, Color paramColor, int paramInt) { this(paramPoint.x, paramPoint.y, paramColor.red, paramColor.green, paramColor.blue, paramInt); }
  
  public ColorPoint(int[] paramArrayOfInt) {
    this.x = paramArrayOfInt[0];
    this.y = paramArrayOfInt[1];
    this.red = paramArrayOfInt[2];
    this.green = paramArrayOfInt[3];
    this.blue = paramArrayOfInt[4];
    this.offset = paramArrayOfInt[5];
  }
  
  public boolean check(int[][] paramArrayOfInt) { return check(paramArrayOfInt, 0, 0); }
  
  public boolean check(int[][] paramArrayOfInt, int paramInt1, int paramInt2) {
    int i = this.red;
    int j = this.offset;
    int k = this.red;
    int m = this.offset;
    int n = this.green;
    int i1 = this.offset;
    int i2 = this.green;
    int i3 = this.offset;
    int i4 = this.blue;
    int i5 = this.offset;
    int i6 = this.blue;
    int i7 = this.offset;
    int i8 = paramArrayOfInt[this.y + paramInt2][this.x + paramInt1];
    paramInt1 = i8 << 8 >>> 24;
    paramInt2 = i8 << 16 >>> 24;
    i8 = i8 << 24 >>> 24;
    return (paramInt1 >= i - j && paramInt1 <= k + m && paramInt2 >= n - i1 && paramInt2 <= i2 + i3 && i8 >= i4 - i5 && i8 <= i6 + i7);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\nirenr\ColorPoint.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
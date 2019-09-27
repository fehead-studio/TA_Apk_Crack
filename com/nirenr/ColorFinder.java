package com.nirenr;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Rect;
import java.lang.reflect.Array;
import java.util.ArrayList;

public class ColorFinder {
  private int a;
  
  private int b;
  
  private int[][] c;
  
  private float[][] d;
  
  private float e;
  
  public ColorFinder(Bitmap paramBitmap) { a(paramBitmap); }
  
  public ColorFinder(String paramString) { a(BitmapFactory.decodeFile(paramString)); }
  
  private int a(int paramInt1, int paramInt2, int[][] paramArrayOfInt, int paramInt3, int paramInt4, int paramInt5) {
    int i = 0;
    while (i < this.b - paramInt2 - paramInt3) {
      int[] arrayOfInt = paramArrayOfInt[paramInt1];
      int j = paramInt2 + i;
      if (arrayOfInt[j] == 1) {
        int k = paramInt1 + paramInt5;
        if (paramArrayOfInt[k][j] == 0 && paramArrayOfInt[k + paramInt4][j] == 0) {
          i++;
          continue;
        } 
      } 
      return (i > paramInt3) ? i : -1;
    } 
    return this.b - paramInt2 - paramInt3;
  }
  
  private void a(Bitmap paramBitmap) {
    this.a = paramBitmap.getWidth();
    this.b = paramBitmap.getHeight();
    int[] arrayOfInt = new int[this.a * this.b];
    paramBitmap.getPixels(arrayOfInt, 0, this.a, 0, 0, this.a, this.b);
    this.c = (int[][])Array.newInstance(int.class, new int[] { this.a, this.b });
    for (int i = 0; i < this.b; i++) {
      for (int j = 0; j < this.a; j++)
        this.c[j][i] = arrayOfInt[this.a * i + j]; 
    } 
  }
  
  public Point find(int paramInt) {
    for (byte b1 = 0; b1 < this.b; b1++) {
      for (byte b2 = 0; b2 < this.a; b2++) {
        if (this.c[b2][b1] == paramInt)
          return new Point(b2, b1); 
      } 
    } 
    return new Point(-1, -1);
  }
  
  public Point find(int paramInt1, int paramInt2, int paramInt3) {
    byte b1;
    for (b1 = 0; b1 < this.b; b1++) {
      byte b2;
      for (b2 = 0; b2 < this.a; b2++) {
        int i = this.c[b2][b1];
        if (i << 8 >>> 24 == paramInt1 && i << 16 >>> 24 == paramInt2 && i << 24 >>> 24 == paramInt3)
          return new Point(b2, b1); 
      } 
    } 
    return new Point(-1, -1);
  }
  
  public Point find(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    byte b1;
    for (b1 = 0; b1 < this.b; b1++) {
      byte b2;
      for (b2 = 0; b2 < this.a; b2++) {
        int k = this.c[b2][b1];
        int i = k << 8 >>> 24;
        int j = k << 16 >>> 24;
        k = k << 24 >>> 24;
        if (i >= paramInt1 - paramInt4 && i <= paramInt1 + paramInt4 && j >= paramInt2 - paramInt4 && j <= paramInt2 + paramInt4 && k >= paramInt3 - paramInt4 && k <= paramInt3 + paramInt4)
          return new Point(b2, b1); 
      } 
    } 
    return new Point(-1, -1);
  }
  
  public Point find(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    while (paramInt2 < paramInt4) {
      int i;
      for (i = paramInt1; i < paramInt3; i++) {
        if (this.c[i][paramInt2] == paramInt5)
          return new Point(i, paramInt2); 
      } 
      paramInt2++;
    } 
    return new Point(-1, -1);
  }
  
  public Point find(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7) {
    while (paramInt2 < paramInt4) {
      int i;
      for (i = paramInt1; i < paramInt3; i++) {
        int j = this.c[i][paramInt2];
        if (j << 8 >>> 24 == paramInt5 && j << 16 >>> 24 == paramInt6 && j << 24 >>> 24 == paramInt7)
          return new Point(i, paramInt2); 
      } 
      paramInt2++;
    } 
    return new Point(-1, -1);
  }
  
  public Point find(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8) {
    while (paramInt2 < paramInt4) {
      int i;
      for (i = paramInt1; i < paramInt3; i++) {
        int m = this.c[i][paramInt2];
        int j = m << 8 >>> 24;
        int k = m << 16 >>> 24;
        m = m << 24 >>> 24;
        if (j >= paramInt5 - paramInt8 && j <= paramInt5 + paramInt8 && k >= paramInt6 - paramInt8 && k <= paramInt6 + paramInt8 && m >= paramInt7 - paramInt8 && m <= paramInt7 + paramInt8)
          return new Point(i, paramInt2); 
      } 
      paramInt2++;
    } 
    return new Point(-1, -1);
  }
  
  public Point find(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, ColorPoint[] paramArrayOfColorPoint) {
    int i = paramInt5 + paramInt8;
    int j;
    for (j = paramInt2; j < paramInt4; j++) {
      int k;
      for (k = paramInt1; k < paramInt3; k++) {
        int i1 = this.c[k][j];
        int m = i1 << 8 >>> 24;
        int n = i1 << 16 >>> 24;
        i1 = i1 << 24 >>> 24;
        if (m >= paramInt5 - paramInt8 && m <= i && n >= paramInt6 - paramInt8 && n <= paramInt6 + paramInt8 && i1 >= paramInt7 - paramInt8 && i1 <= paramInt7 + paramInt8) {
          n = paramArrayOfColorPoint.length;
          m = 0;
          while (true) {
            if (m < n) {
              if (!paramArrayOfColorPoint[m].check(this.c, paramInt1, paramInt2)) {
                m = 0;
                break;
              } 
              m++;
              continue;
            } 
            m = 1;
            break;
          } 
          if (m != 0)
            return new Point(k, j); 
        } 
      } 
    } 
    return new Point(-1, -1);
  }
  
  public Point find(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int[][] paramArrayOfInt) {
    ColorPoint[] arrayOfColorPoint = new ColorPoint[paramArrayOfInt.length];
    byte b1;
    for (b1 = 0; b1 < paramArrayOfInt.length; b1++)
      arrayOfColorPoint[b1] = new ColorPoint(paramArrayOfInt[b1]); 
    return find(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, arrayOfColorPoint);
  }
  
  public Point find(Color paramColor) { return find(paramColor.red, paramColor.green, paramColor.blue); }
  
  public Point find(Color paramColor, int paramInt) { return find(paramColor.red, paramColor.green, paramColor.blue, paramInt); }
  
  public Point find(Point paramPoint1, Point paramPoint2, Color paramColor) { return find(paramPoint1.x, paramPoint1.y, paramPoint2.x, paramPoint2.y, paramColor.red, paramColor.green, paramColor.blue); }
  
  public Point find(Point paramPoint1, Point paramPoint2, Color paramColor, int paramInt) { return find(paramPoint1.x, paramPoint1.y, paramPoint2.x, paramPoint2.y, paramColor.red, paramColor.green, paramColor.blue, paramInt); }
  
  public ArrayList<Rect> findLine(float paramFloat, int paramInt) { return findLine(this.a / 2, 10, this.a - 10, this.b - paramInt * 16, paramFloat, paramInt * 8, paramInt * 4, paramInt); }
  
  public ArrayList<Rect> findLine(float paramFloat, int paramInt1, int paramInt2) {
    if (this.b < this.a) {
      int n = this.a / 2;
      byte b1 = 0;
      int i1 = this.a - 10;
      int i2 = this.b - paramInt1;
      return findLine(n, b1, i1, i2, paramFloat, paramInt1, paramInt2 * 4, paramInt2);
    } 
    int i = this.a / 2;
    int j = this.a / 3;
    int k = this.a - 10;
    int m = this.a;
    return findLine(i, j, k, m, paramFloat, paramInt1, paramInt2 * 4, paramInt2);
  }
  
  public ArrayList<Rect> findLine(float paramFloat, int paramInt1, int paramInt2, int paramInt3) {
    if (this.b < this.a) {
      int n = this.a / 2;
      byte b1 = 0;
      int i1 = this.a - 10;
      int i2 = this.b - paramInt1;
      return findLine(n, b1, i1, i2, paramFloat, paramInt1, paramInt2, paramInt3);
    } 
    int i = this.a / 2;
    int j = this.a / 3;
    int k = this.a - 10;
    int m = this.a;
    return findLine(i, j, k, m, paramFloat, paramInt1, paramInt2, paramInt3);
  }
  
  public ArrayList<Rect> findLine(int paramInt) { return findLine(this.a / 2, 10, this.a - 10, this.b - paramInt * 16, 0.5F, paramInt * 8, paramInt * 4, paramInt); }
  
  public ArrayList<Rect> findLine(int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat, int paramInt5, int paramInt6, int paramInt7) {
    if (this.d == null) {
      this.d = (float[][])Array.newInstance(float.class, new int[] { this.a, this.b });
      float[] arrayOfFloat = new float[3];
      byte b1 = 0;
      float f1 = 0.0F;
      while (b1 < this.b) {
        byte b2;
        for (b2 = 0; b2 < this.a; b2++) {
          Color.colorToHSV(this.c[b2][b1], arrayOfFloat);
          this.d[b2][b1] = arrayOfFloat[2];
          f1 += arrayOfFloat[2];
        } 
        b1++;
      } 
      this.e = f1 / (this.a * this.b);
    } 
    int[][] arrayOfInt = (int[][])Array.newInstance(int.class, new int[] { this.a, this.b });
    float f = this.e;
    int i;
    for (i = 0; i < this.b; i++) {
      byte b1;
      for (b1 = 0; b1 < this.a; b1++) {
        int j = this.a;
        if (this.d[b1][i] > f * paramFloat) {
          arrayOfInt[b1][i] = 1;
        } else {
          arrayOfInt[b1][i] = 0;
        } 
      } 
    } 
    ArrayList arrayList = new ArrayList();
    while (paramInt1 < paramInt3) {
      int j;
      i = paramInt2;
      while (true) {
        j = paramInt1;
        if (i < paramInt4) {
          int k = a(paramInt1, i, arrayOfInt, paramInt5, paramInt6, paramInt7);
          if (k > -1) {
            j = paramInt1 + paramInt7;
            arrayList.add(new Rect(j, i, j, k + j));
            break;
          } 
          i++;
          continue;
        } 
        break;
      } 
      paramInt1 = j + 1;
    } 
    return arrayList;
  }
  
  public int[][] getPixels() { return this.c; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\nirenr\ColorFinder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.d;

import java.util.Arrays;

public final class k extends o {
  public static final k a = new k(0);
  
  private int[] b;
  
  private int c;
  
  private boolean d;
  
  static  {
    a.e();
  }
  
  public k() { this(4); }
  
  public k(int paramInt) {
    super(true);
    try {
      this.b = new int[paramInt];
      this.c = 0;
      this.d = true;
      return;
    } catch (NegativeArraySizeException negativeArraySizeException) {
      throw new IllegalArgumentException("size < 0");
    } 
  }
  
  private void c() {
    if (this.c == this.b.length) {
      int[] arrayOfInt = new int[this.c * 3 / 2 + 10];
      System.arraycopy(this.b, 0, arrayOfInt, 0, this.c);
      this.b = arrayOfInt;
    } 
  }
  
  public int a() { return this.c; }
  
  public int a(int paramInt) {
    if (paramInt >= this.c)
      throw new IndexOutOfBoundsException("n >= size()"); 
    try {
      return this.b[paramInt];
    } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
      throw new IndexOutOfBoundsException("n < 0");
    } 
  }
  
  public void a(int paramInt1, int paramInt2) {
    h();
    if (paramInt1 >= this.c)
      throw new IndexOutOfBoundsException("n >= size()"); 
    try {
      this.b[paramInt1] = paramInt2;
      this.d = false;
      return;
    } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
      if (paramInt1 < 0)
        throw new IllegalArgumentException("n < 0"); 
      return;
    } 
  }
  
  public void b() {
    h();
    if (!this.d) {
      Arrays.sort(this.b, 0, this.c);
      this.d = true;
    } 
  }
  
  public void b(int paramInt) {
    h();
    c();
    int[] arrayOfInt = this.b;
    int i = this.c;
    this.c = i + 1;
    arrayOfInt[i] = paramInt;
    if (this.d) {
      i = this.c;
      boolean bool = true;
      if (i > 1) {
        if (paramInt < this.b[this.c - 2])
          bool = false; 
        this.d = bool;
      } 
    } 
  }
  
  public void c(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("newSize < 0"); 
    if (paramInt > this.c)
      throw new IllegalArgumentException("newSize > size"); 
    h();
    this.c = paramInt;
  }
  
  public int d(int paramInt) {
    paramInt = e(paramInt);
    return (paramInt >= 0) ? paramInt : -1;
  }
  
  public int e(int paramInt) {
    int m = this.c;
    if (!this.d) {
      for (byte b1 = 0; b1 < m; b1++) {
        if (this.b[b1] == paramInt)
          return b1; 
      } 
      return -m;
    } 
    int j = m;
    for (int i = -1; j > i + 1; i = n) {
      int n = (j - i >> 1) + i;
      if (paramInt <= this.b[n]) {
        j = n;
        continue;
      } 
    } 
    return (j != m) ? ((paramInt == this.b[j]) ? j : (-j - 1)) : (-m - 1);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject == this)
      return true; 
    if (!(paramObject instanceof k))
      return false; 
    paramObject = (k)paramObject;
    if (this.d != paramObject.d)
      return false; 
    if (this.c != paramObject.c)
      return false; 
    for (byte b1 = 0; b1 < this.c; b1++) {
      if (this.b[b1] != paramObject.b[b1])
        return false; 
    } 
    return true;
  }
  
  public boolean f(int paramInt) { return (d(paramInt) >= 0); }
  
  public int hashCode() {
    byte b1 = 0;
    int i = 0;
    while (b1 < this.c) {
      i = i * 31 + this.b[b1];
      b1++;
    } 
    return i;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer(this.c * 5 + 10);
    stringBuffer.append('{');
    for (byte b1 = 0; b1 < this.c; b1++) {
      if (b1)
        stringBuffer.append(", "); 
      stringBuffer.append(this.b[b1]);
    } 
    stringBuffer.append('}');
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
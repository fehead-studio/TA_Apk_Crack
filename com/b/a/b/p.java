package com.b.a.b;

public class p {
  private m[] a = new m[4];
  
  public p() {
    this.a[0] = new m(0, 0);
    for (byte b = 1; b < 4; b++)
      this.a[b] = new m(-1, -1); 
  }
  
  private boolean b(int paramInt1, int paramInt2) {
    for (byte b = 1; b < 4; b++) {
      if (this.a[b].a() == paramInt1) {
        this.a[b].b(paramInt2);
        return true;
      } 
    } 
    return false;
  }
  
  private void c(int paramInt1, int paramInt2) {
    d(3);
    this.a[1] = new m(paramInt1, paramInt2);
  }
  
  private void d(int paramInt) {
    if (paramInt == 0)
      return; 
    m m1 = this.a[paramInt];
    while (paramInt > 1) {
      this.a[paramInt] = this.a[paramInt - 1];
      paramInt--;
    } 
    this.a[1] = m1;
  }
  
  public m a(int paramInt) {
    byte b1 = 0;
    int i = Integer.MAX_VALUE;
    byte b2 = 0;
    while (b1 < 4) {
      int k = Math.abs(paramInt - this.a[b1].a());
      int j = i;
      if (k < i) {
        b2 = b1;
        j = k;
      } 
      b1++;
      i = j;
    } 
    m m1 = this.a[b2];
    d(b2);
    return m1;
  }
  
  public void a(int paramInt1, int paramInt2) {
    if (paramInt1 <= 0)
      return; 
    if (!b(paramInt1, paramInt2))
      c(paramInt1, paramInt2); 
  }
  
  public m b(int paramInt) {
    byte b1 = 0;
    int i = Integer.MAX_VALUE;
    byte b2 = 0;
    while (b1 < 4) {
      int k = Math.abs(paramInt - this.a[b1].b());
      int j = i;
      if (k < i) {
        b2 = b1;
        j = k;
      } 
      b1++;
      i = j;
    } 
    m m1 = this.a[b2];
    d(b2);
    return m1;
  }
  
  protected final void c(int paramInt) {
    for (byte b = 1; b < 4; b++) {
      if (this.a[b].b() >= paramInt)
        this.a[b] = new m(-1, -1); 
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
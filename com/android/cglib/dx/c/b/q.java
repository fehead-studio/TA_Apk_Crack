package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.k;

public final class q {
  private final c a;
  
  private final int b;
  
  private k[] c;
  
  private k d;
  
  public q(c paramc, int paramInt) {
    if (paramc == null)
      throw new NullPointerException("blocks == null"); 
    if (paramInt < 0)
      throw new IllegalArgumentException("firstLabel < 0"); 
    this.a = paramc;
    this.b = paramInt;
    this.c = null;
    this.d = null;
  }
  
  private void c() {
    byte b2;
    int i = this.a.d();
    k[] arrayOfk = new k[i];
    k k1 = new k(10);
    int j = this.a.a();
    boolean bool = false;
    byte b1 = 0;
    while (true) {
      b2 = bool;
      if (b1 < j) {
        b b3 = this.a.a(b1);
        int m = b3.a();
        k k2 = b3.c();
        int n = k2.a();
        if (n == 0) {
          k1.b(m);
        } else {
          for (b2 = 0; b2 < n; b2++) {
            int i1 = k2.a(b2);
            k k4 = arrayOfk[i1];
            k k3 = k4;
            if (k4 == null) {
              k3 = new k(10);
              arrayOfk[i1] = k3;
            } 
            k3.b(m);
          } 
        } 
        b1++;
        continue;
      } 
      break;
    } 
    while (b2 < i) {
      k k2 = arrayOfk[b2];
      if (k2 != null) {
        k2.b();
        k2.e();
      } 
      b2++;
    } 
    k1.b();
    k1.e();
    if (arrayOfk[this.b] == null)
      arrayOfk[this.b] = k.a; 
    this.c = arrayOfk;
    this.d = k1;
  }
  
  public c a() { return this.a; }
  
  public k a(int paramInt) {
    if (this.d == null)
      c(); 
    StringBuilder stringBuilder = this.c[paramInt];
    if (stringBuilder == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("no such block: ");
      stringBuilder.append(i.c(paramInt));
      throw new RuntimeException(stringBuilder.toString());
    } 
    return stringBuilder;
  }
  
  public int b() { return this.b; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
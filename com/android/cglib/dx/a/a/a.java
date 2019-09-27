package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.b;
import com.android.cglib.dx.c.b.c;
import com.android.cglib.dx.c.b.f;
import com.android.cglib.dx.c.b.q;
import com.android.cglib.dx.c.b.s;

public final class a {
  private final e[] a;
  
  private final e[] b;
  
  private final e[] c;
  
  public a(q paramq) {
    int i = paramq.a().d();
    this.a = new e[i];
    this.b = new e[i];
    this.c = new e[i];
    a(paramq);
  }
  
  private void a(q paramq) {
    c c1 = paramq.a();
    int i = c1.a();
    for (byte b1 = 0; b1 < i; b1++) {
      b b2 = c1.a(b1);
      int j = b2.a();
      f f = b2.b().a(0);
      this.a[j] = new e(f.e());
      s s = b2.f().e();
      this.b[j] = new e(s);
      this.c[j] = new e(s);
    } 
  }
  
  public e a(int paramInt) { return this.a[paramInt]; }
  
  public e a(b paramb) { return this.a[paramb.a()]; }
  
  public e b(b paramb) { return this.b[paramb.a()]; }
  
  public e c(b paramb) { return this.c[paramb.a()]; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
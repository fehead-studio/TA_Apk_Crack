package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.c;
import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.n;

public final class am extends ag {
  private final v a;
  
  public am(v paramv) {
    super(1, a(paramv));
    this.a = paramv;
  }
  
  private static int a(v paramv) { return n.a(paramv.j()) + paramv.i() + 1; }
  
  protected int a(ag paramag) {
    paramag = (am)paramag;
    return this.a.a(paramag.a);
  }
  
  public y a() { return y.n; }
  
  public void a(l paraml) {}
  
  public void a_(l paraml, a parama) {
    c c = this.a.h();
    int i = this.a.j();
    if (parama.a()) {
      int j = n.a(i);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("utf16_size: ");
      stringBuilder.append(i.a(i));
      parama.a(j, stringBuilder.toString());
      parama.a(c.a() + 1, this.a.f());
    } 
    parama.e(i);
    parama.a(c);
    parama.b(0);
  }
  
  public String b() { return this.a.f(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
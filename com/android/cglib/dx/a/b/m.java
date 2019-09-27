package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.c;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.d;

public final class m extends ag {
  private final c a;
  
  private byte[] b;
  
  public m(c paramc) {
    super(1, -1);
    if (paramc == null)
      throw new NullPointerException("array == null"); 
    this.a = paramc;
    this.b = null;
  }
  
  protected int a(ag paramag) {
    paramag = (m)paramag;
    return this.a.a(paramag.a);
  }
  
  public y a() { return y.q; }
  
  protected void a(ak paramak, int paramInt) {
    d d = new d();
    (new au(paramak.e(), d)).a(this.a, false);
    this.b = d.f();
    a(this.b.length);
  }
  
  public void a(l paraml) { au.a(paraml, this.a); }
  
  protected void a_(l paraml, a parama) {
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(" encoded array");
      parama.a(0, stringBuilder.toString());
      (new au(paraml, parama)).a(this.a, true);
      return;
    } 
    parama.a(this.b);
  }
  
  public String b() { return this.a.a_(); }
  
  public int hashCode() { return this.a.hashCode(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
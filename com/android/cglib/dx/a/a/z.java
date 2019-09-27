package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.s;

public final class z extends l {
  private e a;
  
  public z(j paramj, s params, n paramn, e parame) {
    super(paramj, params, paramn);
    if (parame == null)
      throw new NullPointerException("target == null"); 
    this.a = parame;
  }
  
  public h a(j paramj) { return new z(paramj, h(), i(), this.a); }
  
  public h a(n paramn) { return new z(g(), h(), paramn, this.a); }
  
  public z a(e parame) { return new z(g().g(), h(), i(), parame); }
  
  protected String a() { return (this.a == null) ? "????" : this.a.l(); }
  
  public e b() { return this.a; }
  
  public int c() { return this.a.f(); }
  
  public int d() { return this.a.f() - f(); }
  
  public boolean o() { return (e() && this.a.e()); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
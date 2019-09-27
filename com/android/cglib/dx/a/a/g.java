package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.d.c;
import java.util.HashSet;

public final class g {
  private final int a;
  
  private t b;
  
  private b c;
  
  private d d;
  
  private u e;
  
  private p f;
  
  private i g;
  
  public g(int paramInt, t paramt, b paramb) {
    if (paramt == null)
      throw new NullPointerException("unprocessedInsns == null"); 
    if (paramb == null)
      throw new NullPointerException("unprocessedCatches == null"); 
    this.a = paramInt;
    this.b = paramt;
    this.c = paramb;
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = null;
  }
  
  private void j() {
    if (this.g != null)
      return; 
    this.g = this.b.d();
    this.e = u.a(this.g, this.a);
    this.f = p.a(this.g);
    this.d = this.c.a();
    this.b = null;
    this.c = null;
  }
  
  public void a(a parama) { this.b.a(parama); }
  
  public boolean a() { return (this.a != 1 && this.b.a()); }
  
  public boolean b() { return this.b.b(); }
  
  public boolean c() { return this.c.b(); }
  
  public HashSet<c> d() { return this.c.c(); }
  
  public HashSet<a> e() { return this.b.c(); }
  
  public i f() {
    j();
    return this.g;
  }
  
  public d g() {
    j();
    return this.d;
  }
  
  public u h() {
    j();
    return this.e;
  }
  
  public p i() {
    j();
    return this.f;
  }
  
  public static interface a {
    int a(a param1a);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
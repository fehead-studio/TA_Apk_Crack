package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.s;
import com.android.cglib.dx.c.c.a;

public final class f extends l {
  private final a a;
  
  private int b;
  
  private int c;
  
  public f(j paramj, s params, n paramn, a parama) {
    super(paramj, params, paramn);
    if (parama == null)
      throw new NullPointerException("constant == null"); 
    this.a = parama;
    this.b = -1;
    this.c = -1;
  }
  
  public h a(j paramj) {
    f f1 = new f(paramj, h(), i(), this.a);
    if (this.b >= 0)
      f1.a(this.b); 
    if (this.c >= 0)
      f1.b(this.c); 
    return f1;
  }
  
  public h a(n paramn) {
    f f1 = new f(g(), h(), paramn, this.a);
    if (this.b >= 0)
      f1.a(this.b); 
    if (this.c >= 0)
      f1.b(this.c); 
    return f1;
  }
  
  protected String a() { return this.a.a_(); }
  
  public void a(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("index < 0"); 
    if (this.b >= 0)
      throw new RuntimeException("index already set"); 
    this.b = paramInt;
  }
  
  public a b() { return this.a; }
  
  public void b(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("index < 0"); 
    if (this.c >= 0)
      throw new RuntimeException("class index already set"); 
    this.c = paramInt;
  }
  
  public int c() {
    if (this.b < 0) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("index not yet set for ");
      stringBuilder.append(this.a);
      throw new RuntimeException(stringBuilder.toString());
    } 
    return this.b;
  }
  
  public boolean d() { return (this.b >= 0); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
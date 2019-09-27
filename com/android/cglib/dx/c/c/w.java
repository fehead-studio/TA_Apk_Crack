package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.c;
import java.util.HashMap;

public final class w extends x {
  public static final w a;
  
  public static final w b;
  
  public static final w c;
  
  public static final w d;
  
  public static final w e;
  
  public static final w f;
  
  public static final w g;
  
  public static final w h;
  
  public static final w i;
  
  public static final w j;
  
  public static final w k;
  
  public static final w l;
  
  public static final w m;
  
  public static final w n;
  
  public static final w o;
  
  public static final w p;
  
  public static final w q;
  
  public static final w r;
  
  private static final HashMap<c, w> s = new HashMap(100);
  
  private final c t;
  
  private v u;
  
  static  {
    r = (q = (p = (o = (n = (m = (l = (k = (j = (i = (h = (g = (f = (e = (d = (c = (b = (a = a(c.o)).a(c.s)).a(c.t)).a(c.u)).a(c.v)).a(c.w)).a(c.y)).a(c.x)).a(c.z)).a(c.A)).a(c.B)).a(c.C)).a(c.D)).a(c.E)).a(c.F)).a(c.H)).a(c.G)).a(c.J);
  }
  
  public w(c paramc) {
    if (paramc == null)
      throw new NullPointerException("type == null"); 
    if (paramc == c.j)
      throw new UnsupportedOperationException("KNOWN_NULL is not representable"); 
    this.t = paramc;
    this.u = null;
  }
  
  public static w a(c paramc) {
    synchronized (s) {
      w w2 = (w)s.get(paramc);
      w w1 = w2;
      if (w2 == null) {
        w1 = new w(paramc);
        s.put(paramc, w1);
      } 
      return w1;
    } 
  }
  
  public String a_() { return this.t.a_(); }
  
  protected int b(a parama) { return this.t.e().compareTo(((w)parama).t.e()); }
  
  public c b() { return c.m; }
  
  public String e() { return "type"; }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = paramObject instanceof w;
    boolean bool1 = false;
    if (!bool2)
      return false; 
    if (this.t == ((w)paramObject).t)
      bool1 = true; 
    return bool1;
  }
  
  public c f() { return this.t; }
  
  public v g() {
    if (this.u == null)
      this.u = new v(this.t.e()); 
    return this.u;
  }
  
  public int hashCode() { return this.t.hashCode(); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("type{");
    stringBuilder.append(a_());
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
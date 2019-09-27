package com.android.cglib.dx.c.d;

import com.android.cglib.dx.d.h;

public final class b extends h implements e {
  public static final b A;
  
  public static final b B;
  
  public static final b C;
  
  public static final b D;
  
  public static final b E;
  
  public static final b F;
  
  public static final b G;
  
  public static final b H;
  
  public static final b I;
  
  public static final b J = (I = (H = (G = (F = (E = (D = (C = (B = (A = (z = (y = (x = (w = (v = (u = (t = (s = (r = (q = (p = (o = (n = (m = (l = (k = (j = (i = (h = (g = (f = (e = (d = (c = (b = (a = new b(0)).a(c.f)).a(c.g)).a(c.e)).a(c.d)).a(c.o)).a(c.k)).a(c.r)).a(c.f, c.f)).a(c.g, c.g)).a(c.e, c.e)).a(c.d, c.d)).a(c.o, c.o)).a(c.f, c.o)).a(c.g, c.o)).a(c.e, c.o)).a(c.d, c.o)).a(c.g, c.f)).a(c.G, c.f)).a(c.H, c.f)).a(c.F, c.f)).a(c.E, c.f)).a(c.I, c.f)).a(c.B, c.f)).a(c.C, c.f)).a(c.D, c.f)).a(c.J, c.f)).a(c.f, c.G, c.f)).a(c.g, c.H, c.f)).a(c.e, c.F, c.f)).a(c.d, c.E, c.f)).a(c.o, c.I, c.f)).a(c.f, c.B, c.f)).a(c.f, c.C, c.f)).a(c.f, c.D, c.f)).a(c.f, c.J, c.f);
  
  public static final b a;
  
  public static final b b;
  
  public static final b c;
  
  public static final b d;
  
  public static final b e;
  
  public static final b f;
  
  public static final b g;
  
  public static final b h;
  
  public static final b i;
  
  public static final b j;
  
  public static final b k;
  
  public static final b l;
  
  public static final b m;
  
  public static final b n;
  
  public static final b o;
  
  public static final b p;
  
  public static final b q;
  
  public static final b r;
  
  public static final b s;
  
  public static final b t;
  
  public static final b u;
  
  public static final b v;
  
  public static final b w;
  
  public static final b x;
  
  public static final b y;
  
  public static final b z;
  
  public b(int paramInt) { super(paramInt); }
  
  public static int a(e parame1, e parame2) {
    int i1 = parame1.a();
    int i2 = parame2.a();
    int i3 = Math.min(i1, i2);
    for (byte b1 = 0; b1 < i3; b1++) {
      int i4 = parame1.a(b1).a(parame2.a(b1));
      if (i4 != 0)
        return i4; 
    } 
    return (i1 == i2) ? 0 : ((i1 < i2) ? -1 : 1);
  }
  
  public static b a(c paramc) {
    b b1 = new b(1);
    b1.a(0, paramc);
    return b1;
  }
  
  public static b a(c paramc1, c paramc2) {
    b b1 = new b(2);
    b1.a(0, paramc1);
    b1.a(1, paramc2);
    return b1;
  }
  
  public static b a(c paramc1, c paramc2, c paramc3) {
    b b1 = new b(3);
    b1.a(0, paramc1);
    b1.a(1, paramc2);
    b1.a(2, paramc3);
    return b1;
  }
  
  public static b a(c paramc1, c paramc2, c paramc3, c paramc4) {
    b b1 = new b(4);
    b1.a(0, paramc1);
    b1.a(1, paramc2);
    b1.a(2, paramc3);
    b1.a(3, paramc4);
    return b1;
  }
  
  public static String a(e parame) {
    int i1 = parame.a();
    if (i1 == 0)
      return "<empty>"; 
    StringBuffer stringBuffer = new StringBuffer(100);
    for (byte b1 = 0; b1 < i1; b1++) {
      if (b1)
        stringBuffer.append(", "); 
      stringBuffer.append(parame.a(b1).a_());
    } 
    return stringBuffer.toString();
  }
  
  public static int b(e parame) {
    int i2 = parame.a();
    byte b1 = 0;
    int i1 = 0;
    while (b1 < i2) {
      i1 = i1 * 31 + parame.a(b1).hashCode();
      b1++;
    } 
    return i1;
  }
  
  public c a(int paramInt) { return b(paramInt); }
  
  public void a(int paramInt, c paramc) { a(paramInt, paramc); }
  
  public int b() {
    int i2 = a();
    byte b1 = 0;
    int i1 = 0;
    while (b1 < i2) {
      i1 += b(b1).g();
      b1++;
    } 
    return i1;
  }
  
  public b b(c paramc) {
    int i1 = a();
    b b2 = new b(i1 + 1);
    byte b1 = 0;
    b2.a(0, paramc);
    while (b1 < i1) {
      byte b3 = b1 + true;
      b2.a(b3, e(b1));
      b1 = b3;
    } 
    return b2;
  }
  
  public c b(int paramInt) { return (c)d(paramInt); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
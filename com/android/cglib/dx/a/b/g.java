package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.b.a;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.c;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.c.d.b;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;

public final class g extends w {
  private final w a;
  
  private final int b;
  
  private final w c;
  
  private ar d;
  
  private final v e;
  
  private final f f;
  
  private m g;
  
  private d h;
  
  public g(w paramw1, int paramInt, w paramw2, e parame, v paramv) {
    if (paramw1 == null)
      throw new NullPointerException("thisClass == null"); 
    if (parame == null)
      throw new NullPointerException("interfaces == null"); 
    this.a = paramw1;
    this.b = paramInt;
    this.c = paramw2;
    if (parame.a() == 0) {
      paramw2 = null;
    } else {
      ar1 = new ar(parame);
    } 
    this.d = ar1;
    this.e = paramv;
    this.f = new f(paramw1);
    this.g = null;
    this.h = new d();
  }
  
  public y a() { return y.g; }
  
  public void a(l paraml) {
    aq aq = paraml.j();
    af af1 = paraml.n();
    af af2 = paraml.d();
    af af3 = paraml.e();
    ao ao = paraml.g();
    aq.a(this.a);
    if (!this.f.c()) {
      paraml.i().a(this.f);
      c c1 = this.f.d();
      if (c1 != null)
        this.g = (m)af1.b(new m(c1)); 
    } 
    if (this.c != null)
      aq.a(this.c); 
    if (this.d != null)
      this.d = (ar)af3.b(this.d); 
    if (this.e != null)
      ao.a(this.e); 
    if (!this.h.c()) {
      if (this.h.d()) {
        this.h = (d)af2.b(this.h);
        return;
      } 
      af2.a(this.h);
    } 
  }
  
  public void a(l paraml, a parama) {
    int n;
    int j;
    int i;
    boolean bool = parama.a();
    aq aq = paraml.j();
    int i1 = aq.b(this.a);
    w w1 = this.c;
    int k = -1;
    if (w1 == null) {
      i = -1;
    } else {
      i = aq.b(this.c);
    } 
    int i2 = ag.b(this.d);
    if (this.h.c()) {
      j = 0;
    } else {
      j = this.h.e();
    } 
    if (this.e != null)
      k = paraml.g().b(this.e); 
    if (this.f.c()) {
      n = 0;
    } else {
      n = this.f.e();
    } 
    int i3 = ag.b(this.g);
    if (bool) {
      String str2 = new StringBuilder();
      str2.append(h());
      str2.append(' ');
      str2.append(this.a.a_());
      parama.a(0, str2.toString());
      str2 = new StringBuilder();
      str2.append("  class_idx:           ");
      str2.append(i.a(i1));
      parama.a(4, str2.toString());
      str2 = new StringBuilder();
      str2.append("  access_flags:        ");
      str2.append(a.a(this.b));
      parama.a(4, str2.toString());
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("  superclass_idx:      ");
      stringBuilder2.append(i.a(i));
      stringBuilder2.append(" // ");
      if (this.c == null) {
        String str = "<none>";
      } else {
        str2 = this.c.a_();
      } 
      stringBuilder2.append(str2);
      parama.a(4, stringBuilder2.toString());
      String str1 = new StringBuilder();
      str1.append("  interfaces_off:      ");
      str1.append(i.a(i2));
      parama.a(4, str1.toString());
      if (i2 != 0) {
        e e1 = this.d.c();
        int i4 = e1.a();
        byte b1;
        for (b1 = 0; b1 < i4; b1++) {
          stringBuilder2 = new StringBuilder();
          stringBuilder2.append("    ");
          stringBuilder2.append(e1.a(b1).a_());
          parama.a(0, stringBuilder2.toString());
        } 
      } 
      stringBuilder2 = new StringBuilder();
      stringBuilder2.append("  source_file_idx:     ");
      stringBuilder2.append(i.a(k));
      stringBuilder2.append(" // ");
      if (this.e == null) {
        String str = "<none>";
      } else {
        str1 = this.e.a_();
      } 
      stringBuilder2.append(str1);
      parama.a(4, stringBuilder2.toString());
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("  annotations_off:     ");
      stringBuilder1.append(i.a(j));
      parama.a(4, stringBuilder1.toString());
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append("  class_data_off:      ");
      stringBuilder1.append(i.a(n));
      parama.a(4, stringBuilder1.toString());
      stringBuilder1 = new StringBuilder();
      stringBuilder1.append("  static_values_off:   ");
      stringBuilder1.append(i.a(i3));
      parama.a(4, stringBuilder1.toString());
    } 
    parama.d(i1);
    parama.d(this.b);
    parama.d(i);
    parama.d(i2);
    parama.d(k);
    parama.d(j);
    parama.d(n);
    parama.d(i3);
  }
  
  public void a(n paramn) { this.f.a(paramn); }
  
  public void a(n paramn, a parama) { this.f.a(paramn, parama); }
  
  public void a(p paramp) { this.f.a(paramp); }
  
  public void b(p paramp) { this.f.b(paramp); }
  
  public int b_() { return 32; }
  
  public w c() { return this.a; }
  
  public w d() { return this.c; }
  
  public e e() { return (this.d == null) ? b.a : this.d.c(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.a.b;

import com.android.cglib.dx.a.a.g;
import com.android.cglib.dx.a.a.i;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.c.d.b;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.g;
import com.android.cglib.dx.d.i;
import java.util.Iterator;

public final class i extends ag {
  private final s a;
  
  private final g b;
  
  private e c;
  
  private final boolean d;
  
  private final e e;
  
  private k f;
  
  public i(s params, g paramg, boolean paramBoolean, e parame) {
    super(4, -1);
    if (params == null)
      throw new NullPointerException("ref == null"); 
    if (paramg == null)
      throw new NullPointerException("code == null"); 
    if (parame == null)
      throw new NullPointerException("throwsList == null"); 
    this.a = params;
    this.b = paramg;
    this.d = paramBoolean;
    this.e = parame;
    this.c = null;
    this.f = null;
  }
  
  private void b(l paraml, a parama) {
    i1 = this.b.f();
    try {
      i1.a(parama);
      return;
    } catch (RuntimeException i1) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("...while writing instructions for ");
      stringBuilder.append(this.a.a_());
      throw g.a(i1, stringBuilder.toString());
    } 
  }
  
  private int c() { return this.a.b(this.d); }
  
  private int d() { return this.b.f().d(); }
  
  private int h() { return this.b.f().c(); }
  
  public y a() { return y.m; }
  
  protected void a(ak paramak, int paramInt) {
    l l = paramak.e();
    this.b.a(new g.a(this, l) {
          public int a(a param1a) {
            w w = this.a.b(param1a);
            return (w == null) ? -1 : w.g();
          }
        });
    if (this.c != null) {
      this.c.a(l);
      paramInt = this.c.b();
    } else {
      paramInt = 0;
    } 
    int m = this.b.f().b();
    int j = m;
    if ((m & true) != 0)
      j = m + 1; 
    a(j * 2 + 16 + paramInt);
  }
  
  public void a(l paraml) {
    af af = paraml.n();
    aq aq = paraml.j();
    if (this.b.a() || this.b.b()) {
      this.f = new k(this.b, this.d, this.a);
      af.a(this.f);
    } 
    if (this.b.c()) {
      Iterator iterator1 = this.b.d().iterator();
      while (iterator1.hasNext())
        aq.a((c)iterator1.next()); 
      this.c = new e(this.b);
    } 
    Iterator iterator = this.b.e().iterator();
    while (iterator.hasNext())
      paraml.a((a)iterator.next()); 
  }
  
  protected void a_(l paraml, a parama) {
    int m;
    int j;
    boolean bool;
    boolean bool1 = parama.a();
    int n = h();
    int i1 = d();
    int i2 = c();
    int i3 = this.b.f().b();
    if ((i3 & true) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    if (this.c == null) {
      j = 0;
    } else {
      j = this.c.a();
    } 
    if (this.f == null) {
      m = 0;
    } else {
      m = this.f.e();
    } 
    if (bool1) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(' ');
      stringBuilder.append(this.a.a_());
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  registers_size: ");
      stringBuilder.append(i.c(n));
      parama.a(2, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  ins_size:       ");
      stringBuilder.append(i.c(i2));
      parama.a(2, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  outs_size:      ");
      stringBuilder.append(i.c(i1));
      parama.a(2, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  tries_size:     ");
      stringBuilder.append(i.c(j));
      parama.a(2, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  debug_off:      ");
      stringBuilder.append(i.a(m));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  insns_size:     ");
      stringBuilder.append(i.a(i3));
      parama.a(4, stringBuilder.toString());
      if (this.e.a() != 0) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("  throws ");
        stringBuilder.append(b.a(this.e));
        parama.a(0, stringBuilder.toString());
      } 
    } 
    parama.c(n);
    parama.c(i2);
    parama.c(i1);
    parama.c(j);
    parama.d(m);
    parama.d(i3);
    b(paraml, parama);
    if (this.c != null) {
      if (bool) {
        if (bool1)
          parama.a(2, "  padding: 0"); 
        parama.c(0);
      } 
      this.c.a(paraml, parama);
    } 
    if (bool1 && this.f != null) {
      parama.a(0, "  debug info");
      this.f.a(paraml, parama, "    ");
    } 
  }
  
  public String b() { return this.a.a_(); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("CodeItem{");
    stringBuilder.append(b());
    stringBuilder.append("}");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
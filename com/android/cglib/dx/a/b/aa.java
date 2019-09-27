package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.r;
import com.android.cglib.dx.c.c.t;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;

public abstract class aa extends v {
  private final r a;
  
  public aa(r paramr) {
    super(paramr.g());
    this.a = paramr;
  }
  
  public void a(l paraml) {
    super.a(paraml);
    paraml.g().a(j().h().b());
  }
  
  public final void a(l paraml, a parama) {
    aq aq = paraml.j();
    ao ao = paraml.g();
    t t = this.a.h();
    int i = aq.b(e());
    int j = ao.b(t.b());
    int k = b(paraml);
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(h());
      stringBuilder.append(' ');
      stringBuilder.append(this.a.a_());
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  class_idx: ");
      stringBuilder.append(i.c(i));
      parama.a(2, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append(d());
      stringBuilder.append(':');
      parama.a(2, String.format("  %-10s %s", new Object[] { stringBuilder.toString(), i.c(k) }));
      stringBuilder = new StringBuilder();
      stringBuilder.append("  name_idx:  ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
    } 
    parama.c(i);
    parama.c(k);
    parama.d(j);
  }
  
  protected abstract int b(l paraml);
  
  public int b_() { return 8; }
  
  protected abstract String d();
  
  public final r j() { return this.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
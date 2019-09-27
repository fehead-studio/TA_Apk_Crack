package com.android.cglib.dx.a.b;

import com.android.cglib.dx.a.a.g;
import com.android.cglib.dx.a.a.i;
import com.android.cglib.dx.a.a.p;
import com.android.cglib.dx.a.a.u;
import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.g;
import java.io.PrintWriter;

public class k extends ag {
  private final g a;
  
  private byte[] b;
  
  private final boolean c;
  
  private final s d;
  
  public k(g paramg, boolean paramBoolean, s params) {
    super(1, -1);
    if (paramg == null)
      throw new NullPointerException("code == null"); 
    this.a = paramg;
    this.c = paramBoolean;
    this.d = params;
  }
  
  private byte[] a(l paraml, String paramString, PrintWriter paramPrintWriter, a parama, boolean paramBoolean) { return b(paraml, paramString, paramPrintWriter, parama, paramBoolean); }
  
  private byte[] b(l paraml, String paramString, PrintWriter paramPrintWriter, a parama, boolean paramBoolean) {
    u u = this.a.h();
    p p = this.a.i();
    i i = this.a.f();
    j j = new j(u, p, paraml, i.b(), i.c(), this.c, this.d);
    return (paramPrintWriter == null && parama == null) ? j.a() : j.a(paramString, paramPrintWriter, parama, paramBoolean);
  }
  
  public y a() { return y.o; }
  
  protected void a(ak paramak, int paramInt) {
    try {
      this.b = a(paramak.e(), null, null, null, false);
      a(this.b.length);
      return;
    } catch (RuntimeException paramak) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("...while placing debug info for ");
      stringBuilder.append(this.d.a_());
      throw g.a(paramak, stringBuilder.toString());
    } 
  }
  
  public void a(l paraml) {}
  
  public void a(l paraml, a parama, String paramString) { a(paraml, paramString, null, parama, false); }
  
  protected void a_(l paraml, a parama) {
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(" debug info");
      parama.a(stringBuilder.toString());
      a(paraml, null, null, parama, true);
    } 
    parama.a(this.b);
  }
  
  public String b() { throw new RuntimeException("unsupported"); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
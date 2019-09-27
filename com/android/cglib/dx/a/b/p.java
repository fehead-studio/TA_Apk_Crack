package com.android.cglib.dx.a.b;

import com.android.cglib.dx.a.a.g;
import com.android.cglib.dx.c.b.a;
import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.n;

public final class p extends o implements Comparable<p> {
  private final s a;
  
  private final i b;
  
  public p(s params, int paramInt, g paramg, e parame) {
    super(paramInt);
    if (params == null)
      throw new NullPointerException("method == null"); 
    this.a = params;
    if (paramg == null) {
      this.b = null;
      return;
    } 
    if ((paramInt & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.b = new i(params, paramg, bool, parame);
  }
  
  public int a(l paraml, a parama, int paramInt1, int paramInt2) {
    boolean bool;
    int j = paraml.m().b(this.a);
    int k = j - paramInt1;
    int m = c();
    int n = ag.b(this.b);
    if (n != 0) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    if ((m & 0x500) == 0) {
      bool = true;
    } else {
      bool = false;
    } 
    if (paramInt1 != bool)
      throw new UnsupportedOperationException("code vs. access_flags mismatch"); 
    if (parama.a()) {
      parama.a(0, String.format("  [%x] %s", new Object[] { Integer.valueOf(paramInt2), this.a.a_() }));
      paramInt1 = n.a(k);
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("    method_idx:   ");
      stringBuilder.append(i.a(j));
      parama.a(paramInt1, stringBuilder.toString());
      paramInt1 = n.a(m);
      stringBuilder = new StringBuilder();
      stringBuilder.append("    access_flags: ");
      stringBuilder.append(a.c(m));
      parama.a(paramInt1, stringBuilder.toString());
      paramInt1 = n.a(n);
      stringBuilder = new StringBuilder();
      stringBuilder.append("    code_off:     ");
      stringBuilder.append(i.a(n));
      parama.a(paramInt1, stringBuilder.toString());
    } 
    parama.e(k);
    parama.e(m);
    parama.e(n);
    return j;
  }
  
  public int a(p paramp) { return this.a.a(paramp.a); }
  
  public void a(l paraml) {
    ae ae = paraml.m();
    af af = paraml.d();
    ae.a(this.a);
    if (this.b != null)
      af.a(this.b); 
  }
  
  public final String a_() { return this.a.a_(); }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = paramObject instanceof p;
    boolean bool1 = false;
    if (!bool2)
      return false; 
    if (a((p)paramObject) == 0)
      bool1 = true; 
    return bool1;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer(100);
    stringBuffer.append(getClass().getName());
    stringBuffer.append('{');
    stringBuffer.append(i.c(c()));
    stringBuffer.append(' ');
    stringBuffer.append(this.a);
    if (this.b != null) {
      stringBuffer.append(' ');
      stringBuffer.append(this.b);
    } 
    stringBuffer.append('}');
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
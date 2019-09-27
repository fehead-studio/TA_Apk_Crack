package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.s;
import com.android.cglib.dx.d.a;

public final class m extends aa {
  private x[] a;
  
  public m(s params, n paramn) {
    super(params, paramn);
    if (paramn.a() == 0)
      throw new IllegalArgumentException("registers.size() == 0"); 
    this.a = null;
  }
  
  private static x a(m paramm, int paramInt) { return h.a(s.a, m.a(paramInt, paramm.b()), paramm); }
  
  private void b() {
    if (this.a != null)
      return; 
    n n = i();
    int j = n.a();
    this.a = new x[j];
    byte b = 0;
    int i = 0;
    while (b < j) {
      m m1 = n.b(b);
      this.a[b] = a(m1, i);
      i += m1.i();
      b++;
    } 
  }
  
  public h a(n paramn) { return new m(h(), paramn); }
  
  protected String a() { return null; }
  
  protected String a(boolean paramBoolean) {
    n n = i();
    int j = n.a();
    StringBuffer stringBuffer = new StringBuffer(100);
    byte b = 0;
    int i = 0;
    while (b < j) {
      m m1 = n.b(b);
      x x1 = a(m1, i);
      if (b != 0)
        stringBuffer.append('\n'); 
      stringBuffer.append(x1.a(paramBoolean));
      i += m1.i();
      b++;
    } 
    return stringBuffer.toString();
  }
  
  public void a(a parama) {
    b();
    x[] arrayOfx = this.a;
    int i = arrayOfx.length;
    for (byte b = 0; b < i; b++)
      arrayOfx[b].a(parama); 
  }
  
  public int n() {
    b();
    x[] arrayOfx = this.a;
    int j = arrayOfx.length;
    byte b = 0;
    int i = 0;
    while (b < j) {
      i += arrayOfx[b].n();
      b++;
    } 
    return i;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
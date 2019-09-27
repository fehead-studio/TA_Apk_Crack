package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.d.b;
import com.android.cglib.dx.c.d.e;

public final class j extends d {
  public j(p paramp, s params, m paramm, n paramn, a parama) {
    super(paramp, params, paramm, paramn, parama);
    if (paramp.b() != 1)
      throw new IllegalArgumentException("bogus branchingness"); 
  }
  
  public void a(f.b paramb) { paramb.a(this); }
  
  public e i() { return b.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
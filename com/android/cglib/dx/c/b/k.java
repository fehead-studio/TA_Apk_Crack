package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.d.b;
import com.android.cglib.dx.c.d.e;

public final class k extends f {
  public k(p paramp, s params, m paramm1, m paramm2) { this(paramp, params, paramm1, n.a(paramm2)); }
  
  public k(p paramp, s params, m paramm, n paramn) {
    super(paramp, params, paramm, paramn);
    switch (paramp.b()) {
      default:
        if (paramm != null && paramp.b() != 1)
          throw new IllegalArgumentException("can't mix branchingness with result"); 
        return;
      case 5:
      case 6:
        break;
    } 
    throw new IllegalArgumentException("bogus branchingness");
  }
  
  public void a(f.b paramb) { paramb.a(this); }
  
  public e i() { return b.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
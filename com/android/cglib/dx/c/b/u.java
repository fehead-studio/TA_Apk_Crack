package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.d.e;

public final class u extends f {
  private final e a;
  
  public u(p paramp, s params, n paramn, e parame) {
    super(paramp, params, null, paramn);
    if (paramp.b() != 6)
      throw new IllegalArgumentException("bogus branchingness"); 
    if (parame == null)
      throw new NullPointerException("catches == null"); 
    this.a = parame;
  }
  
  public static String a(e parame) {
    StringBuffer stringBuffer = new StringBuffer(100);
    stringBuffer.append("catch");
    int i = parame.a();
    for (byte b = 0; b < i; b++) {
      stringBuffer.append(" ");
      stringBuffer.append(parame.a(b).a_());
    } 
    return stringBuffer.toString();
  }
  
  public void a(f.b paramb) { paramb.a(this); }
  
  public String b() { return a(this.a); }
  
  public e i() { return this.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\\\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
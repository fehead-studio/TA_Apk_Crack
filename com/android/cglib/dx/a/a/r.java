package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.s;

public final class r extends ab {
  private final m a;
  
  public r(s params, m paramm) {
    super(params);
    if (paramm == null)
      throw new NullPointerException("local == null"); 
    this.a = paramm;
  }
  
  public static String a(m paramm) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramm.k());
    stringBuilder.append(' ');
    stringBuilder.append(paramm.g().toString());
    stringBuilder.append(": ");
    stringBuilder.append(paramm.f().a_());
    return stringBuilder.toString();
  }
  
  public h a(n paramn) { return new r(h(), this.a); }
  
  protected String a() { return this.a.toString(); }
  
  protected String a(boolean paramBoolean) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("local-start ");
    stringBuilder.append(a(this.a));
    return stringBuilder.toString();
  }
  
  public m b() { return this.a; }
  
  public h d(int paramInt) { return new r(h(), this.a.c(paramInt)); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
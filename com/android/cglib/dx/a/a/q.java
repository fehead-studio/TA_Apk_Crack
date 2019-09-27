package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.o;
import com.android.cglib.dx.c.b.s;

public final class q extends ab {
  private final o a;
  
  public q(s params, o paramo) {
    super(params);
    if (paramo == null)
      throw new NullPointerException("locals == null"); 
    this.a = paramo;
  }
  
  public h a(n paramn) { return new q(h(), this.a); }
  
  protected String a() { return this.a.toString(); }
  
  protected String a(boolean paramBoolean) {
    int i = this.a.b();
    int j = this.a.a();
    StringBuffer stringBuffer = new StringBuffer(i * 40 + 100);
    stringBuffer.append("local-snapshot");
    for (i = 0; i < j; i++) {
      m m = this.a.a(i);
      if (m != null) {
        stringBuffer.append("\n  ");
        stringBuffer.append(r.a(m));
      } 
    } 
    return stringBuffer.toString();
  }
  
  public o b() { return this.a; }
  
  public h d(int paramInt) { return new q(h(), this.a.b(paramInt)); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
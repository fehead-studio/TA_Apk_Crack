package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.a;
import com.android.cglib.dx.c.d.c;

public abstract class d extends r {
  private final a a = a.a(h().c().g());
  
  private a b = null;
  
  d(w paramw, t paramt) { super(paramw, paramt); }
  
  public final a a(boolean paramBoolean) {
    if (paramBoolean)
      return this.a; 
    if (this.b == null) {
      c c = g().f();
      this.b = this.a.a(c);
    } 
    return this.b;
  }
  
  protected final int b(a parama) {
    int i = super.b(parama);
    if (i != 0)
      return i; 
    parama = (d)parama;
    return this.a.a(parama.a);
  }
  
  public final int b(boolean paramBoolean) { return a(paramBoolean).c().b(); }
  
  public final c b() { return this.a.b(); }
  
  public final a f() { return this.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
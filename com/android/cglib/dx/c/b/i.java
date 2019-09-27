package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.o;
import java.util.HashMap;

public final class i extends o {
  private final o a;
  
  private final o[] b;
  
  private final HashMap<f, m> c;
  
  private o b(int paramInt) {
    try {
      return this.b[paramInt];
    } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
      throw new IllegalArgumentException("bogus label");
    } 
  }
  
  public int a() { return this.c.size(); }
  
  public m a(f paramf) { return (m)this.c.get(paramf); }
  
  public o a(int paramInt) {
    o o1 = b(paramInt);
    return (o1 != null) ? o1 : this.a;
  }
  
  public o a(b paramb) { return a(paramb.a()); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
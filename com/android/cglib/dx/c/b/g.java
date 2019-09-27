package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.h;

public final class g extends h {
  public g(int paramInt) { super(paramInt); }
  
  public f a(int paramInt) { return (f)d(paramInt); }
  
  public void a(int paramInt, f paramf) { a(paramInt, paramf); }
  
  public void a(f.b paramb) {
    int i = a();
    for (byte b1 = 0; b1 < i; b1++)
      a(b1).a(paramb); 
  }
  
  public f b() { return a(a() - 1); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
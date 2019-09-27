package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.k;
import com.android.cglib.dx.d.m;

public final class c extends m {
  private int a = -1;
  
  public c(int paramInt) { super(paramInt); }
  
  public b a(int paramInt) { return (b)d(paramInt); }
  
  public b a(b paramb) {
    int i = paramb.d();
    k k = paramb.c();
    switch (k.a()) {
      default:
        if (i != -1)
          return b(i); 
      case 1:
        return b(k.a(0));
      case 0:
        break;
    } 
    return null;
  }
  
  public void a(int paramInt, b paramb) {
    a(paramInt, paramb);
    this.a = -1;
  }
  
  public void a(f.b paramb) {
    int i = a();
    for (byte b1 = 0; b1 < i; b1++)
      a(b1).b().a(paramb); 
  }
  
  public int b() {
    if (this.a == -1) {
      a a1 = new a();
      a(a1);
      this.a = a1.a();
    } 
    return this.a;
  }
  
  public b b(int paramInt) {
    int i = c(paramInt);
    if (i < 0) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("no such label: ");
      stringBuilder.append(i.c(paramInt));
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    return a(i);
  }
  
  public int c() {
    int j = a();
    byte b = 0;
    int i;
    for (i = 0; b < j; i = k) {
      b b1 = (b)e(b);
      int k = i;
      if (b1 != null)
        k = i + b1.b().a(); 
      b++;
    } 
    return i;
  }
  
  private static class a implements f.b {
    private int a = 0;
    
    private void a(f param1f) {
      m m = param1f.f();
      if (m != null)
        a(m); 
      n n = param1f.g();
      int i = n.a();
      for (byte b1 = 0; b1 < i; b1++)
        a(n.b(b1)); 
    }
    
    private void a(m param1m) {
      int i = param1m.h();
      if (i > this.a)
        this.a = i; 
    }
    
    public int a() { return this.a; }
    
    public void a(j param1j) { a(param1j); }
    
    public void a(k param1k) { a(param1k); }
    
    public void a(t param1t) { a(param1t); }
    
    public void a(u param1u) { a(param1u); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.b.a.b;

import java.util.LinkedList;

public class r {
  long a = -1L;
  
  private o b;
  
  private LinkedList<a> c = new LinkedList();
  
  private boolean d = false;
  
  private int e = 0;
  
  private int f = 0;
  
  public r(o paramo) { this.b = paramo; }
  
  private void a(a parama) {
    h();
    this.f++;
    this.c.add(parama);
  }
  
  private void h() {
    while (this.c.size() > this.f)
      this.c.removeLast(); 
  }
  
  public int a() {
    if (c()) {
      a a1 = (a)this.c.get(this.f - 1);
      int i = a1.d;
      while (true) {
        a a2 = (a)this.c.get(this.f - 1);
        if (a2.d == i) {
          a2.a();
          this.f--;
          if (!c()) {
            a1 = a2;
            return a1.d();
          } 
          a1 = a2;
          continue;
        } 
        return a1.d();
      } 
    } 
    return -1;
  }
  
  public void a(int paramInt1, int paramInt2, long paramLong) {
    if (c()) {
      boolean bool1;
      a a1 = (a)this.c.get(this.f - 1);
      if (a1 instanceof c && a1.a(paramInt1, paramInt2, paramLong)) {
        bool1 = true;
      } else {
        a1.c();
        bool1 = false;
      } 
      if (!bool1) {
        a(new c(this, paramInt1, paramInt2, this.e));
        if (!this.d)
          this.e++; 
      } 
      this.a = paramLong;
      return;
    } 
    boolean bool = false;
  }
  
  public int b() {
    if (d()) {
      a a1 = (a)this.c.get(this.f);
      int i = a1.d;
      while (true) {
        a a2 = (a)this.c.get(this.f);
        if (a2.d == i) {
          a2.b();
          this.f++;
          if (!d()) {
            a1 = a2;
            return a1.e();
          } 
          a1 = a2;
          continue;
        } 
        return a1.e();
      } 
    } 
    return -1;
  }
  
  public void b(int paramInt1, int paramInt2, long paramLong) {
    if (c()) {
      boolean bool1;
      a a1 = (a)this.c.get(this.f - 1);
      if (a1 instanceof b && a1.a(paramInt1, paramInt2, paramLong)) {
        bool1 = true;
      } else {
        a1.c();
        bool1 = false;
      } 
      if (!bool1) {
        a(new b(this, paramInt1, paramInt2, this.e));
        if (!this.d)
          this.e++; 
      } 
      this.a = paramLong;
      return;
    } 
    boolean bool = false;
  }
  
  public final boolean c() { return (this.f > 0); }
  
  public final boolean d() { return (this.f < this.c.size()); }
  
  public boolean e() { return this.d; }
  
  public void f() { this.d = true; }
  
  public void g() {
    this.d = false;
    this.e++;
  }
  
  private abstract class a {
    public int a;
    
    public int b;
    
    public String c;
    
    public int d;
    
    private a(r this$0) {}
    
    public abstract void a();
    
    public abstract boolean a(int param1Int1, int param1Int2, long param1Long);
    
    public abstract void b();
    
    public abstract void c();
    
    public abstract int d();
    
    public abstract int e();
  }
  
  private class b extends a {
    public b(r this$0, int param1Int1, int param1Int2, int param1Int3) {
      super(this$0, null);
      this.a = param1Int1;
      this.b = param1Int2;
      this.d = param1Int3;
    }
    
    public void a() {
      if (this.c == null) {
        c();
        r.b(this.f).a(this.b);
        return;
      } 
      r.b(this.f).a(this.c.toCharArray(), this.a, 0L, false);
    }
    
    public boolean a(int param1Int1, int param1Int2, long param1Long) {
      if (this.f.a < 0L)
        return false; 
      if (param1Long - this.f.a < 1000000000L && param1Int1 == this.a - this.b - param1Int2 + 1) {
        this.a = param1Int1;
        this.b += param1Int2;
        r.a(this.f);
        return true;
      } 
      return false;
    }
    
    public void b() { r.b(this.f).a(this.a, this.b, 0L, false); }
    
    public void c() { this.c = new String(r.b(this.f).j(this.b)); }
    
    public int d() { return this.a + this.b; }
    
    public int e() { return this.a; }
  }
  
  private class c extends a {
    public c(r this$0, int param1Int1, int param1Int2, int param1Int3) {
      super(this$0, null);
      this.a = param1Int1;
      this.b = param1Int2;
      this.d = param1Int3;
    }
    
    public void a() {
      if (this.c == null) {
        c();
        r.b(this.f).a(-this.b);
        return;
      } 
      r.b(this.f).a(this.a, this.b, 0L, false);
    }
    
    public boolean a(int param1Int1, int param1Int2, long param1Long) {
      if (this.f.a < 0L)
        return false; 
      if (param1Long - this.f.a < 1000000000L && param1Int1 == this.a + this.b) {
        this.b += param1Int2;
        r.a(this.f);
        return true;
      } 
      return false;
    }
    
    public void b() { r.b(this.f).a(this.c.toCharArray(), this.a, 0L, false); }
    
    public void c() { this.c = r.b(this.f).subSequence(this.a, this.b).toString(); }
    
    public int d() { return this.a; }
    
    public int e() { return this.a + this.b; }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
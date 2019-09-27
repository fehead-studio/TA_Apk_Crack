package com.b.a.b;

import java.util.List;

public class f implements CharSequence {
  private int a = 0;
  
  private final e b;
  
  public f(e.a parama) { this.b = new e(parama); }
  
  public f(e parame) { this.b = parame; }
  
  public f(f paramf) { this.b = paramf.b; }
  
  public String a(int paramInt) { return this.b.b(paramInt); }
  
  public void a(char paramChar, int paramInt, long paramLong) {
    if (!this.b.o(paramInt))
      return; 
    this.b.a(new char[] { paramChar }, paramInt, paramLong, true);
  }
  
  public void a(int paramInt1, int paramInt2, long paramLong) {
    if (this.b.o(paramInt1)) {
      if (paramInt2 <= 0)
        return; 
      paramInt2 = Math.min(paramInt2, this.b.d() - paramInt1);
      this.b.a(paramInt1, paramInt2, paramLong, true);
    } 
  }
  
  public void a(int paramInt, long paramLong) {
    if (!this.b.o(paramInt))
      return; 
    this.b.a(paramInt, 1, paramLong, true);
  }
  
  public void a(List<m> paramList) { this.b.a(paramList); }
  
  public void a(boolean paramBoolean) { this.b.a(paramBoolean); }
  
  public void a(char[] paramArrayOfChar, int paramInt, long paramLong) {
    if (this.b.o(paramInt)) {
      if (paramArrayOfChar.length == 0)
        return; 
      this.b.a(paramArrayOfChar, paramInt, paramLong, true);
    } 
  }
  
  public boolean a() { return (this.a >= 0 && this.a < this.b.d()); }
  
  public char b() {
    char c = this.b.charAt(this.a);
    this.a++;
    return c;
  }
  
  public int b(int paramInt) { return this.b.e(paramInt); }
  
  public int c(int paramInt) { return this.b.i(paramInt); }
  
  public boolean c() { return this.b.h(); }
  
  public char charAt(int paramInt) { return this.b.o(paramInt) ? this.b.charAt(paramInt) : 0; }
  
  public int d(int paramInt) { return this.b.d(paramInt); }
  
  public void d() { this.b.i(); }
  
  public int e(int paramInt) { return this.b.h(paramInt); }
  
  public void e() { this.b.j(); }
  
  public int f() { return this.b.c(); }
  
  public int f(int paramInt) {
    if (!this.b.o(paramInt))
      paramInt = -1; 
    this.a = paramInt;
    return this.a;
  }
  
  public int g() { return this.b.d(); }
  
  public int g(int paramInt) { return this.b.c(paramInt); }
  
  public void h() { this.b.f(); }
  
  public List<m> i() { return this.b.g(); }
  
  public boolean j() { return this.b.a(); }
  
  public void k() { this.b.b(); }
  
  public int l() { return this.b.k(); }
  
  public int length() { return this.b.length(); }
  
  public int m() { return this.b.l(); }
  
  public CharSequence subSequence(int paramInt1, int paramInt2) { return this.b.subSequence(paramInt1, paramInt2); }
  
  public String toString() { return this.b.toString(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
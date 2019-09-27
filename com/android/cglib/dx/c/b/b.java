package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.k;
import com.android.cglib.dx.d.l;

public final class b implements l {
  private final int a;
  
  private final g b;
  
  private final k c;
  
  private final int d;
  
  public b(int paramInt1, g paramg, k paramk, int paramInt2) {
    if (paramInt1 < 0)
      throw new IllegalArgumentException("label < 0"); 
    try {
      paramg.i();
      int j = paramg.a();
      if (j == 0)
        throw new IllegalArgumentException("insns.size() == 0"); 
      int i;
      for (i = j - 2; i >= 0; i--) {
        if (paramg.a(i).d().b() != 1) {
          stringBuilder = new StringBuilder();
          stringBuilder.append("insns[");
          stringBuilder.append(i);
          stringBuilder.append("] is a branch or can throw");
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
      } 
      if (stringBuilder.a(j - 1).d().b() == 1)
        throw new IllegalArgumentException("insns does not end with a branch or throwing instruction"); 
      try {
        paramk.i();
        if (paramInt2 < -1)
          throw new IllegalArgumentException("primarySuccessor < -1"); 
        if (paramInt2 >= 0 && !paramk.f(paramInt2)) {
          stringBuilder = new StringBuilder();
          stringBuilder.append("primarySuccessor ");
          stringBuilder.append(paramInt2);
          stringBuilder.append(" not in successors ");
          stringBuilder.append(paramk);
          throw new IllegalArgumentException(stringBuilder.toString());
        } 
        this.a = paramInt1;
        this.b = stringBuilder;
        this.c = paramk;
        this.d = paramInt2;
        return;
      } catch (NullPointerException stringBuilder) {}
      throw new NullPointerException("successors == null");
    } catch (NullPointerException paramg) {
      throw new NullPointerException("insns == null");
    } 
  }
  
  public int a() { return this.a; }
  
  public g b() { return this.b; }
  
  public k c() { return this.c; }
  
  public int d() { return this.d; }
  
  public int e() {
    if (this.c.a() != 2)
      throw new UnsupportedOperationException("block doesn't have exactly two successors"); 
    int j = this.c.a(0);
    int i = j;
    if (j == this.d)
      i = this.c.a(1); 
    return i;
  }
  
  public boolean equals(Object paramObject) { return (this == paramObject); }
  
  public f f() { return this.b.b(); }
  
  public boolean g() { return this.b.b().h(); }
  
  public int hashCode() { return System.identityHashCode(this); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append('{');
    stringBuilder.append(i.c(this.a));
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
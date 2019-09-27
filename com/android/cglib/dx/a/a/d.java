package com.android.cglib.dx.a.a;

import com.android.cglib.dx.d.h;

public final class d extends h implements Comparable<d> {
  public static final d a = new d(0);
  
  public d(int paramInt) { super(paramInt); }
  
  public int a(d paramd) {
    if (this == paramd)
      return 0; 
    int i = a();
    int j = paramd.a();
    int k = Math.min(i, j);
    for (byte b = 0; b < k; b++) {
      int m = a(b).a(paramd.a(b));
      if (m != 0)
        return m; 
    } 
    return (i < j) ? -1 : ((i > j) ? 1 : 0);
  }
  
  public a a(int paramInt) { return (a)d(paramInt); }
  
  public void a(int paramInt, a parama) { a(paramInt, parama); }
  
  public static class a extends Object implements Comparable<a> {
    private final int a;
    
    private final int b;
    
    private final c c;
    
    public a(int param1Int1, int param1Int2, c param1c) {
      if (param1Int1 < 0)
        throw new IllegalArgumentException("start < 0"); 
      if (param1Int2 <= param1Int1)
        throw new IllegalArgumentException("end <= start"); 
      if (param1c.g())
        throw new IllegalArgumentException("handlers.isMutable()"); 
      this.a = param1Int1;
      this.b = param1Int2;
      this.c = param1c;
    }
    
    public int a() { return this.a; }
    
    public int a(a param1a) { return (this.a < param1a.a) ? -1 : ((this.a > param1a.a) ? 1 : ((this.b < param1a.b) ? -1 : ((this.b > param1a.b) ? 1 : this.c.a(param1a.c)))); }
    
    public int b() { return this.b; }
    
    public c c() { return this.c; }
    
    public boolean equals(Object param1Object) {
      boolean bool = param1Object instanceof a;
      byte b1 = 0;
      int i = b1;
      if (bool) {
        i = b1;
        if (a((a)param1Object) == 0)
          i = 1; 
      } 
      return i;
    }
    
    public int hashCode() { return (this.a * 31 + this.b) * 31 + this.c.hashCode(); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
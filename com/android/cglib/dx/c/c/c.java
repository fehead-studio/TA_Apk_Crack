package com.android.cglib.dx.c.c;

import com.android.cglib.dx.d.h;

public final class c extends a {
  private final a a;
  
  public c(a parama) {
    if (parama == null)
      throw new NullPointerException("list == null"); 
    parama.i();
    this.a = parama;
  }
  
  public String a_() { return this.a.b("{", ", ", "}"); }
  
  protected int b(a parama) { return this.a.a(((c)parama).a); }
  
  public a b() { return this.a; }
  
  public String e() { return "array"; }
  
  public boolean equals(Object paramObject) { return !(paramObject instanceof c) ? false : this.a.equals(((c)paramObject).a); }
  
  public int hashCode() { return this.a.hashCode(); }
  
  public String toString() { return this.a.a("array{", ", ", "}"); }
  
  public static final class a extends h implements Comparable<a> {
    public a(int param1Int) { super(param1Int); }
    
    public int a(a param1a) {
      int i;
      int j = a();
      int k = param1a.a();
      if (j < k) {
        i = j;
      } else {
        i = k;
      } 
      for (byte b = 0; b < i; b++) {
        int m = ((a)d(b)).a((a)param1a.d(b));
        if (m != 0)
          return m; 
      } 
      return (j < k) ? -1 : ((j > k) ? 1 : 0);
    }
    
    public a a(int param1Int) { return (a)d(param1Int); }
    
    public void a(int param1Int, a param1a) { a(param1Int, param1a); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
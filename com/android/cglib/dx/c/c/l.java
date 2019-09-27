package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.i;

public final class l extends n {
  public static final l a;
  
  public static final l b;
  
  public static final l c;
  
  public static final l d;
  
  public static final l e;
  
  public static final l f;
  
  public static final l g;
  
  private static final l[] h = new l[511];
  
  static  {
    g = (f = (e = (d = (c = (b = (a = a(-1)).a(0)).a(1)).a(2)).a(3)).a(4)).a(5);
  }
  
  private l(int paramInt) { super(paramInt); }
  
  public static l a(int paramInt) {
    int i = (0x7FFFFFFF & paramInt) % h.length;
    l l1 = h[i];
    if (l1 != null && l1.e_() == paramInt)
      return l1; 
    l1 = new l(paramInt);
    h[i] = l1;
    return l1;
  }
  
  public String a_() { return Integer.toString(g()); }
  
  public c b() { return c.f; }
  
  public String e() { return "int"; }
  
  public int e_() { return g(); }
  
  public String toString() {
    int i = g();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("int{0x");
    stringBuilder.append(i.a(i));
    stringBuilder.append(" / ");
    stringBuilder.append(i);
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
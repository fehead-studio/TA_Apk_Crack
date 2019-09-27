package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.i;

public final class g extends n {
  public static final g a = a(false);
  
  private g(char paramChar) { super(paramChar); }
  
  public static g a(char paramChar) { return new g(paramChar); }
  
  public String a_() { return Integer.toString(g()); }
  
  public c b() { return c.c; }
  
  public String e() { return "char"; }
  
  public String toString() {
    int i = g();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("char{0x");
    stringBuilder.append(i.c(i));
    stringBuilder.append(" / ");
    stringBuilder.append(i);
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
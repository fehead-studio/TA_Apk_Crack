package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.i;

public final class u extends n {
  public static final u a = a((short)0);
  
  private u(short paramShort) { super(paramShort); }
  
  public static u a(short paramShort) { return new u(paramShort); }
  
  public String a_() { return Integer.toString(g()); }
  
  public c b() { return c.h; }
  
  public String e() { return "short"; }
  
  public String toString() {
    int i = g();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("short{0x");
    stringBuilder.append(i.c(i));
    stringBuilder.append(" / ");
    stringBuilder.append(i);
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\\\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
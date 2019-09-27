package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.i;

public final class f extends n {
  public static final f a = a((byte)0);
  
  private f(byte paramByte) { super(paramByte); }
  
  public static f a(byte paramByte) { return new f(paramByte); }
  
  public String a_() { return Integer.toString(g()); }
  
  public c b() { return c.b; }
  
  public String e() { return "byte"; }
  
  public String toString() {
    int i = g();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("byte{0x");
    stringBuilder.append(i.e(i));
    stringBuilder.append(" / ");
    stringBuilder.append(i);
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.i;

public final class h extends o {
  public static final h a = new h(Double.doubleToLongBits(0.0D));
  
  public static final h b = new h(Double.doubleToLongBits(1.0D));
  
  private h(long paramLong) { super(paramLong); }
  
  public static h a(long paramLong) { return new h(paramLong); }
  
  public String a_() { return Double.toString(Double.longBitsToDouble(h())); }
  
  public c b() { return c.d; }
  
  public String e() { return "double"; }
  
  public String toString() {
    long l = h();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("double{0x");
    stringBuilder.append(i.a(l));
    stringBuilder.append(" / ");
    stringBuilder.append(Double.longBitsToDouble(l));
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
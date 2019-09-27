package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.d.b;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.i;

public final class p {
  private final int a;
  
  private final c b;
  
  private final e c;
  
  private final e d;
  
  private final int e;
  
  private final boolean f;
  
  private final String g;
  
  public p(int paramInt1, c paramc, e parame, int paramInt2, String paramString) { this(paramInt1, paramc, parame, b.a, paramInt2, false, paramString); }
  
  public p(int paramInt1, c paramc, e parame1, e parame2, int paramInt2, boolean paramBoolean, String paramString) {
    if (paramc == null)
      throw new NullPointerException("result == null"); 
    if (parame1 == null)
      throw new NullPointerException("sources == null"); 
    if (parame2 == null)
      throw new NullPointerException("exceptions == null"); 
    if (paramInt2 < 1 || paramInt2 > 6)
      throw new IllegalArgumentException("bogus branchingness"); 
    if (parame2.a() != 0 && paramInt2 != 6)
      throw new IllegalArgumentException("exceptions / branchingness mismatch"); 
    this.a = paramInt1;
    this.b = paramc;
    this.c = parame1;
    this.d = parame2;
    this.e = paramInt2;
    this.f = paramBoolean;
    this.g = paramString;
  }
  
  public p(int paramInt, c paramc, e parame1, e parame2, String paramString) { this(paramInt, paramc, parame1, parame2, 6, false, paramString); }
  
  public p(int paramInt, c paramc, e parame, String paramString) { this(paramInt, paramc, parame, b.a, 1, false, paramString); }
  
  public p(int paramInt, e parame1, e parame2) { this(paramInt, c.i, parame1, parame2, 6, true, null); }
  
  public int a() { return this.a; }
  
  public int b() { return this.e; }
  
  public boolean c() { return this.f; }
  
  public boolean d() {
    int i = this.a;
    if (i != 14 && i != 16)
      switch (i) {
        default:
          return false;
        case 20:
        case 21:
        case 22:
          break;
      }  
    return true;
  }
  
  public String e() { return (this.g != null) ? this.g : toString(); }
  
  public boolean equals(Object paramObject) {
    if (this == paramObject)
      return true; 
    if (!(paramObject instanceof p))
      return false; 
    paramObject = (p)paramObject;
    return (this.a == paramObject.a && this.e == paramObject.e && this.b == paramObject.b && this.c.equals(paramObject.c) && this.d.equals(paramObject.d));
  }
  
  public final boolean f() { return (this.d.a() != 0); }
  
  public int hashCode() { return (((this.a * 31 + this.e) * 31 + this.b.hashCode()) * 31 + this.c.hashCode()) * 31 + this.d.hashCode(); }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer(40);
    stringBuffer.append("Rop{");
    stringBuffer.append(l.a(this.a));
    if (this.b != c.i) {
      stringBuffer.append(" ");
      stringBuffer.append(this.b);
    } else {
      stringBuffer.append(" .");
    } 
    stringBuffer.append(" <-");
    int i = this.c.a();
    boolean bool = false;
    if (i == 0) {
      stringBuffer.append(" .");
    } else {
      for (byte b1 = 0; b1 < i; b1++) {
        stringBuffer.append(' ');
        stringBuffer.append(this.c.a(b1));
      } 
    } 
    if (this.f)
      stringBuffer.append(" call"); 
    i = this.d.a();
    if (i != 0) {
      stringBuffer.append(" throws");
      for (byte b1 = bool; b1 < i; b1++) {
        stringBuffer.append(' ');
        if (this.d.a(b1) == c.r) {
          stringBuffer.append("<any>");
        } else {
          stringBuffer.append(this.d.a(b1));
        } 
      } 
    } else {
      StringBuilder stringBuilder;
      switch (this.e) {
        default:
          stringBuilder = new StringBuilder();
          stringBuilder.append(" ");
          stringBuilder.append(i.e(this.e));
          str = stringBuilder.toString();
          stringBuffer.append(str);
        case 5:
          str = " switches";
          stringBuffer.append(str);
        case 4:
          str = " ifs";
          stringBuffer.append(str);
        case 3:
          str = " gotos";
          stringBuffer.append(str);
        case 2:
          str = " returns";
          stringBuffer.append(str);
        case 1:
          break;
      } 
      String str = " flows";
      stringBuffer.append(str);
    } 
    stringBuffer.append('}');
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
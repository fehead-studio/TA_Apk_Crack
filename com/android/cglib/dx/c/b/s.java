package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.d.i;

public final class s {
  public static final s a = new s(null, -1, -1);
  
  private final v b;
  
  private final int c;
  
  private final int d;
  
  public s(v paramv, int paramInt1, int paramInt2) {
    if (paramInt1 < -1)
      throw new IllegalArgumentException("address < -1"); 
    if (paramInt2 < -1)
      throw new IllegalArgumentException("line < -1"); 
    this.b = paramv;
    this.c = paramInt1;
    this.d = paramInt2;
  }
  
  public int a() { return this.d; }
  
  public boolean a(s params) { return (this.d == params.d); }
  
  public boolean b(s params) { return (this.d == params.d && (this.b == params.b || (this.b != null && this.b.equals(params.b)))); }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof s))
      return false; 
    if (this == paramObject)
      return true; 
    paramObject = (s)paramObject;
    return (this.c == paramObject.c && b(paramObject));
  }
  
  public int hashCode() { return this.b.hashCode() + this.c + this.d; }
  
  public String toString() {
    String str;
    StringBuffer stringBuffer = new StringBuffer(50);
    if (this.b != null) {
      stringBuffer.append(this.b.a_());
      stringBuffer.append(":");
    } 
    if (this.d >= 0)
      stringBuffer.append(this.d); 
    stringBuffer.append('@');
    if (this.c < 0) {
      str = "????";
    } else {
      str = i.c(this.c);
    } 
    stringBuffer.append(str);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
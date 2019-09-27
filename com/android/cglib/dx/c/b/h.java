package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.c.v;

public class h extends Object implements Comparable<h> {
  private final v a;
  
  private final v b;
  
  private static int a(v paramv1, v paramv2) { return (paramv1 == paramv2) ? 0 : ((paramv1 == null) ? -1 : ((paramv2 == null) ? 1 : paramv1.a(paramv2))); }
  
  public int a(h paramh) {
    int i = a(this.a, paramh.a);
    return (i != 0) ? i : a(this.b, paramh.b);
  }
  
  public v a() { return this.a; }
  
  public v b() { return this.b; }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = paramObject instanceof h;
    boolean bool1 = false;
    if (!bool2)
      return false; 
    if (a((h)paramObject) == 0)
      bool1 = true; 
    return bool1;
  }
  
  public int hashCode() {
    int i;
    v v1 = this.a;
    int j = 0;
    if (v1 == null) {
      i = 0;
    } else {
      i = this.a.hashCode();
    } 
    if (this.b != null)
      j = this.b.hashCode(); 
    return i * 31 + j;
  }
  
  public String toString() {
    String str;
    if (this.a != null && this.b == null)
      return this.a.f(); 
    if (this.a == null && this.b == null)
      return ""; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("[");
    if (this.a == null) {
      str = "";
    } else {
      str = this.a.f();
    } 
    stringBuilder.append(str);
    stringBuilder.append("|");
    if (this.b == null) {
      str = "";
    } else {
      str = this.b.f();
    } 
    stringBuilder.append(str);
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
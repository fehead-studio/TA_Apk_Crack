package com.android.cglib.dx.c.a;

import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.v;

public final class d extends Object implements Comparable<d> {
  private final v a;
  
  private final a b;
  
  public int a(d paramd) {
    int i = this.a.a(paramd.a);
    return (i != 0) ? i : this.b.a(paramd.b);
  }
  
  public v a() { return this.a; }
  
  public a b() { return this.b; }
  
  public boolean equals(Object paramObject) {
    boolean bool = paramObject instanceof d;
    boolean bool1 = false;
    if (!bool)
      return false; 
    paramObject = (d)paramObject;
    bool = bool1;
    if (this.a.equals(paramObject.a)) {
      bool = bool1;
      if (this.b.equals(paramObject.b))
        bool = true; 
    } 
    return bool;
  }
  
  public int hashCode() { return this.a.hashCode() * 31 + this.b.hashCode(); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.a.a_());
    stringBuilder.append(":");
    stringBuilder.append(this.b);
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
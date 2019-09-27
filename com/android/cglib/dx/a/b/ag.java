package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.g;

public abstract class ag extends x implements Comparable<ag> {
  private final int a;
  
  private int b;
  
  private ak c;
  
  private int d;
  
  public ag(int paramInt1, int paramInt2) {
    ak.a(paramInt1);
    if (paramInt2 < -1)
      throw new IllegalArgumentException("writeSize < -1"); 
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = null;
    this.d = -1;
  }
  
  public static int b(ag paramag) { return (paramag == null) ? 0 : paramag.e(); }
  
  protected int a(ag paramag) { throw new UnsupportedOperationException("unsupported"); }
  
  public final void a(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("writeSize < 0"); 
    if (this.b >= 0)
      throw new UnsupportedOperationException("writeSize already set"); 
    this.b = paramInt;
  }
  
  protected void a(ak paramak, int paramInt) {}
  
  public final void a(l paraml, a parama) {
    parama.h(this.a);
    try {
      if (this.b < 0)
        throw new UnsupportedOperationException("writeSize is unknown"); 
      parama.a(e());
      a_(paraml, parama);
      return;
    } catch (RuntimeException paraml) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("...while writing ");
      stringBuilder.append(this);
      throw g.a(paraml, stringBuilder.toString());
    } 
  }
  
  protected abstract void a_(l paraml, a parama);
  
  public final int b(ak paramak, int paramInt) {
    if (paramak == null)
      throw new NullPointerException("addedTo == null"); 
    if (paramInt < 0)
      throw new IllegalArgumentException("offset < 0"); 
    if (this.c != null)
      throw new RuntimeException("already written"); 
    int i = this.a - 1;
    paramInt = paramInt + i & (i ^ 0xFFFFFFFF);
    this.c = paramak;
    this.d = paramInt;
    a(paramak, paramInt);
    return paramInt;
  }
  
  public abstract String b();
  
  public final int b_() {
    if (this.b < 0)
      throw new UnsupportedOperationException("writeSize is unknown"); 
    return this.b;
  }
  
  public final int c(ag paramag) {
    if (this == paramag)
      return 0; 
    y y1 = a();
    y y2 = paramag.a();
    return (y1 != y2) ? y1.compareTo(y2) : a(paramag);
  }
  
  public final int e() {
    if (this.d < 0)
      throw new RuntimeException("offset not yet known"); 
    return this.c.c(this.d);
  }
  
  public final boolean equals(Object paramObject) {
    if (this == paramObject)
      return true; 
    paramObject = (ag)paramObject;
    return (a() != paramObject.a()) ? false : ((a(paramObject) == 0));
  }
  
  public final int f() { return this.a; }
  
  public final String g() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append('[');
    stringBuilder.append(Integer.toHexString(e()));
    stringBuilder.append(']');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
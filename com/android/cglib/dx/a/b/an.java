package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;

public final class an extends w implements Comparable {
  private final v a;
  
  private am b;
  
  public an(v paramv) {
    if (paramv == null)
      throw new NullPointerException("value == null"); 
    this.a = paramv;
    this.b = null;
  }
  
  public y a() { return y.b; }
  
  public void a(l paraml) {
    if (this.b == null) {
      af af = paraml.c();
      this.b = new am(this.a);
      af.a(this.b);
    } 
  }
  
  public void a(l paraml, a parama) {
    int i = this.b.e();
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(h());
      stringBuilder.append(' ');
      stringBuilder.append(this.a.a(100));
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  string_data_off: ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(i);
  }
  
  public int b_() { return 4; }
  
  public v c() { return this.a; }
  
  public int compareTo(Object paramObject) {
    paramObject = (an)paramObject;
    return this.a.a(paramObject.a);
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof an))
      return false; 
    paramObject = (an)paramObject;
    return this.a.equals(paramObject.a);
  }
  
  public int hashCode() { return this.a.hashCode(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
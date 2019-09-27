package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.r;

public final class ac extends Object implements r, Comparable<ac> {
  private final s a;
  
  private b b;
  
  public int a(ac paramac) { return this.a.a(paramac.a); }
  
  public void a(l paraml) {
    ae ae = paraml.m();
    af af = paraml.d();
    ae.a(this.a);
    this.b = (b)af.b(this.b);
  }
  
  public void a(l paraml, a parama) {
    int i = paraml.m().b(this.a);
    int j = this.b.e();
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("    ");
      stringBuilder.append(this.a.a_());
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("      method_idx:      ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("      annotations_off: ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(i);
    parama.d(j);
  }
  
  public String a_() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.a.a_());
    stringBuilder.append(": ");
    stringBuilder.append(this.b);
    return stringBuilder.toString();
  }
  
  public boolean equals(Object paramObject) { return !(paramObject instanceof ac) ? false : this.a.equals(((ac)paramObject).a); }
  
  public int hashCode() { return this.a.hashCode(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
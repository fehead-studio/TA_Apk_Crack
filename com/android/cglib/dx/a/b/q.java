package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.j;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.r;

public final class q extends Object implements r, Comparable<q> {
  private final j a;
  
  private b b;
  
  public int a(q paramq) { return this.a.a(paramq.a); }
  
  public void a(l paraml) {
    s s = paraml.l();
    af af = paraml.d();
    s.a(this.a);
    this.b = (b)af.b(this.b);
  }
  
  public void a(l paraml, a parama) {
    int i = paraml.l().b(this.a);
    int k = this.b.e();
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("    ");
      stringBuilder.append(this.a.a_());
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("      field_idx:       ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("      annotations_off: ");
      stringBuilder.append(i.a(k));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(i);
    parama.d(k);
  }
  
  public String a_() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.a.a_());
    stringBuilder.append(": ");
    stringBuilder.append(this.b);
    return stringBuilder.toString();
  }
  
  public boolean equals(Object paramObject) { return !(paramObject instanceof q) ? false : this.a.equals(((q)paramObject).a); }
  
  public int hashCode() { return this.a.hashCode(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
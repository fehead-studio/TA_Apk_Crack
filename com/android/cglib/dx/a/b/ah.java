package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.r;
import java.util.Iterator;

public final class ah extends Object implements r, Comparable<ah> {
  private final s a;
  
  private final at<c> b;
  
  public int a(ah paramah) { return this.a.a(paramah.a); }
  
  public void a(l paraml) {
    ae ae = paraml.m();
    af af = paraml.d();
    ae.a(this.a);
    af.a(this.b);
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
    Iterator iterator = this.b.c().iterator();
    boolean bool = true;
    while (iterator.hasNext()) {
      c c = (c)iterator.next();
      if (bool) {
        bool = false;
      } else {
        stringBuilder.append(", ");
      } 
      stringBuilder.append(c.b());
    } 
    return stringBuilder.toString();
  }
  
  public boolean equals(Object paramObject) { return !(paramObject instanceof ah) ? false : this.a.equals(((ah)paramObject).a); }
  
  public int hashCode() { return this.a.hashCode(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
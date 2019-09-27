package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public final class d extends ag {
  private b a = null;
  
  private ArrayList<q> b = null;
  
  private ArrayList<ac> c = null;
  
  private ArrayList<ah> d = null;
  
  public d() { super(4, -1); }
  
  private static int a(ArrayList<?> paramArrayList) { return (paramArrayList == null) ? 0 : paramArrayList.size(); }
  
  public int a(ag paramag) {
    if (!d())
      throw new UnsupportedOperationException("uninternable instance"); 
    paramag = (d)paramag;
    return this.a.c(paramag.a);
  }
  
  public y a() { return y.r; }
  
  protected void a(ak paramak, int paramInt) { a((a(this.b) + a(this.c) + a(this.d)) * 8 + 16); }
  
  public void a(l paraml) {
    af af = paraml.d();
    if (this.a != null)
      this.a = (b)af.b(this.a); 
    if (this.b != null) {
      Iterator iterator = this.b.iterator();
      while (iterator.hasNext())
        ((q)iterator.next()).a(paraml); 
    } 
    if (this.c != null) {
      Iterator iterator = this.c.iterator();
      while (iterator.hasNext())
        ((ac)iterator.next()).a(paraml); 
    } 
    if (this.d != null) {
      Iterator iterator = this.d.iterator();
      while (iterator.hasNext())
        ((ah)iterator.next()).a(paraml); 
    } 
  }
  
  protected void a_(l paraml, a parama) {
    boolean bool = parama.a();
    int i = ag.b(this.a);
    int j = a(this.b);
    int k = a(this.c);
    int m = a(this.d);
    if (bool) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(" annotations directory");
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  class_annotations_off: ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  fields_size:           ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  methods_size:          ");
      stringBuilder.append(i.a(k));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  parameters_size:       ");
      stringBuilder.append(i.a(m));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(i);
    parama.d(j);
    parama.d(k);
    parama.d(m);
    if (j != 0) {
      Collections.sort(this.b);
      if (bool)
        parama.a(0, "  fields:"); 
      Iterator iterator = this.b.iterator();
      while (iterator.hasNext())
        ((q)iterator.next()).a(paraml, parama); 
    } 
    if (k != 0) {
      Collections.sort(this.c);
      if (bool)
        parama.a(0, "  methods:"); 
      Iterator iterator = this.c.iterator();
      while (iterator.hasNext())
        ((ac)iterator.next()).a(paraml, parama); 
    } 
    if (m != 0) {
      Collections.sort(this.d);
      if (bool)
        parama.a(0, "  parameters:"); 
      Iterator iterator = this.d.iterator();
      while (iterator.hasNext())
        ((ah)iterator.next()).a(paraml, parama); 
    } 
  }
  
  public String b() { throw new RuntimeException("unsupported"); }
  
  public boolean c() { return (this.a == null && this.b == null && this.c == null && this.d == null); }
  
  public boolean d() { return (this.a != null && this.b == null && this.c == null && this.d == null); }
  
  public int hashCode() { return (this.a == null) ? 0 : this.a.hashCode(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
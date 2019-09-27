package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

public final class aq extends as {
  private final TreeMap<c, ap> a = new TreeMap();
  
  public aq(l paraml) { super("type_ids", paraml, 4); }
  
  public ap a(w paramw) {
    if (paramw == null)
      throw new NullPointerException("type == null"); 
    j();
    c c = paramw.f();
    ap ap2 = (ap)this.a.get(c);
    ap ap1 = ap2;
    if (ap2 == null) {
      ap1 = new ap(paramw);
      this.a.put(c, ap1);
    } 
    return ap1;
  }
  
  public ap a(c paramc) {
    if (paramc == null)
      throw new NullPointerException("type == null"); 
    j();
    ap ap2 = (ap)this.a.get(paramc);
    ap ap1 = ap2;
    if (ap2 == null) {
      ap1 = new ap(new w(paramc));
      this.a.put(paramc, ap1);
    } 
    return ap1;
  }
  
  public w a(a parama) {
    if (parama == null)
      throw new NullPointerException("cst == null"); 
    i();
    c c = ((w)parama).f();
    StringBuilder stringBuilder = (w)this.a.get(c);
    if (stringBuilder == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("not found: ");
      stringBuilder.append(parama);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    return stringBuilder;
  }
  
  public Collection<? extends x> a() { return this.a.values(); }
  
  public int b(w paramw) {
    if (paramw == null)
      throw new NullPointerException("type == null"); 
    return b(paramw.f());
  }
  
  public int b(c paramc) {
    if (paramc == null)
      throw new NullPointerException("type == null"); 
    i();
    StringBuilder stringBuilder = (ap)this.a.get(paramc);
    if (stringBuilder == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("not found: ");
      stringBuilder.append(paramc);
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    return stringBuilder.g();
  }
  
  protected void b() {
    Iterator iterator = a().iterator();
    for (byte b = 0; iterator.hasNext(); b++)
      ((ap)iterator.next()).a(b); 
  }
  
  public void b(a parama) {
    int i;
    i();
    int j = this.a.size();
    if (j == 0) {
      i = 0;
    } else {
      i = g();
    } 
    if (j > 65536)
      throw new UnsupportedOperationException("too many type ids"); 
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("type_ids_size:   ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("type_ids_off:    ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(j);
    parama.d(i);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
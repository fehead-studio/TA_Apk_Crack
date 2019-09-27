package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.d.a;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

public final class aj extends as {
  private final TreeMap<a, ai> a = new TreeMap();
  
  public aj(l paraml) { super("proto_ids", paraml, 4); }
  
  public ai a(a parama) {
    if (parama == null)
      throw new NullPointerException("prototype == null"); 
    j();
    ai ai2 = (ai)this.a.get(parama);
    ai ai1 = ai2;
    if (ai2 == null) {
      ai1 = new ai(parama);
      this.a.put(parama, ai1);
    } 
    return ai1;
  }
  
  public Collection<? extends x> a() { return this.a.values(); }
  
  public int b(a parama) {
    if (parama == null)
      throw new NullPointerException("prototype == null"); 
    i();
    ai ai = (ai)this.a.get(parama);
    if (ai == null)
      throw new IllegalArgumentException("not found"); 
    return ai.g();
  }
  
  protected void b() {
    Iterator iterator = a().iterator();
    for (byte b = 0; iterator.hasNext(); b++)
      ((ai)iterator.next()).a(b); 
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
      throw new UnsupportedOperationException("too many proto ids"); 
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("proto_ids_size:  ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("proto_ids_off:   ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(j);
    parama.d(i);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
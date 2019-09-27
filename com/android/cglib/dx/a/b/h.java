package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

public final class h extends as {
  private final TreeMap<c, g> a = new TreeMap();
  
  private ArrayList<g> b = null;
  
  public h(l paraml) { super("class_defs", paraml, 4); }
  
  private int a(c paramc, int paramInt1, int paramInt2) {
    g g = (g)this.a.get(paramc);
    int i = paramInt1;
    if (g != null) {
      StringBuilder stringBuilder;
      if (g.f())
        return paramInt1; 
      if (paramInt2 < 0) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("class circularity with ");
        stringBuilder.append(paramc);
        throw new RuntimeException(stringBuilder.toString());
      } 
      i = paramInt2 - 1;
      w w = stringBuilder.d();
      paramInt2 = paramInt1;
      if (w != null)
        paramInt2 = a(w.f(), paramInt1, i); 
      e e = stringBuilder.e();
      int j = e.a();
      for (paramInt1 = 0; paramInt1 < j; paramInt1++)
        paramInt2 = a(e.a(paramInt1), paramInt2, i); 
      stringBuilder.a(paramInt2);
      this.b.add(stringBuilder);
      i = paramInt2 + 1;
    } 
    return i;
  }
  
  public Collection<? extends x> a() { return (this.b != null) ? this.b : this.a.values(); }
  
  public void a(g paramg) {
    try {
      StringBuilder stringBuilder;
      c c = paramg.c().f();
      j();
      if (this.a.get(c) != null) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("already added: ");
        stringBuilder.append(c);
        throw new IllegalArgumentException(stringBuilder.toString());
      } 
      this.a.put(c, stringBuilder);
      return;
    } catch (NullPointerException paramg) {
      throw new NullPointerException("clazz == null");
    } 
  }
  
  public void a(a parama) {
    int i;
    i();
    int j = this.a.size();
    if (j == 0) {
      i = 0;
    } else {
      i = g();
    } 
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("class_defs_size: ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("class_defs_off:  ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(j);
    parama.d(i);
  }
  
  protected void b() {
    int j = this.a.size();
    this.b = new ArrayList(j);
    Iterator iterator = this.a.keySet().iterator();
    for (int i = 0; iterator.hasNext(); i = a((c)iterator.next(), i, j - i));
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
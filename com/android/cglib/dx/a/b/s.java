package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.j;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.Collection;
import java.util.TreeMap;

public final class s extends ab {
  private final TreeMap<j, r> a = new TreeMap();
  
  public s(l paraml) { super("field_ids", paraml); }
  
  public r a(j paramj) {
    if (paramj == null)
      throw new NullPointerException("field == null"); 
    j();
    r r2 = (r)this.a.get(paramj);
    r r1 = r2;
    if (r2 == null) {
      r1 = new r(paramj);
      this.a.put(paramj, r1);
    } 
    return r1;
  }
  
  public w a(a parama) {
    if (parama == null)
      throw new NullPointerException("cst == null"); 
    i();
    w w = (w)this.a.get((j)parama);
    if (w == null)
      throw new IllegalArgumentException("not found"); 
    return w;
  }
  
  public Collection<? extends x> a() { return this.a.values(); }
  
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
      stringBuilder.append("field_ids_size:  ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("field_ids_off:   ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(j);
    parama.d(i);
  }
  
  public int b(j paramj) {
    if (paramj == null)
      throw new NullPointerException("ref == null"); 
    i();
    r r = (r)this.a.get(paramj);
    if (r == null)
      throw new IllegalArgumentException("not found"); 
    return r.g();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
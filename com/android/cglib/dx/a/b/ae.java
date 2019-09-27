package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.d;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.Collection;
import java.util.TreeMap;

public final class ae extends ab {
  private final TreeMap<d, ad> a = new TreeMap();
  
  public ae(l paraml) { super("method_ids", paraml); }
  
  public ad a(d paramd) {
    if (paramd == null)
      throw new NullPointerException("method == null"); 
    j();
    ad ad2 = (ad)this.a.get(paramd);
    ad ad1 = ad2;
    if (ad2 == null) {
      ad1 = new ad(paramd);
      this.a.put(paramd, ad1);
    } 
    return ad1;
  }
  
  public w a(a parama) {
    if (parama == null)
      throw new NullPointerException("cst == null"); 
    i();
    w w = (w)this.a.get((d)parama);
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
      stringBuilder.append("method_ids_size: ");
      stringBuilder.append(i.a(j));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("method_ids_off:  ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(j);
    parama.d(i);
  }
  
  public int b(d paramd) {
    if (paramd == null)
      throw new NullPointerException("ref == null"); 
    i();
    ad ad = (ad)this.a.get(paramd);
    if (ad == null)
      throw new IllegalArgumentException("not found"); 
    return ad.g();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
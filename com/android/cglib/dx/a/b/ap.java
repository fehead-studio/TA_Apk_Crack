package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;

public final class ap extends v {
  public ap(w paramw) { super(paramw); }
  
  public y a() { return y.c; }
  
  public void a(l paraml) { paraml.g().a(e().g()); }
  
  public void a(l paraml, a parama) {
    v v1 = e().g();
    int i = paraml.g().b(v1);
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(h());
      stringBuilder.append(' ');
      stringBuilder.append(v1.a_());
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  descriptor_idx: ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(i);
  }
  
  public int b_() { return 4; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
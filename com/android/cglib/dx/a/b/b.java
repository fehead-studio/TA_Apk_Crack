package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.a.c;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;

public final class b extends ag {
  private final c a;
  
  private final a[] b;
  
  protected int a(ag paramag) {
    paramag = (b)paramag;
    return this.a.a(paramag.a);
  }
  
  public y a() { return y.k; }
  
  protected void a(ak paramak, int paramInt) { a.a(this.b); }
  
  public void a(l paraml) {
    af af = paraml.n();
    int i = this.b.length;
    for (byte b1 = 0; b1 < i; b1++)
      this.b[b1] = (a)af.b(this.b[b1]); 
  }
  
  protected void a_(l paraml, a parama) {
    boolean bool = parama.a();
    int i = this.b.length;
    byte b1 = 0;
    if (bool) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(" annotation set");
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  size: ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(i);
    while (b1 < i) {
      int j = this.b[b1].e();
      if (bool) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("  entries[");
        stringBuilder.append(Integer.toHexString(b1));
        stringBuilder.append("]: ");
        stringBuilder.append(i.a(j));
        parama.a(4, stringBuilder.toString());
        this.b[b1].a(parama, "    ");
      } 
      parama.d(j);
      b1++;
    } 
  }
  
  public String b() { return this.a.toString(); }
  
  public int hashCode() { return this.a.hashCode(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
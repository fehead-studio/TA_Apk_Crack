package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.a.a;
import com.android.cglib.dx.c.a.b;
import com.android.cglib.dx.c.a.d;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.d;
import java.util.Arrays;
import java.util.Comparator;

public final class a extends ag {
  private static final a a = new a(null);
  
  private final a b;
  
  private ap c;
  
  private byte[] d;
  
  public static void a(a[] paramArrayOfa) { Arrays.sort(paramArrayOfa, a); }
  
  protected int a(ag paramag) {
    paramag = (a)paramag;
    return this.b.a(paramag.b);
  }
  
  public y a() { return y.p; }
  
  protected void a(ak paramak, int paramInt) {
    d d1 = new d();
    (new au(paramak.e(), d1)).a(this.b, false);
    this.d = d1.f();
    a(this.d.length + 1);
  }
  
  public void a(l paraml) {
    this.c = paraml.j().a(this.b.b());
    au.a(paraml, this.b);
  }
  
  public void a(a parama, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramString);
    stringBuilder.append("visibility: ");
    stringBuilder.append(this.b.c().a_());
    parama.a(0, stringBuilder.toString());
    stringBuilder = new StringBuilder();
    stringBuilder.append(paramString);
    stringBuilder.append("type: ");
    stringBuilder.append(this.b.b().a_());
    parama.a(0, stringBuilder.toString());
    for (d d1 : this.b.d()) {
      v v = d1.a();
      a a1 = d1.b();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(paramString);
      stringBuilder1.append(v.a_());
      stringBuilder1.append(": ");
      stringBuilder1.append(au.b(a1));
      parama.a(0, stringBuilder1.toString());
    } 
  }
  
  protected void a_(l paraml, a parama) {
    boolean bool = parama.a();
    b b1 = this.b.c();
    if (bool) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(" annotation");
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  visibility: VISBILITY_");
      stringBuilder.append(b1);
      parama.a(1, stringBuilder.toString());
    } 
    switch (null.a[b1.ordinal()]) {
      default:
        throw new RuntimeException("shouldn't happen");
      case 3:
        parama.b(2);
        break;
      case 2:
        parama.b(1);
        break;
      case 1:
        parama.b(0);
        break;
    } 
    if (bool) {
      (new au(paraml, parama)).a(this.b, true);
      return;
    } 
    parama.a(this.d);
  }
  
  public String b() { return this.b.a_(); }
  
  public int hashCode() { return this.b.hashCode(); }
  
  private static class a extends Object implements Comparator<a> {
    private a() {}
    
    public int a(a param1a1, a param1a2) {
      int i = a.a(param1a1).g();
      int j = a.a(param1a2).g();
      return (i < j) ? -1 : ((i > j) ? 1 : 0);
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
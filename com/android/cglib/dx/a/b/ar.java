package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.d.b;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;

public final class ar extends ag {
  private final e a;
  
  public ar(e parame) {
    super(4, parame.a() * 2 + 4);
    this.a = parame;
  }
  
  protected int a(ag paramag) { return b.a(this.a, ((ar)paramag).a); }
  
  public y a() { return y.i; }
  
  public void a(l paraml) {
    aq aq = paraml.j();
    int i = this.a.a();
    for (byte b = 0; b < i; b++)
      aq.a(this.a.a(b)); 
  }
  
  protected void a_(l paraml, a parama) {
    aq aq = paraml.j();
    int i = this.a.a();
    boolean bool1 = parama.a();
    boolean bool = false;
    if (bool1) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(" type_list");
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  size: ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
      for (byte b1 = 0; b1 < i; b1++) {
        c c = this.a.a(b1);
        int j = aq.b(c);
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("  ");
        stringBuilder1.append(i.c(j));
        stringBuilder1.append(" // ");
        stringBuilder1.append(c.a_());
        parama.a(2, stringBuilder1.toString());
      } 
    } 
    parama.d(i);
    for (byte b = bool; b < i; b++)
      parama.c(aq.b(this.a.a(b))); 
  }
  
  public String b() { throw new RuntimeException("unsupported"); }
  
  public e c() { return this.a; }
  
  public int hashCode() { return b.b(this.a); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
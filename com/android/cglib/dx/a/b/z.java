package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.ArrayList;
import java.util.Iterator;

public final class z extends ag {
  private final y a;
  
  private final ak b;
  
  private final x c;
  
  private final x d;
  
  private final int e;
  
  private z(ak paramak) {
    super(4, 12);
    if (paramak == null)
      throw new NullPointerException("section == null"); 
    this.a = y.h;
    this.b = paramak;
    this.c = null;
    this.d = null;
    this.e = 1;
  }
  
  private z(y paramy, ak paramak, x paramx1, x paramx2, int paramInt) {
    super(4, 12);
    if (paramy == null)
      throw new NullPointerException("type == null"); 
    if (paramak == null)
      throw new NullPointerException("section == null"); 
    if (paramx1 == null)
      throw new NullPointerException("firstItem == null"); 
    if (paramx2 == null)
      throw new NullPointerException("lastItem == null"); 
    if (paramInt <= 0)
      throw new IllegalArgumentException("itemCount <= 0"); 
    this.a = paramy;
    this.b = paramak;
    this.c = paramx1;
    this.d = paramx2;
    this.e = paramInt;
  }
  
  public static void a(ak[] paramArrayOfak, af paramaf) {
    if (paramArrayOfak == null)
      throw new NullPointerException("sections == null"); 
    if (paramaf.a().size() != 0)
      throw new IllegalArgumentException("mapSection.items().size() != 0"); 
    ArrayList arrayList = new ArrayList(50);
    int i = paramArrayOfak.length;
    for (byte b1 = 0; b1 < i; b1++) {
      ak ak1 = paramArrayOfak[b1];
      Iterator iterator = ak1.a().iterator();
      y y1 = null;
      x x1 = y1;
      x x2 = x1;
      byte b2 = 0;
      while (iterator.hasNext()) {
        x x3 = (x)iterator.next();
        y y3 = x3.a();
        y y2 = y1;
        x x4 = x1;
        boolean bool = b2;
        if (y3 != y1) {
          if (b2)
            arrayList.add(new z(y1, ak1, x1, x2, b2)); 
          x4 = x3;
          y2 = y3;
          bool = false;
        } 
        b2 = bool + true;
        x2 = x3;
        y1 = y2;
        x1 = x4;
      } 
      if (b2 != 0) {
        x1 = new z(y1, ak1, x1, x2, b2);
      } else if (ak1 == paramaf) {
        x1 = new z(paramaf);
      } else {
        continue;
      } 
      arrayList.add(x1);
      continue;
    } 
    paramaf.a(new at(y.h, arrayList));
  }
  
  public y a() { return y.s; }
  
  public void a(l paraml) {}
  
  protected void a_(l paraml, a parama) {
    int i;
    int j = this.a.b();
    if (this.c == null) {
      i = this.b.g();
    } else {
      i = this.b.a(this.c);
    } 
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(' ');
      stringBuilder.append(this.a.c());
      stringBuilder.append(" map");
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  type:   ");
      stringBuilder.append(i.c(j));
      stringBuilder.append(" // ");
      stringBuilder.append(this.a.toString());
      parama.a(2, stringBuilder.toString());
      parama.a(2, "  unused: 0");
      stringBuilder = new StringBuilder();
      stringBuilder.append("  size:   ");
      stringBuilder.append(i.a(this.e));
      parama.a(4, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  offset: ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.c(j);
    parama.c(0);
    parama.d(this.e);
    parama.d(i);
  }
  
  public final String b() { return toString(); }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer(100);
    stringBuffer.append(getClass().getName());
    stringBuffer.append('{');
    stringBuffer.append(this.b.toString());
    stringBuffer.append(' ');
    stringBuffer.append(this.a.a_());
    stringBuffer.append('}');
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
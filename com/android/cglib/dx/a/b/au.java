package com.android.cglib.dx.a.b;

import com.android.cglib.dx.c.a.a;
import com.android.cglib.dx.c.a.d;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.b;
import com.android.cglib.dx.c.c.c;
import com.android.cglib.dx.c.c.e;
import com.android.cglib.dx.c.c.h;
import com.android.cglib.dx.c.c.i;
import com.android.cglib.dx.c.c.j;
import com.android.cglib.dx.c.c.k;
import com.android.cglib.dx.c.c.p;
import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.Collection;
import java.util.Iterator;

public final class au {
  private final l a;
  
  private final a b;
  
  public au(l paraml, a parama) {
    if (paraml == null)
      throw new NullPointerException("file == null"); 
    if (parama == null)
      throw new NullPointerException("out == null"); 
    this.a = paraml;
    this.b = parama;
  }
  
  private void a(int paramInt, long paramLong) {
    int i = 65 - Long.numberOfLeadingZeros(paramLong ^ paramLong >> 63) + 7 >> 3;
    this.b.b(paramInt | i - 1 << 5);
    for (paramInt = i; paramInt > 0; paramInt--) {
      this.b.b((byte)(int)paramLong);
      paramLong >>= 8;
    } 
  }
  
  public static void a(l paraml, a parama) {
    aq aq = paraml.j();
    ao ao = paraml.g();
    aq.a(parama.b());
    for (d d : parama.d()) {
      ao.a(d.a());
      a(paraml, d.b());
    } 
  }
  
  public static void a(l paraml, a parama) {
    c.a a1;
    if (parama instanceof b) {
      a(paraml, ((b)parama).b());
      return;
    } 
    if (parama instanceof c) {
      a1 = ((c)parama).b();
      int i = a1.a();
      for (byte b1 = 0; b1 < i; b1++)
        a(paraml, a1.a(b1)); 
    } else {
      paraml.a(a1);
    } 
  }
  
  public static String b(a parama) {
    if (c(parama) == 30)
      return "null"; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(parama.e());
    stringBuilder.append(' ');
    stringBuilder.append(parama.a_());
    return stringBuilder.toString();
  }
  
  private void b(int paramInt, long paramLong) {
    int j = 64 - Long.numberOfLeadingZeros(paramLong);
    int i = j;
    if (j == 0)
      i = 1; 
    i = i + 7 >> 3;
    this.b.b(paramInt | i - 1 << 5);
    for (paramInt = i; paramInt > 0; paramInt--) {
      this.b.b((byte)(int)paramLong);
      paramLong >>= 8;
    } 
  }
  
  private static int c(a parama) {
    if (parama instanceof com.android.cglib.dx.c.c.f)
      return 0; 
    if (parama instanceof com.android.cglib.dx.c.c.u)
      return 2; 
    if (parama instanceof com.android.cglib.dx.c.c.g)
      return 3; 
    if (parama instanceof com.android.cglib.dx.c.c.l)
      return 4; 
    if (parama instanceof com.android.cglib.dx.c.c.q)
      return 6; 
    if (parama instanceof k)
      return 16; 
    if (parama instanceof h)
      return 17; 
    if (parama instanceof v)
      return 23; 
    if (parama instanceof w)
      return 24; 
    if (parama instanceof j)
      return 25; 
    if (parama instanceof s)
      return 26; 
    if (parama instanceof i)
      return 27; 
    if (parama instanceof c)
      return 28; 
    if (parama instanceof b)
      return 29; 
    if (parama instanceof com.android.cglib.dx.c.c.m)
      return 30; 
    if (parama instanceof e)
      return 31; 
    throw new RuntimeException("Shouldn't happen");
  }
  
  private void c(int paramInt, long paramLong) {
    int j = 64 - Long.numberOfTrailingZeros(paramLong);
    int i = j;
    if (j == 0)
      i = 1; 
    i = i + 7 >> 3;
    paramLong >>= 64 - i * 8;
    this.b.b(paramInt | i - 1 << 5);
    for (paramInt = i; paramInt > 0; paramInt--) {
      this.b.b((byte)(int)paramLong);
      paramLong >>= 8;
    } 
  }
  
  public void a(a parama, boolean paramBoolean) {
    boolean bool;
    if (paramBoolean && this.b.a()) {
      bool = true;
    } else {
      bool = false;
    } 
    ao ao = this.a.g();
    aq aq = this.a.j();
    w w = parama.b();
    int i = aq.b(w);
    if (bool) {
      a a1 = this.b;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("  type_idx: ");
      stringBuilder.append(i.a(i));
      stringBuilder.append(" // ");
      stringBuilder.append(w.a_());
      a1.a(stringBuilder.toString());
    } 
    this.b.e(aq.b(parama.b()));
    Collection collection = parama.d();
    i = collection.size();
    if (bool) {
      a a1 = this.b;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("  size: ");
      stringBuilder.append(i.a(i));
      a1.a(stringBuilder.toString());
    } 
    this.b.e(i);
    Iterator iterator = collection.iterator();
    for (i = 0; iterator.hasNext(); i = j) {
      d d = (d)iterator.next();
      v v = d.a();
      int k = ao.b(v);
      a a1 = d.b();
      int j = i;
      if (bool) {
        a a2 = this.b;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("  elements[");
        stringBuilder.append(i);
        stringBuilder.append("]:");
        a2.a(0, stringBuilder.toString());
        j = i + 1;
        a2 = this.b;
        stringBuilder = new StringBuilder();
        stringBuilder.append("    name_idx: ");
        stringBuilder.append(i.a(k));
        stringBuilder.append(" // ");
        stringBuilder.append(v.a_());
        a2.a(stringBuilder.toString());
      } 
      this.b.e(k);
      if (bool) {
        a a2 = this.b;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("    value: ");
        stringBuilder.append(b(a1));
        a2.a(stringBuilder.toString());
      } 
      a(a1);
    } 
    if (bool)
      this.b.c(); 
  }
  
  public void a(a parama) {
    s s;
    int i = c(parama);
    if (i != 0 && i != 6) {
      s s1;
      j j1;
      long l1;
      int j;
      switch (i) {
        default:
          switch (i) {
            default:
              switch (i) {
                default:
                  throw new RuntimeException("Shouldn't happen");
                case 31:
                  j = ((e)parama).g();
                  this.b.b(j << 5 | i);
                  return;
                case 30:
                  this.b.b(i);
                  return;
                case 29:
                  this.b.b(i);
                  a(((b)parama).b(), false);
                  return;
                case 28:
                  this.b.b(i);
                  a((c)parama, false);
                  return;
                case 27:
                  j1 = ((i)parama).f();
                  s = this.a.l();
                  j = s.b(j1);
                  break;
                case 26:
                  j = this.a.m().b((s)s);
                  break;
                case 25:
                  s1 = this.a.l();
                  j1 = (j)s;
                  s = s1;
                  j = s.b(j1);
                  break;
                case 24:
                  j = this.a.j().b((w)s);
                  break;
                case 23:
                  j = this.a.g().b((v)s);
                  break;
              } 
              l1 = j;
              break;
            case 17:
              l1 = ((h)s).h();
              c(i, l1);
              return;
            case 16:
              l1 = ((k)s).h() << 32;
              c(i, l1);
              return;
          } 
          b(i, l1);
          return;
        case 3:
          l1 = ((p)s).h();
          b(i, l1);
          return;
        case 2:
        case 4:
          break;
      } 
    } 
    a(i, ((p)s).h());
  }
  
  public void a(c paramc, boolean paramBoolean) {
    boolean bool;
    byte b1 = 0;
    if (paramBoolean && this.b.a()) {
      bool = true;
    } else {
      bool = false;
    } 
    c.a a1 = paramc.b();
    int i = a1.a();
    if (bool) {
      a a2 = this.b;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("  size: ");
      stringBuilder.append(i.a(i));
      a2.a(stringBuilder.toString());
    } 
    this.b.e(i);
    while (b1 < i) {
      a a2 = a1.a(b1);
      if (bool) {
        a a3 = this.b;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("  [");
        stringBuilder.append(Integer.toHexString(b1));
        stringBuilder.append("] ");
        stringBuilder.append(b(a2));
        a3.a(stringBuilder.toString());
      } 
      a(a2);
      b1++;
    } 
    if (bool)
      this.b.c(); 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
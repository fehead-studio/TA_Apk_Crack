package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.b;
import com.android.cglib.dx.c.b.c;
import com.android.cglib.dx.c.b.q;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.k;
import java.util.ArrayList;
import java.util.HashSet;

public final class y implements b {
  private final q a;
  
  private final int[] b;
  
  private final a c;
  
  public y(q paramq, int[] paramArrayOfInt, a parama) {
    if (paramq == null)
      throw new NullPointerException("method == null"); 
    if (paramArrayOfInt == null)
      throw new NullPointerException("order == null"); 
    if (parama == null)
      throw new NullPointerException("addresses == null"); 
    this.a = paramq;
    this.b = paramArrayOfInt;
    this.c = parama;
  }
  
  private static c a(b paramb, a parama) {
    k k1 = paramb.c();
    int i = k1.a();
    int j = paramb.d();
    e e = paramb.f().i();
    int k = e.a();
    if (k == 0)
      return c.a; 
    if ((j == -1 && i != k) || (j != -1 && (i != k + 1 || j != k1.a(k))))
      throw new RuntimeException("shouldn't happen: weird successors list"); 
    int m = 0;
    j = 0;
    while (true) {
      i = k;
      if (j < k) {
        if (e.a(j).equals(c.o)) {
          i = j + 1;
          break;
        } 
        j++;
        continue;
      } 
      break;
    } 
    c c1 = new c(i);
    for (j = m; j < i; j++)
      c1.a(j, new w(e.a(j)), parama.a(k1.a(j)).f()); 
    c1.e();
    return c1;
  }
  
  private static d.a a(b paramb1, b paramb2, c paramc, a parama) {
    e e1 = parama.b(paramb1);
    e e2 = parama.c(paramb2);
    return new d.a(e1.f(), e2.f(), paramc);
  }
  
  public static d a(q paramq, int[] paramArrayOfInt, a parama) {
    b b1;
    int i = paramArrayOfInt.length;
    c c2 = paramq.a();
    ArrayList arrayList = new ArrayList(i);
    c c1 = c.a;
    byte b3 = 0;
    b b4 = null;
    paramq = b4;
    byte b2;
    for (b2 = 0;; b2++) {
      c c3;
      b b5;
      if (b2 < i) {
        b5 = c2.b(paramArrayOfInt[b2]);
        if (!b5.g())
          continue; 
        c3 = a(b5, parama);
        if (c1.a() != 0) {
          b b6;
          if (c1.equals(c3) && a(b4, b5, parama)) {
            b6 = b5;
          } else {
            if (c1.a() != 0)
              arrayList.add(a(b4, b6, c1, parama)); 
            b b7 = b5;
            b6 = b7;
            c1 = c3;
          } 
          continue;
        } 
      } else {
        break;
      } 
      b4 = b5;
      b1 = b4;
      c1 = c3;
    } 
    if (c1.a() != 0)
      arrayList.add(a(b4, b1, c1, parama)); 
    i = arrayList.size();
    if (i == 0)
      return d.a; 
    d d = new d(i);
    for (b2 = b3; b2 < i; b2++)
      d.a(b2, (d.a)arrayList.get(b2)); 
    d.e();
    return d;
  }
  
  private static boolean a(b paramb1, b paramb2, a parama) {
    if (paramb1 == null)
      throw new NullPointerException("start == null"); 
    if (paramb2 == null)
      throw new NullPointerException("end == null"); 
    int i = parama.b(paramb1).f();
    return (parama.c(paramb2).f() - i <= 65535);
  }
  
  public d a() { return a(this.a, this.b, this.c); }
  
  public boolean b() {
    c c1 = this.a.a();
    int i = c1.a();
    for (byte b1 = 0; b1 < i; b1++) {
      if (c1.a(b1).f().i().a() != 0)
        return true; 
    } 
    return false;
  }
  
  public HashSet<c> c() {
    HashSet hashSet = new HashSet(20);
    c c1 = this.a.a();
    int i = c1.a();
    for (byte b1 = 0; b1 < i; b1++) {
      e e = c1.a(b1).f().i();
      int j = e.a();
      for (byte b2 = 0; b2 < j; b2++)
        hashSet.add(e.a(b2)); 
    } 
    return hashSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
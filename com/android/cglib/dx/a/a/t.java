package com.android.cglib.dx.a.a;

import com.android.cglib.dx.a.b;
import com.android.cglib.dx.c.b.h;
import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.o;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.r;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.f;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;

public final class t {
  private final b a;
  
  private final int b;
  
  private ArrayList<h> c;
  
  private boolean d;
  
  private boolean e;
  
  private int f;
  
  public t(b paramb, int paramInt1, int paramInt2) {
    this.a = paramb;
    this.b = paramInt2;
    this.c = new ArrayList(paramInt1);
    this.f = -1;
    this.d = false;
    this.e = false;
  }
  
  private j a(h paramh, j paramj) {
    while (paramj != null) {
      if (paramj.c().b(paramh))
        return paramj; 
      paramj = k.a(paramj, this.a);
    } 
    return paramj;
  }
  
  private static void a(f paramf, g.a parama) {
    a a1 = paramf.b();
    int i = parama.a(a1);
    if (i >= 0)
      paramf.a(i); 
    if (a1 instanceof r) {
      i = parama.a(((r)a1).g());
      if (i >= 0)
        paramf.b(i); 
    } 
  }
  
  private static void a(HashSet<a> paramHashSet, h paramh) {
    o o;
    if (paramh instanceof f) {
      paramHashSet.add(((f)paramh).b());
      return;
    } 
    if (paramh instanceof q) {
      o = ((q)paramh).b();
      int i = o.b();
      for (byte b1 = 0; b1 < i; b1++)
        a(paramHashSet, o.a(b1)); 
    } else if (o instanceof r) {
      a(paramHashSet, ((r)o).b());
    } 
  }
  
  private static void a(HashSet<a> paramHashSet, m paramm) {
    if (paramm == null)
      return; 
    h h = paramm.g();
    v v1 = h.a();
    v v2 = h.b();
    c c1 = paramm.b();
    if (c1 != c.j)
      paramHashSet.add(w.a(c1)); 
    if (v1 != null)
      paramHashSet.add(v1); 
    if (v2 != null)
      paramHashSet.add(v2); 
  }
  
  private void a(j[] paramArrayOfj) {
    int i;
    if (this.f < 0) {
      i = 0;
    } else {
      i = this.f;
    } 
    while (true) {
      int k = b(paramArrayOfj);
      if (i >= k) {
        this.f = i;
        return;
      } 
      int m = this.c.size();
      for (byte b1 = 0; b1 < m; b1++) {
        h h = (h)this.c.get(b1);
        if (!(h instanceof e))
          this.c.set(b1, h.d(k - i)); 
      } 
      i = k;
    } 
  }
  
  private static boolean a(m paramm) { return (paramm != null && paramm.g().a() != null); }
  
  private int b(j[] paramArrayOfj) {
    int k = this.c.size();
    int i = this.f;
    byte b1;
    for (b1 = 0; b1 < k; b1++) {
      int m;
      h h = (h)this.c.get(b1);
      j j1 = paramArrayOfj[b1];
      j j2 = a(h, j1);
      if (j2 == null) {
        int n = h.a(d(h).c().c(h));
        m = i;
        if (n > i)
          m = n; 
      } else {
        m = i;
        if (j1 == j2)
          continue; 
      } 
      paramArrayOfj[b1] = j2;
      i = m;
      continue;
    } 
    return i;
  }
  
  private static boolean b(h paramh) {
    o o;
    if (paramh instanceof q) {
      o = ((q)paramh).b();
      int i = o.b();
      for (byte b1 = 0; b1 < i; b1++) {
        if (a(o.a(b1)))
          return true; 
      } 
    } else if (o instanceof r && a(((r)o).b())) {
      return true;
    } 
    return false;
  }
  
  private void c(h paramh) {
    if (!this.d && paramh.h().a() >= 0)
      this.d = true; 
    if (!this.e && b(paramh))
      this.e = true; 
  }
  
  private void c(j[] paramArrayOfj) {
    if (this.f == 0) {
      int i = this.c.size();
      for (byte b1 = 0; b1 < i; b1++) {
        h h = (h)this.c.get(b1);
        j j1 = h.g();
        j j2 = paramArrayOfj[b1];
        if (j1 != j2)
          this.c.set(b1, h.a(j2)); 
      } 
    } else {
      this.c = d(paramArrayOfj);
    } 
  }
  
  private j d(h paramh) {
    StringBuilder stringBuilder = a(paramh.k(), paramh.g());
    if (stringBuilder == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("No expanded opcode for ");
      stringBuilder.append(paramh);
      throw new f(stringBuilder.toString());
    } 
    return stringBuilder;
  }
  
  private ArrayList<h> d(j[] paramArrayOfj) {
    int i = this.c.size();
    ArrayList arrayList = new ArrayList(i * 2);
    for (byte b1 = 0; b1 < i; b1++) {
      h h2;
      h h1 = (h)this.c.get(b1);
      j j2 = h1.g();
      j j1 = paramArrayOfj[b1];
      h h3 = null;
      if (j1 != null) {
        h2 = null;
      } else {
        j1 = d(h1);
        BitSet bitSet = j1.c().c(h1);
        h3 = h1.b(bitSet);
        h2 = h1.c(bitSet);
        h1 = h1.d(bitSet);
      } 
      if (h3 != null)
        arrayList.add(h3); 
      h3 = h1;
      if (j1 != j2)
        h3 = h1.a(j1); 
      arrayList.add(h3);
      if (h2 != null)
        arrayList.add(h2); 
    } 
    return arrayList;
  }
  
  private j[] e() {
    int i = this.c.size();
    j[] arrayOfj = new j[i];
    for (byte b1 = 0; b1 < i; b1++)
      arrayOfj[b1] = ((h)this.c.get(b1)).g(); 
    return arrayOfj;
  }
  
  private void f() {
    do {
      g();
    } while (h());
  }
  
  private void g() {
    int j = this.c.size();
    byte b1 = 0;
    int i = 0;
    while (b1 < j) {
      h h = (h)this.c.get(b1);
      h.c(i);
      i += h.n();
      b1++;
    } 
  }
  
  private boolean h() {
    int i = this.c.size();
    byte b1 = 0;
    boolean bool = false;
    while (true) {
      if (b1 < i) {
        h h = (h)this.c.get(b1);
        if (!(h instanceof z))
          continue; 
        j j2 = h.g();
        j1 = (z)h;
        if (j2.c().a(j1))
          continue; 
        if (j2.b() == 40) {
          j1 = a(h, j2);
          if (j1 == null)
            throw new UnsupportedOperationException("method too long"); 
          this.c.set(b1, h.a(j1));
        } else {
          try {
            ArrayList arrayList = this.c;
            byte b2 = b1 + 1;
            e e1 = (e)arrayList.get(b2);
            z z = new z(k.P, j1.h(), n.a, j1.b());
            this.c.set(b1, z);
            this.c.add(b1, j1.a(e1));
            i++;
            b1 = b2;
            bool = true;
            continue;
          } catch (IndexOutOfBoundsException j1) {
            throw new IllegalStateException("unpaired TargetInsn (dangling)");
          } catch (ClassCastException j1) {
            throw new IllegalStateException("unpaired TargetInsn");
          } 
        } 
      } else {
        return bool;
      } 
      bool = true;
      continue;
      b1++;
    } 
  }
  
  public void a(int paramInt, e parame) {
    paramInt = this.c.size() - paramInt - 1;
    try {
      z z = (z)this.c.get(paramInt);
      this.c.set(paramInt, z.a(parame));
      return;
    } catch (IndexOutOfBoundsException parame) {
      throw new IllegalArgumentException("too few instructions");
    } catch (ClassCastException parame) {
      throw new IllegalArgumentException("non-reversible instruction");
    } 
  }
  
  public void a(g.a parama) {
    for (h h : this.c) {
      if (h instanceof f)
        a((f)h, parama); 
    } 
  }
  
  public void a(h paramh) {
    this.c.add(paramh);
    c(paramh);
  }
  
  public boolean a() { return this.d; }
  
  public boolean b() { return this.e; }
  
  public HashSet<a> c() {
    HashSet hashSet = new HashSet(20);
    Iterator iterator = this.c.iterator();
    while (iterator.hasNext())
      a(hashSet, (h)iterator.next()); 
    return hashSet;
  }
  
  public i d() {
    if (this.f >= 0)
      throw new UnsupportedOperationException("already processed"); 
    j[] arrayOfj = e();
    a(arrayOfj);
    c(arrayOfj);
    f();
    return i.a(this.c, this.f + this.b);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
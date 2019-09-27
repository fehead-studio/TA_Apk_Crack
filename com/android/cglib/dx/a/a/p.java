package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.o;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public final class p extends h {
  public static final p a = new p(0);
  
  public p(int paramInt) { super(paramInt); }
  
  public static p a(i parami) {
    int j = parami.a();
    c c = new c(j);
    for (byte b = 0; b < j; b++) {
      h h1 = parami.a(b);
      if (h1 instanceof q) {
        o o = ((q)h1).b();
        c.a(h1.f(), o);
      } else if (h1 instanceof r) {
        m m = ((r)h1).b();
        c.a(h1.f(), m);
      } else if (h1 instanceof o) {
        m m = ((o)h1).b();
        c.b(h1.f(), m);
      } 
    } 
    return c.a();
  }
  
  public b a(int paramInt) { return (b)d(paramInt); }
  
  public void a(int paramInt, b paramb) { a(paramInt, paramb); }
  
  public enum a {
    a, b, c, d, e, f;
  }
  
  public static class b extends Object implements Comparable<b> {
    private final int a;
    
    private final p.a b;
    
    private final m c;
    
    private final w d;
    
    public b(int param1Int, p.a param1a, m param1m) {
      if (param1Int < 0)
        throw new IllegalArgumentException("address < 0"); 
      if (param1a == null)
        throw new NullPointerException("disposition == null"); 
      try {
        if (param1m.g() == null)
          throw new NullPointerException("spec.getLocalItem() == null"); 
        this.a = param1Int;
        this.b = param1a;
        this.c = param1m;
        this.d = w.a(param1m.b());
        return;
      } catch (NullPointerException param1a) {
        throw new NullPointerException("spec == null");
      } 
    }
    
    public int a() { return this.a; }
    
    public int a(b param1b) {
      int i = this.a;
      int j = param1b.a;
      byte b1 = -1;
      if (i < j)
        return -1; 
      if (this.a > param1b.a)
        return 1; 
      boolean bool = c();
      if (bool != param1b.c()) {
        if (bool)
          b1 = 1; 
        return b1;
      } 
      return this.c.c(param1b.c);
    }
    
    public b a(p.a param1a) { return (param1a == this.b) ? this : new b(this.a, param1a, this.c); }
    
    public boolean a(m param1m) { return this.c.a(param1m); }
    
    public p.a b() { return this.b; }
    
    public boolean b(b param1b) { return a(param1b.c); }
    
    public boolean c() { return (this.b == p.a.a); }
    
    public v d() { return this.c.g().a(); }
    
    public v e() { return this.c.g().b(); }
    
    public boolean equals(Object param1Object) {
      boolean bool2 = param1Object instanceof b;
      boolean bool1 = false;
      if (!bool2)
        return false; 
      if (a((b)param1Object) == 0)
        bool1 = true; 
      return bool1;
    }
    
    public w f() { return this.d; }
    
    public int g() { return this.c.e(); }
    
    public m h() { return this.c; }
    
    public String toString() {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(Integer.toHexString(this.a));
      stringBuilder.append(" ");
      stringBuilder.append(this.b);
      stringBuilder.append(" ");
      stringBuilder.append(this.c);
      return stringBuilder.toString();
    }
  }
  
  public static class c {
    private final ArrayList<p.b> a;
    
    private int b;
    
    private o c;
    
    private int[] d;
    
    private int e;
    
    public c(int param1Int) {
      this.a = new ArrayList(param1Int);
      this.b = 0;
      this.c = null;
      this.d = null;
      this.e = 0;
    }
    
    private static m a(m param1m) {
      m m1 = param1m;
      if (param1m != null) {
        m1 = param1m;
        if (param1m.b() == c.j)
          m1 = param1m.a(c.o); 
      } 
      return m1;
    }
    
    private void a(int param1Int1, int param1Int2) {
      boolean bool;
      if (this.d == null) {
        bool = true;
      } else {
        bool = false;
      } 
      if (param1Int1 == this.e && !bool)
        return; 
      if (param1Int1 < this.e)
        throw new RuntimeException("shouldn't happen"); 
      if (bool || param1Int2 >= this.d.length) {
        param1Int1 = param1Int2 + 1;
        o o1 = new o(param1Int1);
        int[] arrayOfInt = new int[param1Int1];
        Arrays.fill(arrayOfInt, -1);
        if (!bool) {
          o1.a(this.c);
          System.arraycopy(this.d, 0, arrayOfInt, 0, this.d.length);
        } 
        this.c = o1;
        this.d = arrayOfInt;
      } 
    }
    
    private void a(int param1Int, p.a param1a, m param1m) {
      int i = param1m.e();
      this.a.add(new p.b(param1Int, param1a, param1m));
      if (param1a == p.a.a) {
        this.c.c(param1m);
        this.d[i] = -1;
        return;
      } 
      this.c.b(param1m);
      this.d[i] = this.a.size() - 1;
    }
    
    private void b(int param1Int, p.a param1a, m param1m) {
      if (param1a == p.a.a)
        throw new RuntimeException("shouldn't happen"); 
      int i = param1m.e();
      i = this.d[i];
      if (i >= 0) {
        p.b b1 = (p.b)this.a.get(i);
        if (b1.a() == param1Int && b1.h().equals(param1m)) {
          this.a.set(i, b1.a(param1a));
          this.c.b(param1m);
          return;
        } 
      } 
      a(param1Int, param1m, param1a);
    }
    
    private boolean c(int param1Int, m param1m) {
      int k;
      int j;
      p.b b1;
      int i = this.a.size() - 1;
      while (true) {
        j = 0;
        if (i >= 0) {
          p.b b2 = (p.b)this.a.get(i);
          if (b2 != null) {
            if (b2.a() != param1Int)
              return false; 
            if (b2.a(param1m))
              break; 
          } 
          i--;
          continue;
        } 
        break;
      } 
      this.c.b(param1m);
      ArrayList arrayList = this.a;
      m m1 = null;
      arrayList.set(i, null);
      this.b++;
      int n = param1m.e();
      param1m = m1;
      while (true) {
        k = i - 1;
        i = j;
        if (k >= 0) {
          p.b b2 = (p.b)this.a.get(k);
          if (b2 == null) {
            i = k;
            p.b b3 = b2;
            continue;
          } 
          i = k;
          b1 = b2;
          if (b2.h().e() == n) {
            i = 1;
            b1 = b2;
            break;
          } 
          continue;
        } 
        break;
      } 
      if (i != 0) {
        this.d[n] = k;
        if (b1.a() == param1Int)
          this.a.set(k, b1.a(p.a.b)); 
      } 
      return true;
    }
    
    public p a() {
      int j = 0;
      a(2147483647, 0);
      int i = this.a.size();
      int k = i - this.b;
      if (k == 0)
        return p.a; 
      p.b[] arrayOfb = new p.b[k];
      if (i == k) {
        this.a.toArray(arrayOfb);
      } else {
        Iterator iterator = this.a.iterator();
        i = 0;
        while (iterator.hasNext()) {
          p.b b1 = (p.b)iterator.next();
          if (b1 != null) {
            arrayOfb[i] = b1;
            i++;
          } 
        } 
      } 
      Arrays.sort(arrayOfb);
      p p = new p(k);
      for (i = j; i < k; i++)
        p.a(i, arrayOfb[i]); 
      p.e();
      return p;
    }
    
    public void a(int param1Int, m param1m) {
      int i = param1m.e();
      param1m = a(param1m);
      a(param1Int, i);
      m m1 = this.c.a(i);
      if (param1m.a(m1))
        return; 
      m m2 = this.c.a(param1m);
      if (m2 != null)
        b(param1Int, p.a.d, m2); 
      int j = this.d[i];
      if (m1 != null) {
        a(param1Int, p.a.c, m1);
      } else if (j >= 0) {
        p.b b1 = (p.b)this.a.get(j);
        if (b1.a() == param1Int) {
          if (b1.a(param1m)) {
            this.a.set(j, null);
            this.b++;
            this.c.c(param1m);
            this.d[i] = -1;
            return;
          } 
          b1 = b1.a(p.a.c);
          this.a.set(j, b1);
        } 
      } 
      if (i > 0) {
        m1 = this.c.a(i - 1);
        if (m1 != null && m1.j())
          b(param1Int, p.a.f, m1); 
      } 
      if (param1m.j()) {
        m1 = this.c.a(i + 1);
        if (m1 != null)
          b(param1Int, p.a.e, m1); 
      } 
      a(param1Int, p.a.a, param1m);
    }
    
    public void a(int param1Int, m param1m, p.a param1a) {
      int i = param1m.e();
      param1m = a(param1m);
      a(param1Int, i);
      if (this.d[i] >= 0)
        return; 
      if (c(param1Int, param1m))
        return; 
      a(param1Int, param1a, param1m);
    }
    
    public void a(int param1Int, o param1o) { // Byte code:
      //   0: aload_2
      //   1: invokevirtual a : ()I
      //   4: istore #4
      //   6: aload_0
      //   7: iload_1
      //   8: iload #4
      //   10: iconst_1
      //   11: isub
      //   12: invokespecial a : (II)V
      //   15: iconst_0
      //   16: istore_3
      //   17: iload_3
      //   18: iload #4
      //   20: if_icmpge -> 105
      //   23: aload_0
      //   24: getfield c : Lcom/android/cglib/dx/c/b/o;
      //   27: iload_3
      //   28: invokevirtual a : (I)Lcom/android/cglib/dx/c/b/m;
      //   31: astore #5
      //   33: aload_2
      //   34: iload_3
      //   35: invokevirtual a : (I)Lcom/android/cglib/dx/c/b/m;
      //   38: invokestatic a : (Lcom/android/cglib/dx/c/b/m;)Lcom/android/cglib/dx/c/b/m;
      //   41: astore #6
      //   43: aload #5
      //   45: ifnonnull -> 63
      //   48: aload #6
      //   50: ifnull -> 98
      //   53: aload_0
      //   54: iload_1
      //   55: aload #6
      //   57: invokevirtual a : (ILcom/android/cglib/dx/c/b/m;)V
      //   60: goto -> 98
      //   63: aload #6
      //   65: ifnonnull -> 78
      //   68: aload_0
      //   69: iload_1
      //   70: aload #5
      //   72: invokevirtual b : (ILcom/android/cglib/dx/c/b/m;)V
      //   75: goto -> 98
      //   78: aload #6
      //   80: aload #5
      //   82: invokevirtual a : (Lcom/android/cglib/dx/c/b/m;)Z
      //   85: ifne -> 98
      //   88: aload_0
      //   89: iload_1
      //   90: aload #5
      //   92: invokevirtual b : (ILcom/android/cglib/dx/c/b/m;)V
      //   95: goto -> 53
      //   98: iload_3
      //   99: iconst_1
      //   100: iadd
      //   101: istore_3
      //   102: goto -> 17
      //   105: return }
    
    public void b(int param1Int, m param1m) { a(param1Int, param1m, p.a.b); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
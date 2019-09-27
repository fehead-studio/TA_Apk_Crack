package com.android.cglib.dx.a.a;

import com.android.cglib.dx.a.b;
import com.android.cglib.dx.c.b.b;
import com.android.cglib.dx.c.b.c;
import com.android.cglib.dx.c.b.f;
import com.android.cglib.dx.c.b.i;
import com.android.cglib.dx.c.b.j;
import com.android.cglib.dx.c.b.k;
import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.o;
import com.android.cglib.dx.c.b.p;
import com.android.cglib.dx.c.b.q;
import com.android.cglib.dx.c.b.s;
import com.android.cglib.dx.c.b.t;
import com.android.cglib.dx.c.b.u;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.l;
import com.android.cglib.dx.d.b;
import com.android.cglib.dx.d.k;

public final class w {
  private final b a;
  
  private final q b;
  
  private final int c;
  
  private final i d;
  
  private final a e;
  
  private final s f;
  
  private final b g;
  
  private final int h;
  
  private int[] i;
  
  private final int j;
  
  private boolean k;
  
  private w(q paramq, int paramInt1, i parami, int paramInt2, b paramb) {
    this.a = paramb;
    this.b = paramq;
    this.c = paramInt1;
    this.d = parami;
    this.e = new a(paramq);
    this.j = paramInt2;
    this.i = null;
    this.k = a(paramq, paramInt2);
    b b1 = paramq.a();
    int n = b1.a();
    int m = n * 3;
    paramInt2 = b1.c() + m;
    paramInt1 = paramInt2;
    if (parami != null)
      paramInt1 = paramInt2 + n + parami.a(); 
    n = b1.b();
    if (this.k) {
      paramInt2 = 0;
    } else {
      paramInt2 = this.j;
    } 
    this.h = n + paramInt2;
    this.f = new s(paramb, paramInt1, m, this.h);
    if (parami != null) {
      a a1 = new a(this, this.f, parami);
    } else {
      b1 = new b(this, this.f);
    } 
    this.g = b1;
  }
  
  private g a() {
    c();
    b();
    y y = new y(this.b, this.i, this.e);
    return new g(this.c, this.f.a(), y);
  }
  
  public static g a(q paramq, int paramInt1, i parami, int paramInt2, b paramb) { return (new w(paramq, paramInt1, parami, paramInt2, paramb)).a(); }
  
  private void a(b paramb, int paramInt) {
    e e1 = this.e.a(paramb);
    this.f.a(e1);
    if (this.d != null) {
      o o = this.d.a(paramb);
      this.f.a(new q(e1.h(), o));
    } 
    this.g.a(paramb, this.e.b(paramb));
    paramb.b().a(this.g);
    this.f.a(this.e.c(paramb));
    int m = paramb.d();
    f f1 = paramb.f();
    if (m >= 0 && m != paramInt) {
      if (f1.d().b() == 4 && paramb.e() == paramInt) {
        this.f.a(1, this.e.a(m));
        return;
      } 
      z z = new z(k.P, f1.e(), n.a, this.e.a(m));
      this.f.a(z);
    } 
  }
  
  private static boolean a(q paramq, int paramInt) {
    boolean[] arrayOfBoolean = new boolean[1];
    arrayOfBoolean[0] = true;
    int m = paramq.a().b();
    paramq.a().a(new f.a(arrayOfBoolean, m, paramInt) {
          public void a(j param1j) {
            if (param1j.d().a() == 3) {
              boolean bool;
              int i = ((l)param1j.c()).e_();
              boolean[] arrayOfBoolean = this.a;
              if (this.a[0] && this.b - this.c + i == param1j.f().e()) {
                bool = true;
              } else {
                bool = false;
              } 
              arrayOfBoolean[0] = bool;
            } 
          }
        });
    return arrayOfBoolean[0];
  }
  
  private static n b(f paramf) { return b(paramf, paramf.f()); }
  
  private static n b(f paramf, m paramm) {
    n n2 = paramf.g();
    n n1 = n2;
    if (paramf.d().d()) {
      n1 = n2;
      if (n2.a() == 2) {
        n1 = n2;
        if (paramm.e() == n2.b(1).e())
          n1 = n.a(n2.b(1), n2.b(0)); 
      } 
    } 
    return (paramm == null) ? n1 : n1.b(paramm);
  }
  
  private void b() {
    c c1 = this.b.a();
    int[] arrayOfInt = this.i;
    int m = arrayOfInt.length;
    for (byte b1 = 0; b1 < m; b1 = b2) {
      int n;
      byte b2 = b1 + true;
      if (b2 == arrayOfInt.length) {
        n = -1;
      } else {
        n = arrayOfInt[b2];
      } 
      a(c1.b(arrayOfInt[b1]), n);
    } 
  }
  
  private void c() {
    c c1 = this.b.a();
    int i2 = c1.a();
    int m = c1.d();
    int[] arrayOfInt1 = b.a(m);
    int[] arrayOfInt2 = b.a(m);
    for (m = 0; m < i2; m++)
      b.b(arrayOfInt1, c1.a(m).a()); 
    int[] arrayOfInt3 = new int[i2];
    int i1 = this.b.b();
    int n = 0;
    while (i1 != -1) {
      int i3;
      label56: while (true) {
        k k1 = this.b.a(i1);
        int i4 = k1.a();
        byte b1 = 0;
        while (true) {
          m = i1;
          i3 = n;
          if (b1 < i4) {
            m = k1.a(b1);
            if (b.a(arrayOfInt2, m)) {
              m = i1;
              i3 = n;
              break;
            } 
            if (b.a(arrayOfInt1, m) && c1.b(m).d() == i1) {
              b.b(arrayOfInt2, m);
              i1 = m;
              continue label56;
            } 
            b1++;
            continue;
          } 
          break;
        } 
        break;
      } 
      label57: while (true) {
        n = i3;
        if (m != -1) {
          b.c(arrayOfInt1, m);
          b.c(arrayOfInt2, m);
          arrayOfInt3[i3] = m;
          n = i3 + 1;
          b b1 = c1.b(m);
          b b2 = c1.a(b1);
          if (b2 == null)
            break; 
          m = b2.a();
          i1 = b1.d();
          if (b.a(arrayOfInt1, m)) {
            i3 = n;
            continue;
          } 
          if (i1 != m && i1 >= 0 && b.a(arrayOfInt1, i1)) {
            m = i1;
            i3 = n;
            continue;
          } 
          k k1 = b1.c();
          i3 = k1.a();
          for (m = 0; m < i3; m++) {
            i1 = k1.a(m);
            if (b.a(arrayOfInt1, i1)) {
              m = i1;
              i3 = n;
              continue label57;
            } 
          } 
          m = -1;
          i3 = n;
          continue;
        } 
        break;
      } 
      i1 = b.d(arrayOfInt1, 0);
    } 
    if (n != i2)
      throw new RuntimeException("shouldn't happen"); 
    this.i = arrayOfInt3;
  }
  
  private class a extends b {
    private i c;
    
    public a(w this$0, s param1s, i param1i) {
      super(this$0, param1s);
      this.c = param1i;
    }
    
    public void a(f param1f) {
      m m = this.c.a(param1f);
      if (m != null)
        a(new r(param1f.e(), m)); 
    }
    
    public void a(j param1j) {
      super.a(param1j);
      a(param1j);
    }
    
    public void a(k param1k) {
      super.a(param1k);
      a(param1k);
    }
    
    public void a(t param1t) {
      super.a(param1t);
      a(param1t);
    }
    
    public void a(u param1u) {
      super.a(param1u);
      a(param1u);
    }
  }
  
  private class b implements f.b {
    private final s a;
    
    private b c;
    
    private e d;
    
    public b(w this$0, s param1s) { this.a = param1s; }
    
    private m a() {
      int i = this.c.d();
      if (i < 0)
        return null; 
      f f = w.e(this.b).a().b(i).b().a(0);
      return (f.d().a() != 56) ? null : f.f();
    }
    
    protected void a(h param1h) { this.a.a(param1h); }
    
    public void a(b param1b, e param1e) {
      this.c = param1b;
      this.d = param1e;
    }
    
    public void a(j param1j) {
      f f;
      s s1 = param1j.e();
      j j1 = v.a(param1j);
      p p = param1j.d();
      int i = p.a();
      if (p.b() != 1)
        throw new RuntimeException("shouldn't happen"); 
      if (i == 3) {
        if (!w.b(this.b)) {
          m m = param1j.f();
          i = ((l)param1j.c()).e_();
          f = new x(j1, s1, n.a(m, m.a(w.c(this.b) - w.d(this.b) + i, m.b())));
        } else {
          return;
        } 
      } else {
        f = new f(j1, s1, w.a(f), f.c());
      } 
      a(f);
    }
    
    public void a(k param1k) {
      p p = param1k.d();
      if (p.a() == 54)
        return; 
      if (p.a() == 56)
        return; 
      s s1 = param1k.e();
      j j = v.a(param1k);
      int i = p.b();
      if (i != 6) {
        x x;
        z z;
        switch (i) {
          default:
            throw new RuntimeException("shouldn't happen");
          case 4:
            i = this.c.c().a(1);
            z = new z(j, s1, w.a(param1k), w.a(this.b).a(i));
            break;
          case 3:
            return;
          case 1:
          case 2:
            x = new x(j, s1, w.a(z));
            break;
        } 
        a(x);
        return;
      } 
    }
    
    public void a(t param1t) {
      boolean bool1;
      f f;
      StringBuilder stringBuilder = param1t.e();
      j j = v.a(param1t);
      p p = param1t.d();
      a a1 = param1t.c();
      if (p.b() != 6)
        throw new RuntimeException("shouldn't happen"); 
      a(this.d);
      if (p.c()) {
        a(new f(j, stringBuilder, param1t.g(), a1));
        return;
      } 
      m m = a();
      n n = w.a(param1t, m);
      boolean bool = j.d();
      boolean bool2 = true;
      if (bool || p.a() == 43) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (m == null)
        bool2 = false; 
      if (bool1 != bool2) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("Insn with result/move-result-pseudo mismatch ");
        stringBuilder.append(param1t);
        throw new RuntimeException(stringBuilder.toString());
      } 
      if (p.a() == 41 && j.a() != 35) {
        f = new x(j, stringBuilder, n);
      } else {
        f = new f(j, stringBuilder, n, a1);
      } 
      a(f);
    }
    
    public void a(u param1u) {
      boolean bool;
      StringBuilder stringBuilder = param1u.e();
      j j = v.a(param1u);
      if (param1u.d().b() != 6)
        throw new RuntimeException("shouldn't happen"); 
      m m = a();
      boolean bool1 = j.d();
      if (m != null) {
        bool = true;
      } else {
        bool = false;
      } 
      if (bool1 != bool) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("Insn with result/move-result-pseudo mismatch");
        stringBuilder.append(param1u);
        throw new RuntimeException(stringBuilder.toString());
      } 
      a(this.d);
      a(new x(j, stringBuilder, w.a(param1u, m)));
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
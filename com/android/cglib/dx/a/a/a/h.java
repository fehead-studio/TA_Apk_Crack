package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.p;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class h extends n {
  public static final n b = new h();
  
  public int a() { return 2; }
  
  public String a(h paramh) {
    n n1 = paramh.i();
    p p = (p)((f)paramh).b();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(n1.b(0).k());
    stringBuilder.append(", ");
    stringBuilder.append(a(p));
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    int i;
    n n1 = paramh.i();
    p p = (p)((f)paramh).b();
    if (n1.b(0).i() == 1) {
      i = p.g() >>> 16;
    } else {
      i = (int)(p.h() >>> 48);
    } 
    short s = (short)i;
    a(parama, a(paramh, n1.b(0).e()), s);
  }
  
  public String b(h paramh, boolean paramBoolean) {
    byte b1;
    n n1 = paramh.i();
    p p = (p)((f)paramh).b();
    if (n1.b(0).i() == 1) {
      b1 = 32;
    } else {
      b1 = 64;
    } 
    return a(p, b1);
  }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    boolean bool = paramh instanceof f;
    byte b2 = 0;
    byte b1 = 0;
    int i = b2;
    if (bool) {
      i = b2;
      if (n1.a() == 1) {
        if (!d(n1.b(0).e()))
          return false; 
        a a = ((f)paramh).b();
        if (!(a instanceof p))
          return false; 
        p p = (p)a;
        if (n1.b(0).i() == 1) {
          i = b1;
          if ((p.g() & 0xFFFF) == 0)
            i = 1; 
          return i;
        } 
        i = b2;
        if ((p.h() & 0xFFFFFFFFFFFFL) == 0L)
          i = 1; 
      } 
    } 
    return i;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(1);
    bitSet.set(0, d(n1.b(0).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
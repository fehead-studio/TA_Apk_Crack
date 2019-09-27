package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class x extends n {
  public static final n b = new x();
  
  public int a() { return 4; }
  
  public String a(h paramh) {
    n n1 = paramh.i();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(n1.b(0).k());
    stringBuilder.append(", ");
    stringBuilder.append(f(paramh));
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    n n1 = paramh.i();
    int i = ((f)paramh).c();
    a(parama, h(paramh), i, (short)n1.b(0).e());
  }
  
  public String b(h paramh, boolean paramBoolean) { return paramBoolean ? g(paramh) : ""; }
  
  public boolean b(h paramh) {
    m m2;
    m m1;
    boolean bool2 = a;
    boolean bool1 = false;
    if (!bool2)
      return false; 
    if (!(paramh instanceof f))
      return false; 
    n n1 = paramh.i();
    switch (n1.a()) {
      default:
        return false;
      case 2:
        m2 = n1.b(0);
        m1 = m2;
        if (m2.e() != n1.b(1).e())
          return false; 
        break;
      case 1:
        m1 = n1.b(0);
        break;
    } 
    if (!f(m1.e()))
      return false; 
    a a = ((f)paramh).b();
    if (a instanceof com.android.cglib.dx.c.c.w || a instanceof com.android.cglib.dx.c.c.j)
      bool1 = true; 
    return bool1;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    int i = n1.a();
    BitSet bitSet = new BitSet(i);
    boolean bool = d(n1.b(0).e());
    if (i == 1) {
      bitSet.set(0, bool);
      return bitSet;
    } 
    if (n1.b(0).e() == n1.b(1).e()) {
      bitSet.set(0, bool);
      bitSet.set(1, bool);
    } 
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
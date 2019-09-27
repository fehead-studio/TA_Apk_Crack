package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class e extends n {
  public static final n b = new e();
  
  public int a() { return 1; }
  
  public String a(h paramh) {
    n n1 = paramh.i();
    int i = n1.a();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(n1.b(i - 2).k());
    stringBuilder.append(", ");
    stringBuilder.append(n1.b(i - 1).k());
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    n n1 = paramh.i();
    int i = n1.a();
    a(parama, a(paramh, b(n1.b(i - 2).e(), n1.b(i - 1).e())));
  }
  
  public String b(h paramh, boolean paramBoolean) { return ""; }
  
  public boolean b(h paramh) {
    m m3;
    m m2;
    m m1;
    boolean bool = paramh instanceof com.android.cglib.dx.a.a.x;
    boolean bool1 = false;
    if (!bool)
      return false; 
    n n1 = paramh.i();
    switch (n1.a()) {
      default:
        return false;
      case 3:
        m3 = n1.b(1);
        m2 = n1.b(2);
        m1 = m3;
        if (m3.e() != n1.b(0).e())
          return false; 
        break;
      case 2:
        m1 = n1.b(0);
        m2 = n1.b(1);
        break;
    } 
    bool = bool1;
    if (b(m1.e())) {
      bool = bool1;
      if (b(m2.e()))
        bool = true; 
    } 
    return bool;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(2);
    bitSet.set(0, b(n1.b(0).e()));
    bitSet.set(1, b(n1.b(1).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class o extends n {
  public static final n b = new o();
  
  public int a() { return 2; }
  
  public String a(h paramh) {
    n n1 = paramh.i();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(n1.b(0).k());
    stringBuilder.append(", ");
    stringBuilder.append(n1.b(1).k());
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    n n1 = paramh.i();
    a(parama, a(paramh, n1.b(0).e()), (short)n1.b(1).e());
  }
  
  public String b(h paramh, boolean paramBoolean) { return ""; }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    return (paramh instanceof com.android.cglib.dx.a.a.x && n1.a() == 2 && d(n1.b(0).e()) && f(n1.b(1).e()));
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(2);
    bitSet.set(0, d(n1.b(0).e()));
    bitSet.set(1, f(n1.b(1).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
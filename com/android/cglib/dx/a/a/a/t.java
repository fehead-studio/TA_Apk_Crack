package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.a.a.z;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class t extends n {
  public static final n b = new t();
  
  public int a() { return 3; }
  
  public String a(h paramh) {
    n n1 = paramh.i();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(n1.b(0).k());
    stringBuilder.append(", ");
    stringBuilder.append(d(paramh));
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    n n1 = paramh.i();
    int i = ((z)paramh).d();
    a(parama, a(paramh, n1.b(0).e()), i);
  }
  
  public boolean a(z paramz) { return true; }
  
  public String b(h paramh, boolean paramBoolean) { return e(paramh); }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    return (paramh instanceof z && n1.a() == 1) ? (!!d(n1.b(0).e())) : false;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(1);
    bitSet.set(0, d(n1.b(0).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.p;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class m extends n {
  public static final n b = new m();
  
  public int a() { return 2; }
  
  public String a(h paramh) {
    n n1 = paramh.i();
    p p = (p)((f)paramh).b();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(n1.b(0).k());
    stringBuilder.append(", ");
    stringBuilder.append(n1.b(1).k());
    stringBuilder.append(", ");
    stringBuilder.append(a(p));
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    n n1 = paramh.i();
    int i = ((p)((f)paramh).b()).g();
    a(parama, a(paramh, b(n1.b(0).e(), n1.b(1).e())), (short)i);
  }
  
  public String b(h paramh, boolean paramBoolean) { return a((p)((f)paramh).b(), 16); }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    if (paramh instanceof f && n1.a() == 2 && b(n1.b(0).e())) {
      if (!b(n1.b(1).e()))
        return false; 
      a a = ((f)paramh).b();
      if (!(a instanceof p))
        return false; 
      p p = (p)a;
      return (p.f() && e(p.g()));
    } 
    return false;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(2);
    bitSet.set(0, b(n1.b(0).e()));
    bitSet.set(1, b(n1.b(1).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.o;
import com.android.cglib.dx.c.c.p;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class y extends n {
  public static final n b = new y();
  
  public int a() { return 5; }
  
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
    n n1 = paramh.i();
    long l = ((o)((f)paramh).b()).h();
    a(parama, a(paramh, n1.b(0).e()), l);
  }
  
  public String b(h paramh, boolean paramBoolean) { return a((p)((f)paramh).b(), 64); }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    return (paramh instanceof f && n1.a() == 1) ? (!d(n1.b(0).e()) ? false : (((f)paramh).b() instanceof o)) : false;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(1);
    bitSet.set(0, d(n1.b(0).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
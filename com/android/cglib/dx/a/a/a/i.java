package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.p;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class i extends n {
  public static final n b = new i();
  
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
    n n1 = paramh.i();
    int j = ((p)((f)paramh).b()).g();
    a(parama, a(paramh, n1.b(0).e()), (short)j);
  }
  
  public String b(h paramh, boolean paramBoolean) { return a((p)((f)paramh).b(), 16); }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    boolean bool = paramh instanceof f;
    byte b1 = 0;
    int j = b1;
    if (bool) {
      j = b1;
      if (n1.a() == 1) {
        if (!d(n1.b(0).e()))
          return false; 
        a a = ((f)paramh).b();
        if (!(a instanceof p))
          return false; 
        p p = (p)a;
        j = b1;
        if (p.f()) {
          j = b1;
          if (e(p.g()))
            j = 1; 
        } 
      } 
    } 
    return j;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(1);
    bitSet.set(0, d(n1.b(0).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
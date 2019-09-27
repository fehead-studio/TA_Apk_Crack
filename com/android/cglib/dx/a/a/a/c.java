package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.p;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class c extends n {
  public static final n b = new c();
  
  public int a() { return 1; }
  
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
    int i = ((p)((f)paramh).b()).g();
    a(parama, a(paramh, b(n1.b(0).e(), i & 0xF)));
  }
  
  public String b(h paramh, boolean paramBoolean) { return a((p)((f)paramh).b(), 4); }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    boolean bool = paramh instanceof f;
    byte b1 = 0;
    int i = b1;
    if (bool) {
      i = b1;
      if (n1.a() == 1) {
        if (!b(n1.b(0).e()))
          return false; 
        a a = ((f)paramh).b();
        if (!(a instanceof p))
          return false; 
        p p = (p)a;
        i = b1;
        if (p.f()) {
          i = b1;
          if (a(p.g()))
            i = 1; 
        } 
      } 
    } 
    return i;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(1);
    bitSet.set(0, b(n1.b(0).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
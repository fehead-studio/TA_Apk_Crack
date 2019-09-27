package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class l extends n {
  public static final n b = new l();
  
  public int a() { return 2; }
  
  public String a(h paramh) {
    n n1 = paramh.i();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(n1.b(0).k());
    stringBuilder.append(", ");
    stringBuilder.append(n1.b(1).k());
    stringBuilder.append(", ");
    stringBuilder.append(f(paramh));
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    n n1 = paramh.i();
    int i = ((f)paramh).c();
    a(parama, a(paramh, b(n1.b(0).e(), n1.b(1).e())), (short)i);
  }
  
  public String b(h paramh, boolean paramBoolean) { return paramBoolean ? g(paramh) : ""; }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    if (paramh instanceof f && n1.a() == 2 && b(n1.b(0).e())) {
      boolean bool = true;
      if (!b(n1.b(1).e()))
        return false; 
      f f = (f)paramh;
      if (!f(f.c()))
        return false; 
      a a = f.b();
      if (!(a instanceof com.android.cglib.dx.c.c.w)) {
        if (a instanceof com.android.cglib.dx.c.c.j)
          return true; 
        bool = false;
      } 
      return bool;
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


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
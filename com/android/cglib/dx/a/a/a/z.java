package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class z extends n {
  public static final n b = new z();
  
  public int a() { return 5; }
  
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
    a(parama, h(paramh), i, (short)n1.b(0).e(), (short)n1.b(1).e());
  }
  
  public String b(h paramh, boolean paramBoolean) { return paramBoolean ? g(paramh) : ""; }
  
  public boolean b(h paramh) {
    null = a;
    boolean bool = false;
    if (!null)
      return false; 
    n n1 = paramh.i();
    null = bool;
    if (paramh instanceof f) {
      null = bool;
      if (n1.a() == 2) {
        null = bool;
        if (f(n1.b(0).e())) {
          if (!f(n1.b(1).e()))
            return false; 
          a a = ((f)paramh).b();
          if (!(a instanceof com.android.cglib.dx.c.c.w)) {
            null = bool;
            return (a instanceof com.android.cglib.dx.c.c.j) ? true : null;
          } 
        } else {
          return null;
        } 
      } else {
        return null;
      } 
    } else {
      return null;
    } 
    return true;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(2);
    bitSet.set(0, f(n1.b(0).e()));
    bitSet.set(1, f(n1.b(1).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
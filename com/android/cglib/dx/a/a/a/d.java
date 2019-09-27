package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class d extends n {
  public static final n b = new d();
  
  public int a() { return 1; }
  
  public String a(h paramh) { return paramh.i().b(0).k(); }
  
  public void a(a parama, h paramh) { a(parama, a(paramh, paramh.i().b(0).e())); }
  
  public String b(h paramh, boolean paramBoolean) { return ""; }
  
  public boolean b(h paramh) {
    n n1 = paramh.i();
    boolean bool = paramh instanceof com.android.cglib.dx.a.a.x;
    byte b1 = 0;
    int i = b1;
    if (bool) {
      i = b1;
      if (n1.a() == 1) {
        i = b1;
        if (d(n1.b(0).e()))
          i = 1; 
      } 
    } 
    return i;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    BitSet bitSet = new BitSet(1);
    bitSet.set(0, d(n1.b(0).e()));
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
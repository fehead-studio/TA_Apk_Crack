package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.a;
import java.util.BitSet;

public final class v extends n {
  public static final n b = new v();
  
  private static int d(n paramn) {
    int k = paramn.a();
    byte b1 = -1;
    if (k > 5)
      return -1; 
    int j = 0;
    int i = 0;
    while (j < k) {
      m m = paramn.b(j);
      i += m.i();
      if (!b(m.e() + m.i() - 1))
        return -1; 
      j++;
    } 
    j = b1;
    if (i <= 5)
      j = i; 
    return j;
  }
  
  private static n e(n paramn) {
    int i = d(paramn);
    int j = paramn.a();
    if (i == j)
      return paramn; 
    n n1 = new n(i);
    byte b1 = 0;
    i = 0;
    while (b1 < j) {
      m m = paramn.b(b1);
      n1.a(i, m);
      if (m.i() == 2) {
        n1.a(i + 1, m.a(m.e() + 1, c.i));
        i += 2;
      } else {
        i++;
      } 
      b1++;
    } 
    n1.e();
    return n1;
  }
  
  public int a() { return 3; }
  
  public String a(h paramh) {
    n n1 = e(paramh.i());
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(a(n1));
    stringBuilder.append(", ");
    stringBuilder.append(f(paramh));
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    byte b4;
    byte b3;
    byte b2;
    byte b1;
    int j = ((f)paramh).c();
    n n1 = e(paramh.i());
    int k = n1.a();
    int i = 0;
    if (k > 0) {
      b1 = n1.b(0).e();
    } else {
      b1 = 0;
    } 
    if (k > 1) {
      b2 = n1.b(1).e();
    } else {
      b2 = 0;
    } 
    if (k > 2) {
      b3 = n1.b(2).e();
    } else {
      b3 = 0;
    } 
    if (k > 3) {
      b4 = n1.b(3).e();
    } else {
      b4 = 0;
    } 
    if (k > 4)
      i = n1.b(4).e(); 
    a(parama, a(paramh, b(i, k)), (short)j, a(b1, b2, b3, b4));
  }
  
  public String b(h paramh, boolean paramBoolean) { return paramBoolean ? g(paramh) : ""; }
  
  public boolean b(h paramh) {
    boolean bool2 = paramh instanceof f;
    boolean bool1 = false;
    if (!bool2)
      return false; 
    f f = (f)paramh;
    if (!f(f.c()))
      return false; 
    a a = f.b();
    if (!(a instanceof com.android.cglib.dx.c.c.s) && !(a instanceof com.android.cglib.dx.c.c.w))
      return false; 
    if (d(f.i()) >= 0)
      bool1 = true; 
    return bool1;
  }
  
  public BitSet c(h paramh) {
    n n1 = paramh.i();
    int i = n1.a();
    BitSet bitSet = new BitSet(i);
    for (byte b1 = 0; b1 < i; b1++) {
      m m = n1.b(b1);
      bitSet.set(b1, b(m.e() + m.i() - 1));
    } 
    return bitSet;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
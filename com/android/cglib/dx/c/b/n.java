package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.h;
import java.util.BitSet;

public final class n extends h implements e {
  public static final n a = new n(0);
  
  public n(int paramInt) { super(paramInt); }
  
  public static n a(m paramm) {
    n n1 = new n(1);
    n1.a(0, paramm);
    return n1;
  }
  
  public static n a(m paramm1, m paramm2) {
    n n1 = new n(2);
    n1.a(0, paramm1);
    n1.a(1, paramm2);
    return n1;
  }
  
  public static n a(m paramm1, m paramm2, m paramm3) {
    n n1 = new n(3);
    n1.a(0, paramm1);
    n1.a(1, paramm2);
    n1.a(2, paramm3);
    return n1;
  }
  
  public n a(int paramInt, boolean paramBoolean, BitSet paramBitSet) {
    int k = a();
    if (k == 0)
      return this; 
    n n1 = new n(k);
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < k) {
      m m = (m)d(paramInt);
      j = 1;
      if (paramBitSet != null && paramBitSet.get(paramInt))
        j = 0; 
      if (j != 0) {
        n1.a(paramInt, m.b(i));
        j = i;
        if (!paramBoolean)
          j = i + m.i(); 
      } else {
        n1.a(paramInt, m);
        j = i;
      } 
      boolean bool = paramBoolean;
      if (paramBoolean)
        bool = false; 
      paramInt++;
      paramBoolean = bool;
      i = j;
    } 
    if (f())
      n1.e(); 
    return n1;
  }
  
  public n a(BitSet paramBitSet) {
    int i = a() - paramBitSet.cardinality();
    if (i == 0)
      return a; 
    n n1 = new n(i);
    i = 0;
    for (byte b = 0; i < a(); b = b1) {
      byte b1 = b;
      if (!paramBitSet.get(i)) {
        n1.a(b, d(i));
        b1 = b + 1;
      } 
      i++;
    } 
    if (f())
      n1.e(); 
    return n1;
  }
  
  public c a(int paramInt) { return b(paramInt).b().b(); }
  
  public void a(int paramInt, m paramm) { a(paramInt, paramm); }
  
  public int b() {
    int j = a();
    byte b = 0;
    int i = 0;
    while (b < j) {
      i += a(b).g();
      b++;
    } 
    return i;
  }
  
  public m b(int paramInt) { return (m)d(paramInt); }
  
  public n b(m paramm) {
    int i = a();
    n n1 = new n(i + 1);
    for (byte b = 0; b < i; b = b1) {
      byte b1 = b + true;
      n1.a(b1, d(b));
    } 
    n1.a(0, paramm);
    if (f())
      n1.e(); 
    return n1;
  }
  
  public n c(int paramInt) {
    int i = a();
    if (i == 0)
      return this; 
    n n1 = new n(i);
    for (byte b = 0; b < i; b++) {
      m m = (m)d(b);
      if (m != null)
        n1.a(b, m.c(paramInt)); 
    } 
    if (f())
      n1.e(); 
    return n1;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
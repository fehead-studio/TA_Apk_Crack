package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.d;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.g;
import com.android.cglib.dx.d.h;
import java.util.ArrayList;

public final class i extends h {
  private final int a;
  
  public i(int paramInt1, int paramInt2) {
    super(paramInt1);
    this.a = paramInt2;
  }
  
  public static i a(ArrayList<h> paramArrayList, int paramInt) {
    int j = paramArrayList.size();
    i i1 = new i(j, paramInt);
    for (paramInt = 0; paramInt < j; paramInt++)
      i1.a(paramInt, (h)paramArrayList.get(paramInt)); 
    i1.e();
    return i1;
  }
  
  public h a(int paramInt) { return (h)d(paramInt); }
  
  public void a(int paramInt, h paramh) { a(paramInt, paramh); }
  
  public void a(a parama) {
    int m = parama.g();
    int n = a();
    boolean bool = parama.a();
    byte b = 0;
    int k = b;
    if (bool) {
      bool = parama.b();
      for (byte b1 = 0;; b1++) {
        k = b;
        if (b1 < n) {
          String str = (h)d(b1);
          k = str.n() * 2;
          if (k != 0 || bool) {
            String str1 = str.a("  ", parama.d(), true);
          } else {
            str = null;
          } 
          if (str == null)
            if (k != 0) {
              str = "";
            } else {
              continue;
            }  
          parama.a(k, str);
          continue;
        } 
        break;
      } 
    } 
    while (k < n) {
      h h1 = (h)d(k);
      try {
        h1.a(parama);
        k++;
      } catch (RuntimeException parama) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("...while writing ");
        stringBuilder.append(h1);
        throw g.a(parama, stringBuilder.toString());
      } 
    } 
    int j = (parama.g() - m) / 2;
    if (j != b()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("write length mismatch; expected ");
      stringBuilder.append(b());
      stringBuilder.append(" but actually wrote ");
      stringBuilder.append(j);
      throw new RuntimeException(stringBuilder.toString());
    } 
  }
  
  public int b() {
    int j = a();
    return (j == 0) ? 0 : a(j - 1).m();
  }
  
  public int c() { return this.a; }
  
  public int d() {
    int k = a();
    byte b = 0;
    int j;
    for (j = 0; b < k; j = m) {
      int m;
      h h1 = (h)d(b);
      if (!(h1 instanceof f)) {
        m = j;
      } else {
        a a1 = ((f)h1).b();
        if (!(a1 instanceof d)) {
          m = j;
        } else {
          boolean bool;
          if (h1.g().b() == 113) {
            bool = true;
          } else {
            bool = false;
          } 
          int n = ((d)a1).b(bool);
          m = j;
          if (n > j)
            m = n; 
        } 
      } 
      b++;
    } 
    return j;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
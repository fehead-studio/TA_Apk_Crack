package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.f;
import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.d.a;

public final class aa extends n {
  public static final n b = new aa();
  
  public int a() { return 5; }
  
  public String a(h paramh) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(b(paramh.i()));
    stringBuilder.append(", ");
    stringBuilder.append(f(paramh));
    return stringBuilder.toString();
  }
  
  public void a(a parama, h paramh) {
    n n1 = paramh.i();
    int j = ((f)paramh).c();
    int k = n1.a();
    int i = 0;
    if (k != 0)
      i = n1.b(0).e(); 
    k = n1.b();
    a(parama, h(paramh), j, (short)k, (short)i);
  }
  
  public String b(h paramh, boolean paramBoolean) { return paramBoolean ? g(paramh) : ""; }
  
  public boolean b(h paramh) {
    null = a;
    boolean bool = false;
    if (!null)
      return false; 
    if (!(paramh instanceof f))
      return false; 
    f f = (f)paramh;
    a a = f.b();
    if (!(a instanceof com.android.cglib.dx.c.c.s) && !(a instanceof com.android.cglib.dx.c.c.w))
      return false; 
    n n1 = f.i();
    n1.a();
    if (n1.a() != 0) {
      null = bool;
      if (c(n1)) {
        null = bool;
        if (f(n1.b(0).e())) {
          null = bool;
          if (f(n1.b()))
            return true; 
        } 
      } 
      return null;
    } 
    return true;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
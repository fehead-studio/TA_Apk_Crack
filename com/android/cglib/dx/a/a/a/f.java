package com.android.cglib.dx.a.a.a;

import com.android.cglib.dx.a.a.h;
import com.android.cglib.dx.a.a.n;
import com.android.cglib.dx.a.a.z;
import com.android.cglib.dx.d.a;

public final class f extends n {
  public static final n b = new f();
  
  public int a() { return 2; }
  
  public String a(h paramh) { return d(paramh); }
  
  public void a(a parama, h paramh) {
    int i = ((z)paramh).d();
    a(parama, a(paramh, 0), (short)i);
  }
  
  public boolean a(z paramz) {
    int i = paramz.d();
    return (i != 0 && e(i));
  }
  
  public String b(h paramh, boolean paramBoolean) { return e(paramh); }
  
  public boolean b(h paramh) {
    if (!(paramh instanceof z) || paramh.i().a() != 0)
      return false; 
    z z = (z)paramh;
    return z.o() ? a(z) : 1;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
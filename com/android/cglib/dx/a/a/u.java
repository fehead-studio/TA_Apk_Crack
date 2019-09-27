package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.s;
import com.android.cglib.dx.d.h;

public final class u extends h {
  public static final u a = new u(0);
  
  public u(int paramInt) { super(paramInt); }
  
  public static u a(i parami, int paramInt) {
    a[] arrayOfa;
    s s2;
    s s1;
    int k;
    int j;
    byte b3;
    byte b2;
    byte b1;
    u u1;
    switch (paramInt) {
      default:
        throw new IllegalArgumentException("bogus howMuch");
      case 2:
      case 3:
        s2 = s.a;
        k = parami.a();
        arrayOfa = new a[k];
        j = 0;
        s1 = s2;
        b2 = 0;
        b1 = 0;
        for (b3 = 0; b2 < k; b3 = b4) {
          s s;
          byte b5;
          byte b4;
          h h1 = parami.a(b2);
          if (h1 instanceof e) {
            b4 = 1;
            b5 = b1;
            s = s1;
          } else {
            s s3 = h1.h();
            b5 = b1;
            s = s1;
            b4 = b3;
            if (!s3.equals(s2))
              if (s3.a(s1)) {
                b5 = b1;
                s = s1;
                b4 = b3;
              } else if (paramInt == 3 && b3 == 0) {
                b5 = b1;
                s = s1;
                b4 = b3;
              } else {
                arrayOfa[b1] = new a(h1.f(), s3);
                b5 = b1 + 1;
                s = s3;
                b4 = 0;
              }  
          } 
          b2++;
          b1 = b5;
          s1 = s;
        } 
        u1 = new u(b1);
        for (paramInt = j; paramInt < b1; paramInt++)
          u1.a(paramInt, arrayOfa[paramInt]); 
        u1.e();
        return u1;
      case 1:
        break;
    } 
    return a;
  }
  
  public a a(int paramInt) { return (a)d(paramInt); }
  
  public void a(int paramInt, a parama) { a(paramInt, parama); }
  
  public static class a {
    private final int a;
    
    private final s b;
    
    public a(int param1Int, s param1s) {
      if (param1Int < 0)
        throw new IllegalArgumentException("address < 0"); 
      if (param1s == null)
        throw new NullPointerException("position == null"); 
      this.a = param1Int;
      this.b = param1s;
    }
    
    public int a() { return this.a; }
    
    public s b() { return this.b; }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\\\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
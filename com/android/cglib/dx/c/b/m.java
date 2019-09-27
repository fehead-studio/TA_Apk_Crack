package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.c.d.d;
import com.android.cglib.dx.d.r;
import java.util.HashMap;

public final class m extends Object implements d, r, Comparable<m> {
  private static final HashMap<Object, m> a = new HashMap(1000);
  
  private static final a b = new a(null);
  
  private final int c;
  
  private final d d;
  
  private final h e;
  
  private m(int paramInt, d paramd, h paramh) {
    if (paramInt < 0)
      throw new IllegalArgumentException("reg < 0"); 
    if (paramd == null)
      throw new NullPointerException("type == null"); 
    this.c = paramInt;
    this.d = paramd;
    this.e = paramh;
  }
  
  public static m a(int paramInt, d paramd) { return c(paramInt, paramd, null); }
  
  public static m a(int paramInt, d paramd, h paramh) { return c(paramInt, paramd, paramh); }
  
  public static String a(int paramInt) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("v");
    stringBuilder.append(paramInt);
    return stringBuilder.toString();
  }
  
  private String a(boolean paramBoolean) {
    StringBuffer stringBuffer = new StringBuffer(40);
    stringBuffer.append(k());
    stringBuffer.append(":");
    if (this.e != null)
      stringBuffer.append(this.e.toString()); 
    c c1 = this.d.b();
    stringBuffer.append(c1);
    if (c1 != this.d) {
      String str;
      stringBuffer.append("=");
      if (paramBoolean && this.d instanceof v) {
        str = ((v)this.d).f();
      } else if (paramBoolean && this.d instanceof com.android.cglib.dx.c.c.a) {
        str = this.d.a_();
      } else {
        stringBuffer.append(this.d);
        return stringBuffer.toString();
      } 
      stringBuffer.append(str);
    } 
    return stringBuffer.toString();
  }
  
  private static m c(int paramInt, d paramd, h paramh) {
    synchronized (a) {
      b.a(paramInt, paramd, paramh);
      paramd = (m)a.get(b);
      if (paramd != null)
        return paramd; 
      paramd = b.a();
      a.put(paramd, paramd);
      return paramd;
    } 
  }
  
  private boolean d(int paramInt, d paramd, h paramh) { return (this.c == paramInt && this.d.equals(paramd) && (this.e == paramh || (this.e != null && this.e.equals(paramh)))); }
  
  private static int e(int paramInt, d paramd, h paramh) {
    boolean bool;
    if (paramh != null) {
      bool = paramh.hashCode();
    } else {
      bool = false;
    } 
    return (bool * 31 + paramd.hashCode()) * 31 + paramInt;
  }
  
  public m a(d paramd) { return a(this.c, paramd, this.e); }
  
  public boolean a(m paramm) {
    boolean bool2 = b(paramm);
    boolean bool1 = false;
    if (!bool2)
      return false; 
    if (this.c == paramm.c)
      bool1 = true; 
    return bool1;
  }
  
  public String a_() { return a(true); }
  
  public m b(int paramInt) { return (this.c == paramInt) ? this : a(paramInt, this.d, this.e); }
  
  public c b() { return this.d.b(); }
  
  public boolean b(m paramm) {
    byte b1 = 0;
    if (paramm == null)
      return false; 
    int i = b1;
    if (this.d.b().equals(paramm.d.b())) {
      if (this.e != paramm.e) {
        i = b1;
        if (this.e != null) {
          i = b1;
          if (this.e.equals(paramm.e))
            return true; 
        } 
        return i;
      } 
    } else {
      return i;
    } 
    return true;
  }
  
  public final int c() { return this.d.c(); }
  
  public int c(m paramm) {
    int i = this.c;
    int j = paramm.c;
    byte b1 = -1;
    if (i < j)
      return -1; 
    if (this.c > paramm.c)
      return 1; 
    i = this.d.b().a(paramm.d.b());
    if (i != 0)
      return i; 
    if (this.e == null) {
      if (paramm.e == null)
        b1 = 0; 
      return b1;
    } 
    return (paramm.e == null) ? 1 : this.e.a(paramm.e);
  }
  
  public m c(int paramInt) { return (paramInt == 0) ? this : b(this.c + paramInt); }
  
  public final int d() { return this.d.d(); }
  
  public int e() { return this.c; }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof m)) {
      if (paramObject instanceof a) {
        a a1;
        int j = (a1 = (a)paramObject).a(a1);
        paramObject = a.b(a1);
        h h2 = a.c(a1);
        return d(j, paramObject, h2);
      } 
      return false;
    } 
    m m1 = (m)paramObject;
    int i = m1.c;
    paramObject = m1.d;
    h h1 = m1.e;
    return d(i, paramObject, h1);
  }
  
  public d f() { return this.d; }
  
  public h g() { return this.e; }
  
  public int h() { return this.c + i(); }
  
  public int hashCode() { return e(this.c, this.d, this.e); }
  
  public int i() { return this.d.b().g(); }
  
  public boolean j() { return this.d.b().h(); }
  
  public String k() { return a(this.c); }
  
  public String toString() { return a(false); }
  
  private static class a {
    private int a;
    
    private d b;
    
    private h c;
    
    private a() {}
    
    public m a() { return new m(this.a, this.b, this.c, null); }
    
    public void a(int param1Int, d param1d, h param1h) {
      this.a = param1Int;
      this.b = param1d;
      this.c = param1h;
    }
    
    public boolean equals(Object param1Object) { return !(param1Object instanceof m) ? false : m.a((m)param1Object, this.a, this.b, this.c); }
    
    public int hashCode() { return m.b(this.a, this.b, this.c); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.o;

public final class o extends o {
  public static final o a = new o(0);
  
  private final m[] b;
  
  private int c;
  
  public o(int paramInt) {
    super(bool);
    this.b = new m[paramInt];
    this.c = 0;
  }
  
  public int a() { return this.b.length; }
  
  public m a(int paramInt) {
    try {
      return this.b[paramInt];
    } catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
      throw new IllegalArgumentException("bogus reg");
    } 
  }
  
  public m a(m paramm) {
    int i = this.b.length;
    for (byte b1 = 0; b1 < i; b1++) {
      m m1 = this.b[b1];
      if (m1 != null && paramm.b(m1))
        return m1; 
    } 
    return null;
  }
  
  public void a(o paramo) {
    int i = paramo.a();
    for (byte b1 = 0; b1 < i; b1++) {
      m m1 = paramo.a(b1);
      if (m1 != null)
        c(m1); 
    } 
  }
  
  public int b() {
    int j = this.c;
    int i = j;
    if (j < 0) {
      int k = this.b.length;
      j = 0;
      for (i = 0; j < k; i = n) {
        int n = i;
        if (this.b[j] != null)
          n = i + 1; 
        j++;
      } 
      this.c = i;
    } 
    return i;
  }
  
  public o b(int paramInt) {
    int i = this.b.length;
    o o1 = new o(i + paramInt);
    for (byte b1 = 0; b1 < i; b1++) {
      m m1 = this.b[b1];
      if (m1 != null)
        o1.c(m1.c(paramInt)); 
    } 
    o1.c = this.c;
    if (f())
      o1.e(); 
    return o1;
  }
  
  public void b(m paramm) {
    try {
      this.b[paramm.e()] = null;
      this.c = -1;
      return;
    } catch (ArrayIndexOutOfBoundsException paramm) {
      throw new IllegalArgumentException("bogus reg");
    } 
  }
  
  public void c(m paramm) {
    h();
    if (paramm == null)
      throw new NullPointerException("spec == null"); 
    this.c = -1;
    try {
      int i = paramm.e();
      this.b[i] = paramm;
      if (i > 0) {
        int j = i - 1;
        m m1 = this.b[j];
        if (m1 != null && m1.i() == 2)
          this.b[j] = null; 
      } 
      if (paramm.i() == 2)
        this.b[i + 1] = null; 
      return;
    } catch (ArrayIndexOutOfBoundsException paramm) {
      throw new IllegalArgumentException("spec.getReg() out of range");
    } 
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof o))
      return false; 
    o o1 = (o)paramObject;
    m[] arrayOfm = o1.b;
    int i = this.b.length;
    if (i == arrayOfm.length) {
      if (b() != o1.b())
        return false; 
      for (byte b1 = 0; b1 < i; b1++) {
        m m1 = this.b[b1];
        m m2 = arrayOfm[b1];
        if (m1 != m2)
          if (m1 != null) {
            if (!m1.equals(m2))
              return false; 
          } else {
            return false;
          }  
      } 
      return true;
    } 
    return false;
  }
  
  public int hashCode() {
    int j = this.b.length;
    byte b1 = 0;
    int i = 0;
    while (b1 < j) {
      int k;
      m m1 = this.b[b1];
      if (m1 == null) {
        k = 0;
      } else {
        k = m1.hashCode();
      } 
      i = i * 31 + k;
      b1++;
    } 
    return i;
  }
  
  public String toString() {
    int i = this.b.length;
    StringBuffer stringBuffer = new StringBuffer(i * 25);
    stringBuffer.append('{');
    byte b2 = 0;
    for (byte b1 = 0; b2 < i; b1 = b3) {
      m m1 = this.b[b2];
      byte b3 = b1;
      if (m1 != null) {
        if (b1) {
          stringBuffer.append(", ");
        } else {
          b1 = 1;
        } 
        stringBuffer.append(m1);
        b3 = b1;
      } 
      b2++;
    } 
    stringBuffer.append('}');
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
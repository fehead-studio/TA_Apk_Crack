package com.android.cglib.dx.d;

import java.io.Writer;
import java.util.ArrayList;

public final class d implements a, e {
  private final boolean a;
  
  private byte[] b;
  
  private int c;
  
  private boolean d;
  
  private ArrayList<a> e;
  
  private int f;
  
  private int g;
  
  public d() { this(1000); }
  
  public d(int paramInt) { this(new byte[paramInt], true); }
  
  public d(byte[] paramArrayOfByte) { this(paramArrayOfByte, false); }
  
  private d(byte[] paramArrayOfByte, boolean paramBoolean) {
    if (paramArrayOfByte == null)
      throw new NullPointerException("data == null"); 
    this.a = paramBoolean;
    this.b = paramArrayOfByte;
    this.c = 0;
    this.d = false;
    this.e = null;
    this.f = 0;
    this.g = 0;
  }
  
  private static void i() { throw new IndexOutOfBoundsException("attempt to write past the end"); }
  
  private void i(int paramInt) {
    if (this.b.length < paramInt) {
      byte[] arrayOfByte = new byte[paramInt * 2 + 1000];
      System.arraycopy(this.b, 0, arrayOfByte, 0, this.c);
      this.b = arrayOfByte;
    } 
  }
  
  public void a(int paramInt) {
    if (this.c != paramInt) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("expected cursor ");
      stringBuilder.append(paramInt);
      stringBuilder.append("; actual value: ");
      stringBuilder.append(this.c);
      throw new g(stringBuilder.toString());
    } 
  }
  
  public void a(int paramInt, String paramString) {
    if (this.e == null)
      return; 
    c();
    int i = this.e.size();
    if (i == 0) {
      i = 0;
    } else {
      i = ((a)this.e.get(i - 1)).b();
    } 
    int j = i;
    if (i <= this.c)
      j = this.c; 
    this.e.add(new a(j, paramInt + j, paramString));
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    int i;
    if (this.e != null || this.c != 0)
      throw new RuntimeException("cannot enable annotations"); 
    if (paramInt < 40)
      throw new IllegalArgumentException("annotationWidth < 40"); 
    int j = (paramInt - 7) / 15 + 1 & 0xFFFFFFFE;
    if (j < 6) {
      i = 6;
    } else {
      i = j;
      if (j > 10)
        i = 10; 
    } 
    this.e = new ArrayList(1000);
    this.f = paramInt;
    this.g = i;
    this.d = paramBoolean;
  }
  
  public void a(c paramc) {
    int j = paramc.a();
    int i = this.c;
    j += i;
    if (this.a) {
      i(j);
    } else if (j > this.b.length) {
      i();
      return;
    } 
    paramc.a(this.b, i);
    this.c = j;
  }
  
  public void a(Writer paramWriter) {
    int i = d();
    s s = new s(paramWriter, this.f - i - 1, i, "|");
    Writer writer1 = s.a();
    Writer writer2 = s.b();
    int m = this.e.size();
    i = 0;
    int j;
    for (j = 0; j < this.c && i < m; j = n) {
      int i1;
      String str = (a)this.e.get(i);
      int n = str.a();
      if (j < n) {
        str = "";
        i1 = j;
        j = i;
        i = n;
      } else {
        i1 = str.b();
        str = str.c();
        j = i + 1;
        i = i1;
        i1 = n;
      } 
      writer1.write(i.a(this.b, i1, i - i1, i1, this.g, 6));
      writer2.write(str);
      s.c();
      n = i;
      i = j;
    } 
    int k = i;
    if (j < this.c) {
      writer1.write(i.a(this.b, j, this.c - j, j, this.g, 6));
      k = i;
    } 
    while (k < m) {
      writer2.write(((a)this.e.get(k)).c());
      k++;
    } 
    s.c();
  }
  
  public void a(String paramString) {
    if (this.e == null)
      return; 
    c();
    this.e.add(new a(this.c, paramString));
  }
  
  public void a(byte[] paramArrayOfByte) { a(paramArrayOfByte, 0, paramArrayOfByte.length); }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2) {
    int i = this.c;
    int j = i + paramInt2;
    if ((paramInt1 | paramInt2 | j) < 0 || paramInt1 + paramInt2 > paramArrayOfByte.length) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("bytes.length ");
      stringBuilder.append(paramArrayOfByte.length);
      stringBuilder.append("; ");
      stringBuilder.append(paramInt1);
      stringBuilder.append("..!");
      stringBuilder.append(j);
      throw new IndexOutOfBoundsException(stringBuilder.toString());
    } 
    if (this.a) {
      i(j);
    } else if (j > this.b.length) {
      i();
      return;
    } 
    System.arraycopy(paramArrayOfByte, paramInt1, this.b, i, paramInt2);
    this.c = j;
  }
  
  public boolean a() { return (this.e != null); }
  
  public void b(int paramInt) {
    int i = this.c;
    int j = i + 1;
    if (this.a) {
      i(j);
    } else if (j > this.b.length) {
      i();
      return;
    } 
    this.b[i] = (byte)paramInt;
    this.c = j;
  }
  
  public boolean b() { return this.d; }
  
  public void c() {
    if (this.e == null)
      return; 
    int i = this.e.size();
    if (i != 0)
      ((a)this.e.get(i - 1)).a(this.c); 
  }
  
  public void c(int paramInt) {
    int i = this.c;
    int j = i + 2;
    if (this.a) {
      i(j);
    } else if (j > this.b.length) {
      i();
      return;
    } 
    this.b[i] = (byte)paramInt;
    this.b[i + 1] = (byte)(paramInt >> 8);
    this.c = j;
  }
  
  public int d() {
    int i = this.g;
    int j = this.g / 2;
    return this.f - i * 2 + 8 + j;
  }
  
  public void d(int paramInt) {
    int i = this.c;
    int j = i + 4;
    if (this.a) {
      i(j);
    } else if (j > this.b.length) {
      i();
      return;
    } 
    this.b[i] = (byte)paramInt;
    this.b[i + 1] = (byte)(paramInt >> 8);
    this.b[i + 2] = (byte)(paramInt >> 16);
    this.b[i + 3] = (byte)(paramInt >> 24);
    this.c = j;
  }
  
  public int e(int paramInt) {
    if (this.a)
      i(this.c + 5); 
    int i = this.c;
    n.a(this, paramInt);
    return this.c - i;
  }
  
  public byte[] e() { return this.b; }
  
  public int f(int paramInt) {
    if (this.a)
      i(this.c + 5); 
    int i = this.c;
    n.b(this, paramInt);
    return this.c - i;
  }
  
  public byte[] f() {
    byte[] arrayOfByte = new byte[this.c];
    System.arraycopy(this.b, 0, arrayOfByte, 0, this.c);
    return arrayOfByte;
  }
  
  public int g() { return this.c; }
  
  public void g(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("count < 0"); 
    paramInt = this.c + paramInt;
    if (this.a) {
      i(paramInt);
    } else if (paramInt > this.b.length) {
      i();
      return;
    } 
    this.c = paramInt;
  }
  
  public void h() {
    c();
    if (this.e != null) {
      int i = this.e.size();
      while (i > 0) {
        ArrayList arrayList = this.e;
        int j = i - 1;
        a a1 = (a)arrayList.get(j);
        if (a1.a() > this.c) {
          this.e.remove(j);
          i--;
          continue;
        } 
        if (a1.b() > this.c)
          a1.b(this.c); 
      } 
    } 
  }
  
  public void h(int paramInt) {
    int i = paramInt - 1;
    if (paramInt < 0 || (paramInt & i) != 0)
      throw new IllegalArgumentException("bogus alignment"); 
    paramInt = this.c + i & (i ^ 0xFFFFFFFF);
    if (this.a) {
      i(paramInt);
    } else if (paramInt > this.b.length) {
      i();
      return;
    } 
    this.c = paramInt;
  }
  
  private static class a {
    private final int a;
    
    private int b;
    
    private final String c;
    
    public a(int param1Int1, int param1Int2, String param1String) {
      this.a = param1Int1;
      this.b = param1Int2;
      this.c = param1String;
    }
    
    public a(int param1Int, String param1String) { this(param1Int, 2147483647, param1String); }
    
    public int a() { return this.a; }
    
    public void a(int param1Int) {
      if (this.b == Integer.MAX_VALUE)
        this.b = param1Int; 
    }
    
    public int b() { return this.b; }
    
    public void b(int param1Int) { this.b = param1Int; }
    
    public String c() { return this.c; }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
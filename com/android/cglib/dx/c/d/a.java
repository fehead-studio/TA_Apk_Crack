package com.android.cglib.dx.c.d;

import java.util.HashMap;

public final class a extends Object implements Comparable<a> {
  private static final HashMap<String, a> a = new HashMap(500);
  
  private final String b;
  
  private final c c;
  
  private final b d;
  
  private b e;
  
  private a(String paramString, c paramc, b paramb) {
    if (paramString == null)
      throw new NullPointerException("descriptor == null"); 
    if (paramc == null)
      throw new NullPointerException("returnType == null"); 
    if (paramb == null)
      throw new NullPointerException("parameterTypes == null"); 
    this.b = paramString;
    this.c = paramc;
    this.d = paramb;
    this.e = null;
  }
  
  public static a a(String paramString) {
    if (paramString == null)
      throw new NullPointerException("descriptor == null"); 
    synchronized (a) {
      a a1 = (a)a.get(paramString);
      if (a1 != null)
        return a1; 
      null = b(paramString);
      byte b2 = 0;
      char c1 = '\001';
      byte b1 = 0;
      while (true) {
        char c2 = paramString.charAt(c1);
        if (c2 == ')') {
          c c3 = c.b(paramString.substring(c1 + 1));
          b b4 = new b(b1);
          for (c1 = b2; c1 < b1; c1++)
            b4.a(c1, null[c1]); 
          return b(new a(paramString, c3, b4));
        } 
        byte b3 = c1;
        while (c2 == '[')
          c2 = paramString.charAt(++b3); 
        if (c2 == 'L') {
          int i = paramString.indexOf(';', b3);
          if (i == -1)
            throw new IllegalArgumentException("bad descriptor"); 
          i++;
        } else {
          c2 = b3 + 1;
        } 
        null[b1] = c.a(paramString.substring(c1, c2));
        b1++;
        c1 = c2;
      } 
    } 
  }
  
  private static a b(a parama) {
    synchronized (a) {
      String str = parama.a();
      a a1 = (a)a.get(str);
      if (a1 != null)
        return a1; 
      a.put(str, parama);
      return parama;
    } 
  }
  
  private static c[] b(String paramString) {
    byte b3;
    int i = paramString.length();
    boolean bool = false;
    if (paramString.charAt(0) != '(')
      throw new IllegalArgumentException("bad descriptor"); 
    byte b1 = 1;
    byte b2 = 0;
    while (true) {
      b3 = bool;
      if (b1 < i) {
        char c1 = paramString.charAt(b1);
        if (c1 == ')') {
          b3 = b1;
          break;
        } 
        b3 = b2;
        if (c1 >= 'A') {
          b3 = b2;
          if (c1 <= 'Z')
            b3 = b2 + 1; 
        } 
        b1++;
        b2 = b3;
        continue;
      } 
      break;
    } 
    if (b3 == 0 || b3 == i - 1)
      throw new IllegalArgumentException("bad descriptor"); 
    if (paramString.indexOf(')', b3 + 1) != -1)
      throw new IllegalArgumentException("bad descriptor"); 
    return new c[b2];
  }
  
  public int a(a parama) {
    if (this == parama)
      return 0; 
    int i = this.c.a(parama.c);
    if (i != 0)
      return i; 
    int j = this.d.a();
    int k = parama.d.a();
    int m = Math.min(j, k);
    for (i = 0; i < m; i++) {
      int n = this.d.b(i).a(parama.d.b(i));
      if (n != 0)
        return n; 
    } 
    return (j < k) ? -1 : ((j > k) ? 1 : 0);
  }
  
  public a a(c paramc) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("(");
    stringBuilder.append(paramc.e());
    stringBuilder.append(this.b.substring(1));
    String str = stringBuilder.toString();
    b b1 = this.d.b(paramc);
    b1.e();
    return b(new a(str, this.c, b1));
  }
  
  public String a() { return this.b; }
  
  public c b() { return this.c; }
  
  public b c() { return this.d; }
  
  public b d() {
    if (this.e == null) {
      b b2;
      int i = this.d.a();
      b b3 = new b(i);
      byte b1 = 0;
      boolean bool = false;
      while (b1 < i) {
        c c1 = this.d.b(b1);
        b2 = c1;
        if (c1.i()) {
          b2 = c.f;
          bool = true;
        } 
        b3.a(b1, b2);
        b1++;
      } 
      if (bool) {
        b2 = b3;
      } else {
        b2 = this.d;
      } 
      this.e = b2;
    } 
    return this.e;
  }
  
  public boolean equals(Object paramObject) { return (this == paramObject) ? true : (!(paramObject instanceof a) ? false : this.b.equals(((a)paramObject).b)); }
  
  public int hashCode() { return this.b.hashCode(); }
  
  public String toString() { return this.b; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
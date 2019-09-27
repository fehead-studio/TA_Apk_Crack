package com.android.cglib.dx.c.d;

import java.util.HashMap;

public final class c extends Object implements d, Comparable<c> {
  public static final c A;
  
  public static final c B;
  
  public static final c C;
  
  public static final c D;
  
  public static final c E;
  
  public static final c F;
  
  public static final c G;
  
  public static final c H;
  
  public static final c I;
  
  public static final c J;
  
  private static final HashMap<String, c> K = new HashMap(500);
  
  public static final c a = new c("Z", 1);
  
  public static final c b = new c("B", 2);
  
  public static final c c = new c("C", 3);
  
  public static final c d = new c("D", 4);
  
  public static final c e = new c("F", 5);
  
  public static final c f = new c("I", 6);
  
  public static final c g = new c("J", 7);
  
  public static final c h = new c("S", 8);
  
  public static final c i = new c("V", 0);
  
  public static final c j = new c("<null>", 9);
  
  public static final c k;
  
  public static final c l;
  
  public static final c m;
  
  public static final c n;
  
  public static final c o;
  
  public static final c p;
  
  public static final c q;
  
  public static final c r;
  
  public static final c s;
  
  public static final c t;
  
  public static final c u;
  
  public static final c v;
  
  public static final c w;
  
  public static final c x;
  
  public static final c y;
  
  public static final c z;
  
  private final String L;
  
  private final int M;
  
  private final int N;
  
  private String O;
  
  private c P;
  
  private c Q;
  
  private c R;
  
  static  {
    A = (z = (y = (x = (w = (v = (u = (t = (s = (r = (q = (p = (o = (n = (m = (l = (k = new c("<addr>", 10)).b(a).b(b).b(c).b(d).b(e).b(f).b(g).b(h).a("Ljava/lang/annotation/Annotation;")).a("Ljava/lang/Class;")).a("Ljava/lang/Cloneable;")).a("Ljava/lang/Object;")).a("Ljava/io/Serializable;")).a("Ljava/lang/String;")).a("Ljava/lang/Throwable;")).a("Ljava/lang/Boolean;")).a("Ljava/lang/Byte;")).a("Ljava/lang/Character;")).a("Ljava/lang/Double;")).a("Ljava/lang/Float;")).a("Ljava/lang/Integer;")).a("Ljava/lang/Long;")).a("Ljava/lang/Short;")).a("Ljava/lang/Void;");
    B = a.l();
    C = b.l();
    D = c.l();
    E = d.l();
    F = e.l();
    G = f.l();
    H = g.l();
    I = o.l();
    J = h.l();
  }
  
  private c(String paramString, int paramInt) { this(paramString, paramInt, -1); }
  
  private c(String paramString, int paramInt1, int paramInt2) {
    if (paramString == null)
      throw new NullPointerException("descriptor == null"); 
    if (paramInt1 < 0 || paramInt1 >= 11)
      throw new IllegalArgumentException("bad basicType"); 
    if (paramInt2 < -1)
      throw new IllegalArgumentException("newAt < -1"); 
    this.L = paramString;
    this.M = paramInt1;
    this.N = paramInt2;
    this.P = null;
    this.Q = null;
    this.R = null;
  }
  
  public static c a(String paramString) {
    synchronized (K) {
      c c1 = (c)K.get(paramString);
      if (c1 != null)
        return c1; 
      try {
        char c2 = paramString.charAt(0);
        if (c2 == '[')
          return a(paramString.substring(1)).l(); 
        int i1 = paramString.length();
        if (c2 == 'L')
          if (paramString.charAt(--i1) == ';') {
            for (c2 = '\001'; c2 < i1; c2++) {
              StringBuilder stringBuilder;
              switch (paramString.charAt(c2)) {
                case '/':
                  if (c2 == '\001' || c2 == i1 || paramString.charAt(c2 - '\001') == '/') {
                    StringBuilder stringBuilder1 = new StringBuilder();
                    stringBuilder1.append("bad descriptor: ");
                    stringBuilder1.append(paramString);
                    throw new IllegalArgumentException(stringBuilder1.toString());
                  } 
                  break;
                case '(':
                case ')':
                case '.':
                case ';':
                case '[':
                  stringBuilder = new StringBuilder();
                  stringBuilder.append("bad descriptor: ");
                  stringBuilder.append(paramString);
                  throw new IllegalArgumentException(stringBuilder.toString());
              } 
            } 
            return b(new c(paramString, 9));
          }  
        null = new StringBuilder();
        null.append("bad descriptor: ");
        null.append(paramString);
        throw new IllegalArgumentException(null.toString());
      } catch (IndexOutOfBoundsException paramString) {
        throw new IllegalArgumentException("descriptor is empty");
      } catch (NullPointerException paramString) {}
      throw new NullPointerException("descriptor == null");
    } 
  }
  
  private static c b(c paramc) {
    synchronized (K) {
      String str = paramc.e();
      c c1 = (c)K.get(str);
      if (c1 != null)
        return c1; 
      K.put(str, paramc);
      return paramc;
    } 
  }
  
  public static c b(String paramString) {
    try {
      return paramString.equals("V") ? i : a(paramString);
    } catch (NullPointerException paramString) {
      throw new NullPointerException("descriptor == null");
    } 
  }
  
  public int a(c paramc) { return this.L.compareTo(paramc.L); }
  
  public String a_() {
    switch (this.M) {
      default:
        return this.L;
      case 9:
        if (k()) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(m().a_());
          stringBuilder.append("[]");
          return stringBuilder.toString();
        } 
        return f().replace("/", ".");
      case 8:
        return "short";
      case 7:
        return "long";
      case 6:
        return "int";
      case 5:
        return "float";
      case 4:
        return "double";
      case 3:
        return "char";
      case 2:
        return "byte";
      case 1:
        return "boolean";
      case 0:
        break;
    } 
    return "void";
  }
  
  public c b() { return this; }
  
  public int c() { return this.M; }
  
  public int d() {
    int i1 = this.M;
    if (i1 != 6 && i1 != 8)
      switch (i1) {
        default:
          return this.M;
        case 1:
        case 2:
        case 3:
          break;
      }  
    return 6;
  }
  
  public String e() { return this.L; }
  
  public boolean equals(Object paramObject) { return (this == paramObject) ? true : (!(paramObject instanceof c) ? false : this.L.equals(((c)paramObject).L)); }
  
  public String f() {
    if (this.O == null) {
      String str;
      if (!j()) {
        str = new StringBuilder();
        str.append("not an object type: ");
        str.append(this.L);
        throw new IllegalArgumentException(str.toString());
      } 
      if (this.L.charAt(0) == '[') {
        str = this.L;
      } else {
        str = this.L.substring(1, this.L.length() - 1);
      } 
      this.O = str;
    } 
    return this.O;
  }
  
  public int g() {
    int i1 = this.M;
    return (i1 != 4 && i1 != 7) ? 1 : 2;
  }
  
  public boolean h() {
    int i1 = this.M;
    return !(i1 != 4 && i1 != 7);
  }
  
  public int hashCode() { return this.L.hashCode(); }
  
  public boolean i() {
    int i1 = this.M;
    if (i1 != 6 && i1 != 8)
      switch (i1) {
        default:
          return false;
        case 1:
        case 2:
        case 3:
          break;
      }  
    return true;
  }
  
  public boolean j() { return (this.M == 9); }
  
  public boolean k() {
    String str = this.L;
    boolean bool = false;
    if (str.charAt(0) == '[')
      bool = true; 
    return bool;
  }
  
  public c l() {
    if (this.P == null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append('[');
      stringBuilder.append(this.L);
      this.P = b(new c(stringBuilder.toString(), 9));
    } 
    return this.P;
  }
  
  public c m() {
    if (this.Q == null) {
      if (this.L.charAt(0) != '[') {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("not an array type: ");
        stringBuilder.append(this.L);
        throw new IllegalArgumentException(stringBuilder.toString());
      } 
      this.Q = a(this.L.substring(1));
    } 
    return this.Q;
  }
  
  public String toString() { return this.L; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
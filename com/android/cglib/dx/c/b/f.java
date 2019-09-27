package com.android.cglib.dx.c.b;

import com.android.cglib.dx.c.d.e;
import com.android.cglib.dx.d.r;

public abstract class f implements r {
  private final p a;
  
  private final s b;
  
  private final m c;
  
  private final n d;
  
  public f(p paramp, s params, m paramm, n paramn) {
    if (paramp == null)
      throw new NullPointerException("opcode == null"); 
    if (params == null)
      throw new NullPointerException("position == null"); 
    if (paramn == null)
      throw new NullPointerException("sources == null"); 
    this.a = paramp;
    this.b = params;
    this.c = paramm;
    this.d = paramn;
  }
  
  protected final String a(String paramString) {
    StringBuffer stringBuffer = new StringBuffer(80);
    stringBuffer.append("Insn{");
    stringBuffer.append(this.b);
    stringBuffer.append(' ');
    stringBuffer.append(this.a);
    if (paramString != null) {
      stringBuffer.append(' ');
      stringBuffer.append(paramString);
    } 
    stringBuffer.append(" :: ");
    if (this.c != null) {
      stringBuffer.append(this.c);
      stringBuffer.append(" <- ");
    } 
    stringBuffer.append(this.d);
    stringBuffer.append('}');
    return stringBuffer.toString();
  }
  
  public abstract void a(b paramb);
  
  public String a_() { return b(b()); }
  
  public String b() { return null; }
  
  protected final String b(String paramString) {
    StringBuffer stringBuffer = new StringBuffer(80);
    stringBuffer.append(this.b);
    stringBuffer.append(": ");
    stringBuffer.append(this.a.e());
    if (paramString != null) {
      stringBuffer.append("(");
      stringBuffer.append(paramString);
      stringBuffer.append(")");
    } 
    if (this.c == null) {
      paramString = " .";
    } else {
      stringBuffer.append(" ");
      paramString = this.c.a_();
    } 
    stringBuffer.append(paramString);
    stringBuffer.append(" <-");
    int i = this.d.a();
    if (i == 0) {
      stringBuffer.append(" .");
    } else {
      for (byte b1 = 0; b1 < i; b1++) {
        stringBuffer.append(" ");
        stringBuffer.append(this.d.b(b1).a_());
      } 
    } 
    return stringBuffer.toString();
  }
  
  public final p d() { return this.a; }
  
  public final s e() { return this.b; }
  
  public final boolean equals(Object paramObject) { return (this == paramObject); }
  
  public final m f() { return this.c; }
  
  public final n g() { return this.d; }
  
  public final boolean h() { return this.a.f(); }
  
  public final int hashCode() { return System.identityHashCode(this); }
  
  public abstract e i();
  
  public String toString() { return a(b()); }
  
  public static class a implements b {
    public void a(j param1j) {}
    
    public void a(k param1k) {}
    
    public void a(t param1t) {}
    
    public void a(u param1u) {}
  }
  
  public static interface b {
    void a(j param1j);
    
    void a(k param1k);
    
    void a(t param1t);
    
    void a(u param1u);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
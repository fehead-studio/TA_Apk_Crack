package com.android.cglib.dx.a.a;

import com.android.cglib.dx.c.b.m;
import com.android.cglib.dx.c.b.n;
import com.android.cglib.dx.c.b.s;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import com.android.cglib.dx.d.s;
import java.util.BitSet;

public abstract class h {
  private int a;
  
  private final j b;
  
  private final s c;
  
  private final n d;
  
  public h(j paramj, s params, n paramn) {
    if (paramj == null)
      throw new NullPointerException("opcode == null"); 
    if (params == null)
      throw new NullPointerException("position == null"); 
    if (paramn == null)
      throw new NullPointerException("registers == null"); 
    this.a = -1;
    this.b = paramj;
    this.c = params;
    this.d = paramn;
  }
  
  public static x a(s params, m paramm1, m paramm2) {
    j j1;
    int i = paramm1.i();
    boolean bool = true;
    if (i != 1)
      bool = false; 
    boolean bool1 = paramm1.b().j();
    i = paramm1.e();
    if ((paramm2.e() | i) < 16) {
      if (bool1) {
        j1 = k.i;
      } else if (bool) {
        j1 = k.c;
      } else {
        j1 = k.f;
      } 
    } else if (i < 256) {
      if (bool1) {
        j1 = k.j;
      } else if (bool) {
        j1 = k.d;
      } else {
        j1 = k.g;
      } 
    } else if (bool1) {
      j1 = k.k;
    } else if (bool) {
      j1 = k.e;
    } else {
      j1 = k.h;
    } 
    return new x(j1, params, n.a(paramm1, paramm2));
  }
  
  public final int a(BitSet paramBitSet) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  public abstract h a(j paramj);
  
  public abstract h a(n paramn);
  
  protected abstract String a();
  
  public final String a(String paramString, int paramInt, boolean paramBoolean) {
    String str = a(paramBoolean);
    if (str == null)
      return null; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramString);
    stringBuilder.append(l());
    stringBuilder.append(": ");
    paramString = stringBuilder.toString();
    int i = paramString.length();
    if (paramInt == 0) {
      paramInt = str.length();
    } else {
      paramInt -= i;
    } 
    return s.a(paramString, i, "", str, paramInt);
  }
  
  protected abstract String a(boolean paramBoolean);
  
  public abstract void a(a parama);
  
  public h b(BitSet paramBitSet) {
    n n1 = this.d;
    boolean bool = paramBitSet.get(0);
    if (j())
      paramBitSet.set(0); 
    n1 = n1.a(paramBitSet);
    if (j())
      paramBitSet.set(0, bool); 
    return (n1.a() == 0) ? null : new m(this.c, n1);
  }
  
  public h c(BitSet paramBitSet) {
    if (j() && !paramBitSet.get(0)) {
      m m = this.d.b(0);
      return a(this.c, m, m.b(0));
    } 
    return null;
  }
  
  public final void c(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("address < 0"); 
    this.a = paramInt;
  }
  
  public abstract h d(int paramInt);
  
  public h d(BitSet paramBitSet) { return a(this.d.a(0, j(), paramBitSet)); }
  
  public final boolean e() { return (this.a >= 0); }
  
  public final int f() {
    if (this.a < 0)
      throw new RuntimeException("address not yet known"); 
    return this.a;
  }
  
  public final j g() { return this.b; }
  
  public final s h() { return this.c; }
  
  public final n i() { return this.d; }
  
  public final boolean j() { return this.b.d(); }
  
  public h k() { return a(this.d.a(0, j(), null)); }
  
  public final String l() { return (this.a != -1) ? String.format("%04x", new Object[] { Integer.valueOf(this.a) }) : i.a(System.identityHashCode(this)); }
  
  public final int m() { return f() + n(); }
  
  public abstract int n();
  
  public final String toString() {
    boolean bool;
    StringBuffer stringBuffer = new StringBuffer(100);
    stringBuffer.append(l());
    stringBuffer.append(' ');
    stringBuffer.append(this.c);
    stringBuffer.append(": ");
    stringBuffer.append(this.b.e());
    if (this.d.a() != 0) {
      stringBuffer.append(this.d.b(" ", ", ", null));
      bool = true;
    } else {
      bool = false;
    } 
    String str = a();
    if (str != null) {
      if (bool)
        stringBuffer.append(','); 
      stringBuffer.append(' ');
      stringBuffer.append(str);
    } 
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
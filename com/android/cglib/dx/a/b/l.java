package com.android.cglib.dx.a.b;

import com.android.cglib.dx.a.b;
import com.android.cglib.dx.c.c.a;
import com.android.cglib.dx.c.c.d;
import com.android.cglib.dx.c.c.i;
import com.android.cglib.dx.c.c.j;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.d.d;
import com.android.cglib.dx.d.g;
import java.io.Writer;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.Adler32;

public final class l {
  private b a;
  
  private final af b;
  
  private final af c;
  
  private final af d;
  
  private final af e;
  
  private final ao f;
  
  private final aq g;
  
  private final aj h;
  
  private final s i;
  
  private final ae j;
  
  private final h k;
  
  private final af l;
  
  private final af m;
  
  private final u n;
  
  private final ak[] o;
  
  private int p;
  
  private int q;
  
  public l(b paramb) {
    this.a = paramb;
    this.n = new u(this);
    this.c = new af(null, this, 4, af.a.a);
    this.b = new af("word_data", this, 4, af.a.b);
    this.e = new af("string_data", this, 1, af.a.c);
    this.l = new af(null, this, 1, af.a.a);
    this.m = new af("byte_data", this, 1, af.a.b);
    this.f = new ao(this);
    this.g = new aq(this);
    this.h = new aj(this);
    this.i = new s(this);
    this.j = new ae(this);
    this.k = new h(this);
    this.d = new af("map", this, 4, af.a.a);
    this.o = new ak[] { 
        this.n, this.f, this.g, this.h, this.i, this.j, this.k, this.b, this.c, this.e, 
        this.m, this.l, this.d };
    this.p = -1;
    this.q = 79;
  }
  
  private d a(boolean paramBoolean1, boolean paramBoolean2) {
    this.k.h();
    this.l.h();
    this.b.h();
    this.m.h();
    this.j.h();
    this.i.h();
    this.h.h();
    this.c.h();
    this.g.h();
    this.f.h();
    this.e.h();
    this.n.h();
    int i2 = this.o.length;
    byte b2 = 0;
    byte b1 = 0;
    int i1 = 0;
    while (b1 < i2) {
      stringBuilder1 = this.o[b1];
      int i3 = stringBuilder1.b(i1);
      if (i3 < i1) {
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append("bogus placement for section ");
        stringBuilder1.append(b1);
        throw new RuntimeException(stringBuilder1.toString());
      } 
      try {
        if (stringBuilder1 == this.d) {
          z.a(this.o, this.d);
          this.d.h();
        } 
        if (stringBuilder1 instanceof af)
          ((af)stringBuilder1).d(); 
        i1 = stringBuilder1.c_();
        i1 += i3;
        b1++;
      } catch (RuntimeException stringBuilder1) {
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("...while writing section ");
        stringBuilder2.append(b1);
        throw g.a(stringBuilder1, stringBuilder2.toString());
      } 
    } 
    this.p = i1;
    g g1 = new byte[this.p];
    StringBuilder stringBuilder = new d(g1);
    b1 = b2;
    if (paramBoolean1) {
      stringBuilder.a(this.q, paramBoolean2);
      b1 = b2;
    } 
    while (b1 < i2) {
      try {
        ak ak1 = this.o[b1];
        i1 = ak1.g() - stringBuilder.g();
        if (i1 < 0) {
          StringBuilder stringBuilder1 = new StringBuilder();
          stringBuilder1.append("excess write of ");
          stringBuilder1.append(-i1);
          throw new g(stringBuilder1.toString());
        } 
        stringBuilder.g(ak1.g() - stringBuilder.g());
        ak1.c(stringBuilder);
        b1++;
      } catch (RuntimeException null) {
        if (g1 instanceof g) {
          g1 = (g)g1;
        } else {
          g1 = new g(g1);
        } 
        stringBuilder = new StringBuilder();
        stringBuilder.append("...while writing section ");
        stringBuilder.append(b1);
        g1.a(stringBuilder.toString());
        throw g1;
      } 
    } 
    if (stringBuilder.g() != this.p)
      throw new RuntimeException("foreshortened write"); 
    a(g1);
    b(g1);
    if (paramBoolean1) {
      this.b.a(stringBuilder, y.m, "\nmethod code index:\n\n");
      q().a(stringBuilder);
      stringBuilder.h();
    } 
    return stringBuilder;
  }
  
  private static void a(byte[] paramArrayOfByte) {
    try {
      MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
      messageDigest.update(paramArrayOfByte, 32, paramArrayOfByte.length - 32);
      try {
        int i1 = messageDigest.digest(paramArrayOfByte, 12, 20);
        if (i1 != 20) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("unexpected digest write: ");
          stringBuilder.append(i1);
          stringBuilder.append(" bytes");
          throw new RuntimeException(stringBuilder.toString());
        } 
        return;
      } catch (DigestException paramArrayOfByte) {
        throw new RuntimeException(paramArrayOfByte);
      } 
    } catch (NoSuchAlgorithmException paramArrayOfByte) {
      throw new RuntimeException(paramArrayOfByte);
    } 
  }
  
  private static void b(byte[] paramArrayOfByte) {
    Adler32 adler32 = new Adler32();
    adler32.update(paramArrayOfByte, 12, paramArrayOfByte.length - 12);
    int i1 = (int)adler32.getValue();
    paramArrayOfByte[8] = (byte)i1;
    paramArrayOfByte[9] = (byte)(i1 >> 8);
    paramArrayOfByte[10] = (byte)(i1 >> 16);
    paramArrayOfByte[11] = (byte)(i1 >> 24);
  }
  
  public b a() { return this.a; }
  
  public void a(g paramg) { this.k.a(paramg); }
  
  void a(a parama) {
    j j1;
    s s1;
    if (parama instanceof v) {
      this.f.a((v)parama);
      return;
    } 
    if (parama instanceof w) {
      this.g.a((w)parama);
      return;
    } 
    if (parama instanceof d) {
      this.j.a((d)parama);
      return;
    } 
    if (parama instanceof j) {
      s s2 = this.i;
      j1 = (j)parama;
      s1 = s2;
    } else if (s1 instanceof i) {
      s s2 = this.i;
      j j2 = ((i)s1).f();
      s1 = s2;
      j1 = j2;
    } else {
      if (s1 == null)
        throw new NullPointerException("cst == null"); 
      return;
    } 
    s1.a(j1);
  }
  
  public byte[] a(Writer paramWriter, boolean paramBoolean) {
    boolean bool;
    if (paramWriter != null) {
      bool = true;
    } else {
      bool = false;
    } 
    d d1 = a(bool, paramBoolean);
    if (bool)
      d1.a(paramWriter); 
    return d1.e();
  }
  
  int b() {
    if (this.p < 0)
      throw new RuntimeException("file size not yet known"); 
    return this.p;
  }
  
  w b(a parama) { return (parama instanceof v) ? this.f.a(parama) : ((parama instanceof w) ? this.g.a(parama) : ((parama instanceof d) ? this.j.a(parama) : ((parama instanceof j) ? this.i.a(parama) : null))); }
  
  af c() { return this.e; }
  
  af d() { return this.b; }
  
  af e() { return this.c; }
  
  af f() { return this.d; }
  
  ao g() { return this.f; }
  
  h h() { return this.k; }
  
  af i() { return this.l; }
  
  aq j() { return this.g; }
  
  aj k() { return this.h; }
  
  s l() { return this.i; }
  
  ae m() { return this.j; }
  
  af n() { return this.m; }
  
  ak o() { return this.b; }
  
  ak p() { return this.d; }
  
  public al q() {
    al al = new al();
    ak[] arrayOfak = this.o;
    int i1 = arrayOfak.length;
    for (byte b1 = 0; b1 < i1; b1++)
      al.a(arrayOfak[b1]); 
    return al;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
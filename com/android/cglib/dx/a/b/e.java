package com.android.cglib.dx.a.b;

import com.android.cglib.dx.a.a.c;
import com.android.cglib.dx.a.a.d;
import com.android.cglib.dx.a.a.g;
import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.d;
import com.android.cglib.dx.d.i;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public final class e {
  private final g a;
  
  private d b;
  
  private byte[] c;
  
  private int d;
  
  private TreeMap<c, Integer> e;
  
  public e(g paramg) {
    this.a = paramg;
    this.b = null;
    this.c = null;
    this.d = 0;
    this.e = null;
  }
  
  private static void a(c paramc, int paramInt1, int paramInt2, String paramString, PrintWriter paramPrintWriter, a parama) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(i.c(paramInt1));
    stringBuilder.append(": ");
    String str = paramc.a(paramString, stringBuilder.toString());
    if (paramPrintWriter != null)
      paramPrintWriter.println(str); 
    parama.a(paramInt2, str);
  }
  
  private void a(String paramString, PrintWriter paramPrintWriter, a parama) {
    byte b1;
    int j;
    c();
    int k = 0;
    if (parama != null) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i) {
      j = 6;
    } else {
      j = 0;
    } 
    if (i) {
      b1 = 2;
    } else {
      b1 = 0;
    } 
    int m = this.b.a();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramString);
    stringBuilder.append("  ");
    String str = stringBuilder.toString();
    if (i) {
      stringBuilder = new StringBuilder();
      stringBuilder.append(paramString);
      stringBuilder.append("tries:");
      parama.a(0, stringBuilder.toString());
    } else {
      stringBuilder = new StringBuilder();
      stringBuilder.append(paramString);
      stringBuilder.append("tries:");
      paramPrintWriter.println(stringBuilder.toString());
    } 
    byte b2;
    for (b2 = 0; b2 < m; b2++) {
      d.a a1 = this.b.a(b2);
      c c2 = a1.c();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append(str);
      stringBuilder1.append("try ");
      stringBuilder1.append(i.d(a1.a()));
      stringBuilder1.append("..");
      stringBuilder1.append(i.d(a1.b()));
      String str2 = stringBuilder1.toString();
      String str1 = c2.a(str, "");
      if (i) {
        parama.a(j, str2);
        parama.a(b1, str1);
      } else {
        paramPrintWriter.println(str2);
        paramPrintWriter.println(str1);
      } 
    } 
    if (!i)
      return; 
    stringBuilder = new StringBuilder();
    stringBuilder.append(paramString);
    stringBuilder.append("handlers:");
    parama.a(0, stringBuilder.toString());
    int i = this.d;
    c c1 = new StringBuilder();
    c1.append(str);
    c1.append("size: ");
    c1.append(i.c(this.e.size()));
    parama.a(i, c1.toString());
    c1 = null;
    Iterator iterator = this.e.entrySet().iterator();
    for (i = k; iterator.hasNext(); i = j) {
      Map.Entry entry = (Map.Entry)iterator.next();
      c c2 = (c)entry.getKey();
      j = ((Integer)entry.getValue()).intValue();
      if (c1 != null)
        a(c1, i, j - i, str, paramPrintWriter, parama); 
      c1 = c2;
    } 
    a(c1, i, this.c.length - i, str, paramPrintWriter, parama);
  }
  
  private void c() {
    if (this.b == null)
      this.b = this.a.g(); 
  }
  
  public int a() {
    c();
    return this.b.a();
  }
  
  public void a(l paraml) {
    c();
    aq aq = paraml.j();
    int j = this.b.a();
    this.e = new TreeMap();
    int i;
    for (i = 0; i < j; i++)
      this.e.put(this.b.a(i).c(), null); 
    if (this.e.size() > 65535)
      throw new UnsupportedOperationException("too many catch handlers"); 
    d d1 = new d();
    this.d = d1.e(this.e.size());
    for (Map.Entry entry : this.e.entrySet()) {
      c c1 = (c)entry.getKey();
      i = c1.a();
      boolean bool = c1.b();
      entry.setValue(Integer.valueOf(d1.g()));
      if (bool) {
        d1.f(-(i - 1));
        i--;
      } else {
        d1.f(i);
      } 
      for (j = 0; j < i; j++) {
        c.a a1 = c1.a(j);
        d1.e(aq.b(a1.a()));
        d1.e(a1.b());
      } 
      if (bool)
        d1.e(c1.a(i).b()); 
    } 
    this.c = d1.f();
  }
  
  public void a(l paraml, a parama) {
    c();
    if (parama.a())
      a("  ", null, parama); 
    int i = this.b.a();
    for (byte b1 = 0; b1 < i; b1++) {
      StringBuilder stringBuilder = this.b.a(b1);
      int j = stringBuilder.a();
      int k = stringBuilder.b();
      int m = k - j;
      if (m >= 65536) {
        stringBuilder = new StringBuilder();
        stringBuilder.append("bogus exception range: ");
        stringBuilder.append(i.a(j));
        stringBuilder.append("..");
        stringBuilder.append(i.a(k));
        throw new UnsupportedOperationException(stringBuilder.toString());
      } 
      parama.d(j);
      parama.c(m);
      parama.c(((Integer)this.e.get(stringBuilder.c())).intValue());
    } 
    parama.a(this.c);
  }
  
  public int b() { return a() * 8 + this.c.length; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
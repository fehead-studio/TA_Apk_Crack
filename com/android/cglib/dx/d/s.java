package com.android.cglib.dx.d;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public final class s {
  private final Writer a;
  
  private final int b;
  
  private final StringBuffer c;
  
  private final StringBuffer d;
  
  private final j e;
  
  private final j f;
  
  public s(Writer paramWriter, int paramInt1, int paramInt2, String paramString) {
    if (paramWriter == null)
      throw new NullPointerException("out == null"); 
    if (paramInt1 < 1)
      throw new IllegalArgumentException("leftWidth < 1"); 
    if (paramInt2 < 1)
      throw new IllegalArgumentException("rightWidth < 1"); 
    if (paramString == null)
      throw new NullPointerException("spacer == null"); 
    StringWriter stringWriter1 = new StringWriter(1000);
    StringWriter stringWriter2 = new StringWriter(1000);
    this.a = paramWriter;
    this.b = paramInt1;
    this.c = stringWriter1.getBuffer();
    this.d = stringWriter2.getBuffer();
    this.e = new j(stringWriter1, paramInt1);
    this.f = new j(stringWriter2, paramInt2, paramString);
  }
  
  public static String a(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2) {
    StringWriter stringWriter = new StringWriter((paramString1.length() + paramString3.length()) * 3);
    s s1 = new s(stringWriter, paramInt1, paramInt2, paramString2);
    try {
      s1.a().write(paramString1);
      s1.b().write(paramString3);
      s1.c();
      return stringWriter.toString();
    } catch (IOException paramString1) {
      throw new RuntimeException("shouldn't happen", paramString1);
    } 
  }
  
  private static void a(Writer paramWriter, int paramInt) {
    while (paramInt > 0) {
      paramWriter.write(32);
      paramInt--;
    } 
  }
  
  private static void a(StringBuffer paramStringBuffer, Writer paramWriter) {
    int i = paramStringBuffer.length();
    if (i != 0 && paramStringBuffer.charAt(i - 1) != '\n')
      paramWriter.write(10); 
  }
  
  private void d() {
    while (true) {
      int i = this.c.indexOf("\n");
      if (i < 0)
        return; 
      int k = this.d.indexOf("\n");
      if (k < 0)
        return; 
      if (i != 0)
        this.a.write(this.c.substring(0, i)); 
      if (k != 0) {
        a(this.a, this.b - i);
        this.a.write(this.d.substring(0, k));
      } 
      this.a.write(10);
      this.c.delete(0, i + 1);
      this.d.delete(0, k + 1);
    } 
  }
  
  private void e() {
    a(this.c, this.e);
    while (this.c.length() != 0) {
      this.f.write(10);
      d();
    } 
  }
  
  private void f() {
    a(this.d, this.f);
    while (this.d.length() != 0) {
      this.e.write(10);
      d();
    } 
  }
  
  public Writer a() { return this.e; }
  
  public Writer b() { return this.f; }
  
  public void c() {
    try {
      a(this.c, this.e);
      a(this.d, this.f);
      d();
      e();
      f();
      return;
    } catch (IOException iOException) {
      throw new RuntimeException(iOException);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
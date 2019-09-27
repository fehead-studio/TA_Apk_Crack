package com.android.cglib.dx.d;

import java.io.PrintStream;
import java.io.PrintWriter;

public class g extends RuntimeException {
  private StringBuffer a;
  
  public g(String paramString) { this(paramString, null); }
  
  public g(String paramString, Throwable paramThrowable) {
    super(paramString, paramThrowable);
    if (paramThrowable instanceof g) {
      paramString = ((g)paramThrowable).a.toString();
      this.a = new StringBuffer(paramString.length() + 200);
      this.a.append(paramString);
      return;
    } 
    this.a = new StringBuffer(200);
  }
  
  public g(Throwable paramThrowable) { this(null, paramThrowable); }
  
  public static g a(Throwable paramThrowable, String paramString) {
    if (paramThrowable instanceof g) {
      paramThrowable = (g)paramThrowable;
    } else {
      paramThrowable = new g(paramThrowable);
    } 
    paramThrowable.a(paramString);
    return paramThrowable;
  }
  
  public void a(String paramString) {
    if (paramString == null)
      throw new NullPointerException("str == null"); 
    this.a.append(paramString);
    if (!paramString.endsWith("\n"))
      this.a.append('\n'); 
  }
  
  public void printStackTrace(PrintStream paramPrintStream) {
    super.printStackTrace(paramPrintStream);
    paramPrintStream.println(this.a);
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter) {
    super.printStackTrace(paramPrintWriter);
    paramPrintWriter.println(this.a);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
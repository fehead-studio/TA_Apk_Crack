package bsh;

import com.a.a.a.a.a.a.a;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;

public class TargetError extends EvalError {
  Throwable d;
  
  boolean e;
  
  public TargetError(String paramString, Throwable paramThrowable, SimpleNode paramSimpleNode, CallStack paramCallStack, boolean paramBoolean) {
    super(paramString, paramSimpleNode, paramCallStack);
    this.d = paramThrowable;
    this.e = paramBoolean;
  }
  
  public TargetError(Throwable paramThrowable, SimpleNode paramSimpleNode, CallStack paramCallStack) { this("TargetError", paramThrowable, paramSimpleNode, paramCallStack, false); }
  
  public Throwable getTarget() { return (this.d instanceof InvocationTargetException) ? ((InvocationTargetException)this.d).getTargetException() : this.d; }
  
  public boolean inNativeCode() { return this.e; }
  
  public void printStackTrace() { printStackTrace(false, System.err); }
  
  public void printStackTrace(PrintStream paramPrintStream) { printStackTrace(false, paramPrintStream); }
  
  public void printStackTrace(boolean paramBoolean, PrintStream paramPrintStream) {
    if (paramBoolean) {
      super.printStackTrace(paramPrintStream);
      paramPrintStream.println("--- Target Stack Trace ---");
    } 
    a.a(this.d, paramPrintStream);
  }
  
  public String printTargetError(Throwable paramThrowable) {
    String str2 = this.d.toString();
    String str1 = str2;
    if (Capabilities.canGenerateInterfaces()) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(str2);
      stringBuffer.append("\n");
      stringBuffer.append(xPrintTargetError(paramThrowable));
      str1 = stringBuffer.toString();
    } 
    return str1;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(super.toString());
    stringBuffer.append("\nTarget exception: ");
    stringBuffer.append(printTargetError(this.d));
    return stringBuffer.toString();
  }
  
  public String xPrintTargetError(Throwable paramThrowable) {
    Interpreter interpreter = new Interpreter();
    try {
      interpreter.set("target", paramThrowable);
      return (String)interpreter.eval("import java.lang.reflect.UndeclaredThrowableException;String result=\"\";while ( target instanceof UndeclaredThrowableException ) {\ttarget=target.getUndeclaredThrowable(); \tresult+=\"Nested: \"+target.toString();}return result;");
    } catch (EvalError paramThrowable) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("xprintarget: ");
      stringBuffer.append(paramThrowable.toString());
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\TargetError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
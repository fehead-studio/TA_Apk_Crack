package bsh;

import com.a.a.a.a.a.a.a;

public class UtilEvalError extends Exception {
  protected UtilEvalError() {}
  
  public UtilEvalError(String paramString) { super(paramString); }
  
  public EvalError toEvalError(SimpleNode paramSimpleNode, CallStack paramCallStack) { return toEvalError(null, paramSimpleNode, paramCallStack); }
  
  public EvalError toEvalError(String paramString, SimpleNode paramSimpleNode, CallStack paramCallStack) {
    if (Interpreter.DEBUG)
      a.a(this); 
    if (paramString == null) {
      paramString = "";
    } else {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(paramString);
      stringBuffer1.append(": ");
      paramString = stringBuffer1.toString();
    } 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(paramString);
    stringBuffer.append(getMessage());
    return new EvalError(stringBuffer.toString(), paramSimpleNode, paramCallStack);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\UtilEvalError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
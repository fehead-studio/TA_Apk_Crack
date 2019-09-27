package bsh;

public class UtilTargetError extends UtilEvalError {
  public Throwable t;
  
  public UtilTargetError(String paramString, Throwable paramThrowable) {
    super(paramString);
    this.t = paramThrowable;
  }
  
  public UtilTargetError(Throwable paramThrowable) { this(null, paramThrowable); }
  
  public EvalError toEvalError(String paramString, SimpleNode paramSimpleNode, CallStack paramCallStack) {
    if (paramString == null) {
      paramString = getMessage();
    } else {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(paramString);
      stringBuffer.append(": ");
      stringBuffer.append(getMessage());
      paramString = stringBuffer.toString();
    } 
    return new TargetError(paramString, this.t, paramSimpleNode, paramCallStack, false);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\UtilTargetError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
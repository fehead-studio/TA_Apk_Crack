package bsh;

import java.lang.reflect.InvocationTargetException;

class BSHMethodInvocation extends SimpleNode {
  BSHMethodInvocation(int paramInt) { super(paramInt); }
  
  BSHAmbiguousName a() { return (BSHAmbiguousName)jjtGetChild(0); }
  
  BSHArguments b() { return (BSHArguments)jjtGetChild(1); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    NameSpace nameSpace = paramCallStack.top();
    BSHAmbiguousName bSHAmbiguousName = a();
    if (nameSpace.getParent() != null && (nameSpace.getParent()).d && (bSHAmbiguousName.text.equals("super") || bSHAmbiguousName.text.equals("this")))
      return Primitive.VOID; 
    StringBuffer stringBuffer = bSHAmbiguousName.getName(nameSpace);
    Object[] arrayOfObject = b().getArguments(paramCallStack, paramInterpreter);
    try {
      return stringBuffer.invokeMethod(paramInterpreter, arrayOfObject, paramCallStack, this);
    } catch (ReflectError paramInterpreter) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("Error in method invocation: ");
      stringBuffer.append(paramInterpreter.getMessage());
      throw new EvalError(stringBuffer.toString(), this, paramCallStack);
    } catch (InvocationTargetException paramInterpreter) {
      boolean bool;
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Method Invocation ");
      stringBuffer1.append(stringBuffer);
      String str = stringBuffer1.toString();
      Throwable throwable = paramInterpreter.getTargetException();
      if (throwable instanceof EvalError) {
        if (throwable instanceof TargetError) {
          bool = ((TargetError)throwable).inNativeCode();
        } else {
          bool = false;
        } 
      } else {
        bool = true;
      } 
      throw new TargetError(str, throwable, this, paramCallStack, bool);
    } catch (UtilEvalError paramInterpreter) {
      throw paramInterpreter.toEvalError(this, paramCallStack);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHMethodInvocation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
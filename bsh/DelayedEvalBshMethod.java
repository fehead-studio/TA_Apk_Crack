package bsh;

public class DelayedEvalBshMethod extends BshMethod {
  String d;
  
  BSHReturnType e;
  
  String[] f;
  
  BSHFormalParameters g;
  
  CallStack h;
  
  Interpreter i;
  
  DelayedEvalBshMethod(String paramString1, String paramString2, BSHReturnType paramBSHReturnType, String[] paramArrayOfString1, String[] paramArrayOfString2, BSHFormalParameters paramBSHFormalParameters, BSHBlock paramBSHBlock, NameSpace paramNameSpace, Modifiers paramModifiers, CallStack paramCallStack, Interpreter paramInterpreter) {
    super(paramString1, null, paramArrayOfString1, null, paramBSHBlock, paramNameSpace, paramModifiers);
    this.d = paramString2;
    this.e = paramBSHReturnType;
    this.f = paramArrayOfString2;
    this.g = paramBSHFormalParameters;
    this.h = paramCallStack;
    this.i = paramInterpreter;
  }
  
  public String[] getParamTypeDescriptors() { return this.f; }
  
  public Class[] getParameterTypes() {
    try {
      return (Class[])this.g.eval(this.h, this.i);
    } catch (EvalError evalError) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("can't eval param types: ");
      stringBuffer.append(evalError);
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
  
  public Class getReturnType() {
    if (this.e == null)
      return null; 
    try {
      return this.e.evalReturnType(this.h, this.i);
    } catch (EvalError evalError) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("can't eval return type: ");
      stringBuffer.append(evalError);
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
  
  public String getReturnTypeDescriptor() { return this.d; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\DelayedEvalBshMethod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
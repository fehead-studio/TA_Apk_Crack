package bsh;

class BSHAmbiguousName extends SimpleNode {
  public String text;
  
  BSHAmbiguousName(int paramInt) { super(paramInt); }
  
  Object a(CallStack paramCallStack, Interpreter paramInterpreter, boolean paramBoolean) {
    try {
      return getName(paramCallStack.top()).toObject(paramCallStack, paramInterpreter, paramBoolean);
    } catch (UtilEvalError paramInterpreter) {
      throw paramInterpreter.toEvalError(this, paramCallStack);
    } 
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) { throw new InterpreterError("Don't know how to eval an ambiguous name!  Use toObject() if you want an object."); }
  
  public Name getName(NameSpace paramNameSpace) { return paramNameSpace.b(this.text); }
  
  public Class toClass(CallStack paramCallStack, Interpreter paramInterpreter) {
    try {
      return getName(paramCallStack.top()).toClass();
    } catch (ClassNotFoundException paramInterpreter) {
      throw new EvalError(paramInterpreter.getMessage(), this, paramCallStack);
    } catch (UtilEvalError paramInterpreter) {
      throw paramInterpreter.toEvalError(this, paramCallStack);
    } 
  }
  
  public LHS toLHS(CallStack paramCallStack, Interpreter paramInterpreter) {
    try {
      return getName(paramCallStack.top()).toLHS(paramCallStack, paramInterpreter);
    } catch (UtilEvalError paramInterpreter) {
      throw paramInterpreter.toEvalError(this, paramCallStack);
    } 
  }
  
  public Object toObject(CallStack paramCallStack, Interpreter paramInterpreter) { return a(paramCallStack, paramInterpreter, false); }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("AmbigousName: ");
    stringBuffer.append(this.text);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHAmbiguousName.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
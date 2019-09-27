package bsh;

class BSHArguments extends SimpleNode {
  BSHArguments(int paramInt) { super(paramInt); }
  
  public Object[] getArguments(CallStack paramCallStack, Interpreter paramInterpreter) {
    Object[] arrayOfObject = new Object[jjtGetNumChildren()];
    for (byte b = 0;; b++) {
      if (b >= arrayOfObject.length)
        return arrayOfObject; 
      arrayOfObject[b] = ((SimpleNode)jjtGetChild(b)).eval(paramCallStack, paramInterpreter);
      if (arrayOfObject[b] == Primitive.VOID) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Undefined argument: ");
        stringBuffer.append(((SimpleNode)jjtGetChild(b)).getText());
        throw new EvalError(stringBuffer.toString(), this, paramCallStack);
      } 
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHArguments.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh;

class BSHCastExpression extends SimpleNode {
  public BSHCastExpression(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    paramCallStack.top();
    Class clazz = ((BSHType)jjtGetChild(0)).getType(paramCallStack, paramInterpreter);
    object = ((SimpleNode)jjtGetChild(1)).eval(paramCallStack, paramInterpreter);
    object.getClass();
    try {
      return Types.castObject(object, clazz, 0);
    } catch (UtilEvalError object) {
      throw object.toEvalError(this, paramCallStack);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHCastExpression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
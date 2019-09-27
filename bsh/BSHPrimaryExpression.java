package bsh;

class BSHPrimaryExpression extends SimpleNode {
  BSHPrimaryExpression(int paramInt) { super(paramInt); }
  
  private Object a(boolean paramBoolean, CallStack paramCallStack, Interpreter paramInterpreter) {
    Node node = jjtGetChild(0);
    int i = jjtGetNumChildren();
    byte b;
    for (b = 1;; b++) {
      if (b >= i) {
        Object object1 = node;
        if (node instanceof SimpleNode)
          if (node instanceof BSHAmbiguousName) {
            if (paramBoolean) {
              LHS lHS = ((BSHAmbiguousName)node).toLHS(paramCallStack, paramInterpreter);
            } else {
              Object object2 = ((BSHAmbiguousName)node).toObject(paramCallStack, paramInterpreter);
            } 
          } else {
            if (paramBoolean)
              throw new EvalError("Can't assign to prefix.", this, paramCallStack); 
            object1 = ((SimpleNode)node).eval(paramCallStack, paramInterpreter);
          }  
        if (object1 instanceof LHS) {
          if (paramBoolean)
            return object1; 
          try {
            return ((LHS)object1).getValue();
          } catch (UtilEvalError paramInterpreter) {
            throw paramInterpreter.toEvalError(this, paramCallStack);
          } 
        } 
        return object1;
      } 
      Object object = ((BSHPrimarySuffix)jjtGetChild(b)).doSuffix(node, paramBoolean, paramCallStack, paramInterpreter);
    } 
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) { return a(false, paramCallStack, paramInterpreter); }
  
  public LHS toLHS(CallStack paramCallStack, Interpreter paramInterpreter) {
    Object object = a(true, paramCallStack, paramInterpreter);
    if (!(object instanceof LHS))
      throw new EvalError("Can't assign to:", this, paramCallStack); 
    return (LHS)object;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHPrimaryExpression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
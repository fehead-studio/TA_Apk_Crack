package bsh;

class BSHSwitchStatement extends SimpleNode implements ParserConstants {
  public BSHSwitchStatement(int paramInt) { super(paramInt); }
  
  private boolean a(Object paramObject1, Object paramObject2, CallStack paramCallStack, SimpleNode paramSimpleNode) {
    if (paramObject1 instanceof Primitive || paramObject2 instanceof Primitive)
      try {
        return Primitive.unwrap(Primitive.binaryOperation(paramObject1, paramObject2, 90)).equals(Boolean.TRUE);
      } catch (UtilEvalError paramObject1) {
        paramObject2 = new StringBuffer();
        paramObject2.append("Switch value: ");
        paramObject2.append(paramSimpleNode.getText());
        paramObject2.append(": ");
        throw paramObject1.toEvalError(paramObject2.toString(), this, paramCallStack);
      }  
    return paramObject1.equals(paramObject2);
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    int i = jjtGetNumChildren();
    SimpleNode simpleNode = (SimpleNode)jjtGetChild(0);
    Object object = simpleNode.eval(paramCallStack, paramInterpreter);
    if (1 >= i)
      throw new EvalError("Empty switch statement.", this, paramCallStack); 
    byte b = 2;
    BSHSwitchLabel bSHSwitchLabel = (BSHSwitchLabel)jjtGetChild(1);
    ReturnControl returnControl = null;
    label45: while (b < i && returnControl == null) {
      byte b1 = b;
      if (!bSHSwitchLabel.a) {
        b1 = b;
        if (a(object, bSHSwitchLabel.eval(paramCallStack, paramInterpreter), paramCallStack, simpleNode)) {
          b1 = b;
        } else {
          while (true) {
            if (b1 >= i) {
              b = b1;
              continue label45;
            } 
            b = b1 + 1;
            Node node = jjtGetChild(b1);
            if (node instanceof BSHSwitchLabel) {
              bSHSwitchLabel = (BSHSwitchLabel)node;
              continue label45;
            } 
            b1 = b;
          } 
        } 
      } 
      while (true) {
        if (b1 >= i) {
          b = b1;
          continue label45;
        } 
        b = b1 + 1;
        Node node = jjtGetChild(b1);
        if (!(node instanceof BSHSwitchLabel)) {
          Object object1 = ((SimpleNode)node).eval(paramCallStack, paramInterpreter);
          if (object1 instanceof ReturnControl) {
            returnControl = (ReturnControl)object1;
            continue label45;
          } 
        } 
        b1 = b;
      } 
    } 
    return (returnControl != null && returnControl.kind == 46) ? returnControl : Primitive.VOID;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHSwitchStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
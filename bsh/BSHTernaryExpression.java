package bsh;

class BSHTernaryExpression extends SimpleNode {
  BSHTernaryExpression(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    SimpleNode simpleNode1 = (SimpleNode)jjtGetChild(0);
    SimpleNode simpleNode2 = (SimpleNode)jjtGetChild(1);
    SimpleNode simpleNode3 = (SimpleNode)jjtGetChild(2);
    return BSHIfStatement.evaluateCondition(simpleNode1, paramCallStack, paramInterpreter) ? simpleNode2.eval(paramCallStack, paramInterpreter) : simpleNode3.eval(paramCallStack, paramInterpreter);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHTernaryExpression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
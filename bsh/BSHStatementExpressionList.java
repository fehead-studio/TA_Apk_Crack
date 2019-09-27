package bsh;

class BSHStatementExpressionList extends SimpleNode {
  BSHStatementExpressionList(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    int i = jjtGetNumChildren();
    for (byte b = 0;; b++) {
      if (b >= i)
        return Primitive.VOID; 
      ((SimpleNode)jjtGetChild(b)).eval(paramCallStack, paramInterpreter);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHStatementExpressionList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
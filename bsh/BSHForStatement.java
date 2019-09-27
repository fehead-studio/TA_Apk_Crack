package bsh;

class BSHForStatement extends SimpleNode implements ParserConstants {
  private SimpleNode a;
  
  private SimpleNode b;
  
  private SimpleNode c;
  
  private SimpleNode d;
  
  public boolean hasExpression;
  
  public boolean hasForInit;
  
  public boolean hasForUpdate;
  
  BSHForStatement(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    if (this.hasForInit) {
      this.a = (SimpleNode)jjtGetChild(0);
      b2 = 1;
    } else {
      b2 = 0;
    } 
    byte b1 = b2;
    if (this.hasExpression) {
      this.b = (SimpleNode)jjtGetChild(b2);
      b1 = b2 + 1;
    } 
    byte b2 = b1;
    if (this.hasForUpdate) {
      this.c = (SimpleNode)jjtGetChild(b1);
      b2 = b1 + 1;
    } 
    if (b2 < jjtGetNumChildren())
      this.d = (SimpleNode)jjtGetChild(b2); 
    NameSpace nameSpace = paramCallStack.top();
    paramCallStack.swap(new BlockNameSpace(nameSpace));
    if (this.hasForInit)
      this.a.eval(paramCallStack, paramInterpreter); 
    Primitive primitive = Primitive.VOID;
    while (true) {
      while (true)
        break; 
      if (this.hasForUpdate)
        this.c.eval(paramCallStack, paramInterpreter); 
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHForStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
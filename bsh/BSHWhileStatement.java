package bsh;

class BSHWhileStatement extends SimpleNode implements ParserConstants {
  public boolean isDoStatement;
  
  BSHWhileStatement(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    SimpleNode simpleNode;
    Object object;
    int i = jjtGetNumChildren();
    if (this.isDoStatement) {
      simpleNode = (SimpleNode)jjtGetChild(1);
      object = (SimpleNode)jjtGetChild(0);
    } else {
      simpleNode = (SimpleNode)jjtGetChild(0);
      if (i > 1) {
        object = (SimpleNode)jjtGetChild(1);
      } else {
        object = null;
      } 
    } 
    boolean bool = this.isDoStatement;
    while (true) {
      if (!bool && !BSHIfStatement.evaluateCondition(simpleNode, paramCallStack, paramInterpreter))
        return Primitive.VOID; 
      if (object == null)
        continue; 
      Object object1 = object.eval(paramCallStack, paramInterpreter);
      if (object1 instanceof ReturnControl) {
        i = ((ReturnControl)object1).kind;
        if (i != 12) {
          if (i != 19) {
            if (i == 46)
              return object1; 
          } else {
            continue;
          } 
        } else {
          i = 1;
          if (i == 0) {
            bool = false;
            continue;
          } 
        } 
      } 
      i = 0;
      if (i == 0)
        bool = false; 
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHWhileStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
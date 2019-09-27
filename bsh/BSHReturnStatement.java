package bsh;

class BSHReturnStatement extends SimpleNode implements ParserConstants {
  public int kind;
  
  BSHReturnStatement(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    Primitive primitive;
    if (jjtGetNumChildren() > 0) {
      primitive = ((SimpleNode)jjtGetChild(0)).eval(paramCallStack, paramInterpreter);
    } else {
      primitive = Primitive.VOID;
    } 
    return new ReturnControl(this.kind, primitive, this);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHReturnStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
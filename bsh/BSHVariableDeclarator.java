package bsh;

class BSHVariableDeclarator extends SimpleNode {
  public String name;
  
  BSHVariableDeclarator(int paramInt) { super(paramInt); }
  
  public Object eval(BSHType paramBSHType, CallStack paramCallStack, Interpreter paramInterpreter) {
    if (jjtGetNumChildren() > 0) {
      SimpleNode simpleNode = (SimpleNode)jjtGetChild(0);
      if (paramBSHType != null && simpleNode instanceof BSHArrayInitializer) {
        Object object = ((BSHArrayInitializer)simpleNode).eval(paramBSHType.getBaseType(), paramBSHType.getArrayDims(), paramCallStack, paramInterpreter);
      } else {
        Object object = simpleNode.eval(paramCallStack, paramInterpreter);
      } 
    } else {
      paramBSHType = null;
    } 
    if (paramBSHType == Primitive.VOID)
      throw new EvalError("Void initializer.", this, paramCallStack); 
    return paramBSHType;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("BSHVariableDeclarator ");
    stringBuffer.append(this.name);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHVariableDeclarator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
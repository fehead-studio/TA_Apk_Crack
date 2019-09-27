package bsh;

class BSHUnaryExpression extends SimpleNode implements ParserConstants {
  public int kind;
  
  public boolean postfix = false;
  
  BSHUnaryExpression(int paramInt) { super(paramInt); }
  
  private Object a(LHS paramLHS, boolean paramBoolean) {
    if (Interpreter.DEBUG)
      Interpreter.debug("lhsUnaryOperation"); 
    Object object1 = paramLHS.getValue();
    Object object2 = a(object1, this.kind);
    if (!this.postfix)
      object1 = object2; 
    paramLHS.assign(object2, paramBoolean);
    return object1;
  }
  
  private Object a(Object paramObject, int paramInt) {
    if (paramObject instanceof Boolean || paramObject instanceof Character || paramObject instanceof Number)
      return b(paramObject, paramInt); 
    if (!(paramObject instanceof Primitive)) {
      paramObject = new StringBuffer();
      paramObject.append("Unary operation ");
      paramObject.append(ParserConstants.tokenImage[paramInt]);
      paramObject.append(" inappropriate for object");
      throw new UtilEvalError(paramObject.toString());
    } 
    return Primitive.unaryOperation((Primitive)paramObject, paramInt);
  }
  
  private Object b(Object paramObject, int paramInt) {
    Class clazz = paramObject.getClass();
    paramObject = Primitive.a(paramObject);
    if (paramObject instanceof Boolean)
      return new Boolean(Primitive.a((Boolean)paramObject, paramInt)); 
    if (paramObject instanceof Integer) {
      int i = Primitive.a((Integer)paramObject, paramInt);
      if (paramInt == 100 || paramInt == 101) {
        if (clazz == byte.class)
          return new Byte((byte)i); 
        if (clazz == short.class)
          return new Short((short)i); 
        if (clazz == char.class)
          return new Character((char)i); 
      } 
      return new Integer(i);
    } 
    if (paramObject instanceof Long)
      return new Long(Primitive.a((Long)paramObject, paramInt)); 
    if (paramObject instanceof Float)
      return new Float(Primitive.a((Float)paramObject, paramInt)); 
    if (paramObject instanceof Double)
      return new Double(Primitive.a((Double)paramObject, paramInt)); 
    throw new InterpreterError("An error occurred.  Please call technical support.");
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    SimpleNode simpleNode = (SimpleNode)jjtGetChild(0);
    try {
      return (this.kind == 100 || this.kind == 101) ? a(((BSHPrimaryExpression)simpleNode).toLHS(paramCallStack, paramInterpreter), paramInterpreter.getStrictJava()) : a(simpleNode.eval(paramCallStack, paramInterpreter), this.kind);
    } catch (UtilEvalError paramInterpreter) {
      throw paramInterpreter.toEvalError(this, paramCallStack);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHUnaryExpression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
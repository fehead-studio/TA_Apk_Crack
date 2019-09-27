package bsh;

class BSHAssignment extends SimpleNode implements ParserConstants {
  public int operator;
  
  BSHAssignment(int paramInt) { super(paramInt); }
  
  private Object a(Object paramObject1, Object paramObject2, int paramInt) {
    if (paramObject1 instanceof String && paramObject2 != Primitive.VOID) {
      if (paramInt != 102)
        throw new UtilEvalError("Use of non + operator with String LHS"); 
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append((String)paramObject1);
      stringBuffer1.append(paramObject2);
      return stringBuffer1.toString();
    } 
    boolean bool = paramObject1 instanceof Primitive;
    if (bool || paramObject2 instanceof Primitive) {
      if (paramObject1 == Primitive.VOID || paramObject2 == Primitive.VOID)
        throw new UtilEvalError("Illegal use of undefined object or 'void' literal"); 
      if (paramObject1 == Primitive.NULL || paramObject2 == Primitive.NULL)
        throw new UtilEvalError("Illegal use of null object or 'null' literal"); 
    } 
    if ((paramObject1 instanceof Boolean || paramObject1 instanceof Character || paramObject1 instanceof Number || bool) && (paramObject2 instanceof Boolean || paramObject2 instanceof Character || paramObject2 instanceof Number || paramObject2 instanceof Primitive))
      return Primitive.binaryOperation(paramObject1, paramObject2, paramInt); 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Non primitive value in operator: ");
    stringBuffer.append(paramObject1.getClass());
    stringBuffer.append(" ");
    stringBuffer.append(ParserConstants.tokenImage[paramInt]);
    stringBuffer.append(" ");
    stringBuffer.append(paramObject2.getClass());
    throw new UtilEvalError(stringBuffer.toString());
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    Object object2 = (BSHPrimaryExpression)jjtGetChild(0);
    if (object2 == null)
      throw new InterpreterError("Error, null LHSnode"); 
    boolean bool = paramInterpreter.getStrictJava();
    LHS lHS = object2.toLHS(paramCallStack, paramInterpreter);
    if (lHS == null)
      throw new InterpreterError("Error, null LHS"); 
    object2 = null;
    if (this.operator != 81)
      try {
        object2 = lHS.getValue();
      } catch (UtilEvalError paramInterpreter) {
        throw paramInterpreter.toEvalError(this, paramCallStack);
      }  
    object1 = ((SimpleNode)jjtGetChild(1)).eval(paramCallStack, paramInterpreter);
    if (object1 == Primitive.VOID)
      throw new EvalError("Void assignment.", this, paramCallStack); 
    try {
      int i = this.operator;
      if (i != 81) {
        switch (i) {
          case 132:
          case 133:
            return lHS.assign(a(object2, object1, 116), bool);
          case 130:
          case 131:
            return lHS.assign(a(object2, object1, 114), bool);
          case 128:
          case 129:
            return lHS.assign(a(object2, object1, 112), bool);
          case 127:
            return lHS.assign(a(object2, object1, 111), bool);
          case 126:
            return lHS.assign(a(object2, object1, 110), bool);
          case 124:
          case 125:
            return lHS.assign(a(object2, object1, 108), bool);
          case 122:
          case 123:
            return lHS.assign(a(object2, object1, 106), bool);
          case 121:
            return lHS.assign(a(object2, object1, 105), bool);
          case 120:
            return lHS.assign(a(object2, object1, 104), bool);
          case 119:
            return lHS.assign(a(object2, object1, 103), bool);
          case 118:
            return lHS.assign(a(object2, object1, 102), bool);
        } 
        throw new InterpreterError("unimplemented operator in assignment BSH");
      } 
      return lHS.assign(object1, bool);
    } catch (UtilEvalError object1) {
      throw object1.toEvalError(this, paramCallStack);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHAssignment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
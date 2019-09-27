package bsh;

class BSHBinaryExpression extends SimpleNode implements ParserConstants {
  static Class a;
  
  public int kind;
  
  BSHBinaryExpression(int paramInt) { super(paramInt); }
  
  static Class a(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  private boolean a(Object paramObject) { return (paramObject instanceof Primitive && paramObject != Primitive.VOID && paramObject != Primitive.NULL); }
  
  private boolean b(Object paramObject) { return (paramObject instanceof Boolean || paramObject instanceof Character || paramObject instanceof Number); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    Class clazz;
    StringBuffer stringBuffer;
    boolean bool = false;
    boolean bool1 = false;
    Object object2 = ((SimpleNode)jjtGetChild(0)).eval(paramCallStack, paramInterpreter);
    if (this.kind == 35) {
      if (object2 == Primitive.NULL)
        return new Primitive(false); 
      clazz = ((BSHType)jjtGetChild(1)).getType(paramCallStack, paramInterpreter);
      if (object2 instanceof Primitive) {
        if (a == null) {
          stringBuffer = a("bsh.Primitive");
          a = stringBuffer;
        } else {
          stringBuffer = a;
        } 
        return (clazz == stringBuffer) ? new Primitive(true) : new Primitive(false);
      } 
      return new Primitive(Types.b(clazz, object2.getClass()));
    } 
    if (this.kind == 98 || this.kind == 99) {
      Object object;
      if (a(object2)) {
        object = ((Primitive)object2).getValue();
      } else {
        object = object2;
      } 
      if (object instanceof Boolean && !((Boolean)object).booleanValue())
        return new Primitive(false); 
    } 
    if (this.kind == 96 || this.kind == 97) {
      Object object;
      if (a(object2)) {
        object = ((Primitive)object2).getValue();
      } else {
        object = object2;
      } 
      if (object instanceof Boolean && ((Boolean)object).booleanValue() == true)
        return new Primitive(true); 
    } 
    boolean bool2 = b(object2);
    object1 = ((SimpleNode)jjtGetChild(1)).eval(stringBuffer, clazz);
    boolean bool3 = b(object1);
    if ((!bool2 && !a(object2)) || (!bool3 && !a(object1)) || (bool2 && bool3 && this.kind == 90)) {
      int i = this.kind;
      if (i != 90) {
        if (i != 95) {
          if (i == 102 && (object2 instanceof String || object1 instanceof String)) {
            stringBuffer = new StringBuffer();
            stringBuffer.append(object2.toString());
            stringBuffer.append(object1.toString());
            return stringBuffer.toString();
          } 
          if (object2 instanceof Primitive || object1 instanceof Primitive) {
            if (object2 == Primitive.VOID || object1 == Primitive.VOID)
              throw new EvalError("illegal use of undefined variable, class, or 'void' literal", this, stringBuffer); 
            if (object2 == Primitive.NULL || object1 == Primitive.NULL)
              throw new EvalError("illegal use of null value or 'null' literal", this, stringBuffer); 
          } 
          object1 = new StringBuffer();
          object1.append("Operator: '");
          object1.append(ParserConstants.tokenImage[this.kind]);
          object1.append("' inappropriate for objects");
          throw new EvalError(object1.toString(), this, stringBuffer);
        } 
        if (object2 != object1)
          bool1 = true; 
        return new Primitive(bool1);
      } 
      bool1 = bool;
      if (object2 == object1)
        bool1 = true; 
      return new Primitive(bool1);
    } 
    try {
      return Primitive.binaryOperation(object2, object1, this.kind);
    } catch (UtilEvalError object1) {
      throw object1.toEvalError(this, stringBuffer);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHBinaryExpression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
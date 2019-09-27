package bsh;

class BSHClassDeclaration extends SimpleNode {
  String a;
  
  Modifiers b;
  
  int c;
  
  boolean d;
  
  boolean e;
  
  BSHClassDeclaration(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    Class clazz;
    byte b1;
    boolean bool = this.d;
    byte b2 = 0;
    if (bool) {
      clazz = ((BSHAmbiguousName)jjtGetChild(0)).toClass(paramCallStack, paramInterpreter);
      b1 = 1;
    } else {
      clazz = null;
      b1 = 0;
    } 
    Class[] arrayOfClass = new Class[this.c];
    while (true) {
      if (b2 >= this.c) {
        BSHBlock bSHBlock;
        if (b1 < jjtGetNumChildren()) {
          bSHBlock = (BSHBlock)jjtGetChild(b1);
        } else {
          bSHBlock = new BSHBlock(25);
        } 
        try {
          return ClassGenerator.getClassGenerator().generateClass(this.a, this.b, arrayOfClass, clazz, bSHBlock, this.e, paramCallStack, paramInterpreter);
        } catch (UtilEvalError paramInterpreter) {
          throw paramInterpreter.toEvalError(this, paramCallStack);
        } 
      } 
      BSHAmbiguousName bSHAmbiguousName = (BSHAmbiguousName)jjtGetChild(b1);
      arrayOfClass[b2] = bSHAmbiguousName.toClass(paramCallStack, paramInterpreter);
      if (!arrayOfClass[b2].isInterface()) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Type: ");
        stringBuffer.append(bSHAmbiguousName.text);
        stringBuffer.append(" is not an interface!");
        throw new EvalError(stringBuffer.toString(), this, paramCallStack);
      } 
      b2++;
      b1++;
    } 
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("ClassDeclaration: ");
    stringBuffer.append(this.a);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHClassDeclaration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh;

class BSHTypedVariableDeclaration extends SimpleNode {
  public Modifiers modifiers;
  
  BSHTypedVariableDeclaration(int paramInt) { super(paramInt); }
  
  private BSHType b() { return (BSHType)jjtGetChild(0); }
  
  BSHVariableDeclarator[] a() {
    int i = jjtGetNumChildren();
    BSHVariableDeclarator[] arrayOfBSHVariableDeclarator = new BSHVariableDeclarator[i - 1];
    for (byte b = 1;; b++) {
      if (b >= i)
        return arrayOfBSHVariableDeclarator; 
      arrayOfBSHVariableDeclarator[b - true] = (BSHVariableDeclarator)jjtGetChild(b);
    } 
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    try {
      NameSpace nameSpace = paramCallStack.top();
      BSHType bSHType = b();
      Class clazz = bSHType.getType(paramCallStack, paramInterpreter);
      BSHVariableDeclarator[] arrayOfBSHVariableDeclarator = a();
      byte b = 0;
      while (b < arrayOfBSHVariableDeclarator.length) {
        BSHVariableDeclarator bSHVariableDeclarator = arrayOfBSHVariableDeclarator[b];
        Object object = bSHVariableDeclarator.eval(bSHType, paramCallStack, paramInterpreter);
        try {
          nameSpace.setTypedVariable(bSHVariableDeclarator.name, clazz, object, this.modifiers);
          b++;
        } catch (UtilEvalError paramInterpreter) {
          throw paramInterpreter.toEvalError(this, paramCallStack);
        } 
      } 
    } catch (EvalError paramCallStack) {
      paramCallStack.reThrow("Typed variable declaration");
    } 
    return Primitive.VOID;
  }
  
  public String getTypeDescriptor(CallStack paramCallStack, Interpreter paramInterpreter, String paramString) { return b().getTypeDescriptor(paramCallStack, paramInterpreter, paramString); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHTypedVariableDeclaration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
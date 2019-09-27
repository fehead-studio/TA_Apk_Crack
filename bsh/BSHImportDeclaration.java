package bsh;

class BSHImportDeclaration extends SimpleNode {
  public boolean importPackage;
  
  public boolean staticImport;
  
  public boolean superImport;
  
  BSHImportDeclaration(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    NameSpace nameSpace = paramCallStack.top();
    if (this.superImport) {
      try {
        nameSpace.doSuperImport();
      } catch (UtilEvalError paramInterpreter) {
        throw paramInterpreter.toEvalError(this, paramCallStack);
      } 
    } else if (this.staticImport) {
      if (this.importPackage) {
        nameSpace.importStatic(((BSHAmbiguousName)jjtGetChild(0)).toClass(paramCallStack, paramInterpreter));
      } else {
        throw new EvalError("static field imports not supported yet", this, paramCallStack);
      } 
    } else {
      String str = ((BSHAmbiguousName)jjtGetChild(0)).text;
      if (this.importPackage) {
        nameSpace.importPackage(str);
      } else {
        nameSpace.importClass(str);
      } 
    } 
    return Primitive.VOID;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHImportDeclaration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
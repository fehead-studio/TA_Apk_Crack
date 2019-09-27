package bsh;

public class BSHPackageDeclaration extends SimpleNode {
  public BSHPackageDeclaration(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    BSHAmbiguousName bSHAmbiguousName = (BSHAmbiguousName)jjtGetChild(0);
    NameSpace nameSpace = paramCallStack.top();
    nameSpace.c(bSHAmbiguousName.text);
    nameSpace.importPackage(bSHAmbiguousName.text);
    return Primitive.VOID;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHPackageDeclaration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
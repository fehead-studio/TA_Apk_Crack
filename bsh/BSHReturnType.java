package bsh;

class BSHReturnType extends SimpleNode {
  public boolean isVoid;
  
  BSHReturnType(int paramInt) { super(paramInt); }
  
  BSHType a() { return (BSHType)jjtGetChild(0); }
  
  public Class evalReturnType(CallStack paramCallStack, Interpreter paramInterpreter) { return this.isVoid ? void.class : a().getType(paramCallStack, paramInterpreter); }
  
  public String getTypeDescriptor(CallStack paramCallStack, Interpreter paramInterpreter, String paramString) { return this.isVoid ? "V" : a().getTypeDescriptor(paramCallStack, paramInterpreter, paramString); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHReturnType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
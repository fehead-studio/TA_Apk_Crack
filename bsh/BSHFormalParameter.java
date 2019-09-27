package bsh;

class BSHFormalParameter extends SimpleNode {
  public static final Class UNTYPED;
  
  public String name;
  
  public Class type;
  
  static  {
  
  }
  
  BSHFormalParameter(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    Class clazz;
    if (jjtGetNumChildren() > 0) {
      clazz = ((BSHType)jjtGetChild(0)).getType(paramCallStack, paramInterpreter);
    } else {
      clazz = UNTYPED;
    } 
    this.type = clazz;
    return this.type;
  }
  
  public String getTypeDescriptor(CallStack paramCallStack, Interpreter paramInterpreter, String paramString) { return (jjtGetNumChildren() > 0) ? ((BSHType)jjtGetChild(0)).getTypeDescriptor(paramCallStack, paramInterpreter, paramString) : "Ljava/lang/Object;"; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHFormalParameter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
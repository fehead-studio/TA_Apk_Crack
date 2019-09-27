package bsh;

class BSHFormalParameters extends SimpleNode {
  Class[] a;
  
  int b;
  
  String[] c;
  
  private String[] d;
  
  BSHFormalParameters(int paramInt) { super(paramInt); }
  
  void a() {
    if (this.d != null)
      return; 
    this.b = jjtGetNumChildren();
    String[] arrayOfString = new String[this.b];
    for (byte b1 = 0;; b1++) {
      if (b1 >= this.b) {
        this.d = arrayOfString;
        return;
      } 
      arrayOfString[b1] = ((BSHFormalParameter)jjtGetChild(b1)).name;
    } 
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    if (this.a != null)
      return this.a; 
    a();
    Class[] arrayOfClass = new Class[this.b];
    for (byte b1 = 0;; b1++) {
      if (b1 >= this.b) {
        this.a = arrayOfClass;
        return arrayOfClass;
      } 
      arrayOfClass[b1] = (Class)((BSHFormalParameter)jjtGetChild(b1)).eval(paramCallStack, paramInterpreter);
    } 
  }
  
  public String[] getParamNames() {
    a();
    return this.d;
  }
  
  public String[] getTypeDescriptors(CallStack paramCallStack, Interpreter paramInterpreter, String paramString) {
    if (this.c != null)
      return this.c; 
    a();
    String[] arrayOfString = new String[this.b];
    byte b1;
    for (b1 = 0;; b1++) {
      if (b1 >= this.b) {
        this.c = arrayOfString;
        return arrayOfString;
      } 
      arrayOfString[b1] = ((BSHFormalParameter)jjtGetChild(b1)).getTypeDescriptor(paramCallStack, paramInterpreter, paramString);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHFormalParameters.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
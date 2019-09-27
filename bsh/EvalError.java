package bsh;

public class EvalError extends Exception {
  SimpleNode a;
  
  String b;
  
  CallStack c;
  
  public EvalError(String paramString, SimpleNode paramSimpleNode, CallStack paramCallStack) {
    setMessage(paramString);
    this.a = paramSimpleNode;
    if (paramCallStack != null)
      this.c = paramCallStack.copy(); 
  }
  
  SimpleNode a() { return this.a; }
  
  void a(SimpleNode paramSimpleNode) { this.a = paramSimpleNode; }
  
  protected void a(String paramString) {
    if (paramString == null)
      return; 
    if (this.b != null) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(paramString);
      stringBuffer.append(" : ");
      stringBuffer.append(this.b);
      paramString = stringBuffer.toString();
    } 
    this.b = paramString;
  }
  
  public int getErrorLineNumber() { return (this.a != null) ? this.a.getLineNumber() : -1; }
  
  public String getErrorSourceFile() { return (this.a != null) ? this.a.getSourceFile() : "<unknown file>"; }
  
  public String getErrorText() { return (this.a != null) ? this.a.getText() : "<unknown error>"; }
  
  public String getMessage() { return this.b; }
  
  public String getScriptStackTrace() {
    if (this.c == null)
      return "<Unknown>"; 
    String str = "";
    CallStack callStack = this.c.copy();
    while (true) {
      if (callStack.depth() <= 0)
        return str; 
      NameSpace nameSpace = callStack.pop();
      SimpleNode simpleNode = nameSpace.b();
      if (nameSpace.c) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("\nCalled from method: ");
        stringBuffer.append(nameSpace.getName());
        String str1 = stringBuffer.toString();
        str = str1;
        if (simpleNode != null) {
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append(str1);
          stringBuffer1.append(" : at Line: ");
          stringBuffer1.append(simpleNode.getLineNumber());
          stringBuffer1.append(" : in file: ");
          stringBuffer1.append(simpleNode.getSourceFile());
          stringBuffer1.append(" : ");
          stringBuffer1.append(simpleNode.getText());
          String str2 = stringBuffer1.toString();
        } 
      } 
    } 
  }
  
  public void reThrow(String paramString) {
    a(paramString);
    throw this;
  }
  
  public void setMessage(String paramString) { this.b = paramString; }
  
  public String toString() {
    String str1;
    if (this.a != null) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(" : at Line: ");
      stringBuffer1.append(this.a.getLineNumber());
      stringBuffer1.append(" : in file: ");
      stringBuffer1.append(this.a.getSourceFile());
      stringBuffer1.append(" : ");
      stringBuffer1.append(this.a.getText());
      str1 = stringBuffer1.toString();
    } else {
      str1 = ": <at unknown location>";
    } 
    String str2 = str1;
    if (this.c != null) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(str1);
      stringBuffer1.append("\n");
      stringBuffer1.append(getScriptStackTrace());
      str2 = stringBuffer1.toString();
    } 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(getMessage());
    stringBuffer.append(str2);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\EvalError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh;

class BSHLiteral extends SimpleNode {
  public Object value;
  
  BSHLiteral(int paramInt) { super(paramInt); }
  
  private char a(char paramChar) { return (paramChar != 'b') ? ((paramChar != 'f') ? ((paramChar != 'n') ? ((paramChar != 'r') ? ((paramChar != 't') ? paramChar : 9) : 13) : 10) : 12) : 8; }
  
  void a(String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    byte b;
    for (b = 0;; b = b1 + 1) {
      if (b >= paramString.length()) {
        this.value = stringBuffer.toString().intern();
        return;
      } 
      char c2 = paramString.charAt(b);
      byte b1 = b;
      char c1 = c2;
      if (c2 == '\\') {
        b1 = b + 1;
        c1 = paramString.charAt(b1);
        if (Character.isDigit(c1)) {
          b = b1;
          while (b < b1 + 2) {
            byte b2 = b + 1;
            if (Character.isDigit(paramString.charAt(b2))) {
              b = b2;
              continue;
            } 
            break;
          } 
          c1 = (char)Integer.parseInt(paramString.substring(b1, b + 1), 8);
          b1 = b;
        } else {
          c1 = a(c1);
        } 
      } 
      stringBuffer.append(c1);
    } 
  }
  
  public void charSetup(String paramString) {
    char c2 = paramString.charAt(0);
    char c1 = c2;
    if (c2 == '\\') {
      c1 = paramString.charAt(1);
      if (Character.isDigit(c1)) {
        c1 = (char)Integer.parseInt(paramString.substring(1), 8);
      } else {
        c1 = a(c1);
      } 
    } 
    this.value = new Primitive((new Character(c1)).charValue());
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    if (this.value == null) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Null in bsh literal: ");
      stringBuffer.append(this.value);
      throw new InterpreterError(stringBuffer.toString());
    } 
    return this.value;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHLiteral.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
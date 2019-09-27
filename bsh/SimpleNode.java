package bsh;

class SimpleNode implements Node {
  public static SimpleNode JAVACODE = new SimpleNode$1(-1);
  
  protected Node g;
  
  protected Node[] h;
  
  protected int i;
  
  Token j;
  
  Token k;
  
  String l;
  
  public SimpleNode(int paramInt) { this.i = paramInt; }
  
  public void dump(String paramString) {
    System.out.println(toString(paramString));
    if (this.h != null)
      for (byte b = 0;; b++) {
        if (b >= this.h.length)
          return; 
        SimpleNode simpleNode = (SimpleNode)this.h[b];
        if (simpleNode != null) {
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append(paramString);
          stringBuffer.append(" ");
          simpleNode.dump(stringBuffer.toString());
        } 
      }  
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Unimplemented or inappropriate for ");
    stringBuffer.append(getClass().getName());
    throw new InterpreterError(stringBuffer.toString());
  }
  
  public SimpleNode getChild(int paramInt) { return (SimpleNode)jjtGetChild(paramInt); }
  
  public int getLineNumber() { return this.j.beginLine; }
  
  public String getSourceFile() { return (this.l == null) ? ((this.g != null) ? ((SimpleNode)this.g).getSourceFile() : "<unknown file>") : this.l; }
  
  public String getText() {
    StringBuffer stringBuffer = new StringBuffer();
    for (Token token = this.j; token != null; token = token.next) {
      stringBuffer.append(token.image);
      if (!token.image.equals("."))
        stringBuffer.append(" "); 
      if (token == this.k || token.image.equals("{") || token.image.equals(";"))
        break; 
    } 
    return stringBuffer.toString();
  }
  
  public void jjtAddChild(Node paramNode, int paramInt) { // Byte code:
    //   0: aload_0
    //   1: getfield h : [Lbsh/Node;
    //   4: ifnonnull -> 22
    //   7: iload_2
    //   8: iconst_1
    //   9: iadd
    //   10: anewarray bsh/Node
    //   13: astore_3
    //   14: aload_0
    //   15: aload_3
    //   16: putfield h : [Lbsh/Node;
    //   19: goto -> 56
    //   22: iload_2
    //   23: aload_0
    //   24: getfield h : [Lbsh/Node;
    //   27: arraylength
    //   28: if_icmplt -> 56
    //   31: iload_2
    //   32: iconst_1
    //   33: iadd
    //   34: anewarray bsh/Node
    //   37: astore_3
    //   38: aload_0
    //   39: getfield h : [Lbsh/Node;
    //   42: iconst_0
    //   43: aload_3
    //   44: iconst_0
    //   45: aload_0
    //   46: getfield h : [Lbsh/Node;
    //   49: arraylength
    //   50: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   53: goto -> 14
    //   56: aload_0
    //   57: getfield h : [Lbsh/Node;
    //   60: iload_2
    //   61: aload_1
    //   62: aastore
    //   63: return }
  
  public void jjtClose() {}
  
  public Node jjtGetChild(int paramInt) { return this.h[paramInt]; }
  
  public int jjtGetNumChildren() { return (this.h == null) ? 0 : this.h.length; }
  
  public Node jjtGetParent() { return this.g; }
  
  public void jjtOpen() {}
  
  public void jjtSetParent(Node paramNode) { this.g = paramNode; }
  
  public void prune() { jjtSetParent(null); }
  
  public void setSourceFile(String paramString) { this.l = paramString; }
  
  public String toString() { return ParserTreeConstants.jjtNodeName[this.i]; }
  
  public String toString(String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(paramString);
    stringBuffer.append(toString());
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\SimpleNode.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
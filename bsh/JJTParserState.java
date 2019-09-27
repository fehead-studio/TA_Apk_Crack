package bsh;

import java.util.Stack;

class JJTParserState {
  private Stack a = new Stack();
  
  private Stack b = new Stack();
  
  private int c = 0;
  
  private int d = 0;
  
  private boolean e;
  
  void a() {
    this.a.removeAllElements();
    this.b.removeAllElements();
    this.c = 0;
    this.d = 0;
  }
  
  void a(Node paramNode) {
    this.a.push(paramNode);
    this.c++;
  }
  
  void a(Node paramNode, int paramInt) {
    this.d = ((Integer)this.b.pop()).intValue();
    while (true) {
      int i = paramInt - 1;
      if (paramInt <= 0) {
        paramNode.jjtClose();
        a(paramNode);
        this.e = true;
        return;
      } 
      Node node = c();
      node.jjtSetParent(paramNode);
      paramNode.jjtAddChild(node, i);
      paramInt = i;
    } 
  }
  
  void a(Node paramNode, boolean paramBoolean) {
    if (paramBoolean) {
      int i = d();
      this.d = ((Integer)this.b.pop()).intValue();
      while (true) {
        int j = i - 1;
        if (i <= 0) {
          paramNode.jjtClose();
          a(paramNode);
          paramBoolean = true;
          break;
        } 
        Node node = c();
        node.jjtSetParent(paramNode);
        paramNode.jjtAddChild(node, j);
        i = j;
      } 
    } else {
      this.d = ((Integer)this.b.pop()).intValue();
      paramBoolean = false;
    } 
    this.e = paramBoolean;
  }
  
  Node b() { return (Node)this.a.elementAt(0); }
  
  void b(Node paramNode) {
    while (true) {
      if (this.c <= this.d) {
        this.d = ((Integer)this.b.pop()).intValue();
        return;
      } 
      c();
    } 
  }
  
  Node c() {
    int i = this.c - 1;
    this.c = i;
    if (i < this.d)
      this.d = ((Integer)this.b.pop()).intValue(); 
    return (Node)this.a.pop();
  }
  
  void c(Node paramNode) {
    this.b.push(new Integer(this.d));
    this.d = this.c;
    paramNode.jjtOpen();
  }
  
  int d() { return this.c - this.d; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\JJTParserState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh;

import java.io.Serializable;

interface Node extends Serializable {
  void jjtAddChild(Node paramNode, int paramInt);
  
  void jjtClose();
  
  Node jjtGetChild(int paramInt);
  
  int jjtGetNumChildren();
  
  Node jjtGetParent();
  
  void jjtOpen();
  
  void jjtSetParent(Node paramNode);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Node.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
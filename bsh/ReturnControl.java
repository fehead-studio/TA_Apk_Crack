package bsh;

class ReturnControl implements ParserConstants {
  public int kind;
  
  public SimpleNode returnPoint;
  
  public Object value;
  
  public ReturnControl(int paramInt, Object paramObject, SimpleNode paramSimpleNode) {
    this.kind = paramInt;
    this.value = paramObject;
    this.returnPoint = paramSimpleNode;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ReturnControl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
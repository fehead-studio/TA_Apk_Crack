package bsh;

class BSHEnhancedForStatement extends SimpleNode implements ParserConstants {
  String a;
  
  BSHEnhancedForStatement(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    NameSpace nameSpace = paramCallStack.top();
    SimpleNode simpleNode1 = (SimpleNode)jjtGetChild(0);
    int i = jjtGetNumChildren();
    boolean bool = simpleNode1 instanceof BSHType;
    Class clazz = null;
    SimpleNode simpleNode2 = null;
    if (bool) {
      clazz = ((BSHType)simpleNode1).getType(paramCallStack, paramInterpreter);
      SimpleNode simpleNode = (SimpleNode)jjtGetChild(1);
      simpleNode1 = simpleNode2;
      if (i > 2)
        simpleNode1 = (SimpleNode)jjtGetChild(2); 
      simpleNode2 = simpleNode1;
      simpleNode1 = simpleNode;
    } else if (i > 1) {
      simpleNode2 = (SimpleNode)jjtGetChild(1);
    } else {
      simpleNode2 = null;
    } 
    BlockNameSpace blockNameSpace = new BlockNameSpace(nameSpace);
    paramCallStack.swap(blockNameSpace);
    Object object = simpleNode1.eval(paramCallStack, paramInterpreter);
    if (object == Primitive.NULL)
      throw new EvalError("The collection, array, map, iterator, or enumeration portion of a for statement cannot be null.", this, paramCallStack); 
    CollectionManager collectionManager = CollectionManager.getCollectionManager();
    if (!collectionManager.isBshIterable(object)) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Can't iterate over type: ");
      stringBuffer.append(object.getClass());
      throw new EvalError(stringBuffer.toString(), this, paramCallStack);
    } 
    BshIterator bshIterator = collectionManager.getBshIterator(object);
    object = Primitive.VOID;
    while (true) {
      while (true)
        break; 
      if (i != 0) {
        paramCallStack.swap(nameSpace);
        return object;
      } 
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHEnhancedForStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
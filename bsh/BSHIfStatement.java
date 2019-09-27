package bsh;

class BSHIfStatement extends SimpleNode {
  BSHIfStatement(int paramInt) { super(paramInt); }
  
  public static boolean evaluateCondition(SimpleNode paramSimpleNode, CallStack paramCallStack, Interpreter paramInterpreter) {
    Object object2 = paramSimpleNode.eval(paramCallStack, paramInterpreter);
    Object object1 = object2;
    if (object2 instanceof Primitive) {
      if (object2 == Primitive.VOID)
        throw new EvalError("Condition evaluates to void type", paramSimpleNode, paramCallStack); 
      object1 = ((Primitive)object2).getValue();
    } 
    if (object1 instanceof Boolean)
      return ((Boolean)object1).booleanValue(); 
    throw new EvalError("Condition must evaluate to a Boolean or boolean.", paramSimpleNode, paramCallStack);
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    Node node;
    if (evaluateCondition((SimpleNode)jjtGetChild(0), paramCallStack, paramInterpreter)) {
      node = jjtGetChild(1);
    } else if (jjtGetNumChildren() > 2) {
      node = jjtGetChild(2);
    } else {
      paramCallStack = null;
      if (paramCallStack instanceof ReturnControl)
        return paramCallStack; 
    } 
    Object object = ((SimpleNode)node).eval(paramCallStack, paramInterpreter);
    if (object instanceof ReturnControl)
      return object; 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHIfStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
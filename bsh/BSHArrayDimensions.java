package bsh;

import java.lang.reflect.Array;

class BSHArrayDimensions extends SimpleNode {
  public Class baseType;
  
  public int[] definedDimensions;
  
  public int numDefinedDims;
  
  public int numUndefinedDims;
  
  BSHArrayDimensions(int paramInt) { super(paramInt); }
  
  public void addDefinedDimension() { this.numDefinedDims++; }
  
  public void addUndefinedDimension() { this.numUndefinedDims++; }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    Object object1;
    int i = 0;
    SimpleNode simpleNode = (SimpleNode)jjtGetChild(0);
    if (simpleNode instanceof BSHArrayInitializer) {
      if (this.baseType == null)
        throw new EvalError("Internal Array Eval err:  unknown base type", this, paramCallStack); 
      Object object = ((BSHArrayInitializer)simpleNode).eval(this.baseType, this.numUndefinedDims, paramCallStack, paramInterpreter);
      i = Reflect.getArrayDimensions(object.getClass());
      this.definedDimensions = new int[i];
      if (this.definedDimensions.length != this.numUndefinedDims) {
        object2 = new StringBuffer();
        object2.append("Incompatible initializer. Allocation calls for a ");
        object2.append(this.numUndefinedDims);
        object2.append(" dimensional array, but initializer is a ");
        object2.append(i);
        object2.append(" dimensional array");
        throw new EvalError(object2.toString(), this, paramCallStack);
      } 
      object1 = object;
      i = 0;
      while (true) {
        if (i >= this.definedDimensions.length)
          return object; 
        this.definedDimensions[i] = Array.getLength(object1);
        object2 = object1;
        if (this.definedDimensions[i] > 0)
          object2 = Array.get(object1, 0); 
        i++;
        object1 = object2;
      } 
    } 
    this.definedDimensions = new int[this.numDefinedDims];
    while (true) {
      if (i >= this.numDefinedDims)
        return Primitive.VOID; 
      try {
        Object object = ((SimpleNode)jjtGetChild(i)).eval(object1, object2);
        this.definedDimensions[i] = ((Primitive)object).intValue();
        i++;
      } catch (Exception object2) {
        object2 = new StringBuffer();
        object2.append("Array index: ");
        object2.append(i);
        object2.append(" does not evaluate to an integer");
        throw new EvalError(object2.toString(), this, object1);
      } 
    } 
  }
  
  public Object eval(Class paramClass, CallStack paramCallStack, Interpreter paramInterpreter) {
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("array base type = ");
      stringBuffer.append(paramClass);
      Interpreter.debug(stringBuffer.toString());
    } 
    this.baseType = paramClass;
    return eval(paramCallStack, paramInterpreter);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHArrayDimensions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
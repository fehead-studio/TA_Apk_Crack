package bsh;

import java.lang.reflect.Array;

class BSHArrayInitializer extends SimpleNode {
  BSHArrayInitializer(int paramInt) { super(paramInt); }
  
  private void a(Class paramClass, Object paramObject, int paramInt, CallStack paramCallStack) {
    if (paramObject instanceof Primitive) {
      paramObject = ((Primitive)paramObject).getType().getName();
    } else {
      paramObject = Reflect.normalizeClassName(paramObject.getClass());
    } 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Incompatible type: ");
    stringBuffer.append(paramObject);
    stringBuffer.append(" in initializer of array type: ");
    stringBuffer.append(paramClass);
    stringBuffer.append(" at position: ");
    stringBuffer.append(paramInt);
    throw new EvalError(stringBuffer.toString(), this, paramCallStack);
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) { throw new EvalError("Array initializer has no base type.", this, paramCallStack); }
  
  public Object eval(Class paramClass, int paramInt, CallStack paramCallStack, Interpreter paramInterpreter) {
    int i = jjtGetNumChildren();
    int[] arrayOfInt = new int[paramInt];
    arrayOfInt[0] = i;
    Object object = Array.newInstance(paramClass, arrayOfInt);
    byte b;
    for (b = 0;; b++) {
      if (b >= i)
        return object; 
      Object object1 = (SimpleNode)jjtGetChild(b);
      if (object1 instanceof BSHArrayInitializer) {
        if (paramInt < 2) {
          stringBuffer = new StringBuffer();
          stringBuffer.append("Invalid Location for Intializer, position: ");
          stringBuffer.append(b);
          throw new EvalError(stringBuffer.toString(), this, paramCallStack);
        } 
        object1 = ((BSHArrayInitializer)object1).eval(stringBuffer, paramInt - 1, paramCallStack, paramInterpreter);
      } else {
        object1 = object1.eval(paramCallStack, paramInterpreter);
      } 
      if (object1 == Primitive.VOID) {
        stringBuffer = new StringBuffer();
        stringBuffer.append("Void in array initializer, position");
        stringBuffer.append(b);
        throw new EvalError(stringBuffer.toString(), this, paramCallStack);
      } 
      if (paramInt == 1) {
        try {
          object2 = Types.castObject(object1, stringBuffer, 0);
          object2 = Primitive.unwrap(object2);
        } catch (UtilEvalError stringBuffer) {
          throw stringBuffer.toEvalError("Error in array initializer", this, paramCallStack);
        } 
      } else {
        object2 = object1;
      } 
      try {
        Array.set(object, b, object2);
      } catch (IllegalArgumentException object2) {
        StringBuffer stringBuffer1 = new StringBuffer();
        String str = "illegal arg";
        stringBuffer1.append(str);
        stringBuffer1.append(object2);
        Interpreter.debug(stringBuffer1.toString());
        a(stringBuffer, object1, b, paramCallStack);
      } catch (ArrayStoreException object2) {
        StringBuffer stringBuffer1 = new StringBuffer();
        String str = "arraystore";
      } 
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHArrayInitializer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
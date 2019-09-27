package bsh;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;

class BSHAllocationExpression extends SimpleNode {
  private static int a;
  
  static  {
  
  }
  
  BSHAllocationExpression(int paramInt) { super(paramInt); }
  
  private Object a(BSHAmbiguousName paramBSHAmbiguousName, BSHArguments paramBSHArguments, CallStack paramCallStack, Interpreter paramInterpreter) {
    Class clazz;
    paramCallStack.top();
    Object[] arrayOfObject = paramBSHArguments.getArguments(paramCallStack, paramInterpreter);
    if (arrayOfObject == null)
      throw new EvalError("Null args in new.", this, paramCallStack); 
    boolean bool = false;
    paramBSHAmbiguousName.a(paramCallStack, paramInterpreter, false);
    Object object = paramBSHAmbiguousName.a(paramCallStack, paramInterpreter, true);
    if (object instanceof ClassIdentifier) {
      clazz = ((ClassIdentifier)object).getTargetClass();
      if (jjtGetNumChildren() > 2)
        bool = true; 
      if (bool) {
        object = (BSHBlock)jjtGetChild(2);
        return clazz.isInterface() ? b(clazz, arrayOfObject, object, paramCallStack, paramInterpreter) : a(clazz, arrayOfObject, object, paramCallStack, paramInterpreter);
      } 
      return a(clazz, arrayOfObject, paramCallStack);
    } 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Unknown class: ");
    stringBuffer.append(clazz.text);
    throw new EvalError(stringBuffer.toString(), this, paramCallStack);
  }
  
  private Object a(BSHAmbiguousName paramBSHAmbiguousName, BSHArrayDimensions paramBSHArrayDimensions, CallStack paramCallStack, Interpreter paramInterpreter) {
    StringBuffer stringBuffer;
    NameSpace nameSpace = paramCallStack.top();
    Class clazz = paramBSHAmbiguousName.toClass(paramCallStack, paramInterpreter);
    if (clazz == null) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("Class ");
      stringBuffer.append(paramBSHAmbiguousName.getName(nameSpace));
      stringBuffer.append(" not found.");
      throw new EvalError(stringBuffer.toString(), this, paramCallStack);
    } 
    return a(stringBuffer, clazz, paramCallStack, paramInterpreter);
  }
  
  private Object a(BSHArrayDimensions paramBSHArrayDimensions, Class paramClass, CallStack paramCallStack, Interpreter paramInterpreter) {
    Object object = paramBSHArrayDimensions.eval(paramClass, paramCallStack, paramInterpreter);
    return (object != Primitive.VOID) ? object : a(paramClass, paramBSHArrayDimensions, paramCallStack);
  }
  
  private Object a(BSHPrimitiveType paramBSHPrimitiveType, BSHArrayDimensions paramBSHArrayDimensions, CallStack paramCallStack, Interpreter paramInterpreter) { return a(paramBSHArrayDimensions, paramBSHPrimitiveType.getType(), paramCallStack, paramInterpreter); }
  
  private Object a(Class paramClass, BSHArrayDimensions paramBSHArrayDimensions, CallStack paramCallStack) {
    Class clazz = paramClass;
    if (paramBSHArrayDimensions.numUndefinedDims > 0)
      clazz = Array.newInstance(paramClass, new int[paramBSHArrayDimensions.numUndefinedDims]).getClass(); 
    try {
      return Array.newInstance(clazz, paramBSHArrayDimensions.definedDimensions);
    } catch (NegativeArraySizeException paramClass) {
      throw new TargetError(paramClass, this, paramCallStack);
    } catch (Exception paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Can't construct primitive array: ");
      stringBuffer.append(paramClass.getMessage());
      throw new EvalError(stringBuffer.toString(), this, paramCallStack);
    } 
  }
  
  private Object a(Class paramClass, Object[] paramArrayOfObject, BSHBlock paramBSHBlock, CallStack paramCallStack, Interpreter paramInterpreter) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(paramCallStack.top().getName());
    stringBuffer.append("$");
    int i = a + 1;
    a = i;
    stringBuffer.append(i);
    String str = stringBuffer.toString();
    Modifiers modifiers = new Modifiers();
    modifiers.addModifier(0, "public");
    try {
      paramClass = ClassGenerator.getClassGenerator().generateClass(str, modifiers, null, paramClass, paramBSHBlock, false, paramCallStack, paramInterpreter);
      try {
        return Reflect.a(paramClass, paramArrayOfObject);
      } catch (Exception paramClass) {
        Exception exception;
        if (paramClass instanceof InvocationTargetException)
          exception = (Exception)((InvocationTargetException)paramClass).getTargetException(); 
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("Error constructing inner class instance: ");
        stringBuffer1.append(exception);
        throw new EvalError(stringBuffer1.toString(), this, paramCallStack);
      } 
    } catch (UtilEvalError paramClass) {
      throw paramClass.toEvalError(this, paramCallStack);
    } 
  }
  
  private Object a(Class paramClass, Object[] paramArrayOfObject, CallStack paramCallStack) {
    try {
      Object object = Reflect.a(paramClass, paramArrayOfObject);
      str = paramClass.getName();
      if (str.indexOf("$") == -1)
        return object; 
      NameSpace nameSpace = Name.a(paramCallStack.top().a(null).getNameSpace());
      if (nameSpace != null) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nameSpace.getName());
        stringBuffer.append("$");
        if (str.startsWith(stringBuffer.toString()))
          try {
            ClassGenerator.getClassGenerator().setInstanceNameSpaceParent(object, str, nameSpace);
            return object;
          } catch (UtilEvalError str) {
            throw str.toEvalError(this, paramCallStack);
          }  
      } 
      return object;
    } catch (ReflectError paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Constructor error: ");
      stringBuffer.append(paramClass.getMessage());
      throw new EvalError(stringBuffer.toString(), this, paramCallStack);
    } catch (InvocationTargetException paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("The constructor threw an exception:\n\t");
      stringBuffer.append(paramClass.getTargetException());
      Interpreter.debug(stringBuffer.toString());
      throw new TargetError("Object constructor", paramClass.getTargetException(), this, paramCallStack, true);
    } 
  }
  
  private Object b(Class paramClass, Object[] paramArrayOfObject, BSHBlock paramBSHBlock, CallStack paramCallStack, Interpreter paramInterpreter) {
    NameSpace nameSpace = new NameSpace(paramCallStack.top(), "AnonymousBlock");
    paramCallStack.push(nameSpace);
    paramBSHBlock.eval(paramCallStack, paramInterpreter, true);
    paramCallStack.pop();
    nameSpace.importStatic(paramClass);
    try {
      return nameSpace.a(paramInterpreter).getInterface(paramClass);
    } catch (UtilEvalError paramClass) {
      throw paramClass.toEvalError(this, paramCallStack);
    } 
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    SimpleNode simpleNode2 = (SimpleNode)jjtGetChild(0);
    SimpleNode simpleNode1 = (SimpleNode)jjtGetChild(1);
    if (simpleNode2 instanceof BSHAmbiguousName) {
      simpleNode2 = (BSHAmbiguousName)simpleNode2;
      return (simpleNode1 instanceof BSHArguments) ? a(simpleNode2, (BSHArguments)simpleNode1, paramCallStack, paramInterpreter) : a(simpleNode2, (BSHArrayDimensions)simpleNode1, paramCallStack, paramInterpreter);
    } 
    return a((BSHPrimitiveType)simpleNode2, (BSHArrayDimensions)simpleNode1, paramCallStack, paramInterpreter);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHAllocationExpression.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
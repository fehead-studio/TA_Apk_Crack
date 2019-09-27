package bsh;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;

class BSHPrimarySuffix extends SimpleNode {
  public static final int CLASS = 0;
  
  public static final int INDEX = 1;
  
  public static final int NAME = 2;
  
  public static final int PROPERTY = 3;
  
  public String field;
  
  public int operation;
  
  BSHPrimarySuffix(int paramInt) { super(paramInt); }
  
  static int a(Object paramObject, CallStack paramCallStack, Interpreter paramInterpreter, SimpleNode paramSimpleNode) {
    if (!paramObject.getClass().isArray())
      throw new EvalError("Not an array", paramSimpleNode, paramCallStack); 
    try {
      Object object = ((SimpleNode)paramSimpleNode.jjtGetChild(0)).eval(paramCallStack, paramInterpreter);
      paramObject = object;
      if (!(object instanceof Primitive))
        paramObject = Types.castObject(object, int.class, 1); 
      return ((Primitive)paramObject).intValue();
    } catch (UtilEvalError paramObject) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("doIndex: ");
      stringBuffer.append(paramObject);
      Interpreter.debug(stringBuffer.toString());
      throw paramObject.toEvalError("Arrays may only be indexed by integer types.", paramSimpleNode, paramCallStack);
    } 
  }
  
  private Object a(Object paramObject, boolean paramBoolean, CallStack paramCallStack, Interpreter paramInterpreter) {
    String str;
    try {
      if (this.field.equals("length") && paramObject.getClass().isArray()) {
        if (paramBoolean)
          throw new EvalError("Can't assign array length", this, paramCallStack); 
        return new Primitive(Array.getLength(paramObject));
      } 
      if (jjtGetNumChildren() == 0)
        return paramBoolean ? Reflect.a(paramObject, this.field) : Reflect.getObjectFieldValue(paramObject, this.field); 
      Object[] arrayOfObject = ((BSHArguments)jjtGetChild(0)).getArguments(paramCallStack, paramInterpreter);
      try {
        return Reflect.invokeObjectMethod(paramObject, this.field, arrayOfObject, paramInterpreter, paramCallStack, this);
      } catch (ReflectError paramObject) {
        str = new StringBuffer();
        str.append("Error in method invocation: ");
        str.append(paramObject.getMessage());
        throw new EvalError(str.toString(), this, paramCallStack);
      } catch (InvocationTargetException paramObject) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Method Invocation ");
        stringBuffer.append(this.field);
        str = stringBuffer.toString();
        paramObject = paramObject.getTargetException();
        if (paramObject instanceof EvalError) {
          if (paramObject instanceof TargetError) {
            paramBoolean = ((TargetError)paramObject).inNativeCode();
            throw new TargetError(str, paramObject, this, paramCallStack, paramBoolean);
          } 
          paramBoolean = false;
          throw new TargetError(str, paramObject, this, paramCallStack, paramBoolean);
        } 
      } 
    } catch (UtilEvalError paramObject) {
      throw paramObject.toEvalError(this, paramCallStack);
    } 
    paramBoolean = true;
    throw new TargetError(str, paramObject, this, paramCallStack, paramBoolean);
  }
  
  private Object a(boolean paramBoolean, Object paramObject, CallStack paramCallStack, Interpreter paramInterpreter) {
    Object object1;
    if (paramObject == Primitive.VOID)
      throw new EvalError("Attempt to access property on undefined variable or class name", this, paramCallStack); 
    if (paramObject instanceof Primitive)
      throw new EvalError("Attempt to access property on a primitive", this, paramCallStack); 
    Object object2 = ((SimpleNode)jjtGetChild(0)).eval(paramCallStack, paramInterpreter);
    if (!(object2 instanceof String))
      throw new EvalError("Property expression must be a String or identifier.", this, paramCallStack); 
    if (paramBoolean)
      return new LHS(paramObject, (String)object2); 
    CollectionManager collectionManager = CollectionManager.getCollectionManager();
    if (collectionManager.isMap(paramObject)) {
      object1 = collectionManager.getFromMap(paramObject, object2);
      paramObject = object1;
      if (object1 == null)
        paramObject = Primitive.NULL; 
      return paramObject;
    } 
    try {
      return Reflect.getObjectProperty(paramObject, (String)object2);
    } catch (UtilEvalError paramObject) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Property: ");
      stringBuffer.append(object2);
      throw paramObject.toEvalError(stringBuffer.toString(), this, object1);
    } catch (ReflectError paramObject) {
      paramObject = new StringBuffer();
      paramObject.append("No such property: ");
      paramObject.append(object2);
      throw new EvalError(paramObject.toString(), this, object1);
    } 
  }
  
  private Object b(Object paramObject, boolean paramBoolean, CallStack paramCallStack, Interpreter paramInterpreter) {
    int i = a(paramObject, paramCallStack, paramInterpreter, this);
    if (paramBoolean)
      return new LHS(paramObject, i); 
    try {
      return Reflect.getIndex(paramObject, i);
    } catch (UtilEvalError paramObject) {
      throw paramObject.toEvalError(this, paramCallStack);
    } 
  }
  
  public Object doSuffix(Object paramObject, boolean paramBoolean, CallStack paramCallStack, Interpreter paramInterpreter) {
    Object object;
    if (this.operation == 0) {
      if (paramObject instanceof BSHType) {
        if (paramBoolean)
          throw new EvalError("Can't assign .class", this, paramCallStack); 
        paramCallStack.top();
        return ((BSHType)paramObject).getType(paramCallStack, paramInterpreter);
      } 
      throw new EvalError("Attempt to use .class suffix on non class.", this, paramCallStack);
    } 
    if (paramObject instanceof SimpleNode) {
      if (paramObject instanceof BSHAmbiguousName) {
        object = ((BSHAmbiguousName)paramObject).toObject(paramCallStack, paramInterpreter);
      } else {
        object = ((SimpleNode)paramObject).eval(paramCallStack, paramInterpreter);
      } 
    } else {
      object = paramObject;
      if (paramObject instanceof LHS)
        try {
          object = ((LHS)paramObject).getValue();
        } catch (UtilEvalError paramObject) {
          throw paramObject.toEvalError(this, paramCallStack);
        }  
    } 
    try {
      switch (this.operation) {
        case 3:
          return a(paramBoolean, object, paramCallStack, paramInterpreter);
        case 2:
          return a(object, paramBoolean, paramCallStack, paramInterpreter);
        case 1:
          return b(object, paramBoolean, paramCallStack, paramInterpreter);
      } 
      throw new InterpreterError("Unknown suffix type");
    } catch (ReflectError paramObject) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("reflection error: ");
      stringBuffer.append(paramObject);
      throw new EvalError(stringBuffer.toString(), this, paramCallStack);
    } catch (InvocationTargetException paramObject) {
      throw new TargetError("target exception", paramObject.getTargetException(), this, paramCallStack, true);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHPrimarySuffix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
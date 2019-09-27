package bsh;

import java.io.Serializable;

public class This implements Serializable, Runnable {
  NameSpace a;
  
  Interpreter b;
  
  protected This(NameSpace paramNameSpace, Interpreter paramInterpreter) {
    this.a = paramNameSpace;
    this.b = paramInterpreter;
  }
  
  static This a(NameSpace paramNameSpace, Interpreter paramInterpreter) {
    try {
      String str;
      if (Capabilities.canGenerateInterfaces()) {
        str = "bsh.XThis";
      } else if (Capabilities.haveSwing()) {
        str = "bsh.JThis";
      } else {
        return new This(paramNameSpace, paramInterpreter);
      } 
      Class clazz = Class.forName(str);
      return (This)Reflect.a(clazz, new Object[] { paramNameSpace, paramInterpreter });
    } catch (Exception paramNameSpace) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("internal error 1 in This: ");
      stringBuffer.append(paramNameSpace);
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
  
  static boolean a(String paramString) { return (paramString.equals("getClass") || paramString.equals("invokeMethod") || paramString.equals("getInterface") || paramString.equals("wait") || paramString.equals("notify") || paramString.equals("notifyAll")); }
  
  public static void bind(This paramThis, NameSpace paramNameSpace, Interpreter paramInterpreter) {
    paramThis.a.setParent(paramNameSpace);
    paramThis.b = paramInterpreter;
  }
  
  public Object getInterface(Class paramClass) {
    if (paramClass.isInstance(this))
      return this; 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Dynamic proxy mechanism not available. Cannot construct interface type: ");
    stringBuffer.append(paramClass);
    throw new UtilEvalError(stringBuffer.toString());
  }
  
  public Object getInterface(Class[] paramArrayOfClass) {
    for (byte b1 = 0;; b1++) {
      if (b1 >= paramArrayOfClass.length)
        return this; 
      if (!paramArrayOfClass[b1].isInstance(this)) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Dynamic proxy mechanism not available. Cannot construct interface type: ");
        stringBuffer.append(paramArrayOfClass[b1]);
        throw new UtilEvalError(stringBuffer.toString());
      } 
    } 
  }
  
  public NameSpace getNameSpace() { return this.a; }
  
  public Object invokeMethod(String paramString, Object[] paramArrayOfObject) { return invokeMethod(paramString, paramArrayOfObject, null, null, null, false); }
  
  public Object invokeMethod(String paramString, Object[] paramArrayOfObject, Interpreter paramInterpreter, CallStack paramCallStack, SimpleNode paramSimpleNode, boolean paramBoolean) {
    BshMethod bshMethod;
    boolean bool = false;
    Object object = paramArrayOfObject;
    if (paramArrayOfObject != null) {
      Object[] arrayOfObject = new Object[paramArrayOfObject.length];
      byte b1;
      for (b1 = 0;; b1++) {
        if (b1 >= paramArrayOfObject.length) {
          object = arrayOfObject;
          break;
        } 
        if (paramArrayOfObject[b1] == null) {
          object = Primitive.NULL;
        } else {
          object = paramArrayOfObject[b1];
        } 
        arrayOfObject[b1] = object;
      } 
    } 
    Interpreter interpreter = paramInterpreter;
    if (paramInterpreter == null)
      interpreter = this.b; 
    CallStack callStack = paramCallStack;
    if (paramCallStack == null)
      callStack = new CallStack(this.a); 
    SimpleNode simpleNode = paramSimpleNode;
    if (paramSimpleNode == null)
      simpleNode = SimpleNode.JAVACODE; 
    Class[] arrayOfClass = Types.getTypes(object);
    try {
      bshMethod = this.a.getMethod(paramString, arrayOfClass, paramBoolean);
    } catch (UtilEvalError paramArrayOfObject) {
      paramArrayOfObject = null;
    } 
    if (paramArrayOfObject != null)
      return paramArrayOfObject.invoke(object, interpreter, callStack, simpleNode); 
    if (paramString.equals("toString"))
      return toString(); 
    if (paramString.equals("hashCode"))
      return new Integer(hashCode()); 
    if (paramString.equals("equals")) {
      paramBoolean = bool;
      if (this == object[false])
        paramBoolean = true; 
      return new Boolean(paramBoolean);
    } 
    try {
      BshMethod bshMethod1 = this.a.getMethod("invoke", new Class[] { null, null });
      bshMethod = bshMethod1;
    } catch (UtilEvalError paramSimpleNode) {}
    if (bshMethod != null)
      return bshMethod.invoke(new Object[] { paramString, object }, interpreter, callStack, simpleNode); 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Method ");
    stringBuffer.append(StringUtil.methodString(paramString, arrayOfClass));
    stringBuffer.append(" not found in bsh scripted object: ");
    stringBuffer.append(this.a.getName());
    throw new EvalError(stringBuffer.toString(), simpleNode, callStack);
  }
  
  public void run() {
    try {
      invokeMethod("run", new Object[0]);
      return;
    } catch (EvalError evalError) {
      Interpreter interpreter = this.b;
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Exception in runnable:");
      stringBuffer.append(evalError);
      interpreter.error(stringBuffer.toString());
      return;
    } 
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("'this' reference to Bsh object: ");
    stringBuffer.append(this.a);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\This.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh;

import java.io.Serializable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Hashtable;

public class XThis extends This {
  static Class e;
  
  Hashtable c;
  
  InvocationHandler d = new Handler(this);
  
  public XThis(NameSpace paramNameSpace, Interpreter paramInterpreter) { super(paramNameSpace, paramInterpreter); }
  
  static Class b(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  public Object getInterface(Class paramClass) { return getInterface(new Class[] { paramClass }); }
  
  public Object getInterface(Class[] paramArrayOfClass) {
    if (this.c == null)
      this.c = new Hashtable(); 
    byte b = 0;
    int i = 21;
    while (true) {
      if (b >= paramArrayOfClass.length) {
        Integer integer = new Integer(i);
        Object object2 = this.c.get(integer);
        Object object1 = object2;
        if (object2 == null) {
          object1 = Proxy.newProxyInstance(paramArrayOfClass[0].getClassLoader(), paramArrayOfClass, this.d);
          this.c.put(integer, object1);
        } 
        return object1;
      } 
      i *= (paramArrayOfClass[b].hashCode() + 3);
      b++;
    } 
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("'this' reference (XThis) to Bsh object: ");
    stringBuffer.append(this.a);
    return stringBuffer.toString();
  }
  
  class Handler implements Serializable, InvocationHandler {
    private final XThis a;
    
    Handler(XThis this$0) { this.a = this$0; }
    
    public Object invoke(Object param1Object, Method param1Method, Object[] param1ArrayOfObject) {
      try {
        return invokeImpl(param1Object, param1Method, param1ArrayOfObject);
      } catch (TargetError param1Object) {
        throw param1Object.getTarget();
      } catch (EvalError param1Object) {
        if (Interpreter.DEBUG) {
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append("EvalError in scripted interface: ");
          stringBuffer.append(this.a.toString());
          stringBuffer.append(": ");
          stringBuffer.append(param1Object);
          Interpreter.debug(stringBuffer.toString());
        } 
        throw param1Object;
      } 
    }
    
    public Object invokeImpl(Object param1Object, Method param1Method, Object[] param1ArrayOfObject) {
      StringBuffer stringBuffer;
      Class[] arrayOfClass2;
      String str = param1Method.getName();
      new CallStack(this.a.a);
      UtilEvalError utilEvalError2 = null;
      boolean bool = true;
      byte b = 0;
      try {
        Class clazz;
        NameSpace nameSpace = this.a.a;
        if (XThis.e == null) {
          clazz = XThis.b("java.lang.Object");
          XThis.e = clazz;
        } else {
          clazz = XThis.e;
        } 
        utilEvalError1 = nameSpace.getMethod("equals", new Class[] { clazz });
      } catch (UtilEvalError utilEvalError1) {
        utilEvalError1 = null;
      } 
      if (str.equals("equals") && utilEvalError1 == null) {
        if (param1Object != param1ArrayOfObject[false])
          bool = false; 
        return new Boolean(bool);
      } 
      try {
        BshMethod bshMethod = this.a.a.getMethod("toString", new Class[0]);
      } catch (UtilEvalError utilEvalError1) {
        utilEvalError1 = utilEvalError2;
      } 
      if (str.equals("toString") && utilEvalError1 == null) {
        arrayOfClass2 = param1Object.getClass().getInterfaces();
        param1Object = new StringBuffer();
        param1Object.append(this.a.toString());
        param1Object.append("\nimplements:");
        stringBuffer = new StringBuffer(param1Object.toString());
        while (true) {
          if (b >= arrayOfClass2.length)
            return stringBuffer.toString(); 
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append(" ");
          stringBuffer1.append(arrayOfClass2[b].getName());
          if (arrayOfClass2.length > 1) {
            param1Object = ",";
          } else {
            param1Object = "";
          } 
          stringBuffer1.append(param1Object);
          stringBuffer.append(stringBuffer1.toString());
          b++;
        } 
      } 
      Class[] arrayOfClass1 = arrayOfClass2.getParameterTypes();
      return Primitive.unwrap(this.a.invokeMethod(str, Primitive.wrap(stringBuffer, arrayOfClass1)));
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\XThis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
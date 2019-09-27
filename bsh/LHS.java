package bsh;

import java.io.Serializable;
import java.lang.reflect.Field;

class LHS implements ParserConstants, Serializable {
  NameSpace a;
  
  boolean b;
  
  int c;
  
  String d;
  
  String e;
  
  Field f;
  
  Object g;
  
  int h;
  
  LHS(NameSpace paramNameSpace, String paramString, boolean paramBoolean) {
    this.c = 0;
    this.b = paramBoolean;
    this.d = paramString;
    this.a = paramNameSpace;
  }
  
  LHS(Object paramObject, int paramInt) {
    if (paramObject == null)
      throw new NullPointerException("constructed empty LHS"); 
    this.c = 3;
    this.g = paramObject;
    this.h = paramInt;
  }
  
  LHS(Object paramObject, String paramString) {
    if (paramObject == null)
      throw new NullPointerException("constructed empty LHS"); 
    this.c = 2;
    this.g = paramObject;
    this.e = paramString;
  }
  
  LHS(Object paramObject, Field paramField) {
    if (paramObject == null)
      throw new NullPointerException("constructed empty LHS"); 
    this.c = 1;
    this.g = paramObject;
    this.f = paramField;
  }
  
  LHS(Field paramField) {
    this.c = 1;
    this.g = null;
    this.f = paramField;
  }
  
  public Object assign(Object paramObject, boolean paramBoolean) {
    if (this.c == 0) {
      if (this.b) {
        this.a.a(this.d, paramObject, paramBoolean);
        return paramObject;
      } 
      this.a.setVariable(this.d, paramObject, paramBoolean);
      return paramObject;
    } 
    if (this.c == 1) {
      try {
        if (paramObject instanceof Primitive) {
          Object object1 = ((Primitive)paramObject).getValue();
          ReflectManager.RMSetAccessible(this.f);
          this.f.set(this.g, object1);
          return paramObject;
        } 
      } catch (NullPointerException paramObject) {
        paramObject = new StringBuffer();
        paramObject.append("LHS (");
        paramObject.append(this.f.getName());
        paramObject.append(") not a static field.");
        throw new UtilEvalError(paramObject.toString());
      } catch (IllegalAccessException paramObject) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("LHS (");
        stringBuffer.append(this.f.getName());
        stringBuffer.append(") can't access field: ");
        stringBuffer.append(paramObject);
        throw new UtilEvalError(stringBuffer.toString());
      } catch (IllegalArgumentException null) {
        Class clazz;
        if (paramObject instanceof Primitive) {
          Class clazz1 = ((Primitive)paramObject).getType();
        } else {
          clazz = paramObject.getClass();
        } 
        String str = clazz.getName();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Argument type mismatch. ");
        if (paramObject == null)
          str = "null"; 
        stringBuffer.append(str);
        stringBuffer.append(" not assignable to field ");
        stringBuffer.append(this.f.getName());
        throw new UtilEvalError(stringBuffer.toString());
      } 
    } else {
      if (this.c == 2) {
        CollectionManager collectionManager = CollectionManager.getCollectionManager();
        if (collectionManager.isMap(this.g)) {
          collectionManager.putInMap(this.g, this.e, paramObject);
          return paramObject;
        } 
        try {
          Reflect.setObjectProperty(this.g, this.e, paramObject);
          return paramObject;
        } catch (ReflectError paramObject) {
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append("Assignment: ");
          stringBuffer.append(paramObject.getMessage());
          Interpreter.debug(stringBuffer.toString());
          paramObject = new StringBuffer();
          paramObject.append("No such property: ");
          paramObject.append(this.e);
          throw new UtilEvalError(paramObject.toString());
        } 
      } 
      if (this.c == 3)
        try {
          Reflect.setIndex(this.g, this.h, paramObject);
          return paramObject;
        } catch (UtilTargetError paramObject) {
          throw paramObject;
        } catch (Exception paramObject) {
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append("Assignment: ");
          stringBuffer.append(paramObject.getMessage());
          throw new UtilEvalError(stringBuffer.toString());
        }  
      throw new InterpreterError("unknown lhs");
    } 
    Object object = paramObject;
    ReflectManager.RMSetAccessible(this.f);
    this.f.set(this.g, object);
    return paramObject;
  }
  
  public Object getValue() {
    if (this.c == 0)
      return this.a.getVariable(this.d); 
    if (this.c == 1)
      try {
        return Primitive.wrap(this.f.get(this.g), this.f.getType());
      } catch (IllegalAccessException illegalAccessException) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Can't read field: ");
        stringBuffer.append(this.f);
        throw new UtilEvalError(stringBuffer.toString());
      }  
    if (this.c == 2)
      try {
        return Reflect.getObjectProperty(this.g, this.e);
      } catch (ReflectError reflectError) {
        Interpreter.debug(reflectError.getMessage());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No such property: ");
        stringBuffer.append(this.e);
        throw new UtilEvalError(stringBuffer.toString());
      }  
    if (this.c == 3)
      try {
        return Reflect.getIndex(this.g, this.h);
      } catch (Exception exception) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Array access: ");
        stringBuffer.append(exception);
        throw new UtilEvalError(stringBuffer.toString());
      }  
    throw new InterpreterError("LHS type");
  }
  
  public String toString() {
    String str;
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("LHS: ");
    if (this.f != null) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("field = ");
      stringBuffer1.append(this.f.toString());
      str = stringBuffer1.toString();
    } else {
      str = "";
    } 
    stringBuffer.append(str);
    if (this.d != null) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(" varName = ");
      stringBuffer1.append(this.d);
      String str1 = stringBuffer1.toString();
    } else {
      str = "";
    } 
    stringBuffer.append(str);
    if (this.a != null) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(" nameSpace = ");
      stringBuffer1.append(this.a.toString());
      String str1 = stringBuffer1.toString();
    } else {
      str = "";
    } 
    stringBuffer.append(str);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\LHS.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
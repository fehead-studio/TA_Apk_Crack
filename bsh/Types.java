package bsh;

class Types {
  static Primitive a = new Primitive(1);
  
  static Primitive b = new Primitive(-1);
  
  static Class c;
  
  static Class d;
  
  static Class e;
  
  static Class f;
  
  static UtilEvalError a(Class paramClass1, Class paramClass2, int paramInt) { return a(Reflect.normalizeClassName(paramClass1), Reflect.normalizeClassName(paramClass2), paramInt); }
  
  static UtilEvalError a(String paramString1, String paramString2, int paramInt) {
    if (paramInt == 1) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Can't assign ");
      stringBuffer1.append(paramString2);
      stringBuffer1.append(" to ");
      stringBuffer1.append(paramString1);
      return new UtilEvalError(stringBuffer1.toString());
    } 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Cannot cast ");
    stringBuffer.append(paramString2);
    stringBuffer.append(" to ");
    stringBuffer.append(paramString1);
    return new UtilTargetError(new ClassCastException(stringBuffer.toString()));
  }
  
  static Class a(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  private static Object a(Class paramClass1, Class paramClass2, Object paramObject, int paramInt, boolean paramBoolean) {
    Class clazz;
    Primitive primitive;
    if (paramBoolean && paramObject != null)
      throw new InterpreterError("bad cast params 1"); 
    if (!paramBoolean && paramObject == null)
      throw new InterpreterError("bad cast params 2"); 
    if (e == null) {
      clazz = a("bsh.Primitive");
      e = clazz;
    } else {
      clazz = e;
    } 
    if (paramClass2 == clazz)
      throw new InterpreterError("bad from Type, need to unwrap"); 
    if (paramObject == Primitive.NULL && paramClass2 != null)
      throw new InterpreterError("inconsistent args 1"); 
    if (paramObject == Primitive.VOID && paramClass2 != void.class)
      throw new InterpreterError("inconsistent args 2"); 
    if (paramClass1 == void.class)
      throw new InterpreterError("loose toType should be null"); 
    if (paramClass1 == null || paramClass1 == paramClass2) {
      if (paramBoolean)
        paramObject = a; 
      return paramObject;
    } 
    if (paramClass1.isPrimitive()) {
      if (paramClass2 != void.class && paramClass2 != null && !paramClass2.isPrimitive()) {
        if (Primitive.isWrapperType(paramClass2)) {
          clazz = Primitive.unboxType(paramClass2);
          if (paramBoolean) {
            paramClass2 = null;
          } else {
            primitive = (Primitive)Primitive.wrap(paramObject, clazz);
          } 
          return Primitive.a(paramClass1, clazz, primitive, paramBoolean, paramInt);
        } 
        if (paramBoolean)
          return b; 
        throw a(paramClass1, primitive, paramInt);
      } 
      return Primitive.a(paramClass1, primitive, (Primitive)paramObject, paramBoolean, paramInt);
    } 
    if (primitive == void.class || primitive == null || primitive.isPrimitive()) {
      if (Primitive.isWrapperType(paramClass1) && primitive != void.class && primitive != null)
        return paramBoolean ? a : Primitive.a(Primitive.unboxType(paramClass1), ((Primitive)paramObject).getValue()); 
      if (c == null) {
        clazz = a("java.lang.Object");
        c = clazz;
      } else {
        clazz = c;
      } 
      return (paramClass1 == clazz && primitive != void.class && primitive != null) ? (paramBoolean ? a : ((Primitive)paramObject).getValue()) : Primitive.a(paramClass1, primitive, (Primitive)paramObject, paramBoolean, paramInt);
    } 
    if (paramClass1.isAssignableFrom(primitive)) {
      if (paramBoolean)
        paramObject = a; 
      return paramObject;
    } 
    if (paramClass1.isInterface()) {
      if (f == null) {
        clazz = a("bsh.This");
        f = clazz;
      } else {
        clazz = f;
      } 
      if (clazz.isAssignableFrom(primitive) && Capabilities.canGenerateInterfaces())
        return paramBoolean ? a : ((This)paramObject).getInterface(paramClass1); 
    } 
    if (Primitive.isWrapperType(paramClass1) && Primitive.isWrapperType(primitive))
      return paramBoolean ? a : Primitive.a(paramClass1, paramObject); 
    if (paramBoolean)
      return b; 
    throw a(paramClass1, primitive, paramInt);
  }
  
  static boolean a(Class paramClass1, Class paramClass2) { return (b(paramClass1, paramClass2) || c(paramClass1, paramClass2)); }
  
  private static boolean a(Class[] paramArrayOfClass1, Class[] paramArrayOfClass2) { return false; }
  
  static boolean a(Class[] paramArrayOfClass1, Class[] paramArrayOfClass2, int paramInt) {
    if (paramInt != 3 && paramArrayOfClass1.length != paramArrayOfClass2.length)
      return false; 
    switch (paramInt) {
      default:
        throw new InterpreterError("bad case");
      case 4:
        for (paramInt = 0;; paramInt++) {
          if (paramInt >= paramArrayOfClass1.length)
            return true; 
          if (!d(paramArrayOfClass2[paramInt], paramArrayOfClass1[paramInt]))
            return false; 
        } 
      case 3:
        return a(paramArrayOfClass1, paramArrayOfClass2);
      case 2:
        for (paramInt = 0;; paramInt++) {
          if (paramInt >= paramArrayOfClass1.length)
            return true; 
          if (!c(paramArrayOfClass2[paramInt], paramArrayOfClass1[paramInt]))
            return false; 
        } 
      case 1:
        break;
    } 
    for (paramInt = 0;; paramInt++) {
      if (paramInt >= paramArrayOfClass1.length)
        return true; 
      if (!b(paramArrayOfClass2[paramInt], paramArrayOfClass1[paramInt]))
        return false; 
    } 
  }
  
  static boolean b(Class paramClass1, Class paramClass2) {
    if (paramClass1 == null)
      return false; 
    if (paramClass2 == null)
      return paramClass1.isPrimitive() ^ true; 
    if (paramClass1.isPrimitive() && paramClass2.isPrimitive()) {
      if (paramClass1 == paramClass2)
        return true; 
      if (paramClass2 == byte.class && (paramClass1 == short.class || paramClass1 == int.class || paramClass1 == long.class || paramClass1 == float.class || paramClass1 == double.class))
        return true; 
      if (paramClass2 == short.class && (paramClass1 == int.class || paramClass1 == long.class || paramClass1 == float.class || paramClass1 == double.class))
        return true; 
      if (paramClass2 == char.class && (paramClass1 == int.class || paramClass1 == long.class || paramClass1 == float.class || paramClass1 == double.class))
        return true; 
      if (paramClass2 == int.class && (paramClass1 == long.class || paramClass1 == float.class || paramClass1 == double.class))
        return true; 
      if (paramClass2 == long.class && (paramClass1 == float.class || paramClass1 == double.class))
        return true; 
      if (paramClass2 == float.class && paramClass1 == double.class)
        return true; 
    } else if (paramClass1.isAssignableFrom(paramClass2)) {
      return true;
    } 
    return false;
  }
  
  static boolean c(Class paramClass1, Class paramClass2) {
    Class clazz;
    if (paramClass1 == null)
      return false; 
    if (c == null) {
      clazz = a("java.lang.Object");
      c = clazz;
    } else {
      clazz = c;
    } 
    if (paramClass1 == clazz)
      return true; 
    if (d == null) {
      clazz = a("java.lang.Number");
      d = clazz;
    } else {
      clazz = d;
    } 
    return (paramClass1 == clazz && paramClass2 != char.class && paramClass2 != boolean.class) ? true : ((Primitive.a.get(paramClass1) == paramClass2));
  }
  
  public static Object castObject(Object paramObject, Class paramClass, int paramInt) {
    Class clazz;
    if (paramObject == null)
      throw new InterpreterError("null fromValue"); 
    if (paramObject instanceof Primitive) {
      clazz = ((Primitive)paramObject).getType();
    } else {
      clazz = paramObject.getClass();
    } 
    return a(paramClass, clazz, paramObject, paramInt, false);
  }
  
  static boolean d(Class paramClass1, Class paramClass2) {
    try {
      Object object = a(paramClass1, paramClass2, null, 1, true);
      Primitive primitive = a;
      return (object == primitive);
    } catch (UtilEvalError paramClass1) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("err in cast check: ");
      stringBuffer.append(paramClass1);
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
  
  public static Class[] getTypes(Object[] paramArrayOfObject) {
    byte b1 = 0;
    if (paramArrayOfObject == null)
      return new Class[0]; 
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    while (true) {
      if (b1 >= paramArrayOfObject.length)
        return arrayOfClass; 
      if (paramArrayOfObject[b1] == null) {
        arrayOfClass[b1] = null;
      } else if (paramArrayOfObject[b1] instanceof Primitive) {
        arrayOfClass[b1] = ((Primitive)paramArrayOfObject[b1]).getType();
      } else {
        arrayOfClass[b1] = paramArrayOfObject[b1].getClass();
      } 
      b1++;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Types.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
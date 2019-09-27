package bsh;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Vector;

class Reflect {
  static int a(Class[] paramArrayOfClass, Class[][] paramArrayOfClass1) { // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iconst_m1
    //   3: istore #4
    //   5: iload_3
    //   6: iconst_4
    //   7: if_icmple -> 12
    //   10: iconst_m1
    //   11: ireturn
    //   12: aconst_null
    //   13: astore #6
    //   15: iconst_0
    //   16: istore_2
    //   17: iload_2
    //   18: aload_1
    //   19: arraylength
    //   20: if_icmplt -> 38
    //   23: aload #6
    //   25: ifnull -> 31
    //   28: iload #4
    //   30: ireturn
    //   31: iload_3
    //   32: iconst_1
    //   33: iadd
    //   34: istore_3
    //   35: goto -> 2
    //   38: aload_1
    //   39: iload_2
    //   40: aaload
    //   41: astore #8
    //   43: aload #6
    //   45: astore #7
    //   47: iload #4
    //   49: istore #5
    //   51: aload_0
    //   52: aload #8
    //   54: iload_3
    //   55: invokestatic a : ([Ljava/lang/Class;[Ljava/lang/Class;I)Z
    //   58: ifeq -> 92
    //   61: aload #6
    //   63: ifnull -> 85
    //   66: aload #6
    //   68: astore #7
    //   70: iload #4
    //   72: istore #5
    //   74: aload #8
    //   76: aload #6
    //   78: iconst_1
    //   79: invokestatic a : ([Ljava/lang/Class;[Ljava/lang/Class;I)Z
    //   82: ifeq -> 92
    //   85: iload_2
    //   86: istore #5
    //   88: aload #8
    //   90: astore #7
    //   92: iload_2
    //   93: iconst_1
    //   94: iadd
    //   95: istore_2
    //   96: aload #7
    //   98: astore #6
    //   100: iload #5
    //   102: istore #4
    //   104: goto -> 17 }
  
  static LHS a(Class paramClass, String paramString) { return new LHS(b(paramClass, paramString, true)); }
  
  static LHS a(Object paramObject, String paramString) {
    if (paramObject instanceof This)
      return new LHS(((This)paramObject).a, paramString, false); 
    try {
      return new LHS(paramObject, b(paramObject.getClass(), paramString, false));
    } catch (ReflectError reflectError) {
      if (hasObjectPropertySetter(paramObject.getClass(), paramString))
        return new LHS(paramObject, paramString); 
      throw reflectError;
    } 
  }
  
  private static ReflectError a(Class paramClass, Class[] paramArrayOfClass) {
    StringBuffer stringBuffer1;
    if (paramArrayOfClass.length == 0) {
      stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Can't find default constructor for: ");
      stringBuffer1.append(paramClass);
      return new ReflectError(stringBuffer1.toString());
    } 
    StringBuffer stringBuffer2 = new StringBuffer();
    stringBuffer2.append("Can't find constructor: ");
    stringBuffer2.append(StringUtil.methodString(paramClass.getName(), stringBuffer1));
    stringBuffer2.append(" in class: ");
    stringBuffer2.append(paramClass.getName());
    return new ReflectError(stringBuffer2.toString());
  }
  
  private static Object a(Class paramClass, Object paramObject, String paramString, boolean paramBoolean) {
    try {
      Field field = b(paramClass, paramString, paramBoolean);
      return Primitive.wrap(field.get(paramObject), field.getType());
    } catch (NullPointerException paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("???");
      stringBuffer.append(paramString);
      stringBuffer.append(" is not a static field.");
      throw new ReflectError(stringBuffer.toString());
    } catch (IllegalAccessException paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Can't access field: ");
      stringBuffer.append(paramString);
      throw new ReflectError(stringBuffer.toString());
    } 
  }
  
  static Object a(Class paramClass, Object[] paramArrayOfObject) {
    Constructor[] arrayOfConstructor;
    StringBuffer stringBuffer;
    if (paramClass.isInterface()) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("Can't create instance of an interface: ");
      stringBuffer.append(paramClass);
      throw new ReflectError(stringBuffer.toString());
    } 
    arrayOfClass = Types.getTypes(stringBuffer);
    if (Capabilities.haveAccessibility()) {
      arrayOfConstructor = paramClass.getDeclaredConstructors();
    } else {
      arrayOfConstructor = paramClass.getConstructors();
    } 
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Looking for most specific constructor: ");
      stringBuffer1.append(paramClass);
      Interpreter.debug(stringBuffer1.toString());
    } 
    Constructor constructor = a(arrayOfClass, arrayOfConstructor);
    if (constructor == null)
      throw a(paramClass, arrayOfClass); 
    if (!a(constructor))
      try {
        ReflectManager.RMSetAccessible(constructor);
      } catch (UtilEvalError arrayOfClass) {} 
    arrayOfObject = Primitive.unwrap(stringBuffer);
    try {
      Object object = constructor.newInstance(arrayOfObject);
      if (object == null)
        throw new ReflectError("Couldn't construct the object"); 
      return object;
    } catch (InstantiationException arrayOfObject) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("The class ");
      stringBuffer1.append(paramClass);
      stringBuffer1.append(" is abstract ");
      throw new ReflectError(stringBuffer1.toString());
    } catch (IllegalAccessException paramClass) {
      throw new ReflectError("We don't have permission to create an instance.Use setAccessibility(true) to enable access.");
    } catch (IllegalArgumentException paramClass) {}
    throw new ReflectError("The number of arguments was wrong");
  }
  
  static Object a(Method paramMethod, Object paramObject, Object[] paramArrayOfObject) { // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_2
    //   3: astore #5
    //   5: aload_2
    //   6: ifnonnull -> 15
    //   9: iconst_0
    //   10: anewarray java/lang/Object
    //   13: astore #5
    //   15: ldc 'Invoking method (entry): '
    //   17: aload_0
    //   18: aload #5
    //   20: invokestatic a : (Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    //   23: aload #5
    //   25: arraylength
    //   26: anewarray java/lang/Object
    //   29: astore_2
    //   30: aload_0
    //   31: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   34: astore #6
    //   36: aload #5
    //   38: arraylength
    //   39: istore #4
    //   41: iload_3
    //   42: iload #4
    //   44: if_icmplt -> 160
    //   47: aload_2
    //   48: invokestatic unwrap : ([Ljava/lang/Object;)[Ljava/lang/Object;
    //   51: astore_2
    //   52: ldc 'Invoking method (after massaging values): '
    //   54: aload_0
    //   55: aload_2
    //   56: invokestatic a : (Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    //   59: aload_0
    //   60: aload_1
    //   61: aload_2
    //   62: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   65: astore_2
    //   66: aload_2
    //   67: astore_1
    //   68: aload_2
    //   69: ifnonnull -> 76
    //   72: getstatic bsh/Primitive.NULL : Lbsh/Primitive;
    //   75: astore_1
    //   76: aload_1
    //   77: aload_0
    //   78: invokevirtual getReturnType : ()Ljava/lang/Class;
    //   81: invokestatic wrap : (Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    //   84: astore_1
    //   85: aload_1
    //   86: areturn
    //   87: astore_1
    //   88: new java/lang/StringBuffer
    //   91: dup
    //   92: invokespecial <init> : ()V
    //   95: astore_2
    //   96: aload_2
    //   97: ldc 'Cannot access method '
    //   99: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   102: pop
    //   103: aload_2
    //   104: aload_0
    //   105: invokevirtual getName : ()Ljava/lang/String;
    //   108: aload_0
    //   109: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   112: invokestatic methodString : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    //   115: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   118: pop
    //   119: aload_2
    //   120: ldc ' in ''
    //   122: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   125: pop
    //   126: aload_2
    //   127: aload_0
    //   128: invokevirtual getDeclaringClass : ()Ljava/lang/Class;
    //   131: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   134: pop
    //   135: aload_2
    //   136: ldc '' :'
    //   138: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   141: pop
    //   142: aload_2
    //   143: aload_1
    //   144: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   147: pop
    //   148: new bsh/ReflectError
    //   151: dup
    //   152: aload_2
    //   153: invokevirtual toString : ()Ljava/lang/String;
    //   156: invokespecial <init> : (Ljava/lang/String;)V
    //   159: athrow
    //   160: aload_2
    //   161: iload_3
    //   162: aload #5
    //   164: iload_3
    //   165: aaload
    //   166: aload #6
    //   168: iload_3
    //   169: aaload
    //   170: iconst_1
    //   171: invokestatic castObject : (Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    //   174: aastore
    //   175: iload_3
    //   176: iconst_1
    //   177: iadd
    //   178: istore_3
    //   179: goto -> 36
    //   182: astore_0
    //   183: new java/lang/StringBuffer
    //   186: dup
    //   187: invokespecial <init> : ()V
    //   190: astore_1
    //   191: aload_1
    //   192: ldc 'illegal argument type in method invocation: '
    //   194: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   197: pop
    //   198: aload_1
    //   199: aload_0
    //   200: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   203: pop
    //   204: new bsh/InterpreterError
    //   207: dup
    //   208: aload_1
    //   209: invokevirtual toString : ()Ljava/lang/String;
    //   212: invokespecial <init> : (Ljava/lang/String;)V
    //   215: athrow
    // Exception table:
    //   from	to	target	type
    //   36	41	182	bsh/UtilEvalError
    //   59	66	87	java/lang/IllegalAccessException
    //   72	76	87	java/lang/IllegalAccessException
    //   76	85	87	java/lang/IllegalAccessException
    //   160	175	182	bsh/UtilEvalError }
  
  private static String a(String paramString1, String paramString2) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(paramString1);
    stringBuffer.append(String.valueOf(Character.toUpperCase(paramString2.charAt(0))));
    stringBuffer.append(paramString2.substring(1));
    return stringBuffer.toString();
  }
  
  static Constructor a(Class[] paramArrayOfClass, Constructor[] paramArrayOfConstructor) {
    int i = b(paramArrayOfClass, paramArrayOfConstructor);
    return (i == -1) ? null : paramArrayOfConstructor[i];
  }
  
  protected static Field a(Class paramClass, String paramString, boolean paramBoolean) {
    try {
      return b(paramClass, paramString, paramBoolean);
    } catch (ReflectError paramClass) {
      return null;
    } 
  }
  
  protected static Method a(BshClassManager paramBshClassManager, Class paramClass, Object paramObject, String paramString, Object[] paramArrayOfObject, boolean paramBoolean) {
    StringBuffer stringBuffer;
    if (paramObject == Primitive.NULL) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("Attempt to invoke method ");
      stringBuffer.append(paramString);
      stringBuffer.append(" on null value");
      throw new UtilTargetError(new NullPointerException(stringBuffer.toString()));
    } 
    Class[] arrayOfClass = Types.getTypes(paramArrayOfObject);
    String str = a(stringBuffer, paramClass, paramString, arrayOfClass, paramBoolean);
    if (str == null) {
      StringBuffer stringBuffer1 = new StringBuffer();
      if (paramBoolean) {
        str = "Static method ";
      } else {
        str = "Method ";
      } 
      stringBuffer1.append(str);
      stringBuffer1.append(StringUtil.methodString(paramString, arrayOfClass));
      stringBuffer1.append(" not found in class'");
      stringBuffer1.append(paramClass.getName());
      stringBuffer1.append("'");
      throw new ReflectError(stringBuffer1.toString());
    } 
    return str;
  }
  
  protected static Method a(BshClassManager paramBshClassManager, Class paramClass, String paramString, Class[] paramArrayOfClass, boolean paramBoolean) {
    Method method1;
    if (paramClass == null)
      throw new InterpreterError("null class"); 
    Method method2 = null;
    if (paramBshClassManager == null) {
      Interpreter.debug("resolveJavaMethod UNOPTIMIZED lookup");
    } else {
      method2 = paramBshClassManager.a(paramClass, paramString, paramArrayOfClass, paramBoolean);
    } 
    if (method2 == null) {
      boolean bool = Capabilities.haveAccessibility() ^ true;
      try {
        method2 = a(paramClass, paramString, paramArrayOfClass, bool);
        a(method2, paramBoolean, paramClass);
        if (method2 != null && !bool)
          try {
            ReflectManager.RMSetAccessible(method2);
          } catch (UtilEvalError paramString) {} 
        method1 = method2;
        if (method2 != null) {
          method1 = method2;
          if (paramBshClassManager != null) {
            paramBshClassManager.cacheResolvedMethod(paramClass, paramArrayOfClass, method2);
            return method2;
          } 
        } 
      } catch (SecurityException paramBshClassManager) {
        method1 = new StringBuffer();
        method1.append("Security Exception while searching methods of: ");
        method1.append(paramClass);
        throw new UtilTargetError(method1.toString(), paramBshClassManager);
      } 
    } else {
      method1 = method2;
    } 
    return method1;
  }
  
  private static Method a(Class paramClass, String paramString, Class[] paramArrayOfClass, boolean paramBoolean) {
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Searching for method: ");
      stringBuffer.append(StringUtil.methodString(paramString, paramArrayOfClass));
      stringBuffer.append(" in '");
      stringBuffer.append(paramClass.getName());
      stringBuffer.append("'");
      Interpreter.debug(stringBuffer.toString());
    } 
    Method[] arrayOfMethod = a(paramClass, paramString, paramArrayOfClass.length, paramBoolean);
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Looking for most specific method: ");
      stringBuffer.append(paramString);
      Interpreter.debug(stringBuffer.toString());
    } 
    return a(paramArrayOfClass, arrayOfMethod);
  }
  
  static Method a(Class[] paramArrayOfClass, Method[] paramArrayOfMethod) {
    Class[][] arrayOfClass = new Class[paramArrayOfMethod.length][];
    for (int i = 0;; i++) {
      if (i >= paramArrayOfMethod.length) {
        i = a(paramArrayOfClass, arrayOfClass);
        return (i == -1) ? null : paramArrayOfMethod[i];
      } 
      arrayOfClass[i] = paramArrayOfMethod[i].getParameterTypes();
    } 
  }
  
  private static Vector a(Class paramClass, String paramString, int paramInt, boolean paramBoolean, Vector paramVector) { // Byte code:
    //   0: aload #4
    //   2: astore #6
    //   4: aload #4
    //   6: ifnonnull -> 18
    //   9: new java/util/Vector
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: astore #6
    //   18: iload_3
    //   19: ifeq -> 38
    //   22: aload_0
    //   23: invokestatic a : (Ljava/lang/Class;)Z
    //   26: ifeq -> 55
    //   29: aload_0
    //   30: invokevirtual getMethods : ()[Ljava/lang/reflect/Method;
    //   33: astore #4
    //   35: goto -> 44
    //   38: aload_0
    //   39: invokevirtual getDeclaredMethods : ()[Ljava/lang/reflect/Method;
    //   42: astore #4
    //   44: aload #4
    //   46: aload_1
    //   47: iload_2
    //   48: iload_3
    //   49: aload #6
    //   51: invokestatic a : ([Ljava/lang/reflect/Method;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;
    //   54: pop
    //   55: aload_0
    //   56: invokevirtual getInterfaces : ()[Ljava/lang/Class;
    //   59: astore #4
    //   61: iconst_0
    //   62: istore #5
    //   64: iload #5
    //   66: aload #4
    //   68: arraylength
    //   69: if_icmplt -> 94
    //   72: aload_0
    //   73: invokevirtual getSuperclass : ()Ljava/lang/Class;
    //   76: astore_0
    //   77: aload_0
    //   78: ifnull -> 91
    //   81: aload_0
    //   82: aload_1
    //   83: iload_2
    //   84: iload_3
    //   85: aload #6
    //   87: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;
    //   90: pop
    //   91: aload #6
    //   93: areturn
    //   94: aload #4
    //   96: iload #5
    //   98: aaload
    //   99: aload_1
    //   100: iload_2
    //   101: iload_3
    //   102: aload #6
    //   104: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;IZLjava/util/Vector;)Ljava/util/Vector;
    //   107: pop
    //   108: iload #5
    //   110: iconst_1
    //   111: iadd
    //   112: istore #5
    //   114: goto -> 64 }
  
  private static Vector a(Method[] paramArrayOfMethod, String paramString, int paramInt, boolean paramBoolean, Vector paramVector) {
    byte b;
    for (b = 0;; b++) {
      if (b >= paramArrayOfMethod.length)
        return paramVector; 
      Method method = paramArrayOfMethod[b];
      if (method.getName().equals(paramString) && method.getParameterTypes().length == paramInt && (!paramBoolean || a(method)))
        paramVector.add(method); 
    } 
  }
  
  private static void a(String paramString, Method paramMethod, Object[] paramArrayOfObject) {
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(paramString);
      stringBuffer.append(paramMethod);
      stringBuffer.append(" with args:");
      Interpreter.debug(stringBuffer.toString());
      for (byte b = 0;; b++) {
        if (b >= paramArrayOfObject.length)
          return; 
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("args[");
        stringBuffer1.append(b);
        stringBuffer1.append("] = ");
        stringBuffer1.append(paramArrayOfObject[b]);
        stringBuffer1.append(" type = ");
        stringBuffer1.append(paramArrayOfObject[b].getClass());
        Interpreter.debug(stringBuffer1.toString());
      } 
    } 
  }
  
  private static void a(Method paramMethod, boolean paramBoolean, Class paramClass) {
    if (paramMethod != null && paramBoolean && !b(paramMethod)) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Cannot reach instance method: ");
      stringBuffer.append(StringUtil.methodString(paramMethod.getName(), paramMethod.getParameterTypes()));
      stringBuffer.append(" from static context: ");
      stringBuffer.append(paramClass.getName());
      throw new UtilEvalError(stringBuffer.toString());
    } 
  }
  
  private static boolean a(Class paramClass) { return Modifier.isPublic(paramClass.getModifiers()); }
  
  private static boolean a(Constructor paramConstructor) { return Modifier.isPublic(paramConstructor.getModifiers()); }
  
  private static boolean a(Method paramMethod) { return Modifier.isPublic(paramMethod.getModifiers()); }
  
  static Method[] a(Class paramClass, String paramString, int paramInt, boolean paramBoolean) {
    Vector vector = a(paramClass, paramString, paramInt, paramBoolean, null);
    Method[] arrayOfMethod = new Method[vector.size()];
    vector.copyInto(arrayOfMethod);
    return arrayOfMethod;
  }
  
  static int b(Class[] paramArrayOfClass, Constructor[] paramArrayOfConstructor) {
    Class[][] arrayOfClass = new Class[paramArrayOfConstructor.length][];
    for (byte b = 0;; b++) {
      if (b >= arrayOfClass.length)
        return a(paramArrayOfClass, arrayOfClass); 
      arrayOfClass[b] = paramArrayOfConstructor[b].getParameterTypes();
    } 
  }
  
  private static Field b(Class paramClass, String paramString) {
    try {
      Field field = paramClass.getField(paramString);
      ReflectManager.RMSetAccessible(field);
      return field;
    } catch (NoSuchFieldException noSuchFieldException) {
      while (true) {
        if (paramClass == null)
          throw new NoSuchFieldException(paramString); 
        try {
          Field field = paramClass.getDeclaredField(paramString);
          ReflectManager.RMSetAccessible(field);
          return field;
        } catch (NoSuchFieldException noSuchFieldException) {
          paramClass = paramClass.getSuperclass();
        } 
      } 
    } 
  }
  
  protected static Field b(Class paramClass, String paramString, boolean paramBoolean) {
    StringBuffer stringBuffer;
    try {
      StringBuffer stringBuffer1;
      if (Capabilities.haveAccessibility()) {
        stringBuffer1 = b(paramClass, paramString);
      } else {
        stringBuffer1 = paramClass.getField(paramString);
      } 
      if (paramBoolean && !Modifier.isStatic(stringBuffer1.getModifiers())) {
        stringBuffer1 = new StringBuffer();
        stringBuffer1.append("Can't reach instance field: ");
        stringBuffer1.append(paramString);
        stringBuffer1.append(" from static context: ");
        stringBuffer1.append(paramClass.getName());
        throw new UtilEvalError(stringBuffer1.toString());
      } 
      return stringBuffer1;
    } catch (NoSuchFieldException paramClass) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("No such field: ");
      stringBuffer.append(paramString);
      throw new ReflectError(stringBuffer.toString());
    } catch (SecurityException paramString) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Security Exception while searching fields of: ");
      stringBuffer1.append(stringBuffer);
      throw new UtilTargetError(stringBuffer1.toString(), paramString);
    } 
  }
  
  private static boolean b(Method paramMethod) { return Modifier.isStatic(paramMethod.getModifiers()); }
  
  public static Class getArrayBaseType(Class paramClass) {
    if (!paramClass.isArray())
      throw new ReflectError("The class is not an array."); 
    return paramClass.getComponentType();
  }
  
  public static int getArrayDimensions(Class paramClass) { return !paramClass.isArray() ? 0 : (paramClass.getName().lastIndexOf('[') + 1); }
  
  public static Object getIndex(Object paramObject, int paramInt) {
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("getIndex: ");
      stringBuffer.append(paramObject);
      stringBuffer.append(", index=");
      stringBuffer.append(paramInt);
      Interpreter.debug(stringBuffer.toString());
    } 
    try {
      return Primitive.wrap(Array.get(paramObject, paramInt), paramObject.getClass().getComponentType());
    } catch (ArrayIndexOutOfBoundsException paramObject) {
      throw new UtilTargetError(paramObject);
    } catch (Exception paramObject) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Array access:");
      stringBuffer.append(paramObject);
      throw new ReflectError(stringBuffer.toString());
    } 
  }
  
  public static Object getObjectFieldValue(Object paramObject, String paramString) {
    if (paramObject instanceof This)
      return ((This)paramObject).a.getVariable(paramString); 
    try {
      return a(paramObject.getClass(), paramObject, paramString, false);
    } catch (ReflectError reflectError) {
      if (hasObjectPropertyGetter(paramObject.getClass(), paramString))
        return getObjectProperty(paramObject, paramString); 
      throw reflectError;
    } 
  }
  
  public static Object getObjectProperty(Object paramObject, String paramString) {
    Class clazz2;
    Object[] arrayOfObject = new Object[0];
    Interpreter.debug("property access: ");
    Object object2 = null;
    try {
      String str = a("get", paramString);
      clazz2 = a(null, paramObject.getClass(), paramObject, str, arrayOfObject, false);
      exception = null;
    } catch (Exception exception) {
      clazz2 = null;
    } 
    object1 = object2;
    Class clazz1 = clazz2;
    if (clazz2 == null)
      try {
        paramString = a("is", paramString);
        Method method = a(null, paramObject.getClass(), paramObject, paramString, arrayOfObject, false);
        try {
          clazz1 = method.getReturnType();
          clazz2 = boolean.class;
          if (clazz1 != clazz2) {
            clazz1 = null;
            object1 = object2;
          } else {
            object1 = object2;
            Method method1 = method;
          } 
        } catch (Exception object1) {
          Method method1 = method;
        } 
      } catch (Exception object1) {
        clazz1 = clazz2;
      }  
    if (clazz1 == null) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Error in property getter: ");
      stringBuffer.append(exception);
      if (object1 != null) {
        paramObject = new StringBuffer();
        paramObject.append(" : ");
        paramObject.append(object1);
        paramObject = paramObject.toString();
      } else {
        paramObject = "";
      } 
      stringBuffer.append(paramObject);
      throw new ReflectError(stringBuffer.toString());
    } 
    try {
      return a(clazz1, paramObject, arrayOfObject);
    } catch (InvocationTargetException paramObject) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Property accessor threw exception: ");
      stringBuffer.append(paramObject.getTargetException());
      throw new UtilEvalError(stringBuffer.toString());
    } 
  }
  
  public static Object getStaticFieldValue(Class paramClass, String paramString) { return a(paramClass, null, paramString, true); }
  
  public static boolean hasObjectPropertyGetter(Class paramClass, String paramString) {
    str = a("get", paramString);
    try {
      paramClass.getMethod(str, new Class[0]);
      return true;
    } catch (NoSuchMethodException str) {
      paramString = a("is", paramString);
      try {
        paramClass = paramClass.getMethod(paramString, new Class[0]).getReturnType();
        Class clazz = boolean.class;
        return (paramClass == clazz);
      } catch (NoSuchMethodException paramClass) {
        return false;
      } 
    } 
  }
  
  public static boolean hasObjectPropertySetter(Class paramClass, String paramString) {
    paramString = a("set", paramString);
    Method[] arrayOfMethod = paramClass.getMethods();
    for (byte b = 0;; b++) {
      if (b >= arrayOfMethod.length)
        return false; 
      if (arrayOfMethod[b].getName().equals(paramString))
        return true; 
    } 
  }
  
  public static Object invokeCompiledCommand(Class paramClass, Object[] paramArrayOfObject, Interpreter paramInterpreter, CallStack paramCallStack) {
    Object[] arrayOfObject = new Object[paramArrayOfObject.length + 2];
    arrayOfObject[0] = paramInterpreter;
    arrayOfObject[1] = paramCallStack;
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 2, paramArrayOfObject.length);
    BshClassManager bshClassManager = paramInterpreter.getClassManager();
    try {
      return invokeStaticMethod(bshClassManager, paramClass, "invoke", arrayOfObject);
    } catch (InvocationTargetException paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Error in compiled command: ");
      stringBuffer.append(paramClass.getTargetException());
      throw new UtilEvalError(stringBuffer.toString());
    } catch (ReflectError paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Error invoking compiled command: ");
      stringBuffer.append(paramClass);
      throw new UtilEvalError(stringBuffer.toString());
    } 
  }
  
  public static Object invokeObjectMethod(Object paramObject, String paramString, Object[] paramArrayOfObject, Interpreter paramInterpreter, CallStack paramCallStack, SimpleNode paramSimpleNode) {
    BshClassManager bshClassManager;
    if (paramObject instanceof This && !This.a(paramString))
      return ((This)paramObject).invokeMethod(paramString, paramArrayOfObject, paramInterpreter, paramCallStack, paramSimpleNode, false); 
    if (paramInterpreter == null) {
      paramInterpreter = null;
    } else {
      try {
        bshClassManager = paramInterpreter.getClassManager();
        return a(a(bshClassManager, paramObject.getClass(), paramObject, paramString, paramArrayOfObject, false), paramObject, paramArrayOfObject);
      } catch (UtilEvalError paramObject) {
        throw paramObject.toEvalError(paramSimpleNode, paramCallStack);
      } 
    } 
    return a(a(bshClassManager, paramObject.getClass(), paramObject, paramString, paramArrayOfObject, false), paramObject, paramArrayOfObject);
  }
  
  public static Object invokeStaticMethod(BshClassManager paramBshClassManager, Class paramClass, String paramString, Object[] paramArrayOfObject) {
    Interpreter.debug("invoke static Method");
    return a(a(paramBshClassManager, paramClass, null, paramString, paramArrayOfObject, true), null, paramArrayOfObject);
  }
  
  public static String normalizeClassName(Class paramClass) {
    if (!paramClass.isArray())
      return paramClass.getName(); 
    StringBuffer stringBuffer = new StringBuffer();
    try {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(getArrayBaseType(paramClass).getName());
      stringBuffer1.append(" ");
      stringBuffer.append(stringBuffer1.toString());
      for (byte b = 0; b < getArrayDimensions(paramClass); b++)
        stringBuffer.append("[]"); 
    } catch (ReflectError paramClass) {}
    return stringBuffer.toString();
  }
  
  public static void setIndex(Object paramObject1, int paramInt, Object paramObject2) {
    try {
      Array.set(paramObject1, paramInt, Primitive.unwrap(paramObject2));
      return;
    } catch (ArrayStoreException paramObject1) {
      throw new UtilTargetError(paramObject1);
    } catch (IllegalArgumentException paramObject1) {
      throw new UtilTargetError(new ArrayStoreException(paramObject1.toString()));
    } catch (Exception paramObject1) {
      paramObject2 = new StringBuffer();
      paramObject2.append("Array access:");
      paramObject2.append(paramObject1);
      throw new ReflectError(paramObject2.toString());
    } 
  }
  
  public static void setObjectProperty(Object paramObject1, String paramString, Object paramObject2) {
    paramString = a("set", paramString);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramObject2;
    Interpreter.debug("property access: ");
    try {
      a(a(null, paramObject1.getClass(), paramObject1, paramString, arrayOfObject, false), paramObject1, arrayOfObject);
      return;
    } catch (InvocationTargetException paramObject1) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Property accessor threw exception: ");
      stringBuffer.append(paramObject1.getTargetException());
      throw new UtilEvalError(stringBuffer.toString());
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Reflect.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
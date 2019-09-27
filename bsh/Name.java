package bsh;

import java.io.Serializable;
import java.lang.reflect.Array;

class Name implements Serializable {
  private static String f;
  
  String a = null;
  
  Class b;
  
  Class c;
  
  private String d;
  
  private String e;
  
  private Object g;
  
  private int h;
  
  public NameSpace namespace;
  
  static  {
  
  }
  
  Name(NameSpace paramNameSpace, String paramString) {
    this.namespace = paramNameSpace;
    this.a = paramString;
  }
  
  static int a(String paramString) {
    if (paramString == null)
      return 0; 
    int i = -1;
    for (byte b1 = 0;; b1++) {
      i = paramString.indexOf('.', i + 1);
      if (i == -1)
        return b1 + true; 
    } 
  }
  
  static NameSpace a(NameSpace paramNameSpace) { return paramNameSpace.d ? paramNameSpace : ((paramNameSpace.c && paramNameSpace.getParent() != null && (paramNameSpace.getParent()).d) ? paramNameSpace.getParent() : null); }
  
  private Object a(CallStack paramCallStack, Interpreter paramInterpreter, boolean paramBoolean1, boolean paramBoolean2) {
    if (this.g == null && !isCompound(this.d) && !paramBoolean1) {
      Object object = a(paramCallStack, this.namespace, paramInterpreter, this.d, false);
      if (object != Primitive.VOID)
        return a(this.d, f, object); 
    } 
    String str2 = a(this.d, 1);
    if ((this.g == null || this.g instanceof This) && !paramBoolean1) {
      NameSpace nameSpace;
      boolean bool;
      if (Interpreter.DEBUG) {
        nameSpace = new StringBuffer();
        nameSpace.append("trying to resolve variable: ");
        nameSpace.append(str2);
        Interpreter.debug(nameSpace.toString());
      } 
      if (this.g == null) {
        nameSpace = this.namespace;
        bool = false;
      } else {
        nameSpace = ((This)this.g).a;
        bool = true;
      } 
      Object object = a(paramCallStack, nameSpace, paramInterpreter, str2, bool);
      if (object != Primitive.VOID) {
        if (Interpreter.DEBUG) {
          stringBuffer = new StringBuffer();
          stringBuffer.append("resolved variable: ");
          stringBuffer.append(str2);
          stringBuffer.append(" in namespace: ");
          stringBuffer.append(this.namespace);
          Interpreter.debug(stringBuffer.toString());
        } 
        return a(str2, c(this.d), object);
      } 
    } 
    if (this.g == null) {
      if (Interpreter.DEBUG) {
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("trying class: ");
        stringBuffer1.append(this.d);
        Interpreter.debug(stringBuffer1.toString());
      } 
      CallStack callStack = null;
      paramCallStack = callStack;
      int i = 1;
      while (true) {
        Class clazz;
        String str;
        if (i <= a(this.d)) {
          str = a(this.d, i);
          clazz = this.namespace.getClass(str);
          if (clazz == null) {
            i++;
            continue;
          } 
        } 
        if (clazz != null)
          return a(str, suffix(this.d, a(this.d) - i), new ClassIdentifier(clazz)); 
        if (Interpreter.DEBUG) {
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append("not a class, trying var prefix ");
          stringBuffer1.append(this.d);
          Interpreter.debug(stringBuffer1.toString());
        } 
        break;
      } 
    } 
    if ((this.g == null || this.g instanceof This) && !paramBoolean1 && paramBoolean2) {
      NameSpace nameSpace;
      if (this.g == null) {
        nameSpace = this.namespace;
      } else {
        nameSpace = ((This)this.g).a;
      } 
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("auto: ");
      stringBuffer1.append(str2);
      This this1 = (new NameSpace(nameSpace, stringBuffer1.toString())).a(stringBuffer);
      nameSpace.setVariable(str2, this1, false);
      return a(str2, c(this.d), this1);
    } 
    if (this.g == null) {
      if (!isCompound(this.d))
        return a(this.d, f, Primitive.VOID); 
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Class or variable not found: ");
      stringBuffer1.append(this.d);
      throw new UtilEvalError(stringBuffer1.toString());
    } 
    if (this.g == Primitive.NULL) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Null Pointer while evaluating: ");
      stringBuffer1.append(this.a);
      throw new UtilTargetError(new NullPointerException(stringBuffer1.toString()));
    } 
    if (this.g == Primitive.VOID) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Undefined variable or class name while evaluating: ");
      stringBuffer1.append(this.a);
      throw new UtilEvalError(stringBuffer1.toString());
    } 
    if (this.g instanceof Primitive) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Can't treat primitive like an object. Error while evaluating: ");
      stringBuffer1.append(this.a);
      throw new UtilEvalError(stringBuffer1.toString());
    } 
    if (this.g instanceof ClassIdentifier) {
      Class clazz = ((ClassIdentifier)this.g).getTargetClass();
      str2 = a(this.d, 1);
      if (str2.equals("this")) {
        NameSpace nameSpace = this.namespace;
        while (true) {
          StringBuffer stringBuffer1;
          if (nameSpace == null) {
            stringBuffer1 = new StringBuffer();
            stringBuffer1.append("Can't find enclosing 'this' instance of class: ");
            stringBuffer1.append(clazz);
            throw new UtilEvalError(stringBuffer1.toString());
          } 
          if (stringBuffer1.f != null && stringBuffer1.f.getClass() == clazz)
            return a(str2, c(this.d), stringBuffer1.f); 
          NameSpace nameSpace1 = stringBuffer1.getParent();
        } 
      } 
      try {
        if (Interpreter.DEBUG) {
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append("Name call to getStaticFieldValue, class: ");
          stringBuffer1.append(clazz);
          stringBuffer1.append(", field:");
          stringBuffer1.append(str2);
          Interpreter.debug(stringBuffer1.toString());
        } 
        Object object = Reflect.getStaticFieldValue(clazz, str2);
      } catch (ReflectError paramCallStack) {
        if (Interpreter.DEBUG) {
          stringBuffer = new StringBuffer();
          stringBuffer.append("field reflect error: ");
          stringBuffer.append(paramCallStack);
          Interpreter.debug(stringBuffer.toString());
        } 
        paramCallStack = null;
      } 
      ClassIdentifier classIdentifier = paramCallStack;
      if (paramCallStack == null) {
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append(clazz.getName());
        stringBuffer1.append("$");
        stringBuffer1.append(str2);
        String str = stringBuffer1.toString();
        Class clazz1 = this.namespace.getClass(str);
        CallStack callStack = paramCallStack;
        if (clazz1 != null)
          classIdentifier = new ClassIdentifier(clazz1); 
      } 
      if (classIdentifier == null) {
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("No static field or inner class: ");
        stringBuffer1.append(str2);
        stringBuffer1.append(" of ");
        stringBuffer1.append(clazz);
        throw new UtilEvalError(stringBuffer1.toString());
      } 
      return a(str2, c(this.d), classIdentifier);
    } 
    if (paramBoolean1) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(this.a);
      stringBuffer1.append(" does not resolve to a class name.");
      throw new UtilEvalError(stringBuffer1.toString());
    } 
    String str1 = a(this.d, 1);
    if (str1.equals("length") && this.g.getClass().isArray()) {
      Primitive primitive = new Primitive(Array.getLength(this.g));
      return a(str1, c(this.d), primitive);
    } 
    try {
      null = Reflect.getObjectFieldValue(this.g, str1);
      return a(str1, c(this.d), null);
    } catch (ReflectError stringBuffer) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("Cannot access field: ");
      stringBuffer.append(str1);
      stringBuffer.append(", on object: ");
      stringBuffer.append(this.g);
      throw new UtilEvalError(stringBuffer.toString());
    } 
  }
  
  private Object a(Interpreter paramInterpreter, Object[] paramArrayOfObject, CallStack paramCallStack, SimpleNode paramSimpleNode) {
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("invokeLocalMethod: ");
      stringBuffer.append(this.a);
      Interpreter.debug(stringBuffer.toString());
    } 
    if (paramInterpreter == null)
      throw new InterpreterError("invokeLocalMethod: interpreter = null"); 
    String str = this.a;
    Class[] arrayOfClass = Types.getTypes(paramArrayOfObject);
    try {
      BshMethod bshMethod = this.namespace.getMethod(str, arrayOfClass);
      if (bshMethod != null)
        return bshMethod.invoke(paramArrayOfObject, paramInterpreter, paramCallStack, paramSimpleNode); 
      paramInterpreter.getClassManager();
      try {
        Object object = this.namespace.getCommand(str, arrayOfClass, paramInterpreter);
        if (object == null)
          try {
            object = this.namespace.getMethod("invoke", new Class[] { null, null });
            if (object != null)
              return object.invoke(new Object[] { str, paramArrayOfObject }, paramInterpreter, paramCallStack, paramSimpleNode); 
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Command not found: ");
            stringBuffer.append(StringUtil.methodString(str, arrayOfClass));
            throw new EvalError(stringBuffer.toString(), paramSimpleNode, paramCallStack);
          } catch (UtilEvalError paramInterpreter) {
            throw paramInterpreter.toEvalError("Local method invocation", paramSimpleNode, paramCallStack);
          }  
        if (object instanceof BshMethod)
          return ((BshMethod)object).invoke(paramArrayOfObject, paramInterpreter, paramCallStack, paramSimpleNode); 
        if (object instanceof Class)
          try {
            return Reflect.invokeCompiledCommand((Class)object, paramArrayOfObject, paramInterpreter, paramCallStack);
          } catch (UtilEvalError paramInterpreter) {
            throw paramInterpreter.toEvalError("Error invoking compiled command: ", paramSimpleNode, paramCallStack);
          }  
        throw new InterpreterError("invalid command type");
      } catch (UtilEvalError paramInterpreter) {
        throw paramInterpreter.toEvalError("Error loading command: ", paramSimpleNode, paramCallStack);
      } 
    } catch (UtilEvalError paramInterpreter) {
      throw paramInterpreter.toEvalError("Local method invocation", paramSimpleNode, paramCallStack);
    } 
  }
  
  private Object a(String paramString1, String paramString2, Object paramObject) {
    StringBuffer stringBuffer;
    if (paramObject == null) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("lastEvalName = ");
      stringBuffer.append(paramString1);
      throw new InterpreterError(stringBuffer.toString());
    } 
    this.e = paramString1;
    this.d = stringBuffer;
    this.g = paramObject;
    return paramObject;
  }
  
  static String a(String paramString, int paramInt) {
    int j;
    if (paramInt < 1)
      return null; 
    int i = -1;
    byte b1 = 0;
    while (true) {
      j = paramString.indexOf('.', i + 1);
      if (j != -1) {
        byte b2 = b1 + true;
        i = j;
        b1 = b2;
        if (b2 >= paramInt)
          break; 
        continue;
      } 
      break;
    } 
    return (j == -1) ? paramString : paramString.substring(0, j);
  }
  
  private void a() {
    this.d = this.a;
    this.g = null;
    this.h = 0;
  }
  
  static String b(String paramString) { return !isCompound(paramString) ? null : a(paramString, a(paramString) - 1); }
  
  static String c(String paramString) { return !isCompound(paramString) ? null : suffix(paramString, a(paramString) - 1); }
  
  public static boolean isCompound(String paramString) { return (paramString.indexOf('.') != -1); }
  
  public static String suffix(String paramString, int paramInt) {
    int j;
    if (paramInt < 1)
      return null; 
    byte b1 = 0;
    int i = paramString.length() + 1;
    while (true) {
      j = paramString.lastIndexOf('.', i - 1);
      if (j != -1) {
        byte b2 = b1 + true;
        b1 = b2;
        i = j;
        if (b2 >= paramInt)
          break; 
        continue;
      } 
      break;
    } 
    return (j == -1) ? paramString : paramString.substring(j + 1);
  }
  
  Object a(CallStack paramCallStack, NameSpace paramNameSpace, Interpreter paramInterpreter, String paramString, boolean paramBoolean) {
    NameSpace nameSpace;
    This this2;
    This this1;
    if (paramString.equals("this")) {
      if (paramBoolean)
        throw new UtilEvalError("Redundant to call .this on This type"); 
      this1 = paramNameSpace.a(paramInterpreter);
      paramNameSpace = a(this1.getNameSpace());
      if (paramNameSpace != null) {
        if (isCompound(this.d))
          return paramNameSpace.a(paramInterpreter); 
        this1 = paramNameSpace.a();
      } 
      return this1;
    } 
    if (paramString.equals("super")) {
      this2 = paramNameSpace.getSuper(paramInterpreter);
      nameSpace = this2.getNameSpace();
      this1 = this2;
      if (nameSpace.getParent() != null) {
        this1 = this2;
        if ((nameSpace.getParent()).d)
          this1 = nameSpace.getParent().a(paramInterpreter); 
      } 
      return this1;
    } 
    This this3 = null;
    if (nameSpace.equals("global"))
      this3 = this2.getGlobal(paramInterpreter); 
    Interpreter interpreter = this3;
    if (this3 == null) {
      interpreter = this3;
      if (paramBoolean)
        if (nameSpace.equals("namespace")) {
          interpreter = this2;
        } else if (nameSpace.equals("variables")) {
          String[] arrayOfString = this2.getVariableNames();
        } else if (nameSpace.equals("methods")) {
          String[] arrayOfString = this2.getMethodNames();
        } else {
          interpreter = this3;
          if (nameSpace.equals("interpreter"))
            if (this.e.equals("this")) {
              interpreter = paramInterpreter;
            } else {
              throw new UtilEvalError("Can only call .interpreter on literal 'this'");
            }  
        }  
    } 
    if (interpreter == null && paramBoolean && nameSpace.equals("caller")) {
      if (this.e.equals("this") || this.e.equals("caller")) {
        if (this1 == null)
          throw new InterpreterError("no callstack"); 
        int i = this.h + 1;
        this.h = i;
        return this1.get(i).a(paramInterpreter);
      } 
      throw new UtilEvalError("Can only call .caller on literal 'this' or literal '.caller'");
    } 
    if (interpreter == null && paramBoolean && nameSpace.equals("callstack")) {
      if (this.e.equals("this")) {
        This this4 = this1;
        if (this1 == null)
          throw new InterpreterError("no callstack"); 
      } else {
        throw new UtilEvalError("Can only call .callstack on literal 'this'");
      } 
    } else {
      paramInterpreter = interpreter;
    } 
    Object object = paramInterpreter;
    if (paramInterpreter == null)
      object = this2.getVariable(nameSpace); 
    if (object == null) {
      object = new StringBuffer();
      object.append("null this field ref:");
      object.append(nameSpace);
      throw new InterpreterError(object.toString());
    } 
    return object;
  }
  
  public Object invokeMethod(Interpreter paramInterpreter, Object[] paramArrayOfObject, CallStack paramCallStack, SimpleNode paramSimpleNode) {
    String str1 = suffix(this.a, 1);
    BshClassManager bshClassManager = paramInterpreter.getClassManager();
    NameSpace nameSpace = paramCallStack.top();
    if (this.c != null)
      return Reflect.invokeStaticMethod(bshClassManager, this.c, str1, paramArrayOfObject); 
    if (!isCompound(this.a))
      return a(paramInterpreter, paramArrayOfObject, paramCallStack, paramSimpleNode); 
    String str2 = b(this.a);
    if (str2.equals("super") && a(this.a) == 2) {
      NameSpace nameSpace1 = a(nameSpace.a(paramInterpreter).getNameSpace());
      if (nameSpace1 != null) {
        object1 = nameSpace1.a();
        return ClassGenerator.getClassGenerator().invokeSuperclassMethod(bshClassManager, object1, str1, paramArrayOfObject);
      } 
    } 
    Name name = nameSpace.b(str2);
    Object object2 = name.toObject(paramCallStack, object1);
    if (object2 == Primitive.VOID) {
      object1 = new StringBuffer();
      object1.append("Attempt to resolve method: ");
      object1.append(str1);
      object1.append("() on undefined variable or class name: ");
      object1.append(name);
      throw new UtilEvalError(object1.toString());
    } 
    if (!(object2 instanceof ClassIdentifier)) {
      if (object2 instanceof Primitive) {
        if (object2 == Primitive.NULL)
          throw new UtilTargetError(new NullPointerException("Null Pointer in Method Invocation")); 
        if (Interpreter.DEBUG)
          Interpreter.debug("Attempt to access method on primitive... allowing bsh.Primitive to peek through for debugging"); 
      } 
      return Reflect.invokeObjectMethod(object2, str1, paramArrayOfObject, object1, paramCallStack, paramSimpleNode);
    } 
    if (Interpreter.DEBUG) {
      object1 = new StringBuffer();
      object1.append("invokeMethod: trying static - ");
      object1.append(name);
      Interpreter.debug(object1.toString());
    } 
    Object object1 = ((ClassIdentifier)object2).getTargetClass();
    this.c = object1;
    if (object1 != null)
      return Reflect.invokeStaticMethod(bshClassManager, object1, str1, paramArrayOfObject); 
    object1 = new StringBuffer();
    object1.append("invokeMethod: unknown target: ");
    object1.append(name);
    throw new UtilEvalError(object1.toString());
  }
  
  public Class toClass() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield b : Ljava/lang/Class;
    //   6: ifnull -> 18
    //   9: aload_0
    //   10: getfield b : Ljava/lang/Class;
    //   13: astore_2
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_2
    //   17: areturn
    //   18: aload_0
    //   19: invokespecial a : ()V
    //   22: aload_0
    //   23: getfield d : Ljava/lang/String;
    //   26: ldc_w 'var'
    //   29: invokevirtual equals : (Ljava/lang/Object;)Z
    //   32: istore_1
    //   33: aconst_null
    //   34: astore_3
    //   35: iload_1
    //   36: ifeq -> 48
    //   39: aload_0
    //   40: aconst_null
    //   41: putfield b : Ljava/lang/Class;
    //   44: aload_0
    //   45: monitorexit
    //   46: aconst_null
    //   47: areturn
    //   48: aload_0
    //   49: getfield namespace : Lbsh/NameSpace;
    //   52: aload_0
    //   53: getfield d : Ljava/lang/String;
    //   56: invokevirtual getClass : (Ljava/lang/String;)Ljava/lang/Class;
    //   59: astore #4
    //   61: aload #4
    //   63: astore_2
    //   64: aload #4
    //   66: ifnonnull -> 97
    //   69: aload_0
    //   70: aconst_null
    //   71: aconst_null
    //   72: iconst_1
    //   73: invokevirtual toObject : (Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    //   76: astore_2
    //   77: aload_2
    //   78: astore_3
    //   79: aload #4
    //   81: astore_2
    //   82: aload_3
    //   83: instanceof bsh/ClassIdentifier
    //   86: ifeq -> 97
    //   89: aload_3
    //   90: checkcast bsh/ClassIdentifier
    //   93: invokevirtual getTargetClass : ()Ljava/lang/Class;
    //   96: astore_2
    //   97: aload_2
    //   98: ifnonnull -> 146
    //   101: new java/lang/StringBuffer
    //   104: dup
    //   105: invokespecial <init> : ()V
    //   108: astore_2
    //   109: aload_2
    //   110: ldc_w 'Class: '
    //   113: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   116: pop
    //   117: aload_2
    //   118: aload_0
    //   119: getfield a : Ljava/lang/String;
    //   122: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   125: pop
    //   126: aload_2
    //   127: ldc_w ' not found in namespace'
    //   130: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   133: pop
    //   134: new java/lang/ClassNotFoundException
    //   137: dup
    //   138: aload_2
    //   139: invokevirtual toString : ()Ljava/lang/String;
    //   142: invokespecial <init> : (Ljava/lang/String;)V
    //   145: athrow
    //   146: aload_0
    //   147: aload_2
    //   148: putfield b : Ljava/lang/Class;
    //   151: aload_0
    //   152: getfield b : Ljava/lang/Class;
    //   155: astore_2
    //   156: aload_0
    //   157: monitorexit
    //   158: aload_2
    //   159: areturn
    //   160: astore_2
    //   161: aload_0
    //   162: monitorexit
    //   163: aload_2
    //   164: athrow
    //   165: astore_2
    //   166: goto -> 79
    // Exception table:
    //   from	to	target	type
    //   2	14	160	finally
    //   18	33	160	finally
    //   39	44	160	finally
    //   48	61	160	finally
    //   69	77	165	bsh/UtilEvalError
    //   69	77	160	finally
    //   82	97	160	finally
    //   101	146	160	finally
    //   146	156	160	finally }
  
  public LHS toLHS(CallStack paramCallStack, Interpreter paramInterpreter) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial a : ()V
    //   6: aload_0
    //   7: getfield d : Ljava/lang/String;
    //   10: invokestatic isCompound : (Ljava/lang/String;)Z
    //   13: ifne -> 60
    //   16: aload_0
    //   17: getfield d : Ljava/lang/String;
    //   20: ldc 'this'
    //   22: invokevirtual equals : (Ljava/lang/Object;)Z
    //   25: ifeq -> 39
    //   28: new bsh/UtilEvalError
    //   31: dup
    //   32: ldc_w 'Can't assign to 'this'.'
    //   35: invokespecial <init> : (Ljava/lang/String;)V
    //   38: athrow
    //   39: new bsh/LHS
    //   42: dup
    //   43: aload_0
    //   44: getfield namespace : Lbsh/NameSpace;
    //   47: aload_0
    //   48: getfield d : Ljava/lang/String;
    //   51: iconst_0
    //   52: invokespecial <init> : (Lbsh/NameSpace;Ljava/lang/String;Z)V
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: areturn
    //   60: aconst_null
    //   61: astore #4
    //   63: aload_0
    //   64: getfield d : Ljava/lang/String;
    //   67: ifnull -> 96
    //   70: aload_0
    //   71: getfield d : Ljava/lang/String;
    //   74: invokestatic isCompound : (Ljava/lang/String;)Z
    //   77: ifne -> 83
    //   80: goto -> 96
    //   83: aload_0
    //   84: aload_1
    //   85: aload_2
    //   86: iconst_0
    //   87: iconst_1
    //   88: invokespecial a : (Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;
    //   91: astore #4
    //   93: goto -> 63
    //   96: aload_0
    //   97: getfield d : Ljava/lang/String;
    //   100: ifnonnull -> 148
    //   103: aload #4
    //   105: instanceof bsh/ClassIdentifier
    //   108: ifeq -> 148
    //   111: new java/lang/StringBuffer
    //   114: dup
    //   115: invokespecial <init> : ()V
    //   118: astore_1
    //   119: aload_1
    //   120: ldc_w 'Can't assign to class: '
    //   123: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   126: pop
    //   127: aload_1
    //   128: aload_0
    //   129: getfield a : Ljava/lang/String;
    //   132: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   135: pop
    //   136: new bsh/UtilEvalError
    //   139: dup
    //   140: aload_1
    //   141: invokevirtual toString : ()Ljava/lang/String;
    //   144: invokespecial <init> : (Ljava/lang/String;)V
    //   147: athrow
    //   148: aload #4
    //   150: ifnonnull -> 190
    //   153: new java/lang/StringBuffer
    //   156: dup
    //   157: invokespecial <init> : ()V
    //   160: astore_1
    //   161: aload_1
    //   162: ldc_w 'Error in LHS: '
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   168: pop
    //   169: aload_1
    //   170: aload_0
    //   171: getfield a : Ljava/lang/String;
    //   174: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   177: pop
    //   178: new bsh/UtilEvalError
    //   181: dup
    //   182: aload_1
    //   183: invokevirtual toString : ()Ljava/lang/String;
    //   186: invokespecial <init> : (Ljava/lang/String;)V
    //   189: athrow
    //   190: aload #4
    //   192: instanceof bsh/This
    //   195: ifeq -> 334
    //   198: aload_0
    //   199: getfield d : Ljava/lang/String;
    //   202: ldc_w 'namespace'
    //   205: invokevirtual equals : (Ljava/lang/Object;)Z
    //   208: ifne -> 297
    //   211: aload_0
    //   212: getfield d : Ljava/lang/String;
    //   215: ldc_w 'variables'
    //   218: invokevirtual equals : (Ljava/lang/Object;)Z
    //   221: ifne -> 297
    //   224: aload_0
    //   225: getfield d : Ljava/lang/String;
    //   228: ldc_w 'methods'
    //   231: invokevirtual equals : (Ljava/lang/Object;)Z
    //   234: ifne -> 297
    //   237: aload_0
    //   238: getfield d : Ljava/lang/String;
    //   241: ldc_w 'caller'
    //   244: invokevirtual equals : (Ljava/lang/Object;)Z
    //   247: ifeq -> 253
    //   250: goto -> 297
    //   253: ldc_w 'found This reference evaluating LHS'
    //   256: invokestatic debug : (Ljava/lang/String;)V
    //   259: aload_0
    //   260: getfield e : Ljava/lang/String;
    //   263: ldc_w 'super'
    //   266: invokevirtual equals : (Ljava/lang/Object;)Z
    //   269: istore_3
    //   270: new bsh/LHS
    //   273: dup
    //   274: aload #4
    //   276: checkcast bsh/This
    //   279: getfield a : Lbsh/NameSpace;
    //   282: aload_0
    //   283: getfield d : Ljava/lang/String;
    //   286: iload_3
    //   287: iconst_1
    //   288: ixor
    //   289: invokespecial <init> : (Lbsh/NameSpace;Ljava/lang/String;Z)V
    //   292: astore_1
    //   293: aload_0
    //   294: monitorexit
    //   295: aload_1
    //   296: areturn
    //   297: new java/lang/StringBuffer
    //   300: dup
    //   301: invokespecial <init> : ()V
    //   304: astore_1
    //   305: aload_1
    //   306: ldc_w 'Can't assign to special variable: '
    //   309: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   312: pop
    //   313: aload_1
    //   314: aload_0
    //   315: getfield d : Ljava/lang/String;
    //   318: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   321: pop
    //   322: new bsh/UtilEvalError
    //   325: dup
    //   326: aload_1
    //   327: invokevirtual toString : ()Ljava/lang/String;
    //   330: invokespecial <init> : (Ljava/lang/String;)V
    //   333: athrow
    //   334: aload_0
    //   335: getfield d : Ljava/lang/String;
    //   338: astore_1
    //   339: aload_1
    //   340: ifnull -> 420
    //   343: aload #4
    //   345: instanceof bsh/ClassIdentifier
    //   348: ifeq -> 371
    //   351: aload #4
    //   353: checkcast bsh/ClassIdentifier
    //   356: invokevirtual getTargetClass : ()Ljava/lang/Class;
    //   359: aload_0
    //   360: getfield d : Ljava/lang/String;
    //   363: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;)Lbsh/LHS;
    //   366: astore_1
    //   367: aload_0
    //   368: monitorexit
    //   369: aload_1
    //   370: areturn
    //   371: aload #4
    //   373: aload_0
    //   374: getfield d : Ljava/lang/String;
    //   377: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;)Lbsh/LHS;
    //   380: astore_1
    //   381: aload_0
    //   382: monitorexit
    //   383: aload_1
    //   384: areturn
    //   385: astore_1
    //   386: new java/lang/StringBuffer
    //   389: dup
    //   390: invokespecial <init> : ()V
    //   393: astore_2
    //   394: aload_2
    //   395: ldc_w 'Field access: '
    //   398: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   401: pop
    //   402: aload_2
    //   403: aload_1
    //   404: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   407: pop
    //   408: new bsh/UtilEvalError
    //   411: dup
    //   412: aload_2
    //   413: invokevirtual toString : ()Ljava/lang/String;
    //   416: invokespecial <init> : (Ljava/lang/String;)V
    //   419: athrow
    //   420: new bsh/InterpreterError
    //   423: dup
    //   424: ldc_w 'Internal error in lhs...'
    //   427: invokespecial <init> : (Ljava/lang/String;)V
    //   430: athrow
    //   431: astore_1
    //   432: new java/lang/StringBuffer
    //   435: dup
    //   436: invokespecial <init> : ()V
    //   439: astore_2
    //   440: aload_2
    //   441: ldc_w 'LHS evaluation: '
    //   444: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   447: pop
    //   448: aload_2
    //   449: aload_1
    //   450: invokevirtual getMessage : ()Ljava/lang/String;
    //   453: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   456: pop
    //   457: new bsh/UtilEvalError
    //   460: dup
    //   461: aload_2
    //   462: invokevirtual toString : ()Ljava/lang/String;
    //   465: invokespecial <init> : (Ljava/lang/String;)V
    //   468: athrow
    //   469: astore_1
    //   470: aload_0
    //   471: monitorexit
    //   472: aload_1
    //   473: athrow
    // Exception table:
    //   from	to	target	type
    //   2	39	469	finally
    //   39	56	469	finally
    //   63	80	431	bsh/UtilEvalError
    //   63	80	469	finally
    //   83	93	431	bsh/UtilEvalError
    //   83	93	469	finally
    //   96	148	469	finally
    //   153	190	469	finally
    //   190	250	469	finally
    //   253	293	469	finally
    //   297	334	469	finally
    //   334	339	469	finally
    //   343	367	385	bsh/ReflectError
    //   343	367	469	finally
    //   371	381	385	bsh/ReflectError
    //   371	381	469	finally
    //   386	420	469	finally
    //   420	431	469	finally
    //   432	469	469	finally }
  
  public Object toObject(CallStack paramCallStack, Interpreter paramInterpreter) { return toObject(paramCallStack, paramInterpreter, false); }
  
  public Object toObject(CallStack paramCallStack, Interpreter paramInterpreter, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial a : ()V
    //   6: aconst_null
    //   7: astore #4
    //   9: aload_0
    //   10: getfield d : Ljava/lang/String;
    //   13: ifnonnull -> 37
    //   16: aload #4
    //   18: ifnonnull -> 32
    //   21: new bsh/InterpreterError
    //   24: dup
    //   25: ldc_w 'null value in toObject()'
    //   28: invokespecial <init> : (Ljava/lang/String;)V
    //   31: athrow
    //   32: aload_0
    //   33: monitorexit
    //   34: aload #4
    //   36: areturn
    //   37: aload_0
    //   38: aload_1
    //   39: aload_2
    //   40: iload_3
    //   41: iconst_0
    //   42: invokespecial a : (Lbsh/CallStack;Lbsh/Interpreter;ZZ)Ljava/lang/Object;
    //   45: astore #4
    //   47: goto -> 9
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    // Exception table:
    //   from	to	target	type
    //   2	6	50	finally
    //   9	16	50	finally
    //   21	32	50	finally
    //   37	47	50	finally }
  
  public String toString() { return this.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Name.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
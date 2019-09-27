package bsh;

import bsh.org.objectweb.asm.ClassWriter;
import bsh.org.objectweb.asm.CodeVisitor;
import bsh.org.objectweb.asm.Constants;
import bsh.org.objectweb.asm.Label;
import bsh.org.objectweb.asm.Type;
import com.a.a.a.a.a.a.a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ClassGeneratorUtil implements Constants {
  static Class m;
  
  static Class n;
  
  static Class o;
  
  static Class p;
  
  static Class q;
  
  static Class r;
  
  String a;
  
  String b;
  
  Class c;
  
  String d;
  
  Class[] e;
  
  Variable[] f;
  
  Constructor[] g;
  
  DelayedEvalBshMethod[] h;
  
  DelayedEvalBshMethod[] i;
  
  NameSpace j;
  
  Modifiers k;
  
  boolean l;
  
  public ClassGeneratorUtil(Modifiers paramModifiers, String paramString1, String paramString2, Class paramClass, Class[] paramArrayOfClass, Variable[] paramArrayOfVariable, DelayedEvalBshMethod[] paramArrayOfDelayedEvalBshMethod, NameSpace paramNameSpace, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: invokespecial <init> : ()V
    //   4: aload_0
    //   5: aload_1
    //   6: putfield k : Lbsh/Modifiers;
    //   9: aload_0
    //   10: aload_2
    //   11: putfield a : Ljava/lang/String;
    //   14: aload_3
    //   15: ifnull -> 63
    //   18: new java/lang/StringBuffer
    //   21: dup
    //   22: invokespecial <init> : ()V
    //   25: astore_1
    //   26: aload_1
    //   27: aload_3
    //   28: bipush #46
    //   30: bipush #47
    //   32: invokevirtual replace : (CC)Ljava/lang/String;
    //   35: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   38: pop
    //   39: aload_1
    //   40: ldc '/'
    //   42: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   45: pop
    //   46: aload_1
    //   47: aload_2
    //   48: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   51: pop
    //   52: aload_0
    //   53: aload_1
    //   54: invokevirtual toString : ()Ljava/lang/String;
    //   57: putfield b : Ljava/lang/String;
    //   60: goto -> 68
    //   63: aload_0
    //   64: aload_2
    //   65: putfield b : Ljava/lang/String;
    //   68: aload #4
    //   70: astore_1
    //   71: aload #4
    //   73: ifnonnull -> 102
    //   76: getstatic bsh/ClassGeneratorUtil.m : Ljava/lang/Class;
    //   79: ifnonnull -> 95
    //   82: ldc 'java.lang.Object'
    //   84: invokestatic a : (Ljava/lang/String;)Ljava/lang/Class;
    //   87: astore_1
    //   88: aload_1
    //   89: putstatic bsh/ClassGeneratorUtil.m : Ljava/lang/Class;
    //   92: goto -> 102
    //   95: getstatic bsh/ClassGeneratorUtil.m : Ljava/lang/Class;
    //   98: astore_1
    //   99: goto -> 92
    //   102: aload_0
    //   103: aload_1
    //   104: putfield c : Ljava/lang/Class;
    //   107: aload_0
    //   108: aload_1
    //   109: invokestatic getInternalName : (Ljava/lang/Class;)Ljava/lang/String;
    //   112: putfield d : Ljava/lang/String;
    //   115: aload #5
    //   117: astore_3
    //   118: aload #5
    //   120: ifnonnull -> 128
    //   123: iconst_0
    //   124: anewarray java/lang/Class
    //   127: astore_3
    //   128: aload_0
    //   129: aload_3
    //   130: putfield e : [Ljava/lang/Class;
    //   133: aload_0
    //   134: aload #6
    //   136: putfield f : [Lbsh/Variable;
    //   139: aload_0
    //   140: aload #8
    //   142: putfield j : Lbsh/NameSpace;
    //   145: aload_0
    //   146: aload_1
    //   147: invokevirtual getDeclaredConstructors : ()[Ljava/lang/reflect/Constructor;
    //   150: putfield g : [Ljava/lang/reflect/Constructor;
    //   153: new java/util/ArrayList
    //   156: dup
    //   157: invokespecial <init> : ()V
    //   160: astore_1
    //   161: new java/util/ArrayList
    //   164: dup
    //   165: invokespecial <init> : ()V
    //   168: astore_3
    //   169: aload_2
    //   170: invokestatic d : (Ljava/lang/String;)Ljava/lang/String;
    //   173: astore_2
    //   174: iconst_0
    //   175: istore #10
    //   177: iload #10
    //   179: aload #7
    //   181: arraylength
    //   182: if_icmplt -> 248
    //   185: aload_0
    //   186: aload_1
    //   187: iconst_0
    //   188: anewarray bsh/DelayedEvalBshMethod
    //   191: invokeinterface toArray : ([Ljava/lang/Object;)[Ljava/lang/Object;
    //   196: checkcast [Lbsh/DelayedEvalBshMethod;
    //   199: putfield h : [Lbsh/DelayedEvalBshMethod;
    //   202: aload_0
    //   203: aload_3
    //   204: iconst_0
    //   205: anewarray bsh/DelayedEvalBshMethod
    //   208: invokeinterface toArray : ([Ljava/lang/Object;)[Ljava/lang/Object;
    //   213: checkcast [Lbsh/DelayedEvalBshMethod;
    //   216: putfield i : [Lbsh/DelayedEvalBshMethod;
    //   219: aload #8
    //   221: ldc '_bshConstructors'
    //   223: aload_0
    //   224: getfield h : [Lbsh/DelayedEvalBshMethod;
    //   227: iconst_0
    //   228: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Z)V
    //   231: aload_0
    //   232: iload #9
    //   234: putfield l : Z
    //   237: return
    //   238: new bsh/InterpreterError
    //   241: dup
    //   242: ldc 'can't set cons var'
    //   244: invokespecial <init> : (Ljava/lang/String;)V
    //   247: athrow
    //   248: aload #7
    //   250: iload #10
    //   252: aaload
    //   253: invokevirtual getName : ()Ljava/lang/String;
    //   256: aload_2
    //   257: invokevirtual equals : (Ljava/lang/Object;)Z
    //   260: ifeq -> 278
    //   263: aload_1
    //   264: aload #7
    //   266: iload #10
    //   268: aaload
    //   269: invokeinterface add : (Ljava/lang/Object;)Z
    //   274: pop
    //   275: goto -> 290
    //   278: aload_3
    //   279: aload #7
    //   281: iload #10
    //   283: aaload
    //   284: invokeinterface add : (Ljava/lang/Object;)Z
    //   289: pop
    //   290: iload #10
    //   292: iconst_1
    //   293: iadd
    //   294: istore #10
    //   296: goto -> 177
    //   299: astore_1
    //   300: goto -> 238
    // Exception table:
    //   from	to	target	type
    //   219	231	299	bsh/UtilEvalError }
  
  static int a(Modifiers paramModifiers) {
    char c1 = Character.MIN_VALUE;
    if (paramModifiers == null)
      return 0; 
    if (paramModifiers.hasModifier("public"))
      c1 = '\001'; 
    byte b1 = c1;
    if (paramModifiers.hasModifier("protected"))
      b1 = c1 + 4; 
    c1 = b1;
    if (paramModifiers.hasModifier("static"))
      c1 = b1 + 8; 
    b1 = c1;
    if (paramModifiers.hasModifier("synchronized"))
      b1 = c1 + 32; 
    c1 = b1;
    if (paramModifiers.hasModifier("abstract"))
      c1 = b1 + 'Ѐ'; 
    return c1;
  }
  
  static This a(Class paramClass, String paramString) {
    try {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("_bshStatic");
      stringBuffer.append(paramString);
      return (This)Reflect.getStaticFieldValue(paramClass, stringBuffer.toString());
    } catch (Exception paramClass) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Unable to get class static space: ");
      stringBuffer.append(paramClass);
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
  
  static This a(Object paramObject, String paramString) {
    try {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("_bshThis");
      stringBuffer.append(paramString);
      return (This)Primitive.unwrap(Reflect.getObjectFieldValue(paramObject, stringBuffer.toString()));
    } catch (Exception paramObject) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Generated class: Error getting This");
      stringBuffer.append(paramObject);
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
  
  static Class a(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  static String a(String paramString, String[] paramArrayOfString) {
    StringBuffer stringBuffer = new StringBuffer("(");
    for (byte b1 = 0;; b1++) {
      StringBuffer stringBuffer1;
      if (b1 >= paramArrayOfString.length) {
        stringBuffer1 = new StringBuffer();
        stringBuffer1.append(")");
        stringBuffer1.append(paramString);
        stringBuffer.append(stringBuffer1.toString());
        return stringBuffer.toString();
      } 
      stringBuffer.append(stringBuffer1[b1]);
    } 
  }
  
  static void a(int paramInt1, String paramString, String[] paramArrayOfString, Label paramLabel, Label[] paramArrayOfLabel, int paramInt2, CodeVisitor paramCodeVisitor) {
    paramCodeVisitor.visitLabel(paramArrayOfLabel[paramInt1]);
    paramInt1 = 0;
    paramCodeVisitor.visitVarInsn(25, 0);
    while (true) {
      String str2;
      String str1;
      if (paramInt1 >= paramArrayOfString.length) {
        paramCodeVisitor.visitMethodInsn(183, paramString, "<init>", a("V", paramArrayOfString));
        paramCodeVisitor.visitJumpInsn(167, paramLabel);
        return;
      } 
      String str3 = paramArrayOfString[paramInt1];
      if (str3.equals("Z")) {
        str1 = "getBoolean";
      } else if (str3.equals("B")) {
        str1 = "getByte";
      } else if (str3.equals("C")) {
        str1 = "getChar";
      } else if (str3.equals("S")) {
        str1 = "getShort";
      } else if (str3.equals("I")) {
        str1 = "getInt";
      } else if (str3.equals("J")) {
        str1 = "getLong";
      } else if (str3.equals("D")) {
        str1 = "getDouble";
      } else if (str3.equals("F")) {
        str1 = "getFloat";
      } else {
        str1 = "getObject";
      } 
      paramCodeVisitor.visitVarInsn(25, paramInt2);
      if (str1.equals("getObject")) {
        str2 = "Ljava/lang/Object;";
      } else {
        str2 = str3;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("()");
      stringBuffer.append(str2);
      paramCodeVisitor.visitMethodInsn(182, "bsh/ClassGeneratorUtil$ConstructorArgs", str1, stringBuffer.toString());
      if (str1.equals("getObject"))
        paramCodeVisitor.visitTypeInsn(192, c(str3)); 
      paramInt1++;
    } 
  }
  
  static void a(String paramString, CodeVisitor paramCodeVisitor) {
    char c1;
    if (paramString.equals("V")) {
      c1 = '±';
    } else {
      if (b(paramString)) {
        char c2 = '¬';
        if (paramString.equals("D")) {
          c2 = '¯';
        } else if (paramString.equals("F")) {
          c2 = '®';
        } else if (paramString.equals("J")) {
          c2 = '­';
        } 
        paramCodeVisitor.visitInsn(c2);
        return;
      } 
      paramCodeVisitor.visitTypeInsn(192, c(paramString));
      c1 = '°';
    } 
    paramCodeVisitor.visitInsn(c1);
  }
  
  static void a(String paramString1, String paramString2, int paramInt, ClassWriter paramClassWriter) { paramClassWriter.visitField(paramInt, paramString1, paramString2, null); }
  
  static void a(String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString, int paramInt, ClassWriter paramClassWriter) {
    boolean bool;
    String str1;
    StringBuffer stringBuffer;
    Class clazz;
    if ((paramInt & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    String str2 = paramString4;
    if (paramString4 == null)
      str2 = "Ljava/lang/Object;"; 
    CodeVisitor codeVisitor = paramClassWriter.visitMethod(paramInt, paramString3, a(str2, paramArrayOfString), null);
    if ((paramInt & 0x400) != 0)
      return; 
    if (bool) {
      paramInt = 178;
      stringBuffer = new StringBuffer();
      str1 = "_bshStatic";
    } else {
      codeVisitor.visitVarInsn(25, 0);
      paramInt = 180;
      stringBuffer = new StringBuffer();
      str1 = "_bshThis";
    } 
    stringBuffer.append(str1);
    stringBuffer.append(paramString1);
    codeVisitor.visitFieldInsn(paramInt, paramString2, stringBuffer.toString(), "Lbsh/This;");
    codeVisitor.visitLdcInsn(paramString3);
    generateParameterReifierCode(paramArrayOfString, bool, codeVisitor);
    codeVisitor.visitInsn(1);
    codeVisitor.visitInsn(1);
    codeVisitor.visitInsn(1);
    codeVisitor.visitInsn(4);
    if (m == null) {
      clazz = a("java.lang.Object");
      m = clazz;
    } else {
      clazz = m;
    } 
    Type type1 = Type.getType(clazz);
    if (n == null) {
      clazz = a("java.lang.String");
      n = clazz;
    } else {
      clazz = n;
    } 
    Type type2 = Type.getType(clazz);
    if (o == null) {
      clazz = a("[Ljava.lang.Object;");
      o = clazz;
    } else {
      clazz = o;
    } 
    Type type3 = Type.getType(clazz);
    if (p == null) {
      clazz = a("bsh.Interpreter");
      p = clazz;
    } else {
      clazz = p;
    } 
    Type type4 = Type.getType(clazz);
    if (q == null) {
      clazz = a("bsh.CallStack");
      q = clazz;
    } else {
      clazz = q;
    } 
    Type type5 = Type.getType(clazz);
    if (r == null) {
      clazz = a("bsh.SimpleNode");
      r = clazz;
    } else {
      clazz = r;
    } 
    codeVisitor.visitMethodInsn(182, "bsh/This", "invokeMethod", Type.getMethodDescriptor(type1, new Type[] { type2, type3, type4, (new Type[6][4] = (new Type[6][3] = type5).getType(clazz)).getType(boolean.class) }));
    codeVisitor.visitMethodInsn(184, "bsh/Primitive", "unwrap", "(Ljava/lang/Object;)Ljava/lang/Object;");
    generateReturnCode(str2, codeVisitor);
    codeVisitor.visitMaxs(20, 20);
  }
  
  static void a(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, int paramInt, ClassWriter paramClassWriter) {
    String str = paramString3;
    if (paramString3 == null)
      str = "Ljava/lang/Object;"; 
    paramString3 = a(str, paramArrayOfString);
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("_bshSuper");
    stringBuffer.append(paramString2);
    CodeVisitor codeVisitor = paramClassWriter.visitMethod(paramInt, stringBuffer.toString(), paramString3, null);
    paramInt = 0;
    codeVisitor.visitVarInsn(25, 0);
    byte b1 = 1;
    while (true) {
      byte b2;
      if (paramInt >= paramArrayOfString.length) {
        codeVisitor.visitMethodInsn(183, paramString1, paramString2, paramString3);
        a(str, codeVisitor);
        codeVisitor.visitMaxs(20, 20);
        return;
      } 
      if (b(paramArrayOfString[paramInt])) {
        codeVisitor.visitVarInsn(21, b1);
      } else {
        codeVisitor.visitVarInsn(25, b1);
      } 
      if (paramArrayOfString[paramInt].equals("D") || paramArrayOfString[paramInt].equals("J")) {
        b2 = 2;
      } else {
        b2 = 1;
      } 
      b1 += b2;
      paramInt++;
    } 
  }
  
  static String[] a(Class[] paramArrayOfClass) {
    String[] arrayOfString = new String[paramArrayOfClass.length];
    for (byte b1 = 0;; b1++) {
      if (b1 >= arrayOfString.length)
        return arrayOfString; 
      arrayOfString[b1] = BSHType.getTypeDescriptor(paramArrayOfClass[b1]);
    } 
  }
  
  private static boolean b(String paramString) { return (paramString.length() == 1); }
  
  private static String c(String paramString) {
    String str = paramString;
    if (!paramString.startsWith("[")) {
      if (!paramString.startsWith("L"))
        return paramString; 
      str = paramString.substring(1, paramString.length() - 1);
    } 
    return str;
  }
  
  private static String d(String paramString) {
    int i1 = paramString.indexOf("$");
    return (i1 == -1) ? paramString : paramString.substring(i1 + 1);
  }
  
  public static void generateParameterReifierCode(String[] paramArrayOfString, boolean paramBoolean, CodeVisitor paramCodeVisitor) {
    paramCodeVisitor.visitIntInsn(17, paramArrayOfString.length);
    paramCodeVisitor.visitTypeInsn(189, "java/lang/Object");
    int i1 = paramBoolean ^ true;
    byte b1;
    for (b1 = 0;; b1++) {
      byte b2;
      if (b1 >= paramArrayOfString.length)
        return; 
      String str = paramArrayOfString[b1];
      paramCodeVisitor.visitInsn(89);
      paramCodeVisitor.visitIntInsn(17, b1);
      if (b(str)) {
        if (str.equals("F")) {
          b2 = 23;
        } else if (str.equals("D")) {
          b2 = 24;
        } else if (str.equals("J")) {
          b2 = 22;
        } else {
          b2 = 21;
        } 
        paramCodeVisitor.visitTypeInsn(187, "bsh/Primitive");
        paramCodeVisitor.visitInsn(89);
        paramCodeVisitor.visitVarInsn(b2, i1);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(");
        stringBuffer.append(str);
        stringBuffer.append(")V");
        paramCodeVisitor.visitMethodInsn(183, "bsh/Primitive", "<init>", stringBuffer.toString());
      } else {
        paramCodeVisitor.visitVarInsn(25, i1);
      } 
      paramCodeVisitor.visitInsn(83);
      if (str.equals("D") || str.equals("J")) {
        b2 = 2;
      } else {
        b2 = 1;
      } 
      int i2 = i1 + b2;
    } 
  }
  
  public static void generateReturnCode(String paramString, CodeVisitor paramCodeVisitor) {
    char c1;
    if (paramString.equals("V")) {
      paramCodeVisitor.visitInsn(87);
      c1 = '±';
    } else {
      if (b(paramString)) {
        String str2;
        String str1;
        char c2 = '¬';
        if (paramString.equals("B")) {
          str1 = "java/lang/Byte";
          str2 = "byteValue";
        } else if (paramString.equals("I")) {
          str1 = "java/lang/Integer";
          str2 = "intValue";
        } else if (paramString.equals("Z")) {
          str1 = "java/lang/Boolean";
          str2 = "booleanValue";
        } else if (paramString.equals("D")) {
          c2 = '¯';
          str1 = "java/lang/Double";
          str2 = "doubleValue";
        } else if (paramString.equals("F")) {
          c2 = '®';
          str1 = "java/lang/Float";
          str2 = "floatValue";
        } else if (paramString.equals("J")) {
          c2 = '­';
          str1 = "java/lang/Long";
          str2 = "longValue";
        } else if (paramString.equals("C")) {
          str1 = "java/lang/Character";
          str2 = "charValue";
        } else {
          str1 = "java/lang/Short";
          str2 = "shortValue";
        } 
        paramCodeVisitor.visitTypeInsn(192, str1);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("()");
        stringBuffer.append(paramString);
        paramCodeVisitor.visitMethodInsn(182, str1, str2, stringBuffer.toString());
        paramCodeVisitor.visitInsn(c2);
        return;
      } 
      paramCodeVisitor.visitTypeInsn(192, c(paramString));
      c1 = '°';
    } 
    paramCodeVisitor.visitInsn(c1);
  }
  
  public static ConstructorArgs getConstructorArgs(String paramString, This paramThis, Object[] paramArrayOfObject, int paramInt) { // Byte code:
    //   0: aload_1
    //   1: invokevirtual getNameSpace : ()Lbsh/NameSpace;
    //   4: ldc '_bshConstructors'
    //   6: invokevirtual getVariable : (Ljava/lang/String;)Ljava/lang/Object;
    //   9: checkcast [Lbsh/DelayedEvalBshMethod;
    //   12: astore #8
    //   14: iload_3
    //   15: iconst_m1
    //   16: if_icmpne -> 23
    //   19: getstatic bsh/ClassGeneratorUtil$ConstructorArgs.DEFAULT : Lbsh/ClassGeneratorUtil$ConstructorArgs;
    //   22: areturn
    //   23: aload #8
    //   25: iload_3
    //   26: aaload
    //   27: astore #9
    //   29: aload #9
    //   31: getfield c : Lbsh/BSHBlock;
    //   34: invokevirtual jjtGetNumChildren : ()I
    //   37: ifne -> 44
    //   40: getstatic bsh/ClassGeneratorUtil$ConstructorArgs.DEFAULT : Lbsh/ClassGeneratorUtil$ConstructorArgs;
    //   43: areturn
    //   44: aload #9
    //   46: getfield c : Lbsh/BSHBlock;
    //   49: iconst_0
    //   50: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   53: checkcast bsh/SimpleNode
    //   56: astore #7
    //   58: aload #7
    //   60: astore #6
    //   62: aload #7
    //   64: instanceof bsh/BSHPrimaryExpression
    //   67: ifeq -> 81
    //   70: aload #7
    //   72: iconst_0
    //   73: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   76: checkcast bsh/SimpleNode
    //   79: astore #6
    //   81: aload #6
    //   83: instanceof bsh/BSHMethodInvocation
    //   86: ifeq -> 148
    //   89: aload #6
    //   91: checkcast bsh/BSHMethodInvocation
    //   94: astore #7
    //   96: aload #7
    //   98: invokevirtual a : ()Lbsh/BSHAmbiguousName;
    //   101: astore #6
    //   103: aload #6
    //   105: getfield text : Ljava/lang/String;
    //   108: ldc_w 'super'
    //   111: invokevirtual equals : (Ljava/lang/Object;)Z
    //   114: ifne -> 131
    //   117: aload #6
    //   119: getfield text : Ljava/lang/String;
    //   122: ldc_w 'this'
    //   125: invokevirtual equals : (Ljava/lang/Object;)Z
    //   128: ifeq -> 148
    //   131: aload #6
    //   133: getfield text : Ljava/lang/String;
    //   136: astore #6
    //   138: aload #7
    //   140: invokevirtual b : ()Lbsh/BSHArguments;
    //   143: astore #7
    //   145: goto -> 155
    //   148: aconst_null
    //   149: astore #7
    //   151: aload #7
    //   153: astore #6
    //   155: aload #6
    //   157: ifnonnull -> 164
    //   160: getstatic bsh/ClassGeneratorUtil$ConstructorArgs.DEFAULT : Lbsh/ClassGeneratorUtil$ConstructorArgs;
    //   163: areturn
    //   164: new bsh/NameSpace
    //   167: dup
    //   168: aload_1
    //   169: invokevirtual getNameSpace : ()Lbsh/NameSpace;
    //   172: ldc_w 'consArgs'
    //   175: invokespecial <init> : (Lbsh/NameSpace;Ljava/lang/String;)V
    //   178: astore #10
    //   180: aload #9
    //   182: invokevirtual getParameterNames : ()[Ljava/lang/String;
    //   185: astore #11
    //   187: aload #9
    //   189: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   192: astore #9
    //   194: iconst_0
    //   195: istore #4
    //   197: iconst_0
    //   198: istore #5
    //   200: iload #4
    //   202: aload_2
    //   203: arraylength
    //   204: if_icmplt -> 484
    //   207: new bsh/CallStack
    //   210: dup
    //   211: invokespecial <init> : ()V
    //   214: astore #9
    //   216: aload #9
    //   218: aload #10
    //   220: invokevirtual push : (Lbsh/NameSpace;)V
    //   223: aload_1
    //   224: getfield b : Lbsh/Interpreter;
    //   227: astore_2
    //   228: aload #7
    //   230: aload #9
    //   232: aload_2
    //   233: invokevirtual getArguments : (Lbsh/CallStack;Lbsh/Interpreter;)[Ljava/lang/Object;
    //   236: astore #7
    //   238: aload #7
    //   240: invokestatic getTypes : ([Ljava/lang/Object;)[Ljava/lang/Class;
    //   243: astore_1
    //   244: aload #7
    //   246: invokestatic unwrap : ([Ljava/lang/Object;)[Ljava/lang/Object;
    //   249: astore #7
    //   251: aload_2
    //   252: invokevirtual getClassManager : ()Lbsh/BshClassManager;
    //   255: aload_0
    //   256: invokevirtual classForName : (Ljava/lang/String;)Ljava/lang/Class;
    //   259: astore_2
    //   260: aload_2
    //   261: ifnonnull -> 298
    //   264: new java/lang/StringBuffer
    //   267: dup
    //   268: invokespecial <init> : ()V
    //   271: astore_1
    //   272: aload_1
    //   273: ldc_w 'can't find superclass: '
    //   276: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   279: pop
    //   280: aload_1
    //   281: aload_0
    //   282: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   285: pop
    //   286: new bsh/InterpreterError
    //   289: dup
    //   290: aload_1
    //   291: invokevirtual toString : ()Ljava/lang/String;
    //   294: invokespecial <init> : (Ljava/lang/String;)V
    //   297: athrow
    //   298: aload_2
    //   299: invokevirtual getDeclaredConstructors : ()[Ljava/lang/reflect/Constructor;
    //   302: astore_0
    //   303: aload #6
    //   305: ldc_w 'super'
    //   308: invokevirtual equals : (Ljava/lang/Object;)Z
    //   311: ifeq -> 347
    //   314: aload_1
    //   315: aload_0
    //   316: invokestatic b : ([Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)I
    //   319: istore_3
    //   320: iload_3
    //   321: iconst_m1
    //   322: if_icmpne -> 336
    //   325: new bsh/InterpreterError
    //   328: dup
    //   329: ldc_w 'can't find constructor for args!'
    //   332: invokespecial <init> : (Ljava/lang/String;)V
    //   335: athrow
    //   336: new bsh/ClassGeneratorUtil$ConstructorArgs
    //   339: dup
    //   340: iload_3
    //   341: aload #7
    //   343: invokespecial <init> : (I[Ljava/lang/Object;)V
    //   346: areturn
    //   347: aload #8
    //   349: arraylength
    //   350: anewarray [Ljava/lang/Class;
    //   353: astore_2
    //   354: iload #5
    //   356: istore #4
    //   358: iload #4
    //   360: aload_2
    //   361: arraylength
    //   362: if_icmplt -> 428
    //   365: aload_1
    //   366: aload_2
    //   367: invokestatic a : ([Ljava/lang/Class;[[Ljava/lang/Class;)I
    //   370: istore #4
    //   372: iload #4
    //   374: iconst_m1
    //   375: if_icmpne -> 389
    //   378: new bsh/InterpreterError
    //   381: dup
    //   382: ldc_w 'can't find constructor for args 2!'
    //   385: invokespecial <init> : (Ljava/lang/String;)V
    //   388: athrow
    //   389: iload #4
    //   391: aload_0
    //   392: arraylength
    //   393: iadd
    //   394: istore #4
    //   396: iload #4
    //   398: aload_0
    //   399: arraylength
    //   400: iload_3
    //   401: iadd
    //   402: if_icmpne -> 416
    //   405: new bsh/InterpreterError
    //   408: dup
    //   409: ldc_w 'Recusive constructor call.'
    //   412: invokespecial <init> : (Ljava/lang/String;)V
    //   415: athrow
    //   416: new bsh/ClassGeneratorUtil$ConstructorArgs
    //   419: dup
    //   420: iload #4
    //   422: aload #7
    //   424: invokespecial <init> : (I[Ljava/lang/Object;)V
    //   427: areturn
    //   428: aload_2
    //   429: iload #4
    //   431: aload #8
    //   433: iload #4
    //   435: aaload
    //   436: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   439: aastore
    //   440: iload #4
    //   442: iconst_1
    //   443: iadd
    //   444: istore #4
    //   446: goto -> 358
    //   449: astore_0
    //   450: new java/lang/StringBuffer
    //   453: dup
    //   454: invokespecial <init> : ()V
    //   457: astore_1
    //   458: aload_1
    //   459: ldc_w 'Error evaluating constructor args: '
    //   462: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   465: pop
    //   466: aload_1
    //   467: aload_0
    //   468: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   471: pop
    //   472: new bsh/InterpreterError
    //   475: dup
    //   476: aload_1
    //   477: invokevirtual toString : ()Ljava/lang/String;
    //   480: invokespecial <init> : (Ljava/lang/String;)V
    //   483: athrow
    //   484: aload #10
    //   486: aload #11
    //   488: iload #4
    //   490: aaload
    //   491: aload #9
    //   493: iload #4
    //   495: aaload
    //   496: aload_2
    //   497: iload #4
    //   499: aaload
    //   500: aconst_null
    //   501: invokevirtual setTypedVariable : (Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    //   504: iload #4
    //   506: iconst_1
    //   507: iadd
    //   508: istore #4
    //   510: goto -> 197
    //   513: astore_0
    //   514: new java/lang/StringBuffer
    //   517: dup
    //   518: invokespecial <init> : ()V
    //   521: astore_1
    //   522: aload_1
    //   523: ldc_w 'err setting local cons arg:'
    //   526: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   529: pop
    //   530: aload_1
    //   531: aload_0
    //   532: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   535: pop
    //   536: new bsh/InterpreterError
    //   539: dup
    //   540: aload_1
    //   541: invokevirtual toString : ()Ljava/lang/String;
    //   544: invokespecial <init> : (Ljava/lang/String;)V
    //   547: athrow
    //   548: astore_0
    //   549: new java/lang/StringBuffer
    //   552: dup
    //   553: invokespecial <init> : ()V
    //   556: astore_1
    //   557: aload_1
    //   558: ldc_w 'unable to get instance initializer: '
    //   561: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   564: pop
    //   565: aload_1
    //   566: aload_0
    //   567: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   570: pop
    //   571: new bsh/InterpreterError
    //   574: dup
    //   575: aload_1
    //   576: invokevirtual toString : ()Ljava/lang/String;
    //   579: invokespecial <init> : (Ljava/lang/String;)V
    //   582: athrow
    // Exception table:
    //   from	to	target	type
    //   0	14	548	java/lang/Exception
    //   228	238	449	bsh/EvalError
    //   484	504	513	bsh/UtilEvalError }
  
  public static void initInstance(Object paramObject, String paramString, Object[] paramArrayOfObject) {
    Class[] arrayOfClass = Types.getTypes(paramArrayOfObject);
    CallStack callStack = new CallStack();
    NameSpace nameSpace = a(paramObject, paramString);
    if (nameSpace == null) {
      This this = a(paramObject.getClass(), paramString);
      Interpreter interpreter = this.b;
      try {
        BSHBlock bSHBlock = (BSHBlock)this.getNameSpace().getVariable("_bshInstanceInitializer");
        NameSpace nameSpace1 = new NameSpace(this.getNameSpace(), paramString);
        nameSpace1.d = true;
        This this1 = nameSpace1.a(interpreter);
        try {
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append("_bshThis");
          stringBuffer1.append(paramString);
          Reflect.a(paramObject, stringBuffer1.toString()).assign(this1, false);
          nameSpace1.a(paramObject);
          callStack.push(nameSpace1);
          try {
            bSHBlock.a(callStack, interpreter, true, ClassGeneratorImpl.ClassNodeFilter.CLASSINSTANCE);
            callStack.pop();
            paramObject = interpreter;
            nameSpace = nameSpace1;
          } catch (Exception paramObject) {
            stringBuffer = new StringBuffer();
            stringBuffer.append("Error in class initialization: ");
            stringBuffer.append(paramObject);
            throw new InterpreterError(stringBuffer.toString());
          } 
        } catch (Exception paramObject) {
          stringBuffer = new StringBuffer();
          stringBuffer.append("Error in class gen setup: ");
          stringBuffer.append(paramObject);
          throw new InterpreterError(stringBuffer.toString());
        } 
      } catch (Exception paramObject) {
        stringBuffer = new StringBuffer();
        stringBuffer.append("unable to get instance initializer: ");
        stringBuffer.append(paramObject);
        throw new InterpreterError(stringBuffer.toString());
      } 
    } else {
      paramObject = nameSpace.b;
      nameSpace = nameSpace.getNameSpace();
    } 
    String str = d(stringBuffer);
    try {
      BshMethod bshMethod = nameSpace.getMethod(str, arrayOfClass, true);
      if (paramArrayOfObject.length > 0 && bshMethod == null) {
        paramObject = new StringBuffer();
        paramObject.append("Can't find constructor: ");
        paramObject.append(stringBuffer);
        throw new InterpreterError(paramObject.toString());
      } 
      if (bshMethod != null)
        bshMethod.a(paramArrayOfObject, paramObject, callStack, null, false); 
      return;
    } catch (Exception stringBuffer) {
      paramObject = stringBuffer;
      if (stringBuffer instanceof TargetError)
        paramObject = (Exception)((TargetError)stringBuffer).getTarget(); 
      Object object = paramObject;
      if (paramObject instanceof InvocationTargetException)
        object = (Exception)((InvocationTargetException)paramObject).getTargetException(); 
      a.a(object, System.err);
      paramObject = new StringBuffer();
      paramObject.append("Error in class initialization: ");
      paramObject.append(object);
      throw new InterpreterError(paramObject.toString());
    } 
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, CodeVisitor paramCodeVisitor) {
    Label label1 = new Label();
    Label label2 = new Label();
    int i1 = this.g.length + this.h.length;
    Label[] arrayOfLabel = new Label[i1];
    byte b1;
    for (b1 = 0;; b1++) {
      if (b1 >= i1) {
        paramCodeVisitor.visitLdcInsn(this.c.getName());
        String str = this.b;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("_bshStatic");
        stringBuffer.append(this.a);
        paramCodeVisitor.visitFieldInsn(178, str, stringBuffer.toString(), "Lbsh/This;");
        paramCodeVisitor.visitVarInsn(25, paramInt2);
        paramCodeVisitor.visitIntInsn(16, paramInt1);
        paramCodeVisitor.visitMethodInsn(184, "bsh/ClassGeneratorUtil", "getConstructorArgs", "(Ljava/lang/String;Lbsh/This;[Ljava/lang/Object;I)Lbsh/ClassGeneratorUtil$ConstructorArgs;");
        paramCodeVisitor.visitVarInsn(58, paramInt3);
        paramCodeVisitor.visitVarInsn(25, paramInt3);
        paramCodeVisitor.visitFieldInsn(180, "bsh/ClassGeneratorUtil$ConstructorArgs", "selector", "I");
        paramCodeVisitor.visitTableSwitchInsn(0, i1 - 1, label1, arrayOfLabel);
        paramInt2 = 0;
        for (paramInt1 = 0;; paramInt1++) {
          if (paramInt2 >= this.g.length) {
            paramInt2 = 0;
            while (true) {
              if (paramInt2 >= this.h.length) {
                paramCodeVisitor.visitLabel(label1);
                paramCodeVisitor.visitVarInsn(25, 0);
                paramCodeVisitor.visitMethodInsn(183, this.d, "<init>", "()V");
                paramCodeVisitor.visitLabel(label2);
                return;
              } 
              a(paramInt1, this.b, this.h[paramInt2].getParamTypeDescriptors(), label2, arrayOfLabel, paramInt3, paramCodeVisitor);
              paramInt2++;
              paramInt1++;
            } 
            break;
          } 
          a(paramInt1, this.d, a(this.g[paramInt2].getParameterTypes()), label2, arrayOfLabel, paramInt3, paramCodeVisitor);
          paramInt2++;
        } 
        break;
      } 
      arrayOfLabel[b1] = new Label();
    } 
  }
  
  void a(int paramInt1, String[] paramArrayOfString, int paramInt2, ClassWriter paramClassWriter) {
    int i1 = paramArrayOfString.length + 1;
    int i2 = paramArrayOfString.length;
    CodeVisitor codeVisitor = paramClassWriter.visitMethod(paramInt2, "<init>", a("V", paramArrayOfString), null);
    generateParameterReifierCode(paramArrayOfString, false, codeVisitor);
    codeVisitor.visitVarInsn(58, i1);
    a(paramInt1, i1, i2 + 2, codeVisitor);
    codeVisitor.visitVarInsn(25, 0);
    codeVisitor.visitLdcInsn(this.a);
    codeVisitor.visitVarInsn(25, i1);
    codeVisitor.visitMethodInsn(184, "bsh/ClassGeneratorUtil", "initInstance", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V");
    codeVisitor.visitInsn(177);
    codeVisitor.visitMaxs(20, 20);
  }
  
  boolean a(Class paramClass, String paramString, String[] paramArrayOfString) { label23: while (true) {
      if (paramClass == null)
        return false; 
      Method[] arrayOfMethod = paramClass.getDeclaredMethods();
      byte b1;
      for (b1 = 0;; b1++) {
        if (b1 >= arrayOfMethod.length) {
          paramClass = paramClass.getSuperclass();
          continue label23;
        } 
        if (arrayOfMethod[b1].getName().equals(paramString)) {
          String[] arrayOfString = a(arrayOfMethod[b1].getParameterTypes());
          byte b2 = 0;
          while (true) {
            if (b2 >= arrayOfString.length) {
              b2 = 1;
            } else if (!paramArrayOfString[b2].equals(arrayOfString[b2])) {
              b2 = 0;
            } else {
              b2++;
              continue;
            } 
            if (b2 != 0)
              return true; 
            break;
          } 
        } 
      } 
      break;
    }  }
  
  public byte[] generateClass() { // Byte code:
    //   0: aload_0
    //   1: getfield k : Lbsh/Modifiers;
    //   4: invokestatic a : (Lbsh/Modifiers;)I
    //   7: iconst_1
    //   8: ior
    //   9: istore_2
    //   10: iload_2
    //   11: istore_1
    //   12: aload_0
    //   13: getfield l : Z
    //   16: ifeq -> 25
    //   19: iload_2
    //   20: sipush #512
    //   23: ior
    //   24: istore_1
    //   25: aload_0
    //   26: getfield e : [Ljava/lang/Class;
    //   29: arraylength
    //   30: anewarray java/lang/String
    //   33: astore #6
    //   35: iconst_0
    //   36: istore_2
    //   37: iload_2
    //   38: aload_0
    //   39: getfield e : [Ljava/lang/Class;
    //   42: arraylength
    //   43: if_icmplt -> 549
    //   46: new bsh/org/objectweb/asm/ClassWriter
    //   49: dup
    //   50: iconst_0
    //   51: invokespecial <init> : (Z)V
    //   54: astore #5
    //   56: aload #5
    //   58: iload_1
    //   59: aload_0
    //   60: getfield b : Ljava/lang/String;
    //   63: aload_0
    //   64: getfield d : Ljava/lang/String;
    //   67: aload #6
    //   69: ldc_w 'BeanShell Generated via ASM (www.objectweb.org)'
    //   72: invokevirtual visit : (ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    //   75: aload_0
    //   76: getfield l : Z
    //   79: ifne -> 165
    //   82: new java/lang/StringBuffer
    //   85: dup
    //   86: invokespecial <init> : ()V
    //   89: astore #6
    //   91: aload #6
    //   93: ldc '_bshThis'
    //   95: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   98: pop
    //   99: aload #6
    //   101: aload_0
    //   102: getfield a : Ljava/lang/String;
    //   105: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   108: pop
    //   109: aload #6
    //   111: invokevirtual toString : ()Ljava/lang/String;
    //   114: ldc_w 'Lbsh/This;'
    //   117: iconst_1
    //   118: aload #5
    //   120: invokestatic a : (Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    //   123: new java/lang/StringBuffer
    //   126: dup
    //   127: invokespecial <init> : ()V
    //   130: astore #6
    //   132: aload #6
    //   134: ldc '_bshStatic'
    //   136: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   139: pop
    //   140: aload #6
    //   142: aload_0
    //   143: getfield a : Ljava/lang/String;
    //   146: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   149: pop
    //   150: aload #6
    //   152: invokevirtual toString : ()Ljava/lang/String;
    //   155: ldc_w 'Lbsh/This;'
    //   158: bipush #9
    //   160: aload #5
    //   162: invokestatic a : (Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    //   165: iconst_0
    //   166: istore_1
    //   167: iload_1
    //   168: aload_0
    //   169: getfield f : [Lbsh/Variable;
    //   172: arraylength
    //   173: if_icmplt -> 465
    //   176: iconst_0
    //   177: istore_1
    //   178: iconst_0
    //   179: istore_2
    //   180: iload_1
    //   181: aload_0
    //   182: getfield h : [Lbsh/DelayedEvalBshMethod;
    //   185: arraylength
    //   186: if_icmplt -> 408
    //   189: aload_0
    //   190: getfield l : Z
    //   193: ifne -> 212
    //   196: iload_2
    //   197: ifne -> 212
    //   200: aload_0
    //   201: iconst_m1
    //   202: iconst_0
    //   203: anewarray java/lang/String
    //   206: iconst_1
    //   207: aload #5
    //   209: invokevirtual a : (I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    //   212: iconst_0
    //   213: istore_1
    //   214: iload_1
    //   215: aload_0
    //   216: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   219: arraylength
    //   220: if_icmplt -> 229
    //   223: aload #5
    //   225: invokevirtual toByteArray : ()[B
    //   228: areturn
    //   229: aload_0
    //   230: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   233: iload_1
    //   234: aaload
    //   235: invokevirtual getReturnTypeDescriptor : ()Ljava/lang/String;
    //   238: astore #6
    //   240: aload_0
    //   241: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   244: iload_1
    //   245: aaload
    //   246: ldc_w 'private'
    //   249: invokevirtual hasModifier : (Ljava/lang/String;)Z
    //   252: ifeq -> 258
    //   255: goto -> 401
    //   258: aload_0
    //   259: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   262: iload_1
    //   263: aaload
    //   264: invokevirtual getModifiers : ()Lbsh/Modifiers;
    //   267: invokestatic a : (Lbsh/Modifiers;)I
    //   270: istore_3
    //   271: iload_3
    //   272: istore_2
    //   273: aload_0
    //   274: getfield l : Z
    //   277: ifeq -> 286
    //   280: iload_3
    //   281: sipush #1025
    //   284: ior
    //   285: istore_2
    //   286: aload_0
    //   287: getfield a : Ljava/lang/String;
    //   290: aload_0
    //   291: getfield b : Ljava/lang/String;
    //   294: aload_0
    //   295: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   298: iload_1
    //   299: aaload
    //   300: invokevirtual getName : ()Ljava/lang/String;
    //   303: aload #6
    //   305: aload_0
    //   306: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   309: iload_1
    //   310: aaload
    //   311: invokevirtual getParamTypeDescriptors : ()[Ljava/lang/String;
    //   314: iload_2
    //   315: aload #5
    //   317: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    //   320: iload_2
    //   321: bipush #8
    //   323: iand
    //   324: ifle -> 332
    //   327: iconst_1
    //   328: istore_3
    //   329: goto -> 334
    //   332: iconst_0
    //   333: istore_3
    //   334: aload_0
    //   335: aload_0
    //   336: getfield c : Ljava/lang/Class;
    //   339: aload_0
    //   340: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   343: iload_1
    //   344: aaload
    //   345: invokevirtual getName : ()Ljava/lang/String;
    //   348: aload_0
    //   349: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   352: iload_1
    //   353: aaload
    //   354: invokevirtual getParamTypeDescriptors : ()[Ljava/lang/String;
    //   357: invokevirtual a : (Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Z
    //   360: istore #4
    //   362: iload_3
    //   363: ifne -> 401
    //   366: iload #4
    //   368: ifeq -> 401
    //   371: aload_0
    //   372: getfield d : Ljava/lang/String;
    //   375: aload_0
    //   376: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   379: iload_1
    //   380: aaload
    //   381: invokevirtual getName : ()Ljava/lang/String;
    //   384: aload #6
    //   386: aload_0
    //   387: getfield i : [Lbsh/DelayedEvalBshMethod;
    //   390: iload_1
    //   391: aaload
    //   392: invokevirtual getParamTypeDescriptors : ()[Ljava/lang/String;
    //   395: iload_2
    //   396: aload #5
    //   398: invokestatic a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    //   401: iload_1
    //   402: iconst_1
    //   403: iadd
    //   404: istore_1
    //   405: goto -> 214
    //   408: aload_0
    //   409: getfield h : [Lbsh/DelayedEvalBshMethod;
    //   412: iload_1
    //   413: aaload
    //   414: ldc_w 'private'
    //   417: invokevirtual hasModifier : (Ljava/lang/String;)Z
    //   420: ifeq -> 426
    //   423: goto -> 458
    //   426: aload_0
    //   427: getfield h : [Lbsh/DelayedEvalBshMethod;
    //   430: iload_1
    //   431: aaload
    //   432: invokevirtual getModifiers : ()Lbsh/Modifiers;
    //   435: invokestatic a : (Lbsh/Modifiers;)I
    //   438: istore_2
    //   439: aload_0
    //   440: iload_1
    //   441: aload_0
    //   442: getfield h : [Lbsh/DelayedEvalBshMethod;
    //   445: iload_1
    //   446: aaload
    //   447: invokevirtual getParamTypeDescriptors : ()[Ljava/lang/String;
    //   450: iload_2
    //   451: aload #5
    //   453: invokevirtual a : (I[Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    //   456: iconst_1
    //   457: istore_2
    //   458: iload_1
    //   459: iconst_1
    //   460: iadd
    //   461: istore_1
    //   462: goto -> 180
    //   465: aload_0
    //   466: getfield f : [Lbsh/Variable;
    //   469: iload_1
    //   470: aaload
    //   471: invokevirtual getTypeDescriptor : ()Ljava/lang/String;
    //   474: astore #6
    //   476: aload_0
    //   477: getfield f : [Lbsh/Variable;
    //   480: iload_1
    //   481: aaload
    //   482: ldc_w 'private'
    //   485: invokevirtual hasModifier : (Ljava/lang/String;)Z
    //   488: ifne -> 542
    //   491: aload #6
    //   493: ifnonnull -> 499
    //   496: goto -> 542
    //   499: aload_0
    //   500: getfield l : Z
    //   503: ifeq -> 512
    //   506: bipush #25
    //   508: istore_2
    //   509: goto -> 525
    //   512: aload_0
    //   513: getfield f : [Lbsh/Variable;
    //   516: iload_1
    //   517: aaload
    //   518: invokevirtual getModifiers : ()Lbsh/Modifiers;
    //   521: invokestatic a : (Lbsh/Modifiers;)I
    //   524: istore_2
    //   525: aload_0
    //   526: getfield f : [Lbsh/Variable;
    //   529: iload_1
    //   530: aaload
    //   531: invokevirtual getName : ()Ljava/lang/String;
    //   534: aload #6
    //   536: iload_2
    //   537: aload #5
    //   539: invokestatic a : (Ljava/lang/String;Ljava/lang/String;ILbsh/org/objectweb/asm/ClassWriter;)V
    //   542: iload_1
    //   543: iconst_1
    //   544: iadd
    //   545: istore_1
    //   546: goto -> 167
    //   549: aload #6
    //   551: iload_2
    //   552: aload_0
    //   553: getfield e : [Ljava/lang/Class;
    //   556: iload_2
    //   557: aaload
    //   558: invokestatic getInternalName : (Ljava/lang/Class;)Ljava/lang/String;
    //   561: aastore
    //   562: iload_2
    //   563: iconst_1
    //   564: iadd
    //   565: istore_2
    //   566: goto -> 37 }
  
  public static class ConstructorArgs {
    public static ConstructorArgs DEFAULT = new ConstructorArgs();
    
    Object[] a;
    
    int b = 0;
    
    public int selector = -1;
    
    ConstructorArgs() {}
    
    ConstructorArgs(int param1Int, Object[] param1ArrayOfObject) {
      this.selector = param1Int;
      this.a = param1ArrayOfObject;
    }
    
    Object a() {
      Object[] arrayOfObject = this.a;
      int i = this.b;
      this.b = i + 1;
      return arrayOfObject[i];
    }
    
    public boolean getBoolean() { return ((Boolean)a()).booleanValue(); }
    
    public byte getByte() { return ((Byte)a()).byteValue(); }
    
    public char getChar() { return ((Character)a()).charValue(); }
    
    public double getDouble() { return ((Double)a()).doubleValue(); }
    
    public float getFloat() { return ((Float)a()).floatValue(); }
    
    public int getInt() { return ((Integer)a()).intValue(); }
    
    public long getLong() { return ((Long)a()).longValue(); }
    
    public Object getObject() { return a(); }
    
    public short getShort() { return ((Short)a()).shortValue(); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ClassGeneratorUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh;

import java.io.Serializable;
import java.lang.reflect.Method;

public class BshMethod implements Serializable {
  NameSpace a;
  
  Modifiers b;
  
  BSHBlock c;
  
  private String d;
  
  private Class e;
  
  private String[] f;
  
  private int g;
  
  private Class[] h;
  
  private Method i;
  
  private Object j;
  
  BshMethod(BSHMethodDeclaration paramBSHMethodDeclaration, NameSpace paramNameSpace, Modifiers paramModifiers) { this(paramBSHMethodDeclaration.name, paramBSHMethodDeclaration.e, paramBSHMethodDeclaration.b.getParamNames(), paramBSHMethodDeclaration.b.a, paramBSHMethodDeclaration.c, paramNameSpace, paramModifiers); }
  
  BshMethod(String paramString, Class paramClass, String[] paramArrayOfString, Class[] paramArrayOfClass, BSHBlock paramBSHBlock, NameSpace paramNameSpace, Modifiers paramModifiers) {
    this.d = paramString;
    this.e = paramClass;
    this.f = paramArrayOfString;
    if (paramArrayOfString != null)
      this.g = paramArrayOfString.length; 
    this.h = paramArrayOfClass;
    this.c = paramBSHBlock;
    this.a = paramNameSpace;
    this.b = paramModifiers;
  }
  
  BshMethod(Method paramMethod, Object paramObject) {
    this(paramMethod.getName(), paramMethod.getReturnType(), null, paramMethod.getParameterTypes(), null, null, null);
    this.i = paramMethod;
    this.j = paramObject;
  }
  
  private Object b(Object[] paramArrayOfObject, Interpreter paramInterpreter, CallStack paramCallStack, SimpleNode paramSimpleNode, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: invokevirtual getReturnType : ()Ljava/lang/Class;
    //   4: astore #10
    //   6: aload_0
    //   7: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   10: astore #11
    //   12: aload_3
    //   13: astore #8
    //   15: aload_3
    //   16: ifnonnull -> 32
    //   19: new bsh/CallStack
    //   22: dup
    //   23: aload_0
    //   24: getfield a : Lbsh/NameSpace;
    //   27: invokespecial <init> : (Lbsh/NameSpace;)V
    //   30: astore #8
    //   32: iconst_0
    //   33: istore #6
    //   35: aload_1
    //   36: astore_3
    //   37: aload_1
    //   38: ifnonnull -> 46
    //   41: iconst_0
    //   42: anewarray java/lang/Object
    //   45: astore_3
    //   46: aload_3
    //   47: arraylength
    //   48: aload_0
    //   49: getfield g : I
    //   52: if_icmpeq -> 95
    //   55: new java/lang/StringBuffer
    //   58: dup
    //   59: invokespecial <init> : ()V
    //   62: astore_1
    //   63: aload_1
    //   64: ldc 'Wrong number of arguments for local method: '
    //   66: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   69: pop
    //   70: aload_1
    //   71: aload_0
    //   72: getfield d : Ljava/lang/String;
    //   75: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   78: pop
    //   79: new bsh/EvalError
    //   82: dup
    //   83: aload_1
    //   84: invokevirtual toString : ()Ljava/lang/String;
    //   87: aload #4
    //   89: aload #8
    //   91: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   94: athrow
    //   95: iload #5
    //   97: ifeq -> 109
    //   100: aload #8
    //   102: invokevirtual top : ()Lbsh/NameSpace;
    //   105: astore_1
    //   106: goto -> 130
    //   109: new bsh/NameSpace
    //   112: dup
    //   113: aload_0
    //   114: getfield a : Lbsh/NameSpace;
    //   117: aload_0
    //   118: getfield d : Ljava/lang/String;
    //   121: invokespecial <init> : (Lbsh/NameSpace;Ljava/lang/String;)V
    //   124: astore_1
    //   125: aload_1
    //   126: iconst_1
    //   127: putfield c : Z
    //   130: aload_1
    //   131: aload #4
    //   133: invokevirtual a : (Lbsh/SimpleNode;)V
    //   136: aload_0
    //   137: getfield g : I
    //   140: istore #7
    //   142: aconst_null
    //   143: astore #9
    //   145: iload #6
    //   147: iload #7
    //   149: if_icmplt -> 369
    //   152: iload #5
    //   154: ifne -> 163
    //   157: aload #8
    //   159: aload_1
    //   160: invokevirtual push : (Lbsh/NameSpace;)V
    //   163: aload_0
    //   164: getfield c : Lbsh/BSHBlock;
    //   167: aload #8
    //   169: aload_2
    //   170: iconst_1
    //   171: invokevirtual eval : (Lbsh/CallStack;Lbsh/Interpreter;Z)Ljava/lang/Object;
    //   174: astore_3
    //   175: aload #8
    //   177: invokevirtual copy : ()Lbsh/CallStack;
    //   180: astore #11
    //   182: iload #5
    //   184: ifne -> 193
    //   187: aload #8
    //   189: invokevirtual pop : ()Lbsh/NameSpace;
    //   192: pop
    //   193: aload #9
    //   195: astore_1
    //   196: aload_3
    //   197: astore_2
    //   198: aload_3
    //   199: instanceof bsh/ReturnControl
    //   202: ifeq -> 283
    //   205: aload_3
    //   206: checkcast bsh/ReturnControl
    //   209: astore_3
    //   210: aload_3
    //   211: getfield kind : I
    //   214: bipush #46
    //   216: if_icmpne -> 267
    //   219: aload_3
    //   220: getfield value : Ljava/lang/Object;
    //   223: astore #9
    //   225: aload_3
    //   226: astore_1
    //   227: aload #9
    //   229: astore_2
    //   230: aload #10
    //   232: getstatic java/lang/Void.TYPE : Ljava/lang/Class;
    //   235: if_acmpne -> 283
    //   238: aload_3
    //   239: astore_1
    //   240: aload #9
    //   242: astore_2
    //   243: aload #9
    //   245: getstatic bsh/Primitive.VOID : Lbsh/Primitive;
    //   248: if_acmpeq -> 283
    //   251: new bsh/EvalError
    //   254: dup
    //   255: ldc 'Cannot return value from void method'
    //   257: aload_3
    //   258: getfield returnPoint : Lbsh/SimpleNode;
    //   261: aload #11
    //   263: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   266: athrow
    //   267: new bsh/EvalError
    //   270: dup
    //   271: ldc ''continue' or 'break' in method body'
    //   273: aload_3
    //   274: getfield returnPoint : Lbsh/SimpleNode;
    //   277: aload #11
    //   279: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   282: athrow
    //   283: aload #10
    //   285: ifnull -> 367
    //   288: aload #10
    //   290: getstatic java/lang/Void.TYPE : Ljava/lang/Class;
    //   293: if_acmpne -> 300
    //   296: getstatic bsh/Primitive.VOID : Lbsh/Primitive;
    //   299: areturn
    //   300: aload_2
    //   301: aload #10
    //   303: iconst_1
    //   304: invokestatic castObject : (Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    //   307: astore_2
    //   308: aload_2
    //   309: areturn
    //   310: astore_2
    //   311: aload_1
    //   312: ifnull -> 321
    //   315: aload_1
    //   316: getfield returnPoint : Lbsh/SimpleNode;
    //   319: astore #4
    //   321: new java/lang/StringBuffer
    //   324: dup
    //   325: invokespecial <init> : ()V
    //   328: astore_1
    //   329: aload_1
    //   330: ldc 'Incorrect type returned from method: '
    //   332: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   335: pop
    //   336: aload_1
    //   337: aload_0
    //   338: getfield d : Ljava/lang/String;
    //   341: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   344: pop
    //   345: aload_1
    //   346: aload_2
    //   347: invokevirtual getMessage : ()Ljava/lang/String;
    //   350: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   353: pop
    //   354: aload_2
    //   355: aload_1
    //   356: invokevirtual toString : ()Ljava/lang/String;
    //   359: aload #4
    //   361: aload #8
    //   363: invokevirtual toEvalError : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;
    //   366: athrow
    //   367: aload_2
    //   368: areturn
    //   369: aload #11
    //   371: iload #6
    //   373: aaload
    //   374: ifnull -> 513
    //   377: aload_3
    //   378: iload #6
    //   380: aload_3
    //   381: iload #6
    //   383: aaload
    //   384: aload #11
    //   386: iload #6
    //   388: aaload
    //   389: iconst_1
    //   390: invokestatic castObject : (Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    //   393: aastore
    //   394: aload_1
    //   395: aload_0
    //   396: getfield f : [Ljava/lang/String;
    //   399: iload #6
    //   401: aaload
    //   402: aload #11
    //   404: iload #6
    //   406: aaload
    //   407: aload_3
    //   408: iload #6
    //   410: aaload
    //   411: aconst_null
    //   412: invokevirtual setTypedVariable : (Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    //   415: goto -> 601
    //   418: astore_1
    //   419: aload_1
    //   420: ldc 'Typed method parameter assignment'
    //   422: aload #4
    //   424: aload #8
    //   426: invokevirtual toEvalError : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;
    //   429: athrow
    //   430: astore_1
    //   431: new java/lang/StringBuffer
    //   434: dup
    //   435: invokespecial <init> : ()V
    //   438: astore_2
    //   439: aload_2
    //   440: ldc 'Invalid argument: `'
    //   442: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   445: pop
    //   446: aload_2
    //   447: aload_0
    //   448: getfield f : [Ljava/lang/String;
    //   451: iload #6
    //   453: aaload
    //   454: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   457: pop
    //   458: aload_2
    //   459: ldc '''
    //   461: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   464: pop
    //   465: aload_2
    //   466: ldc ' for method: '
    //   468: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   471: pop
    //   472: aload_2
    //   473: aload_0
    //   474: getfield d : Ljava/lang/String;
    //   477: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   480: pop
    //   481: aload_2
    //   482: ldc ' : '
    //   484: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   487: pop
    //   488: aload_2
    //   489: aload_1
    //   490: invokevirtual getMessage : ()Ljava/lang/String;
    //   493: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   496: pop
    //   497: new bsh/EvalError
    //   500: dup
    //   501: aload_2
    //   502: invokevirtual toString : ()Ljava/lang/String;
    //   505: aload #4
    //   507: aload #8
    //   509: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   512: athrow
    //   513: aload_3
    //   514: iload #6
    //   516: aaload
    //   517: getstatic bsh/Primitive.VOID : Lbsh/Primitive;
    //   520: if_acmpne -> 582
    //   523: new java/lang/StringBuffer
    //   526: dup
    //   527: invokespecial <init> : ()V
    //   530: astore_1
    //   531: aload_1
    //   532: ldc 'Undefined variable or class name, parameter: '
    //   534: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   537: pop
    //   538: aload_1
    //   539: aload_0
    //   540: getfield f : [Ljava/lang/String;
    //   543: iload #6
    //   545: aaload
    //   546: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   549: pop
    //   550: aload_1
    //   551: ldc ' to method: '
    //   553: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   556: pop
    //   557: aload_1
    //   558: aload_0
    //   559: getfield d : Ljava/lang/String;
    //   562: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   565: pop
    //   566: new bsh/EvalError
    //   569: dup
    //   570: aload_1
    //   571: invokevirtual toString : ()Ljava/lang/String;
    //   574: aload #4
    //   576: aload #8
    //   578: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   581: athrow
    //   582: aload_1
    //   583: aload_0
    //   584: getfield f : [Ljava/lang/String;
    //   587: iload #6
    //   589: aaload
    //   590: aload_3
    //   591: iload #6
    //   593: aaload
    //   594: aload_2
    //   595: invokevirtual getStrictJava : ()Z
    //   598: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Z)V
    //   601: iload #6
    //   603: iconst_1
    //   604: iadd
    //   605: istore #6
    //   607: goto -> 136
    //   610: astore_1
    //   611: aload_1
    //   612: aload #4
    //   614: aload #8
    //   616: invokevirtual toEvalError : (Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;
    //   619: athrow
    // Exception table:
    //   from	to	target	type
    //   300	308	310	bsh/UtilEvalError
    //   377	394	430	bsh/UtilEvalError
    //   394	415	418	bsh/UtilEvalError
    //   582	601	610	bsh/UtilEvalError }
  
  Object a(Object[] paramArrayOfObject, Interpreter paramInterpreter, CallStack paramCallStack, SimpleNode paramSimpleNode, boolean paramBoolean) { // Byte code:
    //   0: aload_1
    //   1: ifnull -> 43
    //   4: iconst_0
    //   5: istore #6
    //   7: iload #6
    //   9: aload_1
    //   10: arraylength
    //   11: if_icmplt -> 17
    //   14: goto -> 43
    //   17: aload_1
    //   18: iload #6
    //   20: aaload
    //   21: ifnonnull -> 34
    //   24: new java/lang/Error
    //   27: dup
    //   28: ldc 'HERE!'
    //   30: invokespecial <init> : (Ljava/lang/String;)V
    //   33: athrow
    //   34: iload #6
    //   36: iconst_1
    //   37: iadd
    //   38: istore #6
    //   40: goto -> 7
    //   43: aload_0
    //   44: getfield i : Ljava/lang/reflect/Method;
    //   47: ifnull -> 118
    //   50: aload_0
    //   51: getfield i : Ljava/lang/reflect/Method;
    //   54: aload_0
    //   55: getfield j : Ljava/lang/Object;
    //   58: aload_1
    //   59: invokestatic a : (Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   62: astore_1
    //   63: aload_1
    //   64: areturn
    //   65: astore_1
    //   66: new bsh/TargetError
    //   69: dup
    //   70: ldc 'Exception invoking imported object method.'
    //   72: aload_1
    //   73: aload #4
    //   75: aload_3
    //   76: iconst_1
    //   77: invokespecial <init> : (Ljava/lang/String;Ljava/lang/Throwable;Lbsh/SimpleNode;Lbsh/CallStack;Z)V
    //   80: athrow
    //   81: astore_1
    //   82: new java/lang/StringBuffer
    //   85: dup
    //   86: invokespecial <init> : ()V
    //   89: astore_2
    //   90: aload_2
    //   91: ldc 'Error invoking Java method: '
    //   93: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   96: pop
    //   97: aload_2
    //   98: aload_1
    //   99: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   102: pop
    //   103: new bsh/EvalError
    //   106: dup
    //   107: aload_2
    //   108: invokevirtual toString : ()Ljava/lang/String;
    //   111: aload #4
    //   113: aload_3
    //   114: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   117: athrow
    //   118: aload_0
    //   119: getfield b : Lbsh/Modifiers;
    //   122: ifnull -> 206
    //   125: aload_0
    //   126: getfield b : Lbsh/Modifiers;
    //   129: ldc 'synchronized'
    //   131: invokevirtual hasModifier : (Ljava/lang/String;)Z
    //   134: ifeq -> 206
    //   137: aload_0
    //   138: getfield a : Lbsh/NameSpace;
    //   141: getfield d : Z
    //   144: ifeq -> 170
    //   147: aload_0
    //   148: getfield a : Lbsh/NameSpace;
    //   151: invokevirtual a : ()Ljava/lang/Object;
    //   154: astore #7
    //   156: goto -> 180
    //   159: new bsh/InterpreterError
    //   162: dup
    //   163: ldc_w 'Can't get class instance for synchronized method.'
    //   166: invokespecial <init> : (Ljava/lang/String;)V
    //   169: athrow
    //   170: aload_0
    //   171: getfield a : Lbsh/NameSpace;
    //   174: aload_2
    //   175: invokevirtual a : (Lbsh/Interpreter;)Lbsh/This;
    //   178: astore #7
    //   180: aload #7
    //   182: monitorenter
    //   183: aload_0
    //   184: aload_1
    //   185: aload_2
    //   186: aload_3
    //   187: aload #4
    //   189: iload #5
    //   191: invokespecial b : ([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    //   194: astore_1
    //   195: aload #7
    //   197: monitorexit
    //   198: aload_1
    //   199: areturn
    //   200: astore_1
    //   201: aload #7
    //   203: monitorexit
    //   204: aload_1
    //   205: athrow
    //   206: aload_0
    //   207: aload_1
    //   208: aload_2
    //   209: aload_3
    //   210: aload #4
    //   212: iload #5
    //   214: invokespecial b : ([Ljava/lang/Object;Lbsh/Interpreter;Lbsh/CallStack;Lbsh/SimpleNode;Z)Ljava/lang/Object;
    //   217: areturn
    //   218: astore_1
    //   219: goto -> 159
    // Exception table:
    //   from	to	target	type
    //   50	63	81	bsh/ReflectError
    //   50	63	65	java/lang/reflect/InvocationTargetException
    //   147	156	218	bsh/UtilEvalError
    //   183	198	200	finally
    //   201	204	200	finally }
  
  public Modifiers getModifiers() { return this.b; }
  
  public String getName() { return this.d; }
  
  public String[] getParameterNames() { return this.f; }
  
  public Class[] getParameterTypes() { return this.h; }
  
  public Class getReturnType() { return this.e; }
  
  public boolean hasModifier(String paramString) { return (this.b != null && this.b.hasModifier(paramString)); }
  
  public Object invoke(Object[] paramArrayOfObject, Interpreter paramInterpreter) { return a(paramArrayOfObject, paramInterpreter, null, null, false); }
  
  public Object invoke(Object[] paramArrayOfObject, Interpreter paramInterpreter, CallStack paramCallStack, SimpleNode paramSimpleNode) { return a(paramArrayOfObject, paramInterpreter, paramCallStack, paramSimpleNode, false); }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Scripted Method: ");
    stringBuffer.append(StringUtil.methodString(this.d, getParameterTypes()));
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BshMethod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
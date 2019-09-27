package bsh;

class BSHTryStatement extends SimpleNode {
  BSHTryStatement(int paramInt) { super(paramInt); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) { // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: aload_0
    //   4: iconst_0
    //   5: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   8: checkcast bsh/BSHBlock
    //   11: astore #8
    //   13: new java/util/Vector
    //   16: dup
    //   17: invokespecial <init> : ()V
    //   20: astore #14
    //   22: new java/util/Vector
    //   25: dup
    //   26: invokespecial <init> : ()V
    //   29: astore #13
    //   31: aload_0
    //   32: invokevirtual jjtGetNumChildren : ()I
    //   35: istore #5
    //   37: iconst_1
    //   38: istore_3
    //   39: iload_3
    //   40: iload #5
    //   42: if_icmpge -> 94
    //   45: iload_3
    //   46: iconst_1
    //   47: iadd
    //   48: istore #6
    //   50: aload_0
    //   51: iload_3
    //   52: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   55: astore #7
    //   57: aload #7
    //   59: instanceof bsh/BSHFormalParameter
    //   62: ifne -> 68
    //   65: goto -> 97
    //   68: aload #14
    //   70: aload #7
    //   72: invokevirtual addElement : (Ljava/lang/Object;)V
    //   75: iload #6
    //   77: iconst_1
    //   78: iadd
    //   79: istore_3
    //   80: aload #13
    //   82: aload_0
    //   83: iload #6
    //   85: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   88: invokevirtual addElement : (Ljava/lang/Object;)V
    //   91: goto -> 39
    //   94: aconst_null
    //   95: astore #7
    //   97: aload #7
    //   99: ifnull -> 112
    //   102: aload #7
    //   104: checkcast bsh/BSHBlock
    //   107: astore #11
    //   109: goto -> 115
    //   112: aconst_null
    //   113: astore #11
    //   115: aload_1
    //   116: invokevirtual depth : ()I
    //   119: istore_3
    //   120: aload #8
    //   122: aload_1
    //   123: aload_2
    //   124: invokevirtual eval : (Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    //   127: astore #8
    //   129: aconst_null
    //   130: astore #7
    //   132: goto -> 156
    //   135: astore #9
    //   137: ldc 'Bsh Stack: '
    //   139: astore #7
    //   141: aload_1
    //   142: invokevirtual depth : ()I
    //   145: iload_3
    //   146: if_icmpgt -> 474
    //   149: aconst_null
    //   150: astore #8
    //   152: aload #9
    //   154: astore #7
    //   156: aload #7
    //   158: ifnull -> 171
    //   161: aload #7
    //   163: invokevirtual getTarget : ()Ljava/lang/Throwable;
    //   166: astore #9
    //   168: goto -> 174
    //   171: aconst_null
    //   172: astore #9
    //   174: aload #7
    //   176: astore #12
    //   178: aload #8
    //   180: astore #10
    //   182: aload #9
    //   184: ifnull -> 437
    //   187: aload #14
    //   189: invokevirtual size : ()I
    //   192: istore #5
    //   194: iload #4
    //   196: istore_3
    //   197: iload_3
    //   198: iload #5
    //   200: if_icmplt -> 214
    //   203: aload #7
    //   205: astore #12
    //   207: aload #8
    //   209: astore #10
    //   211: goto -> 437
    //   214: aload #14
    //   216: iload_3
    //   217: invokevirtual elementAt : (I)Ljava/lang/Object;
    //   220: checkcast bsh/BSHFormalParameter
    //   223: astore #12
    //   225: aload #12
    //   227: aload_1
    //   228: aload_2
    //   229: invokevirtual eval : (Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    //   232: pop
    //   233: aload #12
    //   235: getfield type : Ljava/lang/Class;
    //   238: ifnonnull -> 260
    //   241: aload_2
    //   242: invokevirtual getStrictJava : ()Z
    //   245: ifeq -> 260
    //   248: new bsh/EvalError
    //   251: dup
    //   252: ldc '(Strict Java) Untyped catch block'
    //   254: aload_0
    //   255: aload_1
    //   256: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   259: athrow
    //   260: aload #12
    //   262: getfield type : Ljava/lang/Class;
    //   265: ifnull -> 298
    //   268: aload #9
    //   270: aload #12
    //   272: getfield type : Ljava/lang/Class;
    //   275: iconst_1
    //   276: invokestatic castObject : (Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    //   279: checkcast java/lang/Throwable
    //   282: astore #10
    //   284: aload #10
    //   286: astore #7
    //   288: goto -> 302
    //   291: iload_3
    //   292: iconst_1
    //   293: iadd
    //   294: istore_3
    //   295: goto -> 197
    //   298: aload #9
    //   300: astore #7
    //   302: aload #13
    //   304: iload_3
    //   305: invokevirtual elementAt : (I)Ljava/lang/Object;
    //   308: checkcast bsh/BSHBlock
    //   311: astore #9
    //   313: aload_1
    //   314: invokevirtual top : ()Lbsh/NameSpace;
    //   317: astore #8
    //   319: new bsh/BlockNameSpace
    //   322: dup
    //   323: aload #8
    //   325: invokespecial <init> : (Lbsh/NameSpace;)V
    //   328: astore #10
    //   330: aload #12
    //   332: getfield type : Ljava/lang/Class;
    //   335: getstatic bsh/BSHFormalParameter.UNTYPED : Ljava/lang/Class;
    //   338: if_acmpne -> 356
    //   341: aload #10
    //   343: aload #12
    //   345: getfield name : Ljava/lang/String;
    //   348: aload #7
    //   350: invokevirtual setBlockVariable : (Ljava/lang/String;Ljava/lang/Object;)V
    //   353: goto -> 388
    //   356: new bsh/Modifiers
    //   359: dup
    //   360: invokespecial <init> : ()V
    //   363: pop
    //   364: aload #10
    //   366: aload #12
    //   368: getfield name : Ljava/lang/String;
    //   371: aload #12
    //   373: getfield type : Ljava/lang/Class;
    //   376: aload #7
    //   378: new bsh/Modifiers
    //   381: dup
    //   382: invokespecial <init> : ()V
    //   385: invokevirtual setTypedVariable : (Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    //   388: aload_1
    //   389: aload #10
    //   391: invokevirtual swap : (Lbsh/NameSpace;)Lbsh/NameSpace;
    //   394: pop
    //   395: aload #9
    //   397: aload_1
    //   398: aload_2
    //   399: invokevirtual eval : (Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    //   402: astore #10
    //   404: aload_1
    //   405: aload #8
    //   407: invokevirtual swap : (Lbsh/NameSpace;)Lbsh/NameSpace;
    //   410: pop
    //   411: aconst_null
    //   412: astore #12
    //   414: goto -> 437
    //   417: astore_2
    //   418: aload_1
    //   419: aload #8
    //   421: invokevirtual swap : (Lbsh/NameSpace;)Lbsh/NameSpace;
    //   424: pop
    //   425: aload_2
    //   426: athrow
    //   427: new bsh/InterpreterError
    //   430: dup
    //   431: ldc 'Unable to set var in catch block namespace.'
    //   433: invokespecial <init> : (Ljava/lang/String;)V
    //   436: athrow
    //   437: aload #11
    //   439: ifnull -> 451
    //   442: aload #11
    //   444: aload_1
    //   445: aload_2
    //   446: invokevirtual eval : (Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    //   449: astore #10
    //   451: aload #12
    //   453: ifnull -> 459
    //   456: aload #12
    //   458: athrow
    //   459: aload #10
    //   461: instanceof bsh/ReturnControl
    //   464: ifeq -> 470
    //   467: aload #10
    //   469: areturn
    //   470: getstatic bsh/Primitive.VOID : Lbsh/Primitive;
    //   473: areturn
    //   474: new java/lang/StringBuffer
    //   477: dup
    //   478: invokespecial <init> : ()V
    //   481: astore #8
    //   483: aload #8
    //   485: aload #7
    //   487: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   490: pop
    //   491: aload #8
    //   493: ldc '\\t'
    //   495: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   498: pop
    //   499: aload #8
    //   501: aload_1
    //   502: invokevirtual pop : ()Lbsh/NameSpace;
    //   505: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   508: pop
    //   509: aload #8
    //   511: ldc '\\n'
    //   513: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   516: pop
    //   517: aload #8
    //   519: invokevirtual toString : ()Ljava/lang/String;
    //   522: astore #7
    //   524: goto -> 141
    //   527: astore #10
    //   529: goto -> 291
    //   532: astore_1
    //   533: goto -> 427
    // Exception table:
    //   from	to	target	type
    //   120	129	135	bsh/TargetError
    //   268	284	527	bsh/UtilEvalError
    //   330	353	532	bsh/UtilEvalError
    //   356	388	532	bsh/UtilEvalError
    //   395	404	417	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHTryStatement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
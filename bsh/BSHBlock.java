package bsh;

class BSHBlock extends SimpleNode {
  public boolean isSynchronized = false;
  
  BSHBlock(int paramInt) { super(paramInt); }
  
  Object a(CallStack paramCallStack, Interpreter paramInterpreter, boolean paramBoolean, NodeFilter paramNodeFilter) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) { return eval(paramCallStack, paramInterpreter, false); }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: getfield isSynchronized : Z
    //   4: ifeq -> 25
    //   7: aload_0
    //   8: iconst_0
    //   9: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   12: checkcast bsh/SimpleNode
    //   15: aload_1
    //   16: aload_2
    //   17: invokevirtual eval : (Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    //   20: astore #4
    //   22: goto -> 28
    //   25: aconst_null
    //   26: astore #4
    //   28: aload_0
    //   29: getfield isSynchronized : Z
    //   32: ifeq -> 58
    //   35: aload #4
    //   37: monitorenter
    //   38: aload_0
    //   39: aload_1
    //   40: aload_2
    //   41: iload_3
    //   42: aconst_null
    //   43: invokevirtual a : (Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    //   46: astore_1
    //   47: aload #4
    //   49: monitorexit
    //   50: aload_1
    //   51: areturn
    //   52: astore_1
    //   53: aload #4
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: aload_0
    //   59: aload_1
    //   60: aload_2
    //   61: iload_3
    //   62: aconst_null
    //   63: invokevirtual a : (Lbsh/CallStack;Lbsh/Interpreter;ZLbsh/BSHBlock$NodeFilter;)Ljava/lang/Object;
    //   66: areturn
    // Exception table:
    //   from	to	target	type
    //   38	50	52	finally
    //   53	56	52	finally }
  
  public static interface NodeFilter {
    boolean isVisible(SimpleNode param1SimpleNode);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHBlock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
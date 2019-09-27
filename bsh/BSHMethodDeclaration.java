package bsh;

class BSHMethodDeclaration extends SimpleNode {
  BSHReturnType a;
  
  BSHFormalParameters b;
  
  BSHBlock c;
  
  int d;
  
  Class e;
  
  int f = 0;
  
  public Modifiers modifiers;
  
  public String name;
  
  BSHMethodDeclaration(int paramInt) { super(paramInt); }
  
  private void b(CallStack paramCallStack, Interpreter paramInterpreter) {
    a();
    for (int i = this.d;; i++) {
      StringBuffer stringBuffer;
      if (i >= this.f + this.d) {
        this.b.eval(paramCallStack, paramInterpreter);
        if (paramInterpreter.getStrictJava())
          for (i = 0;; i++) {
            if (i >= this.b.a.length) {
              if (this.e == null) {
                stringBuffer = new StringBuffer();
                stringBuffer.append("(Strict Java Mode) Undeclared return type for method: ");
                stringBuffer.append(this.name);
                throw new EvalError(stringBuffer.toString(), this, null);
              } 
              break;
            } 
            if (this.b.a[i] == null) {
              stringBuffer = new StringBuffer();
              stringBuffer.append("(Strict Java Mode) Undeclared argument type, parameter: ");
              stringBuffer.append(this.b.getParamNames()[i]);
              stringBuffer.append(" in method: ");
              stringBuffer.append(this.name);
              throw new EvalError(stringBuffer.toString(), this, null);
            } 
          }  
        return;
      } 
      ((BSHAmbiguousName)jjtGetChild(i)).toClass(stringBuffer, paramInterpreter);
    } 
  }
  
  Class a(CallStack paramCallStack, Interpreter paramInterpreter) {
    a();
    return (this.a != null) ? this.a.evalReturnType(paramCallStack, paramInterpreter) : null;
  }
  
  String a(CallStack paramCallStack, Interpreter paramInterpreter, String paramString) {
    a();
    return (this.a == null) ? null : this.a.getTypeDescriptor(paramCallStack, paramInterpreter, paramString);
  }
  
  void a() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield b : Lbsh/BSHFormalParameters;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_0
    //   16: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   19: astore_1
    //   20: aload_0
    //   21: iconst_1
    //   22: putfield d : I
    //   25: aload_1
    //   26: instanceof bsh/BSHReturnType
    //   29: ifeq -> 95
    //   32: aload_0
    //   33: aload_1
    //   34: checkcast bsh/BSHReturnType
    //   37: putfield a : Lbsh/BSHReturnType;
    //   40: aload_0
    //   41: aload_0
    //   42: iconst_1
    //   43: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   46: checkcast bsh/BSHFormalParameters
    //   49: putfield b : Lbsh/BSHFormalParameters;
    //   52: aload_0
    //   53: invokevirtual jjtGetNumChildren : ()I
    //   56: aload_0
    //   57: getfield f : I
    //   60: iconst_2
    //   61: iadd
    //   62: if_icmple -> 82
    //   65: aload_0
    //   66: aload_0
    //   67: aload_0
    //   68: getfield f : I
    //   71: iconst_2
    //   72: iadd
    //   73: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   76: checkcast bsh/BSHBlock
    //   79: putfield c : Lbsh/BSHBlock;
    //   82: aload_0
    //   83: aload_0
    //   84: getfield d : I
    //   87: iconst_1
    //   88: iadd
    //   89: putfield d : I
    //   92: goto -> 124
    //   95: aload_0
    //   96: aload_0
    //   97: iconst_0
    //   98: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   101: checkcast bsh/BSHFormalParameters
    //   104: putfield b : Lbsh/BSHFormalParameters;
    //   107: aload_0
    //   108: aload_0
    //   109: aload_0
    //   110: getfield f : I
    //   113: iconst_1
    //   114: iadd
    //   115: invokevirtual jjtGetChild : (I)Lbsh/Node;
    //   118: checkcast bsh/BSHBlock
    //   121: putfield c : Lbsh/BSHBlock;
    //   124: aload_0
    //   125: monitorexit
    //   126: return
    //   127: astore_1
    //   128: aload_0
    //   129: monitorexit
    //   130: aload_1
    //   131: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	127	finally
    //   14	82	127	finally
    //   82	92	127	finally
    //   95	124	127	finally }
  
  BSHReturnType b() {
    a();
    return this.a;
  }
  
  public Object eval(CallStack paramCallStack, Interpreter paramInterpreter) {
    this.e = a(paramCallStack, paramInterpreter);
    b(paramCallStack, paramInterpreter);
    nameSpace = paramCallStack.top();
    BshMethod bshMethod = new BshMethod(this, nameSpace, this.modifiers);
    try {
      nameSpace.setMethod(this.name, bshMethod);
      return Primitive.VOID;
    } catch (UtilEvalError nameSpace) {
      throw nameSpace.toEvalError(this, paramCallStack);
    } 
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("MethodDeclaration: ");
    stringBuffer.append(this.name);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHMethodDeclaration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.b.a.b;

import java.util.List;
import java.util.Vector;

public class o implements CharSequence {
  protected char[] a = new char[51];
  
  protected int b;
  
  protected int c;
  
  protected int d;
  
  protected List<m> e;
  
  private int f;
  
  private p g;
  
  private r h;
  
  public o() {
    this.a[50] = Character.MAX_VALUE;
    this.f = 1;
    this.b = 0;
    this.c = 50;
    this.d = 1;
    this.g = new p();
    this.h = new r(this);
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3) {
    int i = p(paramInt3);
    q.a(o(paramInt3), "findCharOffsetBackward: Invalid startingOffset given");
    paramInt3 = paramInt2;
    paramInt2 = i;
    while (paramInt3 < paramInt1 && paramInt2 < this.a.length) {
      i = paramInt3;
      if (this.a[paramInt2] == '\n')
        i = paramInt3 + 1; 
      int j = paramInt2 + 1;
      paramInt2 = j;
      paramInt3 = i;
      if (j == this.b) {
        paramInt2 = this.c;
        paramInt3 = i;
      } 
    } 
    return (paramInt3 != paramInt1) ? -1 : q(paramInt2);
  }
  
  private void a(int paramInt1, int paramInt2) {
    m m = b(paramInt1);
    m = (m)this.e.get(m.a());
    m.a(m.a() + paramInt2);
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt1 == 0)
      return 0; 
    q.a(o(paramInt3), "findCharOffsetBackward: Invalid startOffset given");
    paramInt3 = p(paramInt3);
    while (paramInt2 > paramInt1 - 1 && paramInt3 >= 0) {
      int i = paramInt3;
      if (paramInt3 == this.c)
        i = this.b; 
      paramInt3 = --i;
      if (this.a[i] == '\n') {
        paramInt2--;
        paramInt3 = i;
      } 
    } 
    if (paramInt3 >= 0)
      return q(paramInt3) + 1; 
    q.a(false, "findCharOffsetBackward: Invalid cache entry or line arguments");
    return -1;
  }
  
  private m b(int paramInt) {
    int j = this.e.size();
    byte b1 = 0;
    int i = 0;
    while (b1 < j) {
      int k = ((m)this.e.get(b1)).a();
      i += k;
      if (i >= paramInt)
        return new m(b1, i - k); 
      b1++;
    } 
    return new m(0, 0);
  }
  
  private void b(int paramInt1, int paramInt2) {
    if (length() == 0) {
      f();
      return;
    } 
    m m1 = c(paramInt1);
    if (paramInt2 == 1) {
      m m = (m)this.e.get(m1.a());
      if (m.a() > 1) {
        m.a(m.a() - 1);
        return;
      } 
      this.e.remove(m1.a());
      return;
    } 
    paramInt1 -= m1.b();
    m m2 = (m)this.e.get(m1.a());
    if (m2.a() > paramInt1) {
      m2.a(m2.a() - paramInt1);
    } else {
      this.e.remove(m1.a());
    } 
    paramInt2 -= paramInt1;
    if (paramInt2 > 0) {
      paramInt1 = m1.a();
      while (paramInt1 >= 0) {
        m1 = (m)this.e.get(paramInt1);
        int i = m1.a();
        if (paramInt2 > i) {
          paramInt2 -= i;
          this.e.remove(paramInt1);
          paramInt1--;
          continue;
        } 
        m1.a(m1.a() - paramInt2);
      } 
    } 
  }
  
  private int c(int paramInt1, int paramInt2) {
    int i = paramInt1;
    byte b1;
    for (b1 = 0; i < paramInt1 + paramInt2; b1 = b2) {
      byte b2 = b1;
      if (this.a[i] == '\n')
        b2 = b1 + true; 
      i++;
    } 
    return b1;
  }
  
  private m c(int paramInt) {
    int j = this.e.size();
    byte b1 = 0;
    int i = 0;
    while (b1 < j) {
      int k = ((m)this.e.get(b1)).a();
      i += k;
      if (i > paramInt)
        return new m(b1, i - k); 
      b1++;
    } 
    return new m(0, 0);
  }
  
  public static int g(int paramInt) {
    long l = (paramInt + 50 + 1);
    return (l < 2147483647L) ? (int)l : -1;
  }
  
  void a(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: iflt -> 36
    //   6: aload_0
    //   7: aload_0
    //   8: getfield b : I
    //   11: iload_1
    //   12: invokespecial a : (II)V
    //   15: aload_0
    //   16: aload_0
    //   17: getfield d : I
    //   20: aload_0
    //   21: aload_0
    //   22: getfield b : I
    //   25: iload_1
    //   26: invokespecial c : (II)I
    //   29: iadd
    //   30: putfield d : I
    //   33: goto -> 68
    //   36: aload_0
    //   37: aload_0
    //   38: getfield b : I
    //   41: iconst_0
    //   42: iload_1
    //   43: isub
    //   44: invokespecial b : (II)V
    //   47: aload_0
    //   48: aload_0
    //   49: getfield d : I
    //   52: aload_0
    //   53: aload_0
    //   54: getfield b : I
    //   57: iload_1
    //   58: iadd
    //   59: iload_1
    //   60: ineg
    //   61: invokespecial c : (II)I
    //   64: isub
    //   65: putfield d : I
    //   68: aload_0
    //   69: aload_0
    //   70: getfield b : I
    //   73: iload_1
    //   74: iadd
    //   75: putfield b : I
    //   78: aload_0
    //   79: getfield g : Lcom/b/a/b/p;
    //   82: aload_0
    //   83: aload_0
    //   84: getfield b : I
    //   87: iconst_1
    //   88: isub
    //   89: invokevirtual q : (I)I
    //   92: iconst_1
    //   93: iadd
    //   94: invokevirtual c : (I)V
    //   97: aload_0
    //   98: monitorexit
    //   99: return
    //   100: aload_0
    //   101: monitorexit
    //   102: aload_2
    //   103: athrow
    //   104: astore_2
    //   105: goto -> 100
    // Exception table:
    //   from	to	target	type
    //   6	33	104	finally
    //   36	68	104	finally
    //   68	97	104	finally }
  
  public void a(int paramInt1, int paramInt2, long paramLong, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload #5
    //   4: ifeq -> 20
    //   7: aload_0
    //   8: getfield h : Lcom/b/a/b/r;
    //   11: iload_1
    //   12: iload_2
    //   13: lload_3
    //   14: invokevirtual b : (IIJ)V
    //   17: goto -> 20
    //   20: iload_1
    //   21: iload_2
    //   22: iadd
    //   23: istore #6
    //   25: iload #6
    //   27: aload_0
    //   28: getfield b : I
    //   31: if_icmpeq -> 136
    //   34: aload_0
    //   35: iload #6
    //   37: invokevirtual r : (I)Z
    //   40: ifeq -> 52
    //   43: aload_0
    //   44: iload #6
    //   46: invokevirtual k : (I)V
    //   49: goto -> 136
    //   52: aload_0
    //   53: iload #6
    //   55: aload_0
    //   56: invokevirtual e : ()I
    //   59: iadd
    //   60: invokevirtual l : (I)V
    //   63: goto -> 136
    //   66: iload #6
    //   68: iload_2
    //   69: if_icmpge -> 109
    //   72: aload_0
    //   73: aload_0
    //   74: getfield b : I
    //   77: iconst_1
    //   78: isub
    //   79: putfield b : I
    //   82: aload_0
    //   83: getfield a : [C
    //   86: aload_0
    //   87: getfield b : I
    //   90: caload
    //   91: bipush #10
    //   93: if_icmpne -> 142
    //   96: aload_0
    //   97: aload_0
    //   98: getfield d : I
    //   101: iconst_1
    //   102: isub
    //   103: putfield d : I
    //   106: goto -> 142
    //   109: aload_0
    //   110: getfield g : Lcom/b/a/b/p;
    //   113: iload_1
    //   114: invokevirtual c : (I)V
    //   117: aload_0
    //   118: iload_1
    //   119: iload_2
    //   120: invokespecial b : (II)V
    //   123: aload_0
    //   124: monitorexit
    //   125: return
    //   126: aload_0
    //   127: monitorexit
    //   128: aload #7
    //   130: athrow
    //   131: astore #7
    //   133: goto -> 126
    //   136: iconst_0
    //   137: istore #6
    //   139: goto -> 66
    //   142: iload #6
    //   144: iconst_1
    //   145: iadd
    //   146: istore #6
    //   148: goto -> 66
    // Exception table:
    //   from	to	target	type
    //   7	17	131	finally
    //   25	49	131	finally
    //   52	63	131	finally
    //   72	106	131	finally
    //   109	123	131	finally }
  
  public void a(List<m> paramList) { this.e = paramList; }
  
  public void a(char[] paramArrayOfChar, int paramInt1, int paramInt2) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: putfield a : [C
    //   7: aload_0
    //   8: iload_2
    //   9: invokevirtual m : (I)V
    //   12: aload_0
    //   13: iload_3
    //   14: putfield d : I
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield f : I
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	25	finally }
  
  public void a(char[] paramArrayOfChar, int paramInt, long paramLong, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload #5
    //   4: ifeq -> 21
    //   7: aload_0
    //   8: getfield h : Lcom/b/a/b/r;
    //   11: iload_2
    //   12: aload_1
    //   13: arraylength
    //   14: lload_3
    //   15: invokevirtual a : (IIJ)V
    //   18: goto -> 21
    //   21: aload_0
    //   22: iload_2
    //   23: invokevirtual p : (I)I
    //   26: istore #6
    //   28: iload #6
    //   30: aload_0
    //   31: getfield c : I
    //   34: if_icmpeq -> 61
    //   37: aload_0
    //   38: iload #6
    //   40: invokevirtual r : (I)Z
    //   43: ifeq -> 55
    //   46: aload_0
    //   47: iload #6
    //   49: invokevirtual k : (I)V
    //   52: goto -> 61
    //   55: aload_0
    //   56: iload #6
    //   58: invokevirtual l : (I)V
    //   61: aload_1
    //   62: arraylength
    //   63: aload_0
    //   64: invokevirtual e : ()I
    //   67: if_icmplt -> 168
    //   70: aload_0
    //   71: aload_1
    //   72: arraylength
    //   73: aload_0
    //   74: invokevirtual e : ()I
    //   77: isub
    //   78: invokevirtual n : (I)V
    //   81: goto -> 168
    //   84: iload #6
    //   86: aload_1
    //   87: arraylength
    //   88: if_icmpge -> 142
    //   91: aload_1
    //   92: iload #6
    //   94: caload
    //   95: bipush #10
    //   97: if_icmpne -> 110
    //   100: aload_0
    //   101: aload_0
    //   102: getfield d : I
    //   105: iconst_1
    //   106: iadd
    //   107: putfield d : I
    //   110: aload_0
    //   111: getfield a : [C
    //   114: aload_0
    //   115: getfield b : I
    //   118: aload_1
    //   119: iload #6
    //   121: caload
    //   122: castore
    //   123: aload_0
    //   124: aload_0
    //   125: getfield b : I
    //   128: iconst_1
    //   129: iadd
    //   130: putfield b : I
    //   133: iload #6
    //   135: iconst_1
    //   136: iadd
    //   137: istore #6
    //   139: goto -> 84
    //   142: aload_0
    //   143: getfield g : Lcom/b/a/b/p;
    //   146: iload_2
    //   147: invokevirtual c : (I)V
    //   150: aload_0
    //   151: iload_2
    //   152: aload_1
    //   153: arraylength
    //   154: invokespecial a : (II)V
    //   157: aload_0
    //   158: monitorexit
    //   159: return
    //   160: aload_0
    //   161: monitorexit
    //   162: aload_1
    //   163: athrow
    //   164: astore_1
    //   165: goto -> 160
    //   168: iconst_0
    //   169: istore #6
    //   171: goto -> 84
    // Exception table:
    //   from	to	target	type
    //   7	18	164	finally
    //   21	52	164	finally
    //   55	61	164	finally
    //   61	81	164	finally
    //   84	91	164	finally
    //   100	110	164	finally
    //   110	133	164	finally
    //   142	157	164	finally }
  
  public char charAt(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : [C
    //   6: aload_0
    //   7: iload_1
    //   8: invokevirtual p : (I)I
    //   11: caload
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: astore_3
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_3
    //   21: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	17	finally }
  
  public final int d() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : [C
    //   6: arraylength
    //   7: istore_1
    //   8: aload_0
    //   9: invokevirtual e : ()I
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: iload_2
    //   17: isub
    //   18: ireturn
    //   19: astore_3
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_3
    //   23: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	19	finally }
  
  protected final int e() { return this.c - this.b; }
  
  public void f() {
    this.e = new Vector();
    this.e.add(new m(length(), 0));
  }
  
  public List<m> g() { return this.e; }
  
  public int h(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: ifge -> 10
    //   6: aload_0
    //   7: monitorexit
    //   8: iconst_m1
    //   9: ireturn
    //   10: aload_0
    //   11: getfield g : Lcom/b/a/b/p;
    //   14: iload_1
    //   15: invokevirtual a : (I)Lcom/b/a/b/m;
    //   18: astore #5
    //   20: aload #5
    //   22: invokevirtual a : ()I
    //   25: istore #4
    //   27: aload #5
    //   29: invokevirtual b : ()I
    //   32: istore_3
    //   33: iload_1
    //   34: iload #4
    //   36: if_icmple -> 51
    //   39: aload_0
    //   40: iload_1
    //   41: iload #4
    //   43: iload_3
    //   44: invokespecial a : (III)I
    //   47: istore_2
    //   48: goto -> 68
    //   51: iload_3
    //   52: istore_2
    //   53: iload_1
    //   54: iload #4
    //   56: if_icmpge -> 68
    //   59: aload_0
    //   60: iload_1
    //   61: iload #4
    //   63: iload_3
    //   64: invokespecial b : (III)I
    //   67: istore_2
    //   68: iload_2
    //   69: iflt -> 81
    //   72: aload_0
    //   73: getfield g : Lcom/b/a/b/p;
    //   76: iload_1
    //   77: iload_2
    //   78: invokevirtual a : (II)V
    //   81: aload_0
    //   82: monitorexit
    //   83: iload_2
    //   84: ireturn
    //   85: astore #5
    //   87: aload_0
    //   88: monitorexit
    //   89: aload #5
    //   91: athrow
    // Exception table:
    //   from	to	target	type
    //   10	33	85	finally
    //   39	48	85	finally
    //   59	68	85	finally
    //   72	81	85	finally }
  
  public boolean h() { return this.h.e(); }
  
  public int i(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual o : (I)Z
    //   7: istore #11
    //   9: iload #11
    //   11: ifne -> 18
    //   14: aload_0
    //   15: monitorexit
    //   16: iconst_m1
    //   17: ireturn
    //   18: aload_0
    //   19: getfield g : Lcom/b/a/b/p;
    //   22: iload_1
    //   23: invokevirtual b : (I)Lcom/b/a/b/m;
    //   26: astore #12
    //   28: aload #12
    //   30: invokevirtual a : ()I
    //   33: istore_3
    //   34: aload_0
    //   35: aload #12
    //   37: invokevirtual b : ()I
    //   40: invokevirtual p : (I)I
    //   43: istore_2
    //   44: aload_0
    //   45: iload_1
    //   46: invokevirtual p : (I)I
    //   49: istore #10
    //   51: iload #10
    //   53: iload_2
    //   54: if_icmple -> 337
    //   57: iconst_m1
    //   58: istore #7
    //   60: iconst_m1
    //   61: istore #5
    //   63: iload_2
    //   64: istore_1
    //   65: iload_1
    //   66: istore #4
    //   68: iload #7
    //   70: istore #6
    //   72: iload #5
    //   74: istore #8
    //   76: iload_3
    //   77: istore #9
    //   79: iload_1
    //   80: iload #10
    //   82: if_icmpge -> 297
    //   85: iload_1
    //   86: istore #4
    //   88: iload #7
    //   90: istore #6
    //   92: iload #5
    //   94: istore #8
    //   96: iload_3
    //   97: istore #9
    //   99: iload_1
    //   100: aload_0
    //   101: getfield a : [C
    //   104: arraylength
    //   105: if_icmpge -> 297
    //   108: iload #7
    //   110: istore #6
    //   112: iload #5
    //   114: istore #4
    //   116: iload_3
    //   117: istore_2
    //   118: aload_0
    //   119: getfield a : [C
    //   122: iload_1
    //   123: caload
    //   124: bipush #10
    //   126: if_icmpne -> 146
    //   129: iload_3
    //   130: iconst_1
    //   131: iadd
    //   132: istore #6
    //   134: aload_0
    //   135: iload_1
    //   136: invokevirtual q : (I)I
    //   139: iconst_1
    //   140: iadd
    //   141: istore #4
    //   143: iload #6
    //   145: istore_2
    //   146: iload_1
    //   147: iconst_1
    //   148: iadd
    //   149: istore #8
    //   151: iload #8
    //   153: istore_1
    //   154: iload #6
    //   156: istore #7
    //   158: iload #4
    //   160: istore #5
    //   162: iload_2
    //   163: istore_3
    //   164: iload #8
    //   166: aload_0
    //   167: getfield b : I
    //   170: if_icmpne -> 65
    //   173: aload_0
    //   174: getfield c : I
    //   177: istore_1
    //   178: iload #6
    //   180: istore #7
    //   182: iload #4
    //   184: istore #5
    //   186: iload_2
    //   187: istore_3
    //   188: goto -> 65
    //   191: iload #4
    //   193: istore #5
    //   195: iload_1
    //   196: istore #4
    //   198: iload_2
    //   199: istore #6
    //   201: iload_3
    //   202: istore #8
    //   204: iload #5
    //   206: istore #9
    //   208: iload_1
    //   209: iload #10
    //   211: if_icmple -> 297
    //   214: iload_1
    //   215: istore #4
    //   217: iload_2
    //   218: istore #6
    //   220: iload_3
    //   221: istore #8
    //   223: iload #5
    //   225: istore #9
    //   227: iload_1
    //   228: ifle -> 297
    //   231: iload_1
    //   232: istore #4
    //   234: iload_1
    //   235: aload_0
    //   236: getfield c : I
    //   239: if_icmpne -> 248
    //   242: aload_0
    //   243: getfield b : I
    //   246: istore #4
    //   248: iload #4
    //   250: iconst_1
    //   251: isub
    //   252: istore #6
    //   254: iload #6
    //   256: istore_1
    //   257: iload #5
    //   259: istore #4
    //   261: aload_0
    //   262: getfield a : [C
    //   265: iload #6
    //   267: caload
    //   268: bipush #10
    //   270: if_icmpne -> 191
    //   273: aload_0
    //   274: iload #6
    //   276: invokevirtual q : (I)I
    //   279: iconst_1
    //   280: iadd
    //   281: istore_3
    //   282: iload #5
    //   284: iconst_1
    //   285: isub
    //   286: istore #4
    //   288: iload #5
    //   290: istore_2
    //   291: iload #6
    //   293: istore_1
    //   294: goto -> 191
    //   297: iload #4
    //   299: iload #10
    //   301: if_icmpne -> 326
    //   304: iload #6
    //   306: iconst_m1
    //   307: if_icmpeq -> 321
    //   310: aload_0
    //   311: getfield g : Lcom/b/a/b/p;
    //   314: iload #6
    //   316: iload #8
    //   318: invokevirtual a : (II)V
    //   321: aload_0
    //   322: monitorexit
    //   323: iload #9
    //   325: ireturn
    //   326: aload_0
    //   327: monitorexit
    //   328: iconst_m1
    //   329: ireturn
    //   330: astore #12
    //   332: aload_0
    //   333: monitorexit
    //   334: aload #12
    //   336: athrow
    //   337: iload #10
    //   339: iload_2
    //   340: if_icmpge -> 359
    //   343: iload_3
    //   344: istore #4
    //   346: iconst_m1
    //   347: istore #5
    //   349: iconst_m1
    //   350: istore_3
    //   351: iload_2
    //   352: istore_1
    //   353: iload #5
    //   355: istore_2
    //   356: goto -> 191
    //   359: iconst_m1
    //   360: istore #6
    //   362: iconst_m1
    //   363: istore #8
    //   365: iload_2
    //   366: istore #4
    //   368: iload_3
    //   369: istore #9
    //   371: goto -> 297
    // Exception table:
    //   from	to	target	type
    //   2	9	330	finally
    //   18	51	330	finally
    //   99	108	330	finally
    //   118	129	330	finally
    //   134	143	330	finally
    //   164	178	330	finally
    //   234	248	330	finally
    //   261	282	330	finally
    //   310	321	330	finally }
  
  public void i() { this.h.f(); }
  
  public void j() { this.h.g(); }
  
  char[] j(int paramInt) {
    char[] arrayOfChar = new char[paramInt];
    for (int i = 0; i < paramInt; i++)
      arrayOfChar[i] = this.a[this.b + i]; 
    return arrayOfChar;
  }
  
  public int k() { return this.h.a(); }
  
  protected final void k(int paramInt) {
    while (this.b > paramInt) {
      this.c--;
      this.b--;
      this.a[this.c] = this.a[this.b];
    } 
  }
  
  public int l() { return this.h.b(); }
  
  protected final void l(int paramInt) {
    while (this.c < paramInt) {
      this.a[this.b] = this.a[this.c];
      this.b++;
      this.c++;
    } 
  }
  
  public int length() { return d() - 1; }
  
  protected void m(int paramInt) {
    int j = this.a.length - 1;
    char[] arrayOfChar = this.a;
    int i = j - 1;
    arrayOfChar[j] = Character.MAX_VALUE;
    while (--paramInt >= 0) {
      this.a[i] = this.a[paramInt];
      i--;
      paramInt--;
    } 
    this.b = 0;
    this.c = i + 1;
  }
  
  protected void n(int paramInt) {
    int i = paramInt + this.f * 50;
    char[] arrayOfChar = new char[this.a.length + i];
    for (paramInt = 0; paramInt < this.b; paramInt++)
      arrayOfChar[paramInt] = this.a[paramInt]; 
    for (paramInt = this.c; paramInt < this.a.length; paramInt++)
      arrayOfChar[paramInt + i] = this.a[paramInt]; 
    this.c += i;
    this.a = arrayOfChar;
    this.f <<= 1;
  }
  
  public final boolean o(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: iflt -> 28
    //   6: aload_0
    //   7: invokevirtual d : ()I
    //   10: istore_2
    //   11: iload_1
    //   12: iload_2
    //   13: if_icmpge -> 28
    //   16: iconst_1
    //   17: istore_3
    //   18: goto -> 30
    //   21: astore #4
    //   23: aload_0
    //   24: monitorexit
    //   25: aload #4
    //   27: athrow
    //   28: iconst_0
    //   29: istore_3
    //   30: aload_0
    //   31: monitorexit
    //   32: iload_3
    //   33: ireturn
    // Exception table:
    //   from	to	target	type
    //   6	11	21	finally }
  
  protected final int p(int paramInt) { return r(paramInt) ? paramInt : (paramInt + e()); }
  
  protected final int q(int paramInt) { return r(paramInt) ? paramInt : (paramInt - e()); }
  
  protected final boolean r(int paramInt) { return (paramInt < this.b); }
  
  public CharSequence subSequence(int paramInt1, int paramInt2) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_1
    //   4: invokevirtual o : (I)Z
    //   7: ifeq -> 105
    //   10: iload_2
    //   11: ifgt -> 17
    //   14: goto -> 105
    //   17: iload_2
    //   18: istore_3
    //   19: iload_1
    //   20: iload_2
    //   21: iadd
    //   22: aload_0
    //   23: invokevirtual d : ()I
    //   26: if_icmple -> 36
    //   29: aload_0
    //   30: invokevirtual d : ()I
    //   33: iload_1
    //   34: isub
    //   35: istore_3
    //   36: aload_0
    //   37: iload_1
    //   38: invokevirtual p : (I)I
    //   41: istore_1
    //   42: iload_3
    //   43: newarray char
    //   45: astore #5
    //   47: iconst_0
    //   48: istore_2
    //   49: iload_2
    //   50: iload_3
    //   51: if_icmpge -> 89
    //   54: aload #5
    //   56: iload_2
    //   57: aload_0
    //   58: getfield a : [C
    //   61: iload_1
    //   62: caload
    //   63: castore
    //   64: iload_1
    //   65: iconst_1
    //   66: iadd
    //   67: istore #4
    //   69: iload #4
    //   71: istore_1
    //   72: iload #4
    //   74: aload_0
    //   75: getfield b : I
    //   78: if_icmpne -> 126
    //   81: aload_0
    //   82: getfield c : I
    //   85: istore_1
    //   86: goto -> 126
    //   89: new java/lang/String
    //   92: dup
    //   93: aload #5
    //   95: invokespecial <init> : ([C)V
    //   98: astore #5
    //   100: aload_0
    //   101: monitorexit
    //   102: aload #5
    //   104: areturn
    //   105: new java/lang/String
    //   108: dup
    //   109: invokespecial <init> : ()V
    //   112: astore #5
    //   114: aload_0
    //   115: monitorexit
    //   116: aload #5
    //   118: areturn
    //   119: astore #5
    //   121: aload_0
    //   122: monitorexit
    //   123: aload #5
    //   125: athrow
    //   126: iload_2
    //   127: iconst_1
    //   128: iadd
    //   129: istore_2
    //   130: goto -> 49
    // Exception table:
    //   from	to	target	type
    //   2	10	119	finally
    //   19	36	119	finally
    //   36	47	119	finally
    //   54	64	119	finally
    //   72	86	119	finally
    //   89	100	119	finally
    //   105	114	119	finally }
  
  public String toString() {
    int i = d();
    StringBuffer stringBuffer = new StringBuffer();
    for (byte b1 = 0; b1 < i; b1++) {
      char c1 = charAt(b1);
      if (c1 == Character.MAX_VALUE)
        break; 
      stringBuffer.append(c1);
    } 
    return new String(stringBuffer);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
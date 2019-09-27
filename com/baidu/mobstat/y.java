package com.baidu.mobstat;

import java.util.ArrayList;
import java.util.List;

public static final abstract enum y {
  a(0),
  b(1),
  c(2),
  d(3),
  e(4);
  
  private int f;
  
  y(int paramInt1) { this.f = paramInt1; }
  
  private int a(List<String> paramList, ArrayList<Long> paramArrayList1, ArrayList<w> paramArrayList2, int paramInt1, int paramInt2) {
    int j = c();
    int k = 0;
    int i = 0;
    int m = paramInt2;
    paramInt2 = j;
    while (paramInt2 > 0) {
      j = m;
      if (paramInt2 < m)
        j = paramInt2; 
      ArrayList arrayList = a(j, i);
      if (i == 0 && arrayList.size() != 0)
        paramArrayList2.add((w)arrayList.get(0)); 
      for (w w : arrayList) {
        long l = w.a();
        String str = w.b();
        m = str.length() + k;
        if (m > paramInt1)
          break; 
        paramArrayList1.add(Long.valueOf(l));
        paramList.add(str);
        k = m;
      } 
      paramInt2 -= j;
      i += j;
      m = j;
    } 
    return k;
  }
  
  private int c() { // Byte code:
    //   0: aload_0
    //   1: invokevirtual a : ()Lcom/baidu/mobstat/x;
    //   4: astore_2
    //   5: aload_2
    //   6: astore_3
    //   7: aload_2
    //   8: invokevirtual a : ()Z
    //   11: ifeq -> 31
    //   14: aload_2
    //   15: astore_3
    //   16: aload_2
    //   17: invokevirtual b : ()I
    //   20: istore_1
    //   21: aload_2
    //   22: ifnull -> 29
    //   25: aload_2
    //   26: invokevirtual close : ()V
    //   29: iload_1
    //   30: ireturn
    //   31: aload_2
    //   32: ifnull -> 72
    //   35: goto -> 68
    //   38: astore_2
    //   39: goto -> 74
    //   42: astore #4
    //   44: goto -> 57
    //   47: astore_2
    //   48: aconst_null
    //   49: astore_3
    //   50: goto -> 74
    //   53: astore #4
    //   55: aconst_null
    //   56: astore_2
    //   57: aload_2
    //   58: astore_3
    //   59: aload #4
    //   61: invokestatic b : (Ljava/lang/Throwable;)V
    //   64: aload_2
    //   65: ifnull -> 72
    //   68: aload_2
    //   69: invokevirtual close : ()V
    //   72: iconst_0
    //   73: ireturn
    //   74: aload_3
    //   75: ifnull -> 82
    //   78: aload_3
    //   79: invokevirtual close : ()V
    //   82: aload_2
    //   83: athrow
    // Exception table:
    //   from	to	target	type
    //   0	5	53	java/lang/Exception
    //   0	5	47	finally
    //   7	14	42	java/lang/Exception
    //   7	14	38	finally
    //   16	21	42	java/lang/Exception
    //   16	21	38	finally
    //   59	64	38	finally }
  
  public int a(ArrayList<Long> paramArrayList) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_3
    //   4: aload_1
    //   5: ifnull -> 221
    //   8: aload_1
    //   9: invokevirtual size : ()I
    //   12: istore_2
    //   13: iload_2
    //   14: ifne -> 20
    //   17: goto -> 221
    //   20: aconst_null
    //   21: astore #8
    //   23: aconst_null
    //   24: astore #7
    //   26: aload_0
    //   27: invokevirtual a : ()Lcom/baidu/mobstat/x;
    //   30: astore #6
    //   32: aload #6
    //   34: invokevirtual a : ()Z
    //   37: istore #5
    //   39: iload #5
    //   41: ifne -> 58
    //   44: aload #6
    //   46: ifnull -> 54
    //   49: aload #6
    //   51: invokevirtual close : ()V
    //   54: aload_0
    //   55: monitorexit
    //   56: iconst_0
    //   57: ireturn
    //   58: aload_1
    //   59: invokevirtual size : ()I
    //   62: istore #4
    //   64: iconst_0
    //   65: istore_2
    //   66: iload_3
    //   67: iload #4
    //   69: if_icmpge -> 132
    //   72: aload #6
    //   74: aload_1
    //   75: iload_3
    //   76: invokevirtual get : (I)Ljava/lang/Object;
    //   79: checkcast java/lang/Long
    //   82: invokevirtual longValue : ()J
    //   85: invokevirtual b : (J)Z
    //   88: istore #5
    //   90: iload #5
    //   92: ifne -> 109
    //   95: aload #6
    //   97: ifnull -> 105
    //   100: aload #6
    //   102: invokevirtual close : ()V
    //   105: aload_0
    //   106: monitorexit
    //   107: iload_2
    //   108: ireturn
    //   109: iload_2
    //   110: iconst_1
    //   111: iadd
    //   112: istore_2
    //   113: iload_3
    //   114: iconst_1
    //   115: iadd
    //   116: istore_3
    //   117: goto -> 66
    //   120: astore #7
    //   122: aload #6
    //   124: astore_1
    //   125: aload #7
    //   127: astore #6
    //   129: goto -> 180
    //   132: iload_2
    //   133: istore_3
    //   134: aload #6
    //   136: ifnull -> 200
    //   139: aload #6
    //   141: invokevirtual close : ()V
    //   144: iload_2
    //   145: istore_3
    //   146: goto -> 200
    //   149: astore_1
    //   150: goto -> 204
    //   153: astore #7
    //   155: aload #6
    //   157: astore_1
    //   158: aload #7
    //   160: astore #6
    //   162: goto -> 178
    //   165: astore_1
    //   166: aload #7
    //   168: astore #6
    //   170: goto -> 204
    //   173: astore #6
    //   175: aload #8
    //   177: astore_1
    //   178: iconst_0
    //   179: istore_2
    //   180: aload_1
    //   181: astore #7
    //   183: aload #6
    //   185: invokestatic b : (Ljava/lang/Throwable;)V
    //   188: iload_2
    //   189: istore_3
    //   190: aload_1
    //   191: ifnull -> 200
    //   194: aload_1
    //   195: invokevirtual close : ()V
    //   198: iload_2
    //   199: istore_3
    //   200: aload_0
    //   201: monitorexit
    //   202: iload_3
    //   203: ireturn
    //   204: aload #6
    //   206: ifnull -> 214
    //   209: aload #6
    //   211: invokevirtual close : ()V
    //   214: aload_1
    //   215: athrow
    //   216: astore_1
    //   217: aload_0
    //   218: monitorexit
    //   219: aload_1
    //   220: athrow
    //   221: aload_0
    //   222: monitorexit
    //   223: iconst_0
    //   224: ireturn
    // Exception table:
    //   from	to	target	type
    //   8	13	216	finally
    //   26	32	173	java/lang/Exception
    //   26	32	165	finally
    //   32	39	153	java/lang/Exception
    //   32	39	149	finally
    //   49	54	216	finally
    //   58	64	153	java/lang/Exception
    //   58	64	149	finally
    //   72	90	120	java/lang/Exception
    //   72	90	149	finally
    //   100	105	216	finally
    //   139	144	216	finally
    //   183	188	165	finally
    //   194	198	216	finally
    //   209	214	216	finally
    //   214	216	216	finally }
  
  public long a(long paramLong, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore #9
    //   5: aconst_null
    //   6: astore #7
    //   8: aload_0
    //   9: invokevirtual a : ()Lcom/baidu/mobstat/x;
    //   12: astore #8
    //   14: aload #8
    //   16: invokevirtual a : ()Z
    //   19: istore #6
    //   21: iload #6
    //   23: ifne -> 42
    //   26: aload #8
    //   28: ifnull -> 36
    //   31: aload #8
    //   33: invokevirtual close : ()V
    //   36: aload_0
    //   37: monitorexit
    //   38: ldc2_w -1
    //   41: lreturn
    //   42: aload #8
    //   44: lload_1
    //   45: invokestatic valueOf : (J)Ljava/lang/String;
    //   48: aload_3
    //   49: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;)J
    //   52: lstore #4
    //   54: lload #4
    //   56: lstore_1
    //   57: aload #8
    //   59: ifnull -> 122
    //   62: aload #8
    //   64: invokevirtual close : ()V
    //   67: lload #4
    //   69: lstore_1
    //   70: goto -> 122
    //   73: astore_3
    //   74: goto -> 126
    //   77: astore #7
    //   79: aload #8
    //   81: astore_3
    //   82: aload #7
    //   84: astore #8
    //   86: goto -> 102
    //   89: astore_3
    //   90: aload #7
    //   92: astore #8
    //   94: goto -> 126
    //   97: astore #8
    //   99: aload #9
    //   101: astore_3
    //   102: aload_3
    //   103: astore #7
    //   105: aload #8
    //   107: invokestatic b : (Ljava/lang/Throwable;)V
    //   110: aload_3
    //   111: ifnull -> 118
    //   114: aload_3
    //   115: invokevirtual close : ()V
    //   118: ldc2_w -1
    //   121: lstore_1
    //   122: aload_0
    //   123: monitorexit
    //   124: lload_1
    //   125: lreturn
    //   126: aload #8
    //   128: ifnull -> 139
    //   131: aload #8
    //   133: invokevirtual close : ()V
    //   136: goto -> 139
    //   139: aload_3
    //   140: athrow
    //   141: aload_0
    //   142: monitorexit
    //   143: aload_3
    //   144: athrow
    //   145: astore_3
    //   146: goto -> 141
    // Exception table:
    //   from	to	target	type
    //   8	14	97	java/lang/Exception
    //   8	14	89	finally
    //   14	21	77	java/lang/Exception
    //   14	21	73	finally
    //   31	36	145	finally
    //   42	54	77	java/lang/Exception
    //   42	54	73	finally
    //   62	67	145	finally
    //   105	110	89	finally
    //   114	118	145	finally
    //   131	136	145	finally
    //   139	141	145	finally }
  
  public abstract x a();
  
  public ArrayList<w> a(int paramInt1, int paramInt2) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new java/util/ArrayList
    //   5: dup
    //   6: invokespecial <init> : ()V
    //   9: astore #7
    //   11: aconst_null
    //   12: astore #8
    //   14: aconst_null
    //   15: astore #4
    //   17: aload_0
    //   18: invokevirtual a : ()Lcom/baidu/mobstat/x;
    //   21: astore #5
    //   23: aload #5
    //   25: invokevirtual a : ()Z
    //   28: istore_3
    //   29: iload_3
    //   30: ifne -> 48
    //   33: aload #5
    //   35: ifnull -> 43
    //   38: aload #5
    //   40: invokevirtual close : ()V
    //   43: aload_0
    //   44: monitorexit
    //   45: aload #7
    //   47: areturn
    //   48: aload #5
    //   50: iload_1
    //   51: iload_2
    //   52: invokevirtual a : (II)Ljava/util/ArrayList;
    //   55: astore #6
    //   57: aload #6
    //   59: astore #4
    //   61: aload #5
    //   63: ifnull -> 130
    //   66: aload #5
    //   68: invokevirtual close : ()V
    //   71: aload #6
    //   73: astore #4
    //   75: goto -> 130
    //   78: astore #6
    //   80: aload #5
    //   82: astore #4
    //   84: aload #6
    //   86: astore #5
    //   88: goto -> 135
    //   91: astore #6
    //   93: goto -> 107
    //   96: astore #5
    //   98: goto -> 135
    //   101: astore #6
    //   103: aload #8
    //   105: astore #5
    //   107: aload #5
    //   109: astore #4
    //   111: aload #6
    //   113: invokestatic b : (Ljava/lang/Throwable;)V
    //   116: aload #5
    //   118: ifnull -> 126
    //   121: aload #5
    //   123: invokevirtual close : ()V
    //   126: aload #7
    //   128: astore #4
    //   130: aload_0
    //   131: monitorexit
    //   132: aload #4
    //   134: areturn
    //   135: aload #4
    //   137: ifnull -> 145
    //   140: aload #4
    //   142: invokevirtual close : ()V
    //   145: aload #5
    //   147: athrow
    //   148: astore #4
    //   150: aload_0
    //   151: monitorexit
    //   152: aload #4
    //   154: athrow
    // Exception table:
    //   from	to	target	type
    //   2	11	148	finally
    //   17	23	101	java/lang/Exception
    //   17	23	96	finally
    //   23	29	91	java/lang/Exception
    //   23	29	78	finally
    //   38	43	148	finally
    //   48	57	91	java/lang/Exception
    //   48	57	78	finally
    //   66	71	148	finally
    //   111	116	96	finally
    //   121	126	148	finally
    //   140	145	148	finally
    //   145	148	148	finally }
  
  public List<String> a(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new java/util/ArrayList
    //   5: dup
    //   6: invokespecial <init> : ()V
    //   9: astore #5
    //   11: new java/util/ArrayList
    //   14: dup
    //   15: invokespecial <init> : ()V
    //   18: astore #4
    //   20: new java/util/ArrayList
    //   23: dup
    //   24: invokespecial <init> : ()V
    //   27: astore #6
    //   29: aload_0
    //   30: aload #5
    //   32: aload #4
    //   34: aload #6
    //   36: iload_1
    //   37: sipush #500
    //   40: invokespecial a : (Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I
    //   43: pop
    //   44: aload #6
    //   46: invokevirtual size : ()I
    //   49: ifeq -> 114
    //   52: aload #5
    //   54: invokeinterface size : ()I
    //   59: ifne -> 114
    //   62: aload #4
    //   64: invokevirtual size : ()I
    //   67: ifne -> 114
    //   70: aload #6
    //   72: iconst_0
    //   73: invokevirtual get : (I)Ljava/lang/Object;
    //   76: checkcast com/baidu/mobstat/w
    //   79: astore #6
    //   81: aload #6
    //   83: invokevirtual a : ()J
    //   86: lstore_2
    //   87: aload #6
    //   89: invokevirtual b : ()Ljava/lang/String;
    //   92: astore #6
    //   94: aload #4
    //   96: lload_2
    //   97: invokestatic valueOf : (J)Ljava/lang/Long;
    //   100: invokevirtual add : (Ljava/lang/Object;)Z
    //   103: pop
    //   104: aload #5
    //   106: aload #6
    //   108: invokeinterface add : (Ljava/lang/Object;)Z
    //   113: pop
    //   114: aload_0
    //   115: aload #4
    //   117: invokevirtual a : (Ljava/util/ArrayList;)I
    //   120: istore_1
    //   121: aload #5
    //   123: astore #4
    //   125: iload_1
    //   126: aload #5
    //   128: invokeinterface size : ()I
    //   133: if_icmpeq -> 147
    //   136: aload #5
    //   138: iconst_0
    //   139: iload_1
    //   140: invokeinterface subList : (II)Ljava/util/List;
    //   145: astore #4
    //   147: aload_0
    //   148: monitorexit
    //   149: aload #4
    //   151: areturn
    //   152: astore #4
    //   154: aload_0
    //   155: monitorexit
    //   156: aload #4
    //   158: athrow
    // Exception table:
    //   from	to	target	type
    //   2	114	152	finally
    //   114	121	152	finally
    //   125	147	152	finally }
  
  public boolean b() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial c : ()I
    //   6: istore_1
    //   7: iload_1
    //   8: ifne -> 16
    //   11: iconst_1
    //   12: istore_2
    //   13: goto -> 18
    //   16: iconst_0
    //   17: istore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: iload_2
    //   21: ireturn
    //   22: astore_3
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_3
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally }
  
  public boolean b(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial c : ()I
    //   6: istore_2
    //   7: iload_2
    //   8: iload_1
    //   9: if_icmplt -> 17
    //   12: iconst_1
    //   13: istore_3
    //   14: goto -> 19
    //   17: iconst_0
    //   18: istore_3
    //   19: aload_0
    //   20: monitorexit
    //   21: iload_3
    //   22: ireturn
    //   23: astore #4
    //   25: aload_0
    //   26: monitorexit
    //   27: aload #4
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	23	finally }
  
  public String toString() { return String.valueOf(this.f); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
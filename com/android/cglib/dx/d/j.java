package com.android.cglib.dx.d;

import java.io.FilterWriter;
import java.io.Writer;

public final class j extends FilterWriter {
  private final String a;
  
  private final int b;
  
  private final int c;
  
  private int d;
  
  private boolean e;
  
  private int f;
  
  public j(Writer paramWriter, int paramInt) { this(paramWriter, paramInt, ""); }
  
  public j(Writer paramWriter, int paramInt, String paramString) {
    super(paramWriter);
    if (paramWriter == null)
      throw new NullPointerException("out == null"); 
    if (paramInt < 0)
      throw new IllegalArgumentException("width < 0"); 
    if (paramString == null)
      throw new NullPointerException("prefix == null"); 
    if (paramInt != 0) {
      i = paramInt;
    } else {
      i = Integer.MAX_VALUE;
    } 
    this.b = i;
    this.c = paramInt >> 1;
    String str = paramString;
    if (paramString.length() == 0)
      str = null; 
    this.a = str;
    a();
  }
  
  private void a() {
    boolean bool;
    this.d = 0;
    if (this.c != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.e = bool;
    this.f = 0;
  }
  
  public void write(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: getfield lock : Ljava/lang/Object;
    //   4: astore #4
    //   6: aload #4
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield e : Z
    //   13: istore_3
    //   14: iconst_0
    //   15: istore_2
    //   16: iload_3
    //   17: ifeq -> 60
    //   20: iload_1
    //   21: bipush #32
    //   23: if_icmpne -> 55
    //   26: aload_0
    //   27: aload_0
    //   28: getfield f : I
    //   31: iconst_1
    //   32: iadd
    //   33: putfield f : I
    //   36: aload_0
    //   37: getfield f : I
    //   40: aload_0
    //   41: getfield c : I
    //   44: if_icmplt -> 60
    //   47: aload_0
    //   48: aload_0
    //   49: getfield c : I
    //   52: putfield f : I
    //   55: aload_0
    //   56: iconst_0
    //   57: putfield e : Z
    //   60: aload_0
    //   61: getfield d : I
    //   64: aload_0
    //   65: getfield b : I
    //   68: if_icmpne -> 91
    //   71: iload_1
    //   72: bipush #10
    //   74: if_icmpeq -> 91
    //   77: aload_0
    //   78: getfield out : Ljava/io/Writer;
    //   81: bipush #10
    //   83: invokevirtual write : (I)V
    //   86: aload_0
    //   87: iconst_0
    //   88: putfield d : I
    //   91: aload_0
    //   92: getfield d : I
    //   95: ifne -> 155
    //   98: aload_0
    //   99: getfield a : Ljava/lang/String;
    //   102: ifnull -> 116
    //   105: aload_0
    //   106: getfield out : Ljava/io/Writer;
    //   109: aload_0
    //   110: getfield a : Ljava/lang/String;
    //   113: invokevirtual write : (Ljava/lang/String;)V
    //   116: aload_0
    //   117: getfield e : Z
    //   120: ifne -> 155
    //   123: iload_2
    //   124: aload_0
    //   125: getfield f : I
    //   128: if_icmpge -> 147
    //   131: aload_0
    //   132: getfield out : Ljava/io/Writer;
    //   135: bipush #32
    //   137: invokevirtual write : (I)V
    //   140: iload_2
    //   141: iconst_1
    //   142: iadd
    //   143: istore_2
    //   144: goto -> 123
    //   147: aload_0
    //   148: aload_0
    //   149: getfield f : I
    //   152: putfield d : I
    //   155: aload_0
    //   156: getfield out : Ljava/io/Writer;
    //   159: iload_1
    //   160: invokevirtual write : (I)V
    //   163: iload_1
    //   164: bipush #10
    //   166: if_icmpne -> 176
    //   169: aload_0
    //   170: invokespecial a : ()V
    //   173: goto -> 186
    //   176: aload_0
    //   177: aload_0
    //   178: getfield d : I
    //   181: iconst_1
    //   182: iadd
    //   183: putfield d : I
    //   186: aload #4
    //   188: monitorexit
    //   189: return
    //   190: astore #5
    //   192: aload #4
    //   194: monitorexit
    //   195: aload #5
    //   197: athrow
    // Exception table:
    //   from	to	target	type
    //   9	14	190	finally
    //   26	55	190	finally
    //   55	60	190	finally
    //   60	71	190	finally
    //   77	91	190	finally
    //   91	116	190	finally
    //   116	123	190	finally
    //   123	140	190	finally
    //   147	155	190	finally
    //   155	163	190	finally
    //   169	173	190	finally
    //   176	186	190	finally
    //   186	189	190	finally
    //   192	195	190	finally }
  
  public void write(String paramString, int paramInt1, int paramInt2) { // Byte code:
    //   0: aload_0
    //   1: getfield lock : Ljava/lang/Object;
    //   4: astore #4
    //   6: aload #4
    //   8: monitorenter
    //   9: iload_3
    //   10: ifle -> 33
    //   13: aload_0
    //   14: aload_1
    //   15: iload_2
    //   16: invokevirtual charAt : (I)C
    //   19: invokevirtual write : (I)V
    //   22: iload_2
    //   23: iconst_1
    //   24: iadd
    //   25: istore_2
    //   26: iload_3
    //   27: iconst_1
    //   28: isub
    //   29: istore_3
    //   30: goto -> 9
    //   33: aload #4
    //   35: monitorexit
    //   36: return
    //   37: aload #4
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    //   42: astore_1
    //   43: goto -> 37
    // Exception table:
    //   from	to	target	type
    //   13	22	42	finally
    //   33	36	42	finally
    //   37	40	42	finally }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2) { // Byte code:
    //   0: aload_0
    //   1: getfield lock : Ljava/lang/Object;
    //   4: astore #4
    //   6: aload #4
    //   8: monitorenter
    //   9: iload_3
    //   10: ifle -> 31
    //   13: aload_0
    //   14: aload_1
    //   15: iload_2
    //   16: caload
    //   17: invokevirtual write : (I)V
    //   20: iload_2
    //   21: iconst_1
    //   22: iadd
    //   23: istore_2
    //   24: iload_3
    //   25: iconst_1
    //   26: isub
    //   27: istore_3
    //   28: goto -> 9
    //   31: aload #4
    //   33: monitorexit
    //   34: return
    //   35: aload #4
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: goto -> 35
    // Exception table:
    //   from	to	target	type
    //   13	20	40	finally
    //   31	34	40	finally
    //   35	38	40	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
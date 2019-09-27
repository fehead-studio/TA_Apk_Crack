package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import java.util.Collection;

public abstract class ak {
  private final String a;
  
  private final l b;
  
  private final int c;
  
  private int d;
  
  private boolean e;
  
  public ak(String paramString, l paraml, int paramInt) {
    if (paraml == null)
      throw new NullPointerException("file == null"); 
    a(paramInt);
    this.a = paramString;
    this.b = paraml;
    this.c = paramInt;
    this.d = -1;
    this.e = false;
  }
  
  public static void a(int paramInt) {
    if (paramInt <= 0 || (paramInt & paramInt - 1) != 0)
      throw new IllegalArgumentException("invalid alignment"); 
  }
  
  public abstract int a(x paramx);
  
  public abstract Collection<? extends x> a();
  
  protected abstract void a_(a parama);
  
  public final int b(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("fileOffset < 0"); 
    if (this.d >= 0)
      throw new RuntimeException("fileOffset already set"); 
    int i = this.c - 1;
    paramInt = paramInt + i & (i ^ 0xFFFFFFFF);
    this.d = paramInt;
    return paramInt;
  }
  
  public final int c(int paramInt) {
    if (paramInt < 0)
      throw new IllegalArgumentException("relative < 0"); 
    if (this.d < 0)
      throw new RuntimeException("fileOffset not yet set"); 
    return this.d + paramInt;
  }
  
  protected abstract void c();
  
  public final void c(a parama) { // Byte code:
    //   0: aload_0
    //   1: invokevirtual i : ()V
    //   4: aload_0
    //   5: aload_1
    //   6: invokevirtual d : (Lcom/android/cglib/dx/d/a;)V
    //   9: aload_1
    //   10: invokeinterface g : ()I
    //   15: istore_2
    //   16: aload_0
    //   17: getfield d : I
    //   20: ifge -> 31
    //   23: aload_0
    //   24: iload_2
    //   25: putfield d : I
    //   28: goto -> 101
    //   31: aload_0
    //   32: getfield d : I
    //   35: iload_2
    //   36: if_icmpeq -> 101
    //   39: new java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial <init> : ()V
    //   46: astore_1
    //   47: aload_1
    //   48: ldc 'alignment mismatch: for '
    //   50: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: pop
    //   54: aload_1
    //   55: aload_0
    //   56: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: aload_1
    //   61: ldc ', at '
    //   63: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: pop
    //   67: aload_1
    //   68: iload_2
    //   69: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   72: pop
    //   73: aload_1
    //   74: ldc ', but expected '
    //   76: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: aload_1
    //   81: aload_0
    //   82: getfield d : I
    //   85: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   88: pop
    //   89: new java/lang/RuntimeException
    //   92: dup
    //   93: aload_1
    //   94: invokevirtual toString : ()Ljava/lang/String;
    //   97: invokespecial <init> : (Ljava/lang/String;)V
    //   100: athrow
    //   101: aload_1
    //   102: invokeinterface a : ()Z
    //   107: ifeq -> 174
    //   110: aload_0
    //   111: getfield a : Ljava/lang/String;
    //   114: ifnull -> 164
    //   117: new java/lang/StringBuilder
    //   120: dup
    //   121: invokespecial <init> : ()V
    //   124: astore_3
    //   125: aload_3
    //   126: ldc '\\n'
    //   128: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: aload_3
    //   133: aload_0
    //   134: getfield a : Ljava/lang/String;
    //   137: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: pop
    //   141: aload_3
    //   142: ldc ':'
    //   144: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: aload_3
    //   149: invokevirtual toString : ()Ljava/lang/String;
    //   152: astore_3
    //   153: aload_1
    //   154: iconst_0
    //   155: aload_3
    //   156: invokeinterface a : (ILjava/lang/String;)V
    //   161: goto -> 174
    //   164: iload_2
    //   165: ifeq -> 174
    //   168: ldc '\\n'
    //   170: astore_3
    //   171: goto -> 153
    //   174: aload_0
    //   175: aload_1
    //   176: invokevirtual a_ : (Lcom/android/cglib/dx/d/a;)V
    //   179: return }
  
  public abstract int c_();
  
  protected final void d(a parama) { parama.h(this.c); }
  
  public final l e() { return this.b; }
  
  public final int f() { return this.c; }
  
  public final int g() {
    if (this.d < 0)
      throw new RuntimeException("fileOffset not set"); 
    return this.d;
  }
  
  public final void h() {
    j();
    c();
    this.e = true;
  }
  
  protected final void i() {
    if (!this.e)
      throw new RuntimeException("not prepared"); 
  }
  
  protected final void j() {
    if (this.e)
      throw new RuntimeException("already prepared"); 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
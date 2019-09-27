package com.a.a.a.a.a.a;

import java.io.PrintStream;
import java.io.PrintWriter;

public final class a {
  static final a a;
  
  static final int b;
  
  static  {
    // Byte code:
    //   0: invokestatic b : ()Ljava/lang/Integer;
    //   3: astore_2
    //   4: aload_2
    //   5: ifnull -> 28
    //   8: aload_2
    //   9: invokevirtual intValue : ()I
    //   12: bipush #19
    //   14: if_icmplt -> 28
    //   17: new com/a/a/a/a/a/a/a$c
    //   20: dup
    //   21: invokespecial <init> : ()V
    //   24: astore_1
    //   25: goto -> 123
    //   28: invokestatic a : ()Z
    //   31: ifeq -> 45
    //   34: new com/a/a/a/a/a/a/a$b
    //   37: dup
    //   38: invokespecial <init> : ()V
    //   41: astore_1
    //   42: goto -> 123
    //   45: new com/a/a/a/a/a/a/a$b
    //   48: dup
    //   49: invokespecial <init> : ()V
    //   52: astore_1
    //   53: goto -> 123
    //   56: astore_1
    //   57: aconst_null
    //   58: astore_2
    //   59: getstatic java/lang/System.err : Ljava/io/PrintStream;
    //   62: astore_3
    //   63: new java/lang/StringBuilder
    //   66: dup
    //   67: invokespecial <init> : ()V
    //   70: astore #4
    //   72: aload #4
    //   74: ldc 'An error has occured when initializing the try-with-resources desuguring strategy. The default strategy '
    //   76: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: aload #4
    //   82: ldc com/a/a/a/a/a/a/a$b
    //   84: invokevirtual getName : ()Ljava/lang/String;
    //   87: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: pop
    //   91: aload #4
    //   93: ldc 'will be used. The error is: '
    //   95: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: pop
    //   99: aload_3
    //   100: aload #4
    //   102: invokevirtual toString : ()Ljava/lang/String;
    //   105: invokevirtual println : (Ljava/lang/String;)V
    //   108: aload_1
    //   109: getstatic java/lang/System.err : Ljava/io/PrintStream;
    //   112: invokevirtual printStackTrace : (Ljava/io/PrintStream;)V
    //   115: new com/a/a/a/a/a/a/a$b
    //   118: dup
    //   119: invokespecial <init> : ()V
    //   122: astore_1
    //   123: aload_1
    //   124: putstatic com/a/a/a/a/a/a/a.a : Lcom/a/a/a/a/a/a/a$a;
    //   127: aload_2
    //   128: ifnonnull -> 136
    //   131: iconst_1
    //   132: istore_0
    //   133: goto -> 141
    //   136: aload_2
    //   137: invokevirtual intValue : ()I
    //   140: istore_0
    //   141: iload_0
    //   142: putstatic com/a/a/a/a/a/a/a.b : I
    //   145: return
    //   146: astore_1
    //   147: goto -> 59
    // Exception table:
    //   from	to	target	type
    //   0	4	56	java/lang/Throwable
    //   8	25	146	java/lang/Throwable
    //   28	42	146	java/lang/Throwable
    //   45	53	146	java/lang/Throwable
  }
  
  public static void a(Throwable paramThrowable) { a.a(paramThrowable); }
  
  public static void a(Throwable paramThrowable, PrintStream paramPrintStream) { a.a(paramThrowable, paramPrintStream); }
  
  public static void a(Throwable paramThrowable, PrintWriter paramPrintWriter) { a.a(paramThrowable, paramPrintWriter); }
  
  private static boolean a() { return Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ^ true; }
  
  private static Integer b() {
    try {
      return (Integer)Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
    } catch (Exception exception) {
      System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
      exception.printStackTrace(System.err);
      return null;
    } 
  }
  
  static abstract class a {
    protected static final Throwable[] a = new Throwable[0];
    
    public abstract void a(Throwable param1Throwable);
    
    public abstract void a(Throwable param1Throwable, PrintStream param1PrintStream);
    
    public abstract void a(Throwable param1Throwable, PrintWriter param1PrintWriter);
  }
  
  static final class b extends a {
    public void a(Throwable param1Throwable) { param1Throwable.printStackTrace(); }
    
    public void a(Throwable param1Throwable, PrintStream param1PrintStream) { param1Throwable.printStackTrace(param1PrintStream); }
    
    public void a(Throwable param1Throwable, PrintWriter param1PrintWriter) { param1Throwable.printStackTrace(param1PrintWriter); }
  }
  
  static final class c extends a {
    public void a(Throwable param1Throwable) { param1Throwable.printStackTrace(); }
    
    public void a(Throwable param1Throwable, PrintStream param1PrintStream) { param1Throwable.printStackTrace(param1PrintStream); }
    
    public void a(Throwable param1Throwable, PrintWriter param1PrintWriter) { param1Throwable.printStackTrace(param1PrintWriter); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\a\a\a\a\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
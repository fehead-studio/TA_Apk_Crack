package bsh;

import com.a.a.a.a.a.a.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Interpreter implements ConsoleInterface, Serializable, Runnable {
  public static boolean DEBUG = false;
  
  public static boolean LOCALSCOPING = false;
  
  public static boolean TRACE = false;
  
  public static final String VERSION = "2.0b4";
  
  static PrintStream a;
  
  static String b = "\n";
  
  static This c;
  
  static Class n;
  
  Parser d;
  
  NameSpace e;
  
  Reader f;
  
  PrintStream g;
  
  PrintStream h;
  
  ConsoleInterface i;
  
  Interpreter j;
  
  String k;
  
  protected boolean l;
  
  protected boolean m;
  
  private boolean o = false;
  
  private boolean p = true;
  
  private boolean q;
  
  static  {
    b();
  }
  
  public Interpreter() {
    this(new StringReader(""), System.out, System.err, false, null);
    this.l = true;
    a("bsh.evalOnly", new Primitive(true));
  }
  
  public Interpreter(ConsoleInterface paramConsoleInterface) { this(paramConsoleInterface, null); }
  
  public Interpreter(ConsoleInterface paramConsoleInterface, NameSpace paramNameSpace) {
    this(paramConsoleInterface.getIn(), paramConsoleInterface.getOut(), paramConsoleInterface.getErr(), true, paramNameSpace);
    setConsole(paramConsoleInterface);
  }
  
  public Interpreter(Reader paramReader, PrintStream paramPrintStream1, PrintStream paramPrintStream2, boolean paramBoolean) { this(paramReader, paramPrintStream1, paramPrintStream2, paramBoolean, null); }
  
  public Interpreter(Reader paramReader, PrintStream paramPrintStream1, PrintStream paramPrintStream2, boolean paramBoolean, NameSpace paramNameSpace) { this(paramReader, paramPrintStream1, paramPrintStream2, paramBoolean, paramNameSpace, null, null); }
  
  public Interpreter(Reader paramReader, PrintStream paramPrintStream1, PrintStream paramPrintStream2, boolean paramBoolean, NameSpace paramNameSpace, Interpreter paramInterpreter, String paramString) {
    this.d = new Parser(paramReader);
    long l1 = System.currentTimeMillis();
    this.f = paramReader;
    this.g = paramPrintStream1;
    this.h = paramPrintStream2;
    this.m = paramBoolean;
    a = paramPrintStream2;
    this.j = paramInterpreter;
    if (paramInterpreter != null)
      setStrictJava(paramInterpreter.getStrictJava()); 
    this.k = paramString;
    BshClassManager bshClassManager = BshClassManager.createClassManager(this);
    if (paramNameSpace == null) {
      this.e = new NameSpace(bshClassManager, "global");
    } else {
      this.e = paramNameSpace;
    } 
    if (!(a("bsh") instanceof This))
      c(); 
    if (paramBoolean)
      a(); 
    long l2 = System.currentTimeMillis();
    if (DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Time to initialize interpreter: ");
      stringBuffer.append(l2 - l1);
      debug(stringBuffer.toString());
    } 
  }
  
  static Class b(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  static void b() {
    try {
      b = System.getProperty("line.separator");
      a = System.err;
      DEBUG = Boolean.getBoolean("debug");
      TRACE = Boolean.getBoolean("trace");
      LOCALSCOPING = Boolean.getBoolean("localscoping");
      String str = System.getProperty("outfile");
      if (str != null) {
        redirectOutputToFile(str);
        return;
      } 
    } catch (SecurityException securityException) {
      PrintStream printStream = System.err;
      StringBuffer stringBuffer = new StringBuffer();
      String str = "Could not init static:";
      stringBuffer.append(str);
      stringBuffer.append(securityException);
      printStream.println(stringBuffer.toString());
    } catch (Exception exception) {
      PrintStream printStream = System.err;
      StringBuffer stringBuffer = new StringBuffer();
      String str = "Could not init static(2):";
    } catch (Throwable throwable) {
      PrintStream printStream = System.err;
      StringBuffer stringBuffer = new StringBuffer();
      String str = "Could not init static(3):";
    } 
  }
  
  private String c(String paramString) {
    String str1;
    String str2 = paramString.replace('\n', ' ').replace('\r', ' ');
    paramString = str2;
    if (str2.length() > 80) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(str2.substring(0, 80));
      stringBuffer.append(" . . . ");
      str1 = stringBuffer.toString();
    } 
    return str1;
  }
  
  private void c() {
    bshClassManager = getClassManager();
    a("bsh", (new NameSpace(bshClassManager, "Bsh Object")).a(this));
    if (c == null)
      c = (new NameSpace(bshClassManager, "Bsh Shared System Object")).a(this); 
    a("bsh.system", c);
    a("bsh.shared", c);
    a("bsh.help", (new NameSpace(bshClassManager, "Bsh Command Help Text")).a(this));
    try {
      a("bsh.cwd", System.getProperty("user.dir"));
    } catch (SecurityException bshClassManager) {
      a("bsh.cwd", ".");
    } 
    a("bsh.interactive", new Primitive(this.m));
    a("bsh.evalOnly", new Primitive(this.l));
  }
  
  private JJTParserState d() { return this.d.a; }
  
  public static final void debug(String paramString) {
    if (DEBUG) {
      PrintStream printStream = a;
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("// Debug: ");
      stringBuffer.append(paramString);
      printStream.println(stringBuffer.toString());
    } 
  }
  
  private boolean e() { return this.d.Line(); }
  
  private String f() {
    try {
      return (String)eval("getBshPrompt()");
    } catch (Exception exception) {
      return "bsh % ";
    } 
  }
  
  public static void invokeMain(Class paramClass, String[] paramArrayOfString) {
    Class clazz;
    if (n == null) {
      clazz = b("[Ljava.lang.String;");
      n = clazz;
    } else {
      clazz = n;
    } 
    Method method = Reflect.a(null, paramClass, "main", new Class[] { clazz }, true);
    if (method != null)
      method.invoke(null, new Object[] { paramArrayOfString }); 
  }
  
  public static void main(String[] paramArrayOfString) {
    if (paramArrayOfString.length > 0) {
      String str = paramArrayOfString[0];
      if (paramArrayOfString.length > 1) {
        String[] arrayOfString = new String[paramArrayOfString.length - 1];
        System.arraycopy(paramArrayOfString, 1, arrayOfString, 0, paramArrayOfString.length - 1);
        paramArrayOfString = arrayOfString;
      } else {
        paramArrayOfString = new String[0];
      } 
      interpreter = new Interpreter();
      interpreter.a("bsh.args", paramArrayOfString);
      try {
        Object object = interpreter.source(str, interpreter.e);
        boolean bool = object instanceof Class;
        if (bool)
          try {
            invokeMain((Class)object, paramArrayOfString);
            return;
          } catch (Exception interpreter) {
            Throwable throwable = interpreter;
            if (interpreter instanceof InvocationTargetException)
              throwable = ((InvocationTargetException)interpreter).getTargetException(); 
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Class: ");
            stringBuffer.append(object);
            stringBuffer.append(" main method threw exception:");
            stringBuffer.append(throwable);
            printStream.println(stringBuffer.toString());
            return;
          }  
      } catch (FileNotFoundException fileNotFoundException) {
        PrintStream printStream = System.out;
        StringBuffer stringBuffer = new StringBuffer();
        str = "File not found: ";
        stringBuffer.append(str);
        stringBuffer.append(fileNotFoundException);
        printStream.println(stringBuffer.toString());
        return;
      } catch (TargetError paramArrayOfString) {
        PrintStream printStream = System.out;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Script threw exception: ");
        stringBuffer.append(paramArrayOfString);
        printStream.println(stringBuffer.toString());
        if (paramArrayOfString.inNativeCode()) {
          paramArrayOfString.printStackTrace(DEBUG, System.err);
          return;
        } 
      } catch (EvalError evalError) {
        PrintStream printStream = System.out;
        StringBuffer stringBuffer = new StringBuffer();
        str = "Evaluation Error: ";
      } catch (IOException iOException) {
        PrintStream printStream = System.out;
        StringBuffer stringBuffer = new StringBuffer();
        str = "I/O Error: ";
      } 
    } else {
      InputStream inputStream;
      if (System.getProperty("os.name").startsWith("Windows") && System.getProperty("java.version").startsWith("1.1.")) {
        inputStream = new Interpreter$1(System.in);
      } else {
        inputStream = System.in;
      } 
      (new Interpreter(new CommandLineReader(new InputStreamReader(inputStream)), System.out, System.err, true)).run();
    } 
  }
  
  public static void redirectOutputToFile(String paramString) {
    try {
      PrintStream printStream = new PrintStream(new FileOutputStream(paramString));
      System.setOut(printStream);
      System.setErr(printStream);
      return;
    } catch (IOException iOException) {
      PrintStream printStream = System.err;
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Can't redirect output to file: ");
      stringBuffer.append(paramString);
      printStream.println(stringBuffer.toString());
      return;
    } 
  }
  
  Object a(String paramString) {
    try {
      return get(paramString);
    } catch (EvalError paramString) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("set: ");
      stringBuffer.append(paramString);
      throw new InterpreterError(stringBuffer.toString());
    } 
  }
  
  void a() {
    try {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(System.getProperty("user.home"));
      stringBuffer.append(File.separator);
      stringBuffer.append(".bshrc");
      source(stringBuffer.toString(), this.e);
      return;
    } catch (Exception exception) {
      if (DEBUG) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Could not find rc file: ");
        stringBuffer.append(exception);
        debug(stringBuffer.toString());
      } 
      return;
    } 
  }
  
  void a(String paramString, Object paramObject) {
    try {
      set(paramString, paramObject);
      return;
    } catch (EvalError paramString) {
      paramObject = new StringBuffer();
      paramObject.append("set: ");
      paramObject.append(paramString);
      throw new InterpreterError(paramObject.toString());
    } 
  }
  
  public final void error(Object paramObject) {
    if (this.i != null) {
      ConsoleInterface consoleInterface = this.i;
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("// Error: ");
      stringBuffer1.append(paramObject);
      stringBuffer1.append("\n");
      consoleInterface.error(stringBuffer1.toString());
      return;
    } 
    PrintStream printStream = this.h;
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("// Error: ");
    stringBuffer.append(paramObject);
    printStream.println(stringBuffer.toString());
    this.h.flush();
  }
  
  public Object eval(Reader paramReader) { return eval(paramReader, this.e, "eval stream"); }
  
  public Object eval(Reader paramReader, NameSpace paramNameSpace, String paramString) { // Byte code:
    //   0: getstatic bsh/Interpreter.DEBUG : Z
    //   3: ifeq -> 39
    //   6: new java/lang/StringBuffer
    //   9: dup
    //   10: invokespecial <init> : ()V
    //   13: astore #6
    //   15: aload #6
    //   17: ldc_w 'eval: nameSpace = '
    //   20: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   23: pop
    //   24: aload #6
    //   26: aload_2
    //   27: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   30: pop
    //   31: aload #6
    //   33: invokevirtual toString : ()Ljava/lang/String;
    //   36: invokestatic debug : (Ljava/lang/String;)V
    //   39: new bsh/Interpreter
    //   42: dup
    //   43: aload_1
    //   44: aload_0
    //   45: getfield g : Ljava/io/PrintStream;
    //   48: aload_0
    //   49: getfield h : Ljava/io/PrintStream;
    //   52: iconst_0
    //   53: aload_2
    //   54: aload_0
    //   55: aload_3
    //   56: invokespecial <init> : (Ljava/io/Reader;Ljava/io/PrintStream;Ljava/io/PrintStream;ZLbsh/NameSpace;Lbsh/Interpreter;Ljava/lang/String;)V
    //   59: astore #11
    //   61: new bsh/CallStack
    //   64: dup
    //   65: aload_2
    //   66: invokespecial <init> : (Lbsh/NameSpace;)V
    //   69: astore #10
    //   71: iconst_0
    //   72: istore #5
    //   74: aconst_null
    //   75: astore #6
    //   77: iload #5
    //   79: ifeq -> 85
    //   82: goto -> 278
    //   85: aload #11
    //   87: invokespecial e : ()Z
    //   90: istore #4
    //   92: aload #6
    //   94: astore_1
    //   95: aload #11
    //   97: invokespecial d : ()Lbsh/JJTParserState;
    //   100: invokevirtual d : ()I
    //   103: ifle -> 411
    //   106: aload #11
    //   108: invokespecial d : ()Lbsh/JJTParserState;
    //   111: invokevirtual b : ()Lbsh/Node;
    //   114: checkcast bsh/SimpleNode
    //   117: astore_1
    //   118: aload_1
    //   119: aload_3
    //   120: invokevirtual setSourceFile : (Ljava/lang/String;)V
    //   123: getstatic bsh/Interpreter.TRACE : Z
    //   126: ifeq -> 166
    //   129: new java/lang/StringBuffer
    //   132: dup
    //   133: invokespecial <init> : ()V
    //   136: astore #7
    //   138: aload #7
    //   140: ldc_w '// '
    //   143: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   146: pop
    //   147: aload #7
    //   149: aload_1
    //   150: invokevirtual getText : ()Ljava/lang/String;
    //   153: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   156: pop
    //   157: aload_0
    //   158: aload #7
    //   160: invokevirtual toString : ()Ljava/lang/String;
    //   163: invokevirtual println : (Ljava/lang/Object;)V
    //   166: aload_1
    //   167: aload #10
    //   169: aload #11
    //   171: invokevirtual eval : (Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    //   174: astore #7
    //   176: aload #10
    //   178: invokevirtual depth : ()I
    //   181: iconst_1
    //   182: if_icmple -> 224
    //   185: new java/lang/StringBuffer
    //   188: dup
    //   189: invokespecial <init> : ()V
    //   192: astore #6
    //   194: aload #6
    //   196: ldc_w 'Callstack growing: '
    //   199: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   202: pop
    //   203: aload #6
    //   205: aload #10
    //   207: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   210: pop
    //   211: new bsh/InterpreterError
    //   214: dup
    //   215: aload #6
    //   217: invokevirtual toString : ()Ljava/lang/String;
    //   220: invokespecial <init> : (Ljava/lang/String;)V
    //   223: athrow
    //   224: aload #7
    //   226: instanceof bsh/ReturnControl
    //   229: ifeq -> 284
    //   232: aload #7
    //   234: checkcast bsh/ReturnControl
    //   237: getfield value : Ljava/lang/Object;
    //   240: astore #8
    //   242: aload #11
    //   244: invokespecial d : ()Lbsh/JJTParserState;
    //   247: invokevirtual a : ()V
    //   250: aload #8
    //   252: astore #6
    //   254: aload #10
    //   256: invokevirtual depth : ()I
    //   259: iconst_1
    //   260: if_icmple -> 278
    //   263: aload #10
    //   265: invokevirtual clear : ()V
    //   268: aload #10
    //   270: aload_2
    //   271: invokevirtual push : (Lbsh/NameSpace;)V
    //   274: aload #8
    //   276: astore #6
    //   278: aload #6
    //   280: invokestatic unwrap : (Ljava/lang/Object;)Ljava/lang/Object;
    //   283: areturn
    //   284: aload #11
    //   286: getfield q : Z
    //   289: ifeq -> 344
    //   292: aload #7
    //   294: getstatic bsh/Primitive.VOID : Lbsh/Primitive;
    //   297: if_acmpeq -> 344
    //   300: new java/lang/StringBuffer
    //   303: dup
    //   304: invokespecial <init> : ()V
    //   307: astore #6
    //   309: aload #6
    //   311: ldc_w '<'
    //   314: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   317: pop
    //   318: aload #6
    //   320: aload #7
    //   322: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   325: pop
    //   326: aload #6
    //   328: ldc_w '>'
    //   331: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   334: pop
    //   335: aload_0
    //   336: aload #6
    //   338: invokevirtual toString : ()Ljava/lang/String;
    //   341: invokevirtual println : (Ljava/lang/Object;)V
    //   344: aload #7
    //   346: astore_1
    //   347: goto -> 411
    //   350: astore #8
    //   352: aload_1
    //   353: astore #6
    //   355: iload #4
    //   357: istore #5
    //   359: aload #7
    //   361: astore_1
    //   362: goto -> 599
    //   365: astore #6
    //   367: aload_1
    //   368: astore #8
    //   370: iload #4
    //   372: istore #5
    //   374: aload #7
    //   376: astore_1
    //   377: goto -> 717
    //   380: astore #6
    //   382: goto -> 466
    //   385: astore #6
    //   387: goto -> 527
    //   390: astore #7
    //   392: goto -> 956
    //   395: astore #8
    //   397: aload_1
    //   398: astore #7
    //   400: aload #8
    //   402: astore_1
    //   403: goto -> 699
    //   406: astore #6
    //   408: goto -> 820
    //   411: aload #11
    //   413: invokespecial d : ()Lbsh/JJTParserState;
    //   416: invokevirtual a : ()V
    //   419: aload #10
    //   421: invokevirtual depth : ()I
    //   424: iconst_1
    //   425: if_icmple -> 439
    //   428: aload #10
    //   430: invokevirtual clear : ()V
    //   433: aload #10
    //   435: aload_2
    //   436: invokevirtual push : (Lbsh/NameSpace;)V
    //   439: iload #4
    //   441: istore #5
    //   443: aload_1
    //   444: astore #6
    //   446: goto -> 77
    //   449: astore #7
    //   451: goto -> 954
    //   454: astore_1
    //   455: goto -> 696
    //   458: astore_1
    //   459: goto -> 911
    //   462: astore #6
    //   464: aconst_null
    //   465: astore_1
    //   466: new java/lang/StringBuffer
    //   469: dup
    //   470: invokespecial <init> : ()V
    //   473: astore #7
    //   475: aload #7
    //   477: ldc_w 'Sourced file: '
    //   480: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   483: pop
    //   484: aload #7
    //   486: aload_3
    //   487: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   490: pop
    //   491: aload #7
    //   493: ldc_w ' Token Parsing Error: '
    //   496: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   499: pop
    //   500: aload #7
    //   502: aload #6
    //   504: invokevirtual getMessage : ()Ljava/lang/String;
    //   507: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   510: pop
    //   511: new bsh/EvalError
    //   514: dup
    //   515: aload #7
    //   517: invokevirtual toString : ()Ljava/lang/String;
    //   520: aload_1
    //   521: aload #10
    //   523: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   526: athrow
    //   527: getstatic bsh/Interpreter.DEBUG : Z
    //   530: ifeq -> 538
    //   533: aload #6
    //   535: invokestatic a : (Ljava/lang/Throwable;)V
    //   538: new java/lang/StringBuffer
    //   541: dup
    //   542: invokespecial <init> : ()V
    //   545: astore #7
    //   547: aload #7
    //   549: ldc_w 'Sourced file: '
    //   552: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   555: pop
    //   556: aload #7
    //   558: aload_3
    //   559: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   562: pop
    //   563: aload #7
    //   565: ldc_w ' unknown error: '
    //   568: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   571: pop
    //   572: aload #7
    //   574: aload #6
    //   576: invokevirtual getMessage : ()Ljava/lang/String;
    //   579: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   582: pop
    //   583: new bsh/EvalError
    //   586: dup
    //   587: aload #7
    //   589: invokevirtual toString : ()Ljava/lang/String;
    //   592: aload_1
    //   593: aload #10
    //   595: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   598: athrow
    //   599: getstatic bsh/Interpreter.DEBUG : Z
    //   602: ifeq -> 610
    //   605: aload #8
    //   607: invokestatic a : (Ljava/lang/Throwable;)V
    //   610: aload #8
    //   612: invokevirtual a : ()Lbsh/SimpleNode;
    //   615: ifnonnull -> 625
    //   618: aload #8
    //   620: aload #6
    //   622: invokevirtual a : (Lbsh/SimpleNode;)V
    //   625: new java/lang/StringBuffer
    //   628: dup
    //   629: invokespecial <init> : ()V
    //   632: astore #6
    //   634: aload #6
    //   636: ldc_w 'Sourced file: '
    //   639: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   642: pop
    //   643: aload #6
    //   645: aload_3
    //   646: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   649: pop
    //   650: aload #8
    //   652: aload #6
    //   654: invokevirtual toString : ()Ljava/lang/String;
    //   657: invokevirtual reThrow : (Ljava/lang/String;)V
    //   660: aload #11
    //   662: invokespecial d : ()Lbsh/JJTParserState;
    //   665: invokevirtual a : ()V
    //   668: iload #5
    //   670: istore #4
    //   672: aload_1
    //   673: astore #6
    //   675: aload #10
    //   677: invokevirtual depth : ()I
    //   680: iconst_1
    //   681: if_icmple -> 809
    //   684: iload #5
    //   686: istore #4
    //   688: goto -> 795
    //   691: astore_1
    //   692: iload #5
    //   694: istore #4
    //   696: aconst_null
    //   697: astore #7
    //   699: aload_1
    //   700: astore #8
    //   702: aload #6
    //   704: astore_1
    //   705: iload #4
    //   707: istore #5
    //   709: aload #8
    //   711: astore #6
    //   713: aload #7
    //   715: astore #8
    //   717: aload #6
    //   719: invokevirtual a : ()Lbsh/SimpleNode;
    //   722: ifnonnull -> 732
    //   725: aload #6
    //   727: aload #8
    //   729: invokevirtual a : (Lbsh/SimpleNode;)V
    //   732: new java/lang/StringBuffer
    //   735: dup
    //   736: invokespecial <init> : ()V
    //   739: astore #7
    //   741: aload #7
    //   743: ldc_w 'Sourced file: '
    //   746: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   749: pop
    //   750: aload #7
    //   752: aload_3
    //   753: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   756: pop
    //   757: aload #6
    //   759: aload #7
    //   761: invokevirtual toString : ()Ljava/lang/String;
    //   764: invokevirtual reThrow : (Ljava/lang/String;)V
    //   767: aload #11
    //   769: invokespecial d : ()Lbsh/JJTParserState;
    //   772: invokevirtual a : ()V
    //   775: iload #5
    //   777: istore #4
    //   779: aload_1
    //   780: astore #6
    //   782: aload #10
    //   784: invokevirtual depth : ()I
    //   787: iconst_1
    //   788: if_icmple -> 809
    //   791: iload #5
    //   793: istore #4
    //   795: aload #10
    //   797: invokevirtual clear : ()V
    //   800: aload #10
    //   802: aload_2
    //   803: invokevirtual push : (Lbsh/NameSpace;)V
    //   806: aload_1
    //   807: astore #6
    //   809: iload #4
    //   811: istore #5
    //   813: goto -> 77
    //   816: astore #6
    //   818: aconst_null
    //   819: astore_1
    //   820: aload #6
    //   822: invokestatic a : (Ljava/lang/Throwable;)V
    //   825: new java/lang/StringBuffer
    //   828: dup
    //   829: invokespecial <init> : ()V
    //   832: astore #7
    //   834: aload #7
    //   836: ldc_w 'Sourced file: '
    //   839: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   842: pop
    //   843: aload #7
    //   845: aload_3
    //   846: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   849: pop
    //   850: aload #7
    //   852: ldc_w ' internal Error: '
    //   855: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   858: pop
    //   859: aload #7
    //   861: aload #6
    //   863: invokevirtual getMessage : ()Ljava/lang/String;
    //   866: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   869: pop
    //   870: new bsh/EvalError
    //   873: dup
    //   874: aload #7
    //   876: invokevirtual toString : ()Ljava/lang/String;
    //   879: aload_1
    //   880: aload #10
    //   882: invokespecial <init> : (Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V
    //   885: athrow
    //   886: astore_1
    //   887: getstatic bsh/Interpreter.DEBUG : Z
    //   890: ifeq -> 904
    //   893: aload_0
    //   894: aload_1
    //   895: getstatic bsh/Interpreter.DEBUG : Z
    //   898: invokevirtual getMessage : (Z)Ljava/lang/String;
    //   901: invokevirtual error : (Ljava/lang/Object;)V
    //   904: aload_1
    //   905: aload_3
    //   906: invokevirtual setErrorSourceFile : (Ljava/lang/String;)V
    //   909: aload_1
    //   910: athrow
    //   911: aload #11
    //   913: invokespecial d : ()Lbsh/JJTParserState;
    //   916: invokevirtual a : ()V
    //   919: aload #10
    //   921: invokevirtual depth : ()I
    //   924: iconst_1
    //   925: if_icmple -> 939
    //   928: aload #10
    //   930: invokevirtual clear : ()V
    //   933: aload #10
    //   935: aload_2
    //   936: invokevirtual push : (Lbsh/NameSpace;)V
    //   939: aload_1
    //   940: athrow
    //   941: astore #6
    //   943: aconst_null
    //   944: astore_1
    //   945: goto -> 527
    //   948: astore #7
    //   950: iload #5
    //   952: istore #4
    //   954: aconst_null
    //   955: astore_1
    //   956: aload #6
    //   958: astore #9
    //   960: aload_1
    //   961: astore #6
    //   963: aload #7
    //   965: astore #8
    //   967: iload #4
    //   969: istore #5
    //   971: aload #9
    //   973: astore_1
    //   974: goto -> 599
    // Exception table:
    //   from	to	target	type
    //   85	92	886	bsh/ParseException
    //   85	92	816	bsh/InterpreterError
    //   85	92	691	bsh/TargetError
    //   85	92	948	bsh/EvalError
    //   85	92	941	java/lang/Exception
    //   85	92	462	bsh/TokenMgrError
    //   85	92	458	finally
    //   95	118	886	bsh/ParseException
    //   95	118	816	bsh/InterpreterError
    //   95	118	454	bsh/TargetError
    //   95	118	449	bsh/EvalError
    //   95	118	941	java/lang/Exception
    //   95	118	462	bsh/TokenMgrError
    //   95	118	458	finally
    //   118	166	886	bsh/ParseException
    //   118	166	406	bsh/InterpreterError
    //   118	166	395	bsh/TargetError
    //   118	166	390	bsh/EvalError
    //   118	166	385	java/lang/Exception
    //   118	166	380	bsh/TokenMgrError
    //   118	166	458	finally
    //   166	176	886	bsh/ParseException
    //   166	176	406	bsh/InterpreterError
    //   166	176	395	bsh/TargetError
    //   166	176	390	bsh/EvalError
    //   166	176	385	java/lang/Exception
    //   166	176	380	bsh/TokenMgrError
    //   166	176	458	finally
    //   176	224	886	bsh/ParseException
    //   176	224	406	bsh/InterpreterError
    //   176	224	365	bsh/TargetError
    //   176	224	350	bsh/EvalError
    //   176	224	385	java/lang/Exception
    //   176	224	380	bsh/TokenMgrError
    //   176	224	458	finally
    //   224	242	886	bsh/ParseException
    //   224	242	406	bsh/InterpreterError
    //   224	242	365	bsh/TargetError
    //   224	242	350	bsh/EvalError
    //   224	242	385	java/lang/Exception
    //   224	242	380	bsh/TokenMgrError
    //   224	242	458	finally
    //   284	344	886	bsh/ParseException
    //   284	344	406	bsh/InterpreterError
    //   284	344	365	bsh/TargetError
    //   284	344	350	bsh/EvalError
    //   284	344	385	java/lang/Exception
    //   284	344	380	bsh/TokenMgrError
    //   284	344	458	finally
    //   466	527	458	finally
    //   527	538	458	finally
    //   538	599	458	finally
    //   599	610	458	finally
    //   610	625	458	finally
    //   625	660	458	finally
    //   717	732	458	finally
    //   732	767	458	finally
    //   820	886	458	finally
    //   887	904	458	finally
    //   904	911	458	finally }
  
  public Object eval(String paramString) {
    if (DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("eval(String): ");
      stringBuffer.append(paramString);
      debug(stringBuffer.toString());
    } 
    return eval(paramString, this.e);
  }
  
  public Object eval(String paramString, NameSpace paramNameSpace) {
    if (!paramString.endsWith(";")) {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(paramString);
      stringBuffer1.append(";");
      paramString = stringBuffer1.toString();
    } 
    StringReader stringReader = new StringReader(paramString);
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("inline evaluation of: ``");
    stringBuffer.append(c(paramString));
    stringBuffer.append("''");
    return eval(stringReader, paramNameSpace, stringBuffer.toString());
  }
  
  public Object get(String paramString) {
    try {
      return Primitive.unwrap(this.e.get(paramString, this));
    } catch (UtilEvalError paramString) {
      throw paramString.toEvalError(SimpleNode.JAVACODE, new CallStack());
    } 
  }
  
  public BshClassManager getClassManager() { return getNameSpace().getClassManager(); }
  
  public PrintStream getErr() { return this.h; }
  
  public Reader getIn() { return this.f; }
  
  public Object getInterface(Class paramClass) {
    try {
      return this.e.a(this).getInterface(paramClass);
    } catch (UtilEvalError paramClass) {
      throw paramClass.toEvalError(SimpleNode.JAVACODE, new CallStack());
    } 
  }
  
  public NameSpace getNameSpace() { return this.e; }
  
  public PrintStream getOut() { return this.g; }
  
  public Interpreter getParent() { return this.j; }
  
  public boolean getShowResults() { return this.q; }
  
  public String getSourceFileInfo() { return (this.k != null) ? this.k : "<unknown source>"; }
  
  public boolean getStrictJava() { return this.o; }
  
  public File pathToFile(String paramString) {
    File file2 = new File(paramString);
    File file1 = file2;
    if (!file2.isAbsolute()) {
      String str = (String)a("bsh.cwd");
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(str);
      stringBuffer.append(File.separator);
      stringBuffer.append(paramString);
      file1 = new File(stringBuffer.toString());
    } 
    return new File(file1.getCanonicalPath());
  }
  
  public final void print(Object paramObject) {
    if (this.i != null) {
      this.i.print(paramObject);
      return;
    } 
    this.g.print(paramObject);
    this.g.flush();
  }
  
  public final void println(Object paramObject) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(String.valueOf(paramObject));
    stringBuffer.append(b);
    print(stringBuffer.toString());
  }
  
  public void run() {
    if (this.l)
      throw new RuntimeException("bsh Interpreter: No stream"); 
    if (this.m)
      try {
        eval("printBanner();");
      } catch (EvalError evalError) {
        println("BeanShell 2.0b4 - by Pat Niemeyer (pat@pat.net)");
      }  
    CallStack callStack = new CallStack(this.e);
    boolean bool = false;
    while (true) {
      Object[] arrayOfObject;
      boolean bool1;
      if (bool) {
        if (this.m && this.p)
          System.exit(0); 
        return;
      } 
      try {
        System.out.flush();
        System.err.flush();
        Thread.yield();
        if (this.m)
          print(f()); 
        bool1 = e();
        try {
          if (d().d() > 0) {
            SimpleNode simpleNode = (SimpleNode)d().b();
            if (DEBUG)
              simpleNode.dump(">"); 
            Object object = simpleNode.eval(callStack, this);
            if (callStack.depth() > 1) {
              StringBuffer stringBuffer1 = new StringBuffer();
              stringBuffer1.append("Callstack growing: ");
              stringBuffer1.append(callStack);
              throw new InterpreterError(stringBuffer1.toString());
            } 
            arrayOfObject = object;
            if (object instanceof ReturnControl)
              arrayOfObject = ((ReturnControl)object).value; 
            if (arrayOfObject != Primitive.VOID) {
              a("$_", arrayOfObject);
              if (this.q) {
                object = new StringBuffer();
                object.append("<");
                object.append(arrayOfObject);
                object.append(">");
                println(object.toString());
              } 
            } 
          } 
          d().a();
          bool = bool1;
          if (callStack.depth() > 1) {
            bool = bool1;
          } else {
            continue;
          } 
          callStack.clear();
          callStack.push(this.e);
          continue;
        } catch (ParseException null) {
        
        } catch (InterpreterError null) {
        
        } catch (TargetError null) {
        
        } catch (EvalError null) {
        
        } catch (Exception null) {
        
        } catch (TokenMgrError null) {}
      } catch (ParseException null) {
        bool1 = bool;
      } catch (InterpreterError null) {
        bool1 = bool;
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("Internal Error: ");
        stringBuffer1.append(arrayOfObject.getMessage());
        error(stringBuffer1.toString());
        a.a(arrayOfObject);
        bool = this.m;
        if (!bool)
          bool1 = true; 
        d().a();
        bool = bool1;
        if (callStack.depth() > 1) {
          bool = bool1;
        } else {
          continue;
        } 
        callStack.clear();
        callStack.push(this.e);
        continue;
      } catch (TargetError null) {
        bool1 = bool;
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("// Uncaught Exception: ");
        stringBuffer1.append(arrayOfObject);
        error(stringBuffer1.toString());
        if (arrayOfObject.inNativeCode())
          arrayOfObject.printStackTrace(DEBUG, this.h); 
        if (!this.m)
          bool1 = true; 
        a("$_e", arrayOfObject.getTarget());
        d().a();
        bool = bool1;
        if (callStack.depth() > 1) {
          bool = bool1;
        } else {
          continue;
        } 
        callStack.clear();
        callStack.push(this.e);
        continue;
      } catch (EvalError null) {
        String str;
        bool1 = bool;
        if (this.m) {
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append("EvalError: ");
          stringBuffer1.append(arrayOfObject.toString());
          str = stringBuffer1.toString();
        } else {
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append("EvalError: ");
          stringBuffer1.append(arrayOfObject.getMessage());
          str = stringBuffer1.toString();
        } 
        error(str);
        if (DEBUG)
          a.a(arrayOfObject); 
        bool = this.m;
        if (!bool)
          bool1 = true; 
        d().a();
        bool = bool1;
        if (callStack.depth() > 1) {
          bool = bool1;
        } else {
          continue;
        } 
        callStack.clear();
        callStack.push(this.e);
        continue;
      } catch (Exception null) {
        bool1 = bool;
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("Unknown error: ");
        stringBuffer1.append(arrayOfObject);
        error(stringBuffer1.toString());
        if (DEBUG)
          a.a(arrayOfObject); 
        bool = this.m;
        if (!bool)
          bool1 = true; 
        d().a();
        bool = bool1;
        if (callStack.depth() > 1) {
          bool = bool1;
        } else {
          continue;
        } 
        callStack.clear();
        callStack.push(this.e);
        continue;
      } catch (TokenMgrError null) {
        bool1 = bool;
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("Error parsing input: ");
        stringBuffer1.append(arrayOfObject);
        error(stringBuffer1.toString());
        this.d.b(this.f);
        bool = this.m;
        if (!bool)
          bool1 = true; 
        d().a();
        bool = bool1;
        if (callStack.depth() > 1) {
          bool = bool1;
        } else {
          continue;
        } 
        callStack.clear();
        callStack.push(this.e);
        continue;
      } finally {}
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Parser Error: ");
      stringBuffer.append(arrayOfObject.getMessage(DEBUG));
      error(stringBuffer.toString());
      if (DEBUG)
        a.a(arrayOfObject); 
      if (!this.m)
        bool1 = true; 
      this.d.a(this.f);
      d().a();
      bool = bool1;
      if (callStack.depth() > 1) {
        bool = bool1;
      } else {
        continue;
      } 
      callStack.clear();
      callStack.push(this.e);
    } 
  }
  
  public void set(String paramString, double paramDouble) { set(paramString, new Primitive(paramDouble)); }
  
  public void set(String paramString, float paramFloat) { set(paramString, new Primitive(paramFloat)); }
  
  public void set(String paramString, int paramInt) { set(paramString, new Primitive(paramInt)); }
  
  public void set(String paramString, long paramLong) { set(paramString, new Primitive(paramLong)); }
  
  public void set(String paramString, Object paramObject) {
    Object object = paramObject;
    if (paramObject == null)
      object = Primitive.NULL; 
    paramObject = new CallStack();
    try {
      if (Name.isCompound(paramString)) {
        this.e.b(paramString).toLHS(paramObject, this).assign(object, false);
        return;
      } 
      this.e.setVariable(paramString, object, false);
      return;
    } catch (UtilEvalError paramString) {
      throw paramString.toEvalError(SimpleNode.JAVACODE, paramObject);
    } 
  }
  
  public void set(String paramString, boolean paramBoolean) { set(paramString, new Primitive(paramBoolean)); }
  
  public void setClassLoader(ClassLoader paramClassLoader) { getClassManager().setClassLoader(paramClassLoader); }
  
  public void setConsole(ConsoleInterface paramConsoleInterface) {
    this.i = paramConsoleInterface;
    a("bsh.console", paramConsoleInterface);
    setOut(paramConsoleInterface.getOut());
    setErr(paramConsoleInterface.getErr());
  }
  
  public void setErr(PrintStream paramPrintStream) { this.h = paramPrintStream; }
  
  public void setExitOnEOF(boolean paramBoolean) { this.p = paramBoolean; }
  
  public void setNameSpace(NameSpace paramNameSpace) { this.e = paramNameSpace; }
  
  public void setOut(PrintStream paramPrintStream) { this.g = paramPrintStream; }
  
  public void setShowResults(boolean paramBoolean) { this.q = paramBoolean; }
  
  public void setStrictJava(boolean paramBoolean) { this.o = paramBoolean; }
  
  public Object source(String paramString) { return source(paramString, this.e); }
  
  public Object source(String paramString, NameSpace paramNameSpace) {
    File file = pathToFile(paramString);
    if (DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Sourcing file: ");
      stringBuffer.append(file);
      debug(stringBuffer.toString());
    } 
    bufferedReader = new BufferedReader(new FileReader(file));
    try {
      return eval(bufferedReader, paramNameSpace, paramString);
    } finally {
      bufferedReader.close();
    } 
  }
  
  public void unset(String paramString) {
    CallStack callStack = new CallStack();
    try {
      StringBuffer stringBuffer = this.e.b(paramString).toLHS(callStack, this);
      if (stringBuffer.c != 0) {
        stringBuffer = new StringBuffer();
        stringBuffer.append("Can't unset, not a variable: ");
        stringBuffer.append(paramString);
        throw new EvalError(stringBuffer.toString(), SimpleNode.JAVACODE, new CallStack());
      } 
      stringBuffer.a.unsetVariable(paramString);
      return;
    } catch (UtilEvalError paramString) {
      throw new EvalError(paramString.getMessage(), SimpleNode.JAVACODE, new CallStack());
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Interpreter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
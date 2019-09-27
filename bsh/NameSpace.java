package bsh;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class NameSpace implements BshClassManager.Listener, NameSource, Serializable {
  public static final NameSpace JAVACODE = new NameSpace((BshClassManager)null, "Called from compiled Java code.");
  
  protected Hashtable a;
  
  SimpleNode b;
  
  boolean c;
  
  boolean d;
  
  Class e;
  
  Object f;
  
  Vector g;
  
  private String h;
  
  private NameSpace i;
  
  private Hashtable j;
  
  private Hashtable k;
  
  private Vector l;
  
  private Vector m;
  
  private Vector n;
  
  private Vector o;
  
  private String p;
  
  private BshClassManager q;
  
  private This r;
  
  private Hashtable s;
  
  private Hashtable t;
  
  static  {
    JAVACODE.c = true;
  }
  
  public NameSpace(BshClassManager paramBshClassManager, String paramString) { this(null, paramBshClassManager, paramString); }
  
  public NameSpace(NameSpace paramNameSpace, BshClassManager paramBshClassManager, String paramString) {
    setName(paramString);
    setParent(paramNameSpace);
    a(paramBshClassManager);
    if (paramBshClassManager != null)
      paramBshClassManager.addListener(this); 
  }
  
  public NameSpace(NameSpace paramNameSpace, String paramString) { this(paramNameSpace, null, paramString); }
  
  private BshMethod a(InputStream paramInputStream, String paramString1, Class[] paramArrayOfClass, String paramString2, Interpreter paramInterpreter) {
    try {
      paramInterpreter.eval(new InputStreamReader(paramInputStream), this, paramString2);
      return getMethod(paramString1, paramArrayOfClass);
    } catch (EvalError paramInputStream) {
      Interpreter.debug(paramInputStream.toString());
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Error loading script: ");
      stringBuffer.append(paramInputStream.getMessage());
      throw new UtilEvalError(stringBuffer.toString());
    } 
  }
  
  private String[] a(Enumeration paramEnumeration) {
    Vector vector = new Vector();
    while (true) {
      String[] arrayOfString;
      if (!paramEnumeration.hasMoreElements()) {
        arrayOfString = new String[vector.size()];
        vector.copyInto(arrayOfString);
        return arrayOfString;
      } 
      vector.addElement(arrayOfString.nextElement());
    } 
  }
  
  private BshMethod[] b(Enumeration paramEnumeration) {
    Vector vector = new Vector();
    while (true) {
      BshMethod[] arrayOfBshMethod;
      if (!paramEnumeration.hasMoreElements()) {
        arrayOfBshMethod = new BshMethod[vector.size()];
        vector.copyInto(arrayOfBshMethod);
        return arrayOfBshMethod;
      } 
      Object object = arrayOfBshMethod.nextElement();
      if (object instanceof BshMethod) {
        vector.addElement(object);
        continue;
      } 
      object = (Vector)object;
      for (byte b1 = 0; b1 < object.size(); b1++)
        vector.addElement(object.elementAt(b1)); 
    } 
  }
  
  private Class d(String paramString) {
    if (this.t != null) {
      Class clazz1 = (Class)this.t.get(paramString);
      clazz = clazz1;
      if (clazz1 != null)
        return clazz1; 
    } else {
      clazz = null;
    } 
    boolean bool = Name.isCompound(paramString) ^ true;
    if (bool) {
      Class clazz1 = clazz;
      if (clazz == null)
        clazz1 = e(paramString); 
      if (clazz1 != null) {
        a(paramString, clazz1);
        return clazz1;
      } 
    } 
    Class clazz = f(paramString);
    if (clazz != null) {
      if (bool)
        a(paramString, clazz); 
      return clazz;
    } 
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("getClass(): ");
      stringBuffer.append(paramString);
      stringBuffer.append(" not\tfound in ");
      stringBuffer.append(this);
      Interpreter.debug(stringBuffer.toString());
    } 
    return null;
  }
  
  private Class e(String paramString) {
    String str;
    Class clazz;
    if (this.a != null) {
      str = (String)this.a.get(paramString);
    } else {
      str = null;
    } 
    if (str != null) {
      Class clazz1 = f(str);
      if (clazz1 == null) {
        if (Name.isCompound(str)) {
          try {
            clazz = b(str).toClass();
          } catch (ClassNotFoundException paramString) {
            clazz = clazz1;
          } 
        } else {
          clazz = clazz1;
          if (Interpreter.DEBUG) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("imported unpackaged name not found:");
            stringBuffer.append(str);
            Interpreter.debug(stringBuffer.toString());
            clazz = clazz1;
          } 
        } 
        if (clazz != null) {
          getClassManager().cacheClassInfo(str, clazz);
          return clazz;
        } 
        return null;
      } 
      return clazz1;
    } 
    if (this.l != null)
      for (int i1 = this.l.size() - 1; i1 >= 0; i1--) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append((String)this.l.elementAt(i1));
        stringBuffer.append(".");
        stringBuffer.append(clazz);
        Class clazz1 = f(stringBuffer.toString());
        if (clazz1 != null)
          return clazz1; 
      }  
    BshClassManager bshClassManager = getClassManager();
    if (bshClassManager.c()) {
      String str1 = bshClassManager.b(clazz);
      if (str1 != null)
        return f(str1); 
    } 
    return null;
  }
  
  private Class f(String paramString) { return getClassManager().classForName(paramString); }
  
  public static Class identifierToClass(ClassIdentifier paramClassIdentifier) { return paramClassIdentifier.getTargetClass(); }
  
  protected BshMethod a(String paramString, Class[] paramArrayOfClass) {
    Vector vector = this.n;
    boolean bool = false;
    if (vector != null)
      for (byte b1 = 0; b1 < this.n.size(); b1++) {
        Object object = this.n.elementAt(b1);
        Class clazz = object.getClass();
        Method method = Reflect.a(getClassManager(), clazz, paramString, paramArrayOfClass, false);
        if (method != null)
          return new BshMethod(method, object); 
      }  
    if (this.o != null)
      for (byte b1 = bool;; b1++) {
        if (b1 >= this.o.size())
          return null; 
        Class clazz = (Class)this.o.elementAt(b1);
        Method method = Reflect.a(getClassManager(), clazz, paramString, paramArrayOfClass, true);
        if (method != null)
          return new BshMethod(method, null); 
      }  
    return null;
  }
  
  This a(Interpreter paramInterpreter) {
    if (this.r == null)
      this.r = This.a(this, paramInterpreter); 
    return this.r;
  }
  
  protected Variable a(String paramString) {
    Vector vector = this.n;
    boolean bool = false;
    if (vector != null)
      for (byte b1 = 0; b1 < this.n.size(); b1++) {
        Object object = this.n.elementAt(b1);
        Field field = Reflect.a(object.getClass(), paramString, false);
        if (field != null)
          return new Variable(paramString, field.getType(), new LHS(object, field)); 
      }  
    if (this.o != null)
      for (byte b1 = bool; b1 < this.o.size(); b1++) {
        Field field = Reflect.a((Class)this.o.elementAt(b1), paramString, true);
        if (field != null)
          return new Variable(paramString, field.getType(), new LHS(field)); 
      }  
    return null;
  }
  
  protected Variable a(String paramString, boolean paramBoolean) {
    if (this.d) {
      variable2 = a(paramString);
    } else {
      variable2 = null;
    } 
    Variable variable1 = variable2;
    if (variable2 == null) {
      variable1 = variable2;
      if (this.j != null)
        variable1 = (Variable)this.j.get(paramString); 
    } 
    Variable variable2 = variable1;
    if (variable1 == null) {
      variable2 = variable1;
      if (!this.d)
        variable2 = a(paramString); 
    } 
    variable1 = variable2;
    if (paramBoolean) {
      variable1 = variable2;
      if (variable2 == null) {
        variable1 = variable2;
        if (this.i != null)
          variable1 = this.i.a(paramString, paramBoolean); 
      } 
    } 
    return variable1;
  }
  
  Object a() {
    if (this.f != null)
      return this.f; 
    if (this.e != null)
      throw new UtilEvalError("Can't refer to class instance from static context."); 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Can't resolve class instance 'this' in: ");
    stringBuffer.append(this);
    throw new InterpreterError(stringBuffer.toString());
  }
  
  protected Object a(Variable paramVariable) { return (paramVariable == null) ? Primitive.VOID : paramVariable.a(); }
  
  void a(BshClassManager paramBshClassManager) { this.q = paramBshClassManager; }
  
  void a(SimpleNode paramSimpleNode) { this.b = paramSimpleNode; }
  
  void a(Class paramClass) {
    this.e = paramClass;
    importStatic(paramClass);
  }
  
  void a(Object paramObject) {
    this.f = paramObject;
    importObject(paramObject);
  }
  
  void a(String paramString, Class paramClass) {
    if (this.t == null)
      this.t = new Hashtable(); 
    this.t.put(paramString, paramClass);
  }
  
  void a(String paramString, Object paramObject, boolean paramBoolean) { setVariable(paramString, paramObject, paramBoolean, false); }
  
  protected void a(Vector paramVector) {
    Enumeration enumeration = this.j.keys();
    while (true) {
      if (!enumeration.hasMoreElements()) {
        enumeration = this.k.keys();
        while (true) {
          if (!enumeration.hasMoreElements()) {
            if (this.i != null)
              this.i.a(paramVector); 
            return;
          } 
          paramVector.addElement(enumeration.nextElement());
        } 
        break;
      } 
      paramVector.addElement(enumeration.nextElement());
    } 
  }
  
  public void addNameSourceListener(NameSource.Listener paramListener) {
    if (this.g == null)
      this.g = new Vector(); 
    this.g.addElement(paramListener);
  }
  
  Name b(String paramString) {
    if (this.s == null)
      this.s = new Hashtable(); 
    Name name2 = (Name)this.s.get(paramString);
    Name name1 = name2;
    if (name2 == null) {
      name1 = new Name(this, paramString);
      this.s.put(paramString, name1);
    } 
    return name1;
  }
  
  SimpleNode b() { return (this.b != null) ? this.b : ((this.i != null) ? this.i.b() : null); }
  
  String c() { return (this.p != null) ? this.p : ((this.i != null) ? this.i.c() : null); }
  
  void c(String paramString) { this.p = paramString; }
  
  public void classLoaderChanged() { nameSpaceChanged(); }
  
  public void clear() {
    this.j = null;
    this.k = null;
    this.a = null;
    this.l = null;
    this.m = null;
    this.n = null;
    if (this.i == null)
      loadDefaultImports(); 
    this.t = null;
    this.s = null;
  }
  
  public void doSuperImport() { getClassManager().b(); }
  
  public Object get(String paramString, Interpreter paramInterpreter) {
    CallStack callStack = new CallStack(this);
    return b(paramString).toObject(callStack, paramInterpreter);
  }
  
  public String[] getAllNames() {
    Vector vector = new Vector();
    a(vector);
    String[] arrayOfString = new String[vector.size()];
    vector.copyInto(arrayOfString);
    return arrayOfString;
  }
  
  public Class getClass(String paramString) {
    Class clazz = d(paramString);
    return (clazz != null) ? clazz : ((this.i != null) ? this.i.getClass(paramString) : null);
  }
  
  public BshClassManager getClassManager() {
    if (this.q != null)
      return this.q; 
    if (this.i != null && this.i != JAVACODE)
      return this.i.getClassManager(); 
    System.out.println("experiment: creating class manager");
    this.q = BshClassManager.createClassManager(null);
    return this.q;
  }
  
  public Object getCommand(String paramString, Class[] paramArrayOfClass, Interpreter paramInterpreter) {
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("getCommand: ");
      stringBuffer.append(paramString);
      Interpreter.debug(stringBuffer.toString());
    } 
    BshClassManager bshClassManager = paramInterpreter.getClassManager();
    if (this.m != null) {
      int i1;
      for (i1 = this.m.size() - 1; i1 >= 0; i1--) {
        StringBuffer stringBuffer1;
        String str2 = (String)this.m.elementAt(i1);
        if (str2.equals("/")) {
          stringBuffer1 = new StringBuffer();
          stringBuffer1.append(str2);
        } else {
          stringBuffer1 = new StringBuffer();
          stringBuffer1.append(str2);
          stringBuffer1.append("/");
        } 
        stringBuffer1.append(paramString);
        stringBuffer1.append(".bsh");
        String str1 = stringBuffer1.toString();
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("searching for script: ");
        stringBuffer3.append(str1);
        Interpreter.debug(stringBuffer3.toString());
        InputStream inputStream = bshClassManager.getResourceAsStream(str1);
        if (inputStream != null)
          return a(inputStream, paramString, paramArrayOfClass, str1, paramInterpreter); 
        if (str2.equals("/")) {
          str1 = paramString;
        } else {
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append(str2.substring(1).replace('/', '.'));
          stringBuffer.append(".");
          stringBuffer.append(paramString);
          str1 = stringBuffer.toString();
        } 
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("searching for class: ");
        stringBuffer2.append(str1);
        Interpreter.debug(stringBuffer2.toString());
        Class clazz = bshClassManager.classForName(str1);
        if (clazz != null)
          return clazz; 
      } 
    } 
    return (this.i != null) ? this.i.getCommand(paramString, paramArrayOfClass, paramInterpreter) : null;
  }
  
  public Variable[] getDeclaredVariables() {
    Hashtable hashtable = this.j;
    byte b1 = 0;
    if (hashtable == null)
      return new Variable[0]; 
    Variable[] arrayOfVariable = new Variable[this.j.size()];
    Enumeration enumeration = this.j.elements();
    while (true) {
      if (!enumeration.hasMoreElements())
        return arrayOfVariable; 
      arrayOfVariable[b1] = (Variable)enumeration.nextElement();
      b1++;
    } 
  }
  
  public This getGlobal(Interpreter paramInterpreter) { return (this.i != null) ? this.i.getGlobal(paramInterpreter) : a(paramInterpreter); }
  
  public int getInvocationLine() {
    SimpleNode simpleNode = b();
    return (simpleNode != null) ? simpleNode.getLineNumber() : -1;
  }
  
  public String getInvocationText() {
    SimpleNode simpleNode = b();
    return (simpleNode != null) ? simpleNode.getText() : "<invoked from Java code>";
  }
  
  public BshMethod getMethod(String paramString, Class[] paramArrayOfClass) { return getMethod(paramString, paramArrayOfClass, false); }
  
  public BshMethod getMethod(String paramString, Class[] paramArrayOfClass, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: getfield d : Z
    //   4: ifeq -> 22
    //   7: iload_3
    //   8: ifne -> 22
    //   11: aload_0
    //   12: aload_1
    //   13: aload_2
    //   14: invokevirtual a : (Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    //   17: astore #6
    //   19: goto -> 25
    //   22: aconst_null
    //   23: astore #6
    //   25: aload #6
    //   27: astore #7
    //   29: aload #6
    //   31: ifnonnull -> 187
    //   34: aload #6
    //   36: astore #7
    //   38: aload_0
    //   39: getfield k : Ljava/util/Hashtable;
    //   42: ifnull -> 187
    //   45: aload_0
    //   46: getfield k : Ljava/util/Hashtable;
    //   49: aload_1
    //   50: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   53: astore #9
    //   55: aload #6
    //   57: astore #7
    //   59: aload #9
    //   61: ifnull -> 187
    //   64: aload #9
    //   66: instanceof java/util/Vector
    //   69: istore #5
    //   71: iconst_0
    //   72: istore #4
    //   74: iload #5
    //   76: ifeq -> 106
    //   79: aload #9
    //   81: checkcast java/util/Vector
    //   84: astore #7
    //   86: aload #7
    //   88: invokevirtual size : ()I
    //   91: anewarray bsh/BshMethod
    //   94: astore #8
    //   96: aload #7
    //   98: aload #8
    //   100: invokevirtual copyInto : ([Ljava/lang/Object;)V
    //   103: goto -> 121
    //   106: iconst_1
    //   107: anewarray bsh/BshMethod
    //   110: astore #8
    //   112: aload #8
    //   114: iconst_0
    //   115: aload #9
    //   117: checkcast bsh/BshMethod
    //   120: aastore
    //   121: aload #8
    //   123: arraylength
    //   124: anewarray [Ljava/lang/Class;
    //   127: astore #7
    //   129: iload #4
    //   131: aload #8
    //   133: arraylength
    //   134: if_icmplt -> 165
    //   137: aload_2
    //   138: aload #7
    //   140: invokestatic a : ([Ljava/lang/Class;[[Ljava/lang/Class;)I
    //   143: istore #4
    //   145: aload #6
    //   147: astore #7
    //   149: iload #4
    //   151: iconst_m1
    //   152: if_icmpeq -> 187
    //   155: aload #8
    //   157: iload #4
    //   159: aaload
    //   160: astore #7
    //   162: goto -> 187
    //   165: aload #7
    //   167: iload #4
    //   169: aload #8
    //   171: iload #4
    //   173: aaload
    //   174: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   177: aastore
    //   178: iload #4
    //   180: iconst_1
    //   181: iadd
    //   182: istore #4
    //   184: goto -> 129
    //   187: aload #7
    //   189: astore #6
    //   191: aload #7
    //   193: ifnonnull -> 223
    //   196: aload #7
    //   198: astore #6
    //   200: aload_0
    //   201: getfield d : Z
    //   204: ifne -> 223
    //   207: aload #7
    //   209: astore #6
    //   211: iload_3
    //   212: ifne -> 223
    //   215: aload_0
    //   216: aload_1
    //   217: aload_2
    //   218: invokevirtual a : (Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    //   221: astore #6
    //   223: iload_3
    //   224: ifne -> 249
    //   227: aload #6
    //   229: ifnonnull -> 249
    //   232: aload_0
    //   233: getfield i : Lbsh/NameSpace;
    //   236: ifnull -> 249
    //   239: aload_0
    //   240: getfield i : Lbsh/NameSpace;
    //   243: aload_1
    //   244: aload_2
    //   245: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;
    //   248: areturn
    //   249: aload #6
    //   251: areturn }
  
  public String[] getMethodNames() { return (this.k == null) ? new String[0] : a(this.k.keys()); }
  
  public BshMethod[] getMethods() { return (this.k == null) ? new BshMethod[0] : b(this.k.elements()); }
  
  public String getName() { return this.h; }
  
  public NameSpace getParent() { return this.i; }
  
  public This getSuper(Interpreter paramInterpreter) { return (this.i != null) ? this.i.a(paramInterpreter) : a(paramInterpreter); }
  
  public Object getVariable(String paramString) { return getVariable(paramString, true); }
  
  public Object getVariable(String paramString, boolean paramBoolean) { return a(a(paramString, paramBoolean)); }
  
  public String[] getVariableNames() { return (this.j == null) ? new String[0] : a(this.j.keys()); }
  
  public void importClass(String paramString) {
    if (this.a == null)
      this.a = new Hashtable(); 
    this.a.put(Name.suffix(paramString, 1), paramString);
    nameSpaceChanged();
  }
  
  public void importCommands(String paramString) {
    String str1;
    if (this.m == null)
      this.m = new Vector(); 
    String str2 = paramString.replace('.', '/');
    paramString = str2;
    if (!str2.startsWith("/")) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("/");
      stringBuffer.append(str2);
      str1 = stringBuffer.toString();
    } 
    str2 = str1;
    if (str1.length() > 1) {
      str2 = str1;
      if (str1.endsWith("/"))
        str2 = str1.substring(0, str1.length() - 1); 
    } 
    if (this.m.contains(str2))
      this.m.remove(str2); 
    this.m.addElement(str2);
    nameSpaceChanged();
  }
  
  public void importObject(Object paramObject) {
    if (this.n == null)
      this.n = new Vector(); 
    if (this.n.contains(paramObject))
      this.n.remove(paramObject); 
    this.n.addElement(paramObject);
    nameSpaceChanged();
  }
  
  public void importPackage(String paramString) {
    if (this.l == null)
      this.l = new Vector(); 
    if (this.l.contains(paramString))
      this.l.remove(paramString); 
    this.l.addElement(paramString);
    nameSpaceChanged();
  }
  
  public void importStatic(Class paramClass) {
    if (this.o == null)
      this.o = new Vector(); 
    if (this.o.contains(paramClass))
      this.o.remove(paramClass); 
    this.o.addElement(paramClass);
    nameSpaceChanged();
  }
  
  public Object invokeMethod(String paramString, Object[] paramArrayOfObject, Interpreter paramInterpreter) { return invokeMethod(paramString, paramArrayOfObject, paramInterpreter, null, null); }
  
  public Object invokeMethod(String paramString, Object[] paramArrayOfObject, Interpreter paramInterpreter, CallStack paramCallStack, SimpleNode paramSimpleNode) { return a(paramInterpreter).invokeMethod(paramString, paramArrayOfObject, paramInterpreter, paramCallStack, paramSimpleNode, false); }
  
  public void loadDefaultImports() {
    importClass("bsh.EvalError");
    importClass("bsh.Interpreter");
    importPackage("javax.swing.event");
    importPackage("javax.swing");
    importPackage("java.awt.event");
    importPackage("java.awt");
    importPackage("java.net");
    importPackage("java.util");
    importPackage("java.io");
    importPackage("java.lang");
    importCommands("/bsh/commands");
  }
  
  public void nameSpaceChanged() {
    this.t = null;
    this.s = null;
  }
  
  public void prune() {
    if (this.q == null)
      a(BshClassManager.createClassManager(null)); 
    setParent(null);
  }
  
  public void setMethod(String paramString, BshMethod paramBshMethod) {
    if (this.k == null)
      this.k = new Hashtable(); 
    Object object = this.k.get(paramString);
    if (object == null) {
      this.k.put(paramString, paramBshMethod);
      return;
    } 
    if (object instanceof BshMethod) {
      Vector vector = new Vector();
      vector.addElement(object);
      vector.addElement(paramBshMethod);
      this.k.put(paramString, vector);
      return;
    } 
    ((Vector)object).addElement(paramBshMethod);
  }
  
  public void setName(String paramString) { this.h = paramString; }
  
  public void setParent(NameSpace paramNameSpace) {
    this.i = paramNameSpace;
    if (paramNameSpace == null)
      loadDefaultImports(); 
  }
  
  public void setTypedVariable(String paramString, Class paramClass, Object paramObject, Modifiers paramModifiers) {
    StringBuffer stringBuffer;
    if (this.j == null)
      this.j = new Hashtable(); 
    Variable variable = a(paramString, false);
    if (variable != null && variable.getType() != null) {
      if (variable.getType() != paramClass) {
        stringBuffer = new StringBuffer();
        stringBuffer.append("Typed variable: ");
        stringBuffer.append(paramString);
        stringBuffer.append(" was previously declared with type: ");
        stringBuffer.append(variable.getType());
        throw new UtilEvalError(stringBuffer.toString());
      } 
      variable.setValue(paramObject, 0);
      return;
    } 
    this.j.put(paramString, new Variable(paramString, stringBuffer, paramObject, paramModifiers));
  }
  
  public void setTypedVariable(String paramString, Class paramClass, Object paramObject, boolean paramBoolean) {
    Modifiers modifiers = new Modifiers();
    if (paramBoolean)
      modifiers.addModifier(2, "final"); 
    setTypedVariable(paramString, paramClass, paramObject, modifiers);
  }
  
  public void setVariable(String paramString, Object paramObject, boolean paramBoolean) {
    boolean bool;
    if (Interpreter.LOCALSCOPING) {
      bool = paramBoolean;
    } else {
      bool = true;
    } 
    setVariable(paramString, paramObject, paramBoolean, bool);
  }
  
  void setVariable(String paramString, Object paramObject, boolean paramBoolean1, boolean paramBoolean2) {
    if (this.j == null)
      this.j = new Hashtable(); 
    if (paramObject == null)
      throw new InterpreterError("null variable value"); 
    Variable variable = a(paramString, paramBoolean2);
    if (variable != null)
      try {
        variable.setValue(paramObject, 1);
        return;
      } catch (UtilEvalError paramObject) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Variable assignment: ");
        stringBuffer.append(paramString);
        stringBuffer.append(": ");
        stringBuffer.append(paramObject.getMessage());
        throw new UtilEvalError(stringBuffer.toString());
      }  
    if (paramBoolean1) {
      paramObject = new StringBuffer();
      paramObject.append("(Strict Java mode) Assignment to undeclared variable: ");
      paramObject.append(paramString);
      throw new UtilEvalError(paramObject.toString());
    } 
    this.j.put(paramString, new Variable(paramString, paramObject, null));
    nameSpaceChanged();
  }
  
  public String toString() {
    String str;
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("NameSpace: ");
    if (this.h == null) {
      str = super.toString();
    } else {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append(this.h);
      stringBuffer1.append(" (");
      stringBuffer1.append(super.toString());
      stringBuffer1.append(")");
      str = stringBuffer1.toString();
    } 
    stringBuffer.append(str);
    if (this.d) {
      str = " (isClass) ";
    } else {
      str = "";
    } 
    stringBuffer.append(str);
    if (this.c) {
      str = " (method) ";
    } else {
      str = "";
    } 
    stringBuffer.append(str);
    if (this.e != null) {
      str = " (class static) ";
    } else {
      str = "";
    } 
    stringBuffer.append(str);
    if (this.f != null) {
      str = " (class instance) ";
    } else {
      str = "";
    } 
    stringBuffer.append(str);
    return stringBuffer.toString();
  }
  
  public void unsetVariable(String paramString) {
    if (this.j != null) {
      this.j.remove(paramString);
      nameSpaceChanged();
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\NameSpace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
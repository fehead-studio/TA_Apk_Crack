package bsh;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.util.Hashtable;

public class BshClassManager {
  static Class h;
  
  private static Object i = new Object();
  
  protected ClassLoader a;
  
  protected Hashtable b = new Hashtable();
  
  protected Hashtable c = new Hashtable();
  
  protected Hashtable d = new Hashtable();
  
  protected Hashtable e = new Hashtable();
  
  protected Hashtable f = new Hashtable();
  
  protected Hashtable g = new Hashtable();
  
  private Interpreter j;
  
  protected static Error a(String paramString, Error paramError) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("A class required by class: ");
    stringBuffer.append(paramString);
    stringBuffer.append(" could not be loaded:\n");
    stringBuffer.append(paramError.toString());
    return new NoClassDefFoundError(stringBuffer.toString());
  }
  
  public static BshClassManager createClassManager(Interpreter paramInterpreter) {
    BshClassManager bshClassManager;
    if (Capabilities.classExists("java.lang.ref.WeakReference") && Capabilities.classExists("java.util.HashMap") && Capabilities.classExists("bsh.classpath.ClassManagerImpl")) {
      try {
        bshClassManager = (BshClassManager)Class.forName("bsh.classpath.ClassManagerImpl").newInstance();
      } catch (Exception paramInterpreter) {
        bshClassManager = new StringBuffer();
        bshClassManager.append("Error loading classmanager: ");
        bshClassManager.append(paramInterpreter);
        throw new InterpreterError(bshClassManager.toString());
      } 
    } else {
      bshClassManager = new BshClassManager();
    } 
    Interpreter interpreter = paramInterpreter;
    if (paramInterpreter == null)
      interpreter = new Interpreter(); 
    bshClassManager.j = interpreter;
    return bshClassManager;
  }
  
  protected static UtilEvalError e() { return new Capabilities.Unavailable("ClassLoading features unavailable."); }
  
  static Class g(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  protected Class a(String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("/");
    stringBuffer.append(paramString.replace('.', '/'));
    stringBuffer.append(".java");
    str = stringBuffer.toString();
    InputStream inputStream = getResourceAsStream(str);
    if (inputStream == null)
      return null; 
    try {
      PrintStream printStream = System.out;
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Loading class from source file: ");
      stringBuffer1.append(str);
      printStream.println(stringBuffer1.toString());
      this.j.eval(new InputStreamReader(inputStream));
    } catch (EvalError str) {
      System.err.println(str);
    } 
    try {
      return plainClassForName(paramString);
    } catch (ClassNotFoundException str) {
      PrintStream printStream = System.err;
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("Class not found in source file: ");
      stringBuffer1.append(paramString);
      printStream.println(stringBuffer1.toString());
      return null;
    } 
  }
  
  protected Method a(Class paramClass, String paramString, Class[] paramArrayOfClass, boolean paramBoolean) {
    SignatureKey signatureKey = new SignatureKey(paramClass, paramString, paramArrayOfClass);
    Method method2 = (Method)this.e.get(signatureKey);
    Method method1 = method2;
    if (method2 == null) {
      method1 = method2;
      if (!paramBoolean)
        method1 = (Method)this.d.get(signatureKey); 
    } 
    if (Interpreter.DEBUG) {
      if (method1 == null) {
        StringBuffer stringBuffer1 = new StringBuffer();
        stringBuffer1.append("getResolvedMethod cache MISS: ");
        stringBuffer1.append(paramClass);
        stringBuffer1.append(" - ");
        stringBuffer1.append(paramString);
        str = stringBuffer1.toString();
        Interpreter.debug(str);
        return method1;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("getResolvedMethod cache HIT: ");
      stringBuffer.append(str);
      stringBuffer.append(" - ");
      stringBuffer.append(method1);
      String str = stringBuffer.toString();
      Interpreter.debug(str);
      return method1;
    } 
    return method1;
  }
  
  protected void a() {
    this.c = new Hashtable();
    this.b = new Hashtable();
    this.d = new Hashtable();
    this.e = new Hashtable();
  }
  
  public void addClassPath(URL paramURL) {}
  
  public void addListener(Listener paramListener) {}
  
  protected String b(String paramString) { throw e(); }
  
  protected void b() { throw e(); }
  
  protected void c(String paramString) {
    String str = Name.suffix(paramString, 1);
    int k = str.indexOf("$");
    StringBuffer stringBuffer = str;
    if (k != -1)
      stringBuffer = str.substring(k + 1); 
    str = (String)this.g.get(stringBuffer);
    if (str != null) {
      stringBuffer = new StringBuffer();
      stringBuffer.append("Defining class problem: ");
      stringBuffer.append(paramString);
      stringBuffer.append(": BeanShell cannot yet simultaneously define two or more ");
      stringBuffer.append("dependant classes of the same name.  Attempt to define: ");
      stringBuffer.append(paramString);
      stringBuffer.append(" while defining: ");
      stringBuffer.append(str);
      throw new InterpreterError(stringBuffer.toString());
    } 
    this.f.put(paramString, i);
    this.g.put(stringBuffer, paramString);
  }
  
  protected boolean c() { return false; }
  
  public void cacheClassInfo(String paramString, Class paramClass) {
    if (paramClass != null) {
      this.b.put(paramString, paramClass);
      return;
    } 
    this.c.put(paramString, i);
  }
  
  public void cacheResolvedMethod(Class paramClass, Class[] paramArrayOfClass, Method paramMethod) {
    Hashtable hashtable;
    if (Interpreter.DEBUG) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("cacheResolvedMethod putting: ");
      stringBuffer.append(paramClass);
      stringBuffer.append(" ");
      stringBuffer.append(paramMethod);
      Interpreter.debug(stringBuffer.toString());
    } 
    SignatureKey signatureKey = new SignatureKey(paramClass, paramMethod.getName(), paramArrayOfClass);
    if (Modifier.isStatic(paramMethod.getModifiers())) {
      hashtable = this.e;
    } else {
      hashtable = this.d;
    } 
    hashtable.put(signatureKey, paramMethod);
  }
  
  public boolean classExists(String paramString) { return (classForName(paramString) != null); }
  
  public Class classForName(String paramString) {
    if (d(paramString)) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Attempting to load class in the process of being defined: ");
      stringBuffer.append(paramString);
      throw new InterpreterError(stringBuffer.toString());
    } 
    Class clazz1 = null;
    try {
      Class clazz = plainClassForName(paramString);
      clazz1 = clazz;
    } catch (ClassNotFoundException classNotFoundException) {}
    Class clazz2 = clazz1;
    if (clazz1 == null)
      clazz2 = a(paramString); 
    return clazz2;
  }
  
  protected void d() {}
  
  protected boolean d(String paramString) { return (this.f.get(paramString) != null); }
  
  public Class defineClass(String paramString, byte[] paramArrayOfByte) {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Can't create class (");
    stringBuffer.append(paramString);
    stringBuffer.append(") without class manager package.");
    throw new InterpreterError(stringBuffer.toString());
  }
  
  public void dump(PrintWriter paramPrintWriter) { paramPrintWriter.println("BshClassManager: no class manager."); }
  
  protected String e(String paramString) {
    paramString = Name.suffix(paramString, 1);
    return (String)this.g.get(paramString);
  }
  
  protected void f(String paramString) {
    String str = Name.suffix(paramString, 1);
    this.f.remove(paramString);
    this.g.remove(str);
  }
  
  public URL getResource(String paramString) {
    Class clazz;
    if (this.a != null) {
      clazz = this.a.getResource(paramString.substring(1));
    } else {
      clazz = null;
    } 
    URL uRL = clazz;
    if (clazz == null) {
      if (h == null) {
        clazz = g("bsh.Interpreter");
        h = clazz;
      } else {
        clazz = h;
      } 
      uRL = clazz.getResource(paramString);
    } 
    return uRL;
  }
  
  public InputStream getResourceAsStream(String paramString) {
    Class clazz;
    if (this.a != null) {
      clazz = this.a.getResourceAsStream(paramString.substring(1));
    } else {
      clazz = null;
    } 
    InputStream inputStream = clazz;
    if (clazz == null) {
      if (h == null) {
        clazz = g("bsh.Interpreter");
        h = clazz;
      } else {
        clazz = h;
      } 
      inputStream = clazz.getResourceAsStream(paramString);
    } 
    return inputStream;
  }
  
  public Class plainClassForName(String paramString) {
    try {
      Class clazz;
      if (this.a != null) {
        clazz = this.a.loadClass(paramString);
      } else {
        clazz = Class.forName(paramString);
      } 
      cacheClassInfo(paramString, clazz);
      return clazz;
    } catch (NoClassDefFoundError noClassDefFoundError) {
      throw a(paramString, noClassDefFoundError);
    } 
  }
  
  public void reloadAllClasses() { throw e(); }
  
  public void reloadClasses(String[] paramArrayOfString) { throw e(); }
  
  public void reloadPackage(String paramString) { throw e(); }
  
  public void removeListener(Listener paramListener) {}
  
  public void reset() { a(); }
  
  public void setClassLoader(ClassLoader paramClassLoader) {
    this.a = paramClassLoader;
    d();
  }
  
  public void setClassPath(URL[] paramArrayOfURL) { throw e(); }
  
  public static interface Listener {
    void classLoaderChanged();
  }
  
  static class SignatureKey {
    Class a;
    
    Class[] b;
    
    String c;
    
    int d = 0;
    
    SignatureKey(Class param1Class, String param1String, Class[] param1ArrayOfClass) {
      this.a = param1Class;
      this.c = param1String;
      this.b = param1ArrayOfClass;
    }
    
    public boolean equals(Object param1Object) {
      param1Object = (SignatureKey)param1Object;
      if (this.b == null)
        return (param1Object.b == null); 
      if (this.a != param1Object.a)
        return false; 
      if (!this.c.equals(param1Object.c))
        return false; 
      if (this.b.length != param1Object.b.length)
        return false; 
      for (byte b1 = 0;; b1++) {
        if (b1 >= this.b.length)
          return true; 
        if (this.b[b1] == null) {
          if (param1Object.b[b1] != null)
            return false; 
        } else if (!this.b[b1].equals(param1Object.b[b1])) {
          return false;
        } 
      } 
    }
    
    public int hashCode() {
      if (this.d == 0) {
        this.d = this.a.hashCode() * this.c.hashCode();
        if (this.b == null)
          return this.d; 
        byte b1 = 0;
        while (b1 < this.b.length) {
          int i;
          if (this.b[b1] == null) {
            i = 21;
          } else {
            i = this.b[b1].hashCode();
          } 
          int j = this.d;
          this.d = j * ++b1 + i;
        } 
      } 
      return this.d;
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BshClassManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
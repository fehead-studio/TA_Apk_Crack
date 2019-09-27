package bsh;

import java.util.Hashtable;

public class Capabilities {
  static Class a;
  
  private static boolean b;
  
  private static Hashtable c = new Hashtable();
  
  static Class a(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  public static boolean canGenerateInterfaces() { return classExists("java.lang.reflect.Proxy"); }
  
  public static boolean classExists(String paramString) {
    Object object1 = c.get(paramString);
    Object object2 = object1;
    if (object1 == null) {
      Object object;
      try {
        object = Class.forName(paramString);
      } catch (ClassNotFoundException paramString) {
        object = object1;
      } 
      object2 = object;
      if (object != null) {
        c.put(object, "unused");
        object2 = object;
      } 
    } 
    return (object2 != null);
  }
  
  public static boolean haveAccessibility() { return b; }
  
  public static boolean haveSwing() { return classExists("javax.swing.JButton"); }
  
  public static void setAccessibility(boolean paramBoolean) {
    if (!paramBoolean) {
      paramBoolean = false;
    } else {
      if (!classExists("java.lang.reflect.AccessibleObject") || !classExists("bsh.reflect.ReflectManagerImpl"))
        throw new Unavailable("Accessibility unavailable"); 
      try {
        Class clazz;
        if (a == null) {
          clazz = a("java.lang.String");
          a = clazz;
        } else {
          clazz = a;
        } 
        clazz.getDeclaredMethods();
        paramBoolean = true;
        b = paramBoolean;
      } catch (SecurityException securityException) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Accessibility unavailable: ");
        stringBuffer.append(securityException);
        throw new Unavailable(stringBuffer.toString());
      } 
      return;
    } 
    b = paramBoolean;
  }
  
  public static class Unavailable extends UtilEvalError {
    public Unavailable(String param1String) { super(param1String); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Capabilities.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
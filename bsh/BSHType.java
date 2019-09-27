package bsh;

import java.lang.reflect.Array;

class BSHType extends SimpleNode implements BshClassManager.Listener {
  String a;
  
  private Class b;
  
  private int c;
  
  private Class d;
  
  BSHType(int paramInt) { super(paramInt); }
  
  public static String getTypeDescriptor(Class paramClass) {
    if (paramClass == boolean.class)
      return "Z"; 
    if (paramClass == char.class)
      return "C"; 
    if (paramClass == byte.class)
      return "B"; 
    if (paramClass == short.class)
      return "S"; 
    if (paramClass == int.class)
      return "I"; 
    if (paramClass == long.class)
      return "J"; 
    if (paramClass == float.class)
      return "F"; 
    if (paramClass == double.class)
      return "D"; 
    if (paramClass == void.class)
      return "V"; 
    String str2 = paramClass.getName().replace('.', '/');
    String str1 = str2;
    if (!str2.startsWith("[")) {
      if (str2.endsWith(";"))
        return str2; 
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("L");
      stringBuffer.append(str2.replace('.', '/'));
      stringBuffer.append(";");
      str1 = stringBuffer.toString();
    } 
    return str1;
  }
  
  SimpleNode a() { return (SimpleNode)jjtGetChild(0); }
  
  public void addArrayDimension() { this.c++; }
  
  public void classLoaderChanged() {
    this.d = null;
    this.b = null;
  }
  
  public int getArrayDims() { return this.c; }
  
  public Class getBaseType() { return this.b; }
  
  public Class getType(CallStack paramCallStack, Interpreter paramInterpreter) {
    if (this.d != null)
      return this.d; 
    Class clazz = a();
    if (clazz instanceof BSHPrimitiveType) {
      clazz = ((BSHPrimitiveType)clazz).getType();
    } else {
      clazz = ((BSHAmbiguousName)clazz).toClass(paramCallStack, paramInterpreter);
    } 
    this.b = clazz;
    if (this.c > 0)
      try {
        int[] arrayOfInt = new int[this.c];
        this.d = Array.newInstance(this.b, arrayOfInt).getClass();
        paramInterpreter.getClassManager().addListener(this);
        return this.d;
      } catch (Exception paramInterpreter) {
        throw new EvalError("Couldn't construct array type", this, paramCallStack);
      }  
    this.d = this.b;
    paramInterpreter.getClassManager().addListener(this);
    return this.d;
  }
  
  public String getTypeDescriptor(CallStack paramCallStack, Interpreter paramInterpreter, String paramString) {
    if (this.a != null)
      return this.a; 
    SimpleNode simpleNode = a();
    if (simpleNode instanceof BSHPrimitiveType) {
      str = getTypeDescriptor(((BSHPrimitiveType)simpleNode).type);
    } else {
      String str1 = ((BSHAmbiguousName)simpleNode).text;
      String str2 = paramInterpreter.getClassManager().e(str1);
      Interpreter interpreter = null;
      if (str2 == null) {
        try {
          Class clazz = ((BSHAmbiguousName)simpleNode).toClass(str, paramInterpreter);
          str = str1;
        } catch (EvalError str) {
          str = str1;
          paramInterpreter = interpreter;
        } 
      } else {
        str = str2;
        paramInterpreter = interpreter;
      } 
      if (paramInterpreter != null) {
        str = getTypeDescriptor(paramInterpreter);
      } else if (paramString == null || Name.isCompound(str)) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("L");
        stringBuffer.append(str.replace('.', '/'));
        stringBuffer.append(";");
        str = stringBuffer.toString();
      } else {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("L");
        stringBuffer.append(paramString.replace('.', '/'));
        stringBuffer.append("/");
        stringBuffer.append(str);
        stringBuffer.append(";");
        str = stringBuffer.toString();
      } 
    } 
    byte b1;
    for (b1 = 0;; b1++) {
      if (b1 >= this.c) {
        this.a = str;
        return str;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("[");
      stringBuffer.append(str);
      str = stringBuffer.toString();
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BSHType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
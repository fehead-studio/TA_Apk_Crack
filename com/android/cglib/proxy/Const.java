package com.android.cglib.proxy;

public class Const {
  public static final String SUBCLASS_INVOKE_SUPER_SUFFIX = "_Super";
  
  public static final String SUBCLASS_SUFFIX = "_Enhancer";
  
  public static Class getPackedType(Class paramClass) {
    if (paramClass == boolean.class)
      return Boolean.class; 
    if (paramClass == byte.class)
      return Byte.class; 
    if (paramClass == char.class)
      return Character.class; 
    if (paramClass == double.class)
      return Double.class; 
    if (paramClass == float.class)
      return Float.class; 
    if (paramClass == int.class)
      return Integer.class; 
    if (paramClass == long.class)
      return Long.class; 
    Class clazz = paramClass;
    if (paramClass == short.class)
      clazz = Short.class; 
    return clazz;
  }
  
  public static String getPrimitiveValueMethodName(Class paramClass) {
    if (paramClass == boolean.class)
      return "booleanValue"; 
    if (paramClass == byte.class)
      return "byteValue"; 
    if (paramClass == char.class)
      return "charValue"; 
    if (paramClass == double.class)
      return "doubleValue"; 
    if (paramClass == float.class)
      return "floatValue"; 
    if (paramClass == int.class)
      return "intValue"; 
    if (paramClass == long.class)
      return "longValue"; 
    if (paramClass == short.class)
      return "shortValue"; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramClass.getName());
    stringBuilder.append(" dit not primitive class");
    throw new ProxyException(stringBuilder.toString());
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\proxy\Const.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.proxy;

import java.lang.reflect.Method;

public class MethodProxy {
  private Class a;
  
  private String b;
  
  private Class[] c;
  
  public MethodProxy(Class paramClass, String paramString, Class[] paramArrayOfClass) {
    this.a = paramClass;
    this.b = paramString;
    this.c = paramArrayOfClass;
  }
  
  public String getMethodName() { return this.b; }
  
  public Method getOriginalMethod() {
    try {
      return this.a.getMethod(this.b, this.c);
    } catch (NoSuchMethodException noSuchMethodException) {
      throw new ProxyException(noSuchMethodException.getMessage());
    } 
  }
  
  public Method getProxyMethod() {
    try {
      Class clazz = this.a;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(this.b);
      stringBuilder.append("_Super");
      return clazz.getMethod(stringBuilder.toString(), this.c);
    } catch (NoSuchMethodException noSuchMethodException) {
      throw new ProxyException(noSuchMethodException.getMessage());
    } 
  }
  
  public Object invokeSuper(Object paramObject, Object[] paramArrayOfObject) { return ((EnhancerInterface)paramObject).executeSuperMethod_Enhancer(this.b, this.c, paramArrayOfObject); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\proxy\MethodProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
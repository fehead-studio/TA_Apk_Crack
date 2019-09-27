package com.androlua;

import dalvik.system.DexClassLoader;
import java.util.HashMap;

public class LuaDexClassLoader extends DexClassLoader {
  private HashMap<String, Class<?>> a = new HashMap();
  
  private String b;
  
  public LuaDexClassLoader(String paramString1, String paramString2, String paramString3, ClassLoader paramClassLoader) {
    super(paramString1, paramString2, paramString3, paramClassLoader);
    this.b = paramString1;
  }
  
  protected Class<?> findClass(String paramString) {
    Class clazz2 = (Class)this.a.get(paramString);
    Class clazz1 = clazz2;
    if (clazz2 == null) {
      clazz1 = super.findClass(paramString);
      this.a.put(paramString, clazz1);
    } 
    return clazz1;
  }
  
  public String getDexPath() { return this.b; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaDexClassLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
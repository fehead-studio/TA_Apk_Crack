package com.androlua;

import com.a.a.a.a.a.a.a;
import com.android.cglib.proxy.Enhancer;
import com.android.cglib.proxy.EnhancerInterface;
import com.android.cglib.proxy.MethodFilter;
import com.android.cglib.proxy.MethodInterceptor;

public class LuaEnhancer {
  private Enhancer a = new Enhancer(LuaApplication.getInstance());
  
  public LuaEnhancer(Class<?> paramClass) { this.a.setSuperclass(paramClass); }
  
  public LuaEnhancer(String paramString) { this(Class.forName(paramString)); }
  
  public Class<?> create() {
    try {
      return this.a.create();
    } catch (Exception exception) {
      a.a(exception);
      return null;
    } 
  }
  
  public Class<?> create(MethodFilter paramMethodFilter) {
    try {
      this.a.setMethodFilter(paramMethodFilter);
      return this.a.create();
    } catch (Exception paramMethodFilter) {
      a.a(paramMethodFilter);
      return null;
    } 
  }
  
  public void setInterceptor(EnhancerInterface paramEnhancerInterface, MethodInterceptor paramMethodInterceptor) { paramEnhancerInterface.setMethodInterceptor_Enhancer(paramMethodInterceptor); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaEnhancer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
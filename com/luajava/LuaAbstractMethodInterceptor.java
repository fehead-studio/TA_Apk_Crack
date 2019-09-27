package com.luajava;

import com.android.cglib.proxy.MethodInterceptor;
import com.android.cglib.proxy.MethodProxy;
import com.androlua.LuaContext;
import java.lang.reflect.Method;

public class LuaAbstractMethodInterceptor implements MethodInterceptor {
  private final LuaContext a;
  
  private LuaObject b;
  
  public LuaAbstractMethodInterceptor(LuaObject paramLuaObject) {
    this.b = paramLuaObject;
    this.a = paramLuaObject.getLuaState().getContext();
  }
  
  public Object intercept(Object paramObject, Object[] paramArrayOfObject, MethodProxy paramMethodProxy) {
    synchronized (this.b.b) {
      Method method = paramMethodProxy.getOriginalMethod();
      String str = method.getName();
      if (this.b.isFunction()) {
        paramObject = this.b;
      } else {
        paramObject = this.b.getField(str);
      } 
      Class clazz = method.getReturnType();
      boolean bool = paramObject.isNil();
      Object object = null;
      method = null;
      if (bool) {
        if (clazz.equals(boolean.class) || clazz.equals(Boolean.class))
          return Boolean.valueOf(false); 
        if (clazz.isPrimitive() || Number.class.isAssignableFrom(clazz))
          return Integer.valueOf(0); 
        return null;
      } 
      try {
        if (clazz.equals(Void.class) || clazz.equals(void.class)) {
          paramObject.call(paramArrayOfObject);
          paramObject = object;
        } else {
          paramObject = paramObject.call(paramArrayOfObject);
          if (paramObject != null)
            try {
              if (paramObject instanceof Double) {
                Number number = LuaState.convertLuaNumber((Double)paramObject, clazz);
                paramObject = number;
              } 
            } catch (LuaException paramArrayOfObject) {
              this.a.sendError(str, paramArrayOfObject);
            }  
        } 
      } catch (LuaException paramArrayOfObject) {
        paramObject = method;
        this.a.sendError(str, paramArrayOfObject);
      } 
      if (paramObject == null) {
        if (clazz.equals(boolean.class) || clazz.equals(Boolean.class))
          return Boolean.valueOf(false); 
        if (clazz.isPrimitive() || Number.class.isAssignableFrom(clazz))
          return Integer.valueOf(0); 
      } 
      return paramObject;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaAbstractMethodInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.luajava;

import com.android.cglib.proxy.MethodInterceptor;
import com.android.cglib.proxy.MethodProxy;
import com.androlua.LuaContext;
import java.lang.reflect.Method;

public class LuaMethodInterceptor implements MethodInterceptor {
  private final LuaContext a;
  
  private LuaObject b;
  
  public LuaMethodInterceptor(LuaObject paramLuaObject) {
    this.b = paramLuaObject;
    this.a = paramLuaObject.getLuaState().getContext();
  }
  
  public Object intercept(Object paramObject, Object[] paramArrayOfObject, MethodProxy paramMethodProxy) {
    synchronized (this.b.b) {
      LuaObject luaObject;
      Method method = paramMethodProxy.getOriginalMethod();
      String str = method.getName();
      if (this.b.isFunction()) {
        luaObject = this.b;
      } else {
        luaObject = this.b.getField(str);
      } 
      Class clazz = method.getReturnType();
      boolean bool = luaObject.isNil();
      Object object = null;
      method = null;
      if (bool) {
        if (clazz.equals(boolean.class) || clazz.equals(Boolean.class))
          return Boolean.valueOf(false); 
        if (clazz.isPrimitive() || Number.class.isAssignableFrom(clazz))
          return Integer.valueOf(0); 
        return null;
      } 
      Object[] arrayOfObject = new Object[paramArrayOfObject.length + 1];
      System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 1, paramArrayOfObject.length);
      arrayOfObject[0] = new SuperCall(this, paramObject, paramMethodProxy);
      try {
        if (clazz.equals(Void.class) || clazz.equals(void.class)) {
          luaObject.call(arrayOfObject);
          paramObject = object;
        } else {
          paramObject = luaObject.call(arrayOfObject);
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
  
  private class SuperCall implements LuaMetaTable {
    private final Object b;
    
    private final MethodProxy c;
    
    public SuperCall(LuaMethodInterceptor this$0, Object param1Object, MethodProxy param1MethodProxy) {
      this.b = param1Object;
      this.c = param1MethodProxy;
    }
    
    public Object __call(Object... param1VarArgs) { return this.c.invokeSuper(this.b, param1VarArgs); }
    
    public Object __index(String param1String) { return null; }
    
    public void __newIndex(String param1String, Object param1Object) {}
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaMethodInterceptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
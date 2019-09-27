package com.baidu.mobstat;

import android.content.Context;
import org.json.JSONObject;

class aw implements l {
  private ba a = ba.a;
  
  private Object b;
  
  private Class<?> c;
  
  public aw(Object paramObject) {
    if (paramObject == null)
      throw new IllegalArgumentException("proxy is null."); 
    if (!"com.baidu.bottom.remote.BPStretegyController2".equals(paramObject.getClass().getName()))
      throw new IllegalArgumentException("class isn't com.baidu.bottom.remote.BPStretegyController2"); 
    this.b = paramObject;
    this.c = paramObject.getClass();
  }
  
  private <T> T a(Object[] paramArrayOfObject, String paramString, Class<?>[] paramArrayOfClass) { return (T)this.c.getMethod(paramString, paramArrayOfClass).invoke(this.b, paramArrayOfObject); }
  
  public void a(Context paramContext, long paramLong) {
    clazz = long.class;
    try {
      a(new Object[] { paramContext, Long.valueOf(paramLong) }, "setLastUpdateTime", new Class[] { Context.class, clazz });
      return;
    } catch (Exception clazz) {
      bd.b(clazz);
      this.a.a(paramContext, paramLong);
      return;
    } 
  }
  
  public void a(Context paramContext, String paramString) {
    try {
      a(new Object[] { paramContext, paramString }, "saveRemoteConfig2", new Class[] { Context.class, String.class });
      return;
    } catch (Exception exception) {
      bd.b(exception);
      this.a.a(paramContext, paramString);
      return;
    } 
  }
  
  public void a(Context paramContext, JSONObject paramJSONObject) {
    try {
      a(new Object[] { paramContext, paramJSONObject }, "startDataAnynalyze", new Class[] { Context.class, JSONObject.class });
      return;
    } catch (Exception exception) {
      bd.b(exception);
      this.a.a(paramContext, paramJSONObject);
      return;
    } 
  }
  
  public boolean a(Context paramContext) {
    try {
      return ((Boolean)a(new Object[] { paramContext }, "needUpdate", new Class[] { Context.class })).booleanValue();
    } catch (Exception exception) {
      bd.b(exception);
      return this.a.a(paramContext);
    } 
  }
  
  public void b(Context paramContext, String paramString) {
    try {
      a(new Object[] { paramContext, paramString }, "saveRemoteSign", new Class[] { Context.class, String.class });
      return;
    } catch (Exception exception) {
      bd.b(exception);
      this.a.b(paramContext, paramString);
      return;
    } 
  }
  
  public boolean b(Context paramContext) {
    try {
      return ((Boolean)a(new Object[] { paramContext }, "canStartService", new Class[] { Context.class })).booleanValue();
    } catch (Exception exception) {
      bd.b(exception);
      return this.a.b(paramContext);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
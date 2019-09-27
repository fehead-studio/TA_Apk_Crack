package com.luajava;

import java.util.HashMap;

public class LuaStack {
  private static final HashMap<String, LuaState> a = new HashMap();
  
  public static Object call(String paramString1, String paramString2, Object[] paramArrayOfObject) { return (new LuaFunction(get(paramString1), paramString2)).call(paramArrayOfObject); }
  
  public static LuaState get(String paramString) { return (LuaState)a.get(paramString); }
  
  public static void put(String paramString, LuaState paramLuaState) { a.put(paramString, paramLuaState); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaStack.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
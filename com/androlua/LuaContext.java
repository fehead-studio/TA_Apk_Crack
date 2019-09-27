package com.androlua;

import android.content.Context;
import com.luajava.LuaState;
import java.util.ArrayList;
import java.util.Map;

public interface LuaContext {
  void call(String paramString, Object... paramVarArgs);
  
  Object doFile(String paramString, Object... paramVarArgs);
  
  ArrayList<ClassLoader> getClassLoaders();
  
  Context getContext();
  
  Map getGlobalData();
  
  int getHeight();
  
  String getLuaCpath();
  
  String getLuaDir();
  
  String getLuaDir(String paramString);
  
  String getLuaExtDir();
  
  String getLuaExtDir(String paramString);
  
  String getLuaExtPath(String paramString);
  
  String getLuaExtPath(String paramString1, String paramString2);
  
  String getLuaLpath();
  
  String getLuaPath();
  
  String getLuaPath(String paramString);
  
  String getLuaPath(String paramString1, String paramString2);
  
  LuaState getLuaState();
  
  Object getSharedData(String paramString);
  
  Object getSharedData(String paramString, Object paramObject);
  
  int getWidth();
  
  void regGc(LuaGcable paramLuaGcable);
  
  void sendError(String paramString, Exception paramException);
  
  void sendMsg(String paramString);
  
  void set(String paramString, Object paramObject);
  
  void setLuaExtDir(String paramString);
  
  boolean setSharedData(String paramString, Object paramObject);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;

class bk {
  private SharedPreferences a;
  
  private SharedPreferences b;
  
  private SharedPreferences a(Context paramContext) {
    if (this.a == null)
      this.a = paramContext.getSharedPreferences("__Baidu_Stat_SDK_SendRem", 0); 
    return this.a;
  }
  
  private SharedPreferences b(Context paramContext) {
    if (this.b == null)
      this.b = PreferenceManager.getDefaultSharedPreferences(paramContext); 
    return this.b;
  }
  
  public boolean getBoolean(Context paramContext, String paramString, boolean paramBoolean) { return a(paramContext).getBoolean(paramString, paramBoolean); }
  
  public Float getFloatt(Context paramContext, String paramString, int paramInt) { return Float.valueOf(a(paramContext).getFloat(paramString, paramInt)); }
  
  public int getInt(Context paramContext, String paramString, int paramInt) { return a(paramContext).getInt(paramString, paramInt); }
  
  public long getLong(Context paramContext, String paramString, long paramLong) { return a(paramContext).getLong(paramString, paramLong); }
  
  public boolean getSharedBoolean(Context paramContext, String paramString, boolean paramBoolean) { return b(paramContext).getBoolean(paramString, paramBoolean); }
  
  public int getSharedInt(Context paramContext, String paramString, int paramInt) { return b(paramContext).getInt(paramString, paramInt); }
  
  public long getSharedLong(Context paramContext, String paramString, long paramLong) { return b(paramContext).getLong(paramString, paramLong); }
  
  public String getSharedString(Context paramContext, String paramString1, String paramString2) { return b(paramContext).getString(paramString1, paramString2); }
  
  public String getString(Context paramContext, String paramString1, String paramString2) { return a(paramContext).getString(paramString1, paramString2); }
  
  public void putBoolean(Context paramContext, String paramString, boolean paramBoolean) { a(paramContext).edit().putBoolean(paramString, paramBoolean).commit(); }
  
  public void putFloat(Context paramContext, String paramString, Float paramFloat) { a(paramContext).edit().putFloat(paramString, paramFloat.floatValue()).commit(); }
  
  public void putInt(Context paramContext, String paramString, int paramInt) { a(paramContext).edit().putInt(paramString, paramInt).commit(); }
  
  public void putLong(Context paramContext, String paramString, long paramLong) { a(paramContext).edit().putLong(paramString, paramLong).commit(); }
  
  public void putSharedBoolean(Context paramContext, String paramString, boolean paramBoolean) { b(paramContext).edit().putBoolean(paramString, paramBoolean).commit(); }
  
  public void putSharedInt(Context paramContext, String paramString, int paramInt) { b(paramContext).edit().putInt(paramString, paramInt).commit(); }
  
  public void putSharedLong(Context paramContext, String paramString, long paramLong) { b(paramContext).edit().putLong(paramString, paramLong).commit(); }
  
  public void putSharedString(Context paramContext, String paramString1, String paramString2) { b(paramContext).edit().putString(paramString1, paramString2).commit(); }
  
  public void putString(Context paramContext, String paramString1, String paramString2) { a(paramContext).edit().putString(paramString1, paramString2).commit(); }
  
  public void removeShare(Context paramContext, String paramString) { b(paramContext).edit().remove(paramString).commit(); }
  
  public void removeString(Context paramContext, String paramString) { a(paramContext).edit().remove(paramString).commit(); }
  
  public boolean updateShareBoolean(Intent paramIntent, Activity paramActivity, String paramString) { return updateShareBoolean(paramIntent, paramActivity, paramString, true); }
  
  public boolean updateShareBoolean(Intent paramIntent, Activity paramActivity, String paramString, boolean paramBoolean) {
    if (paramIntent != null) {
      boolean bool = paramIntent.getBooleanExtra(paramString, paramBoolean);
      if (bool != getSharedBoolean(paramActivity, paramString, paramBoolean)) {
        putSharedBoolean(paramActivity, paramString, bool);
        return true;
      } 
    } 
    return false;
  }
  
  public boolean updateShareInt(Intent paramIntent, Activity paramActivity, String paramString, int paramInt) {
    if (paramIntent != null) {
      int i = paramIntent.getIntExtra(paramString, paramInt);
      if (i != getSharedInt(paramActivity, paramString, paramInt)) {
        putSharedInt(paramActivity, paramString, i);
        return true;
      } 
    } 
    return false;
  }
  
  public boolean updateShareString(Intent paramIntent, Activity paramActivity, String paramString) {
    if (paramIntent != null) {
      String str2 = paramIntent.getStringExtra(paramString);
      String str1 = str2;
      if (str2 != null) {
        str2 = str2.trim();
        str1 = str2;
        if (str2.length() == 0)
          str1 = null; 
      } 
      if (!TextUtils.equals(str1, getSharedString(paramActivity, paramString, null))) {
        putSharedString(paramActivity, paramString, str1);
        return true;
      } 
    } 
    return false;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
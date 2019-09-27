package com.baidu.mobstat;

import android.content.Context;

class bj extends bk {
  static bj a = new bj();
  
  public static bj a() { return a; }
  
  protected int a(Context paramContext) { return getInt(paramContext, "sendLogtype", 0); }
  
  protected void a(Context paramContext, int paramInt) { putInt(paramContext, "sendLogtype", paramInt); }
  
  protected void a(Context paramContext, String paramString) { putString(paramContext, "device_id_1", paramString); }
  
  protected void a(Context paramContext, boolean paramBoolean) { putBoolean(paramContext, "onlywifi", paramBoolean); }
  
  protected int b(Context paramContext) { return getInt(paramContext, "timeinterval", 1); }
  
  protected void b(Context paramContext, int paramInt) { putInt(paramContext, "timeinterval", paramInt); }
  
  protected void b(Context paramContext, String paramString) {
    if (getString(paramContext, "cuid", null) != null)
      removeString(paramContext, "cuid"); 
    putString(paramContext, "cuidsec_1", paramString);
  }
  
  protected void b(Context paramContext, boolean paramBoolean) { putBoolean(paramContext, "setchannelwithcode", paramBoolean); }
  
  protected void c(Context paramContext, String paramString) { putString(paramContext, "setchannelwithcodevalue", paramString); }
  
  protected void c(Context paramContext, boolean paramBoolean) { putBoolean(paramContext, "mtjtv", paramBoolean); }
  
  protected boolean c(Context paramContext) { return getBoolean(paramContext, "onlywifi", false); }
  
  protected String d(Context paramContext) { return getString(paramContext, "device_id_1", null); }
  
  protected void d(Context paramContext, String paramString) { putString(paramContext, "mtjsdkmacss2_1", paramString); }
  
  protected void d(Context paramContext, boolean paramBoolean) { putBoolean(paramContext, "mtjsdkmactrick", paramBoolean); }
  
  protected String e(Context paramContext) { return getString(paramContext, "cuidsec_1", null); }
  
  protected void e(Context paramContext, String paramString) { putString(paramContext, "mtjsdkmacsstv_1", paramString); }
  
  protected String f(Context paramContext) { return getString(paramContext, "setchannelwithcodevalue", null); }
  
  protected void f(Context paramContext, String paramString) { putString(paramContext, "he.ext", paramString); }
  
  protected boolean g(Context paramContext) { return getBoolean(paramContext, "setchannelwithcode", false); }
  
  protected String h(Context paramContext) { return getString(paramContext, "mtjsdkmacss2_1", null); }
  
  protected boolean i(Context paramContext) { return getBoolean(paramContext, "mtjtv", false); }
  
  protected String j(Context paramContext) { return getString(paramContext, "mtjsdkmacsstv_1", null); }
  
  protected String k(Context paramContext) { return getString(paramContext, "he.ext", null); }
  
  protected boolean l(Context paramContext) { return getBoolean(paramContext, "mtjsdkmactrick", true); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
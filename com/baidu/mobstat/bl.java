package com.baidu.mobstat;

import android.content.Context;
import com.a.a.a.a.a.a.a;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONArray;
import org.json.JSONObject;

class bl implements Thread.UncaughtExceptionHandler {
  private static final bl a = new bl();
  
  private Thread.UncaughtExceptionHandler b = null;
  
  private Context c = null;
  
  private bu d = new bu();
  
  public static bl a() { return a; }
  
  public void a(long paramLong, String paramString1, String paramString2, int paramInt) {
    ch.a().b(this.c, System.currentTimeMillis());
    if (this.c != null && paramString1 != null) {
      if (paramString1.trim().equals(""))
        return; 
      try {
        String str2 = CooperService.a().getAppVersionName(this.c);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("t", paramLong);
        jSONObject2.put("c", paramString1);
        jSONObject2.put("y", paramString2);
        jSONObject2.put("v", str2);
        jSONObject2.put("ct", paramInt);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(jSONObject2);
        jSONObject2 = new JSONObject();
        this.d.a(this.c, jSONObject2);
        jSONObject2.put("ss", 0);
        JSONObject jSONObject1 = new JSONObject();
        jSONObject1.put("he", jSONObject2);
        jSONObject1.put("pr", new JSONArray());
        jSONObject1.put("ev", new JSONArray());
        jSONObject1.put("ex", jSONArray);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("__send_data_");
        stringBuilder.append(System.currentTimeMillis());
        String str1 = stringBuilder.toString();
        cs.a(this.c, str1, jSONObject1.toString(), false);
        cz.a("Dump exception successlly");
        return;
      } catch (Exception paramString1) {
        cz.b(paramString1);
      } 
    } 
  }
  
  public void a(Context paramContext) {
    if (this.b == null) {
      this.b = Thread.getDefaultUncaughtExceptionHandler();
      Thread.setDefaultUncaughtExceptionHandler(this);
    } 
    if (this.c == null)
      this.c = paramContext.getApplicationContext(); 
    this.d.a(this.c);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable) {
    String str3 = paramThrowable.toString();
    String str4 = "";
    str1 = str4;
    if (str3 != null) {
      str1 = str4;
      if (!str3.equals(""))
        try {
          String[] arrayOfString = str3.split(":");
          if (str3.length() > 1) {
            String str = arrayOfString[0];
          } else {
            String str = str3;
          } 
        } catch (Exception str1) {
          cz.c(str1);
          str1 = "";
        }  
    } 
    if (str1 == null || str1.equals(""))
      str1 = str3; 
    StringWriter stringWriter = new StringWriter();
    a.a(paramThrowable, new PrintWriter(stringWriter));
    String str2 = stringWriter.toString();
    cz.a(str2);
    a(System.currentTimeMillis(), str2, str1, 0);
    if (!this.b.equals(this))
      this.b.uncaughtException(paramThread, paramThrowable); 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
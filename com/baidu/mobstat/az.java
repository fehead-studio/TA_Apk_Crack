package com.baidu.mobstat;

import android.content.Context;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import org.json.JSONException;
import org.json.JSONObject;

public class az {
  private static az a;
  
  private Context b;
  
  private JSONObject c = new JSONObject();
  
  private long d = 24L;
  
  private long e = 0L;
  
  private long f = 0L;
  
  private long g = 0L;
  
  private long h = 5L;
  
  private long i = 24L;
  
  private long j = 15L;
  
  private long k = 15L;
  
  private long l = 30L;
  
  private long m = 12L;
  
  private long n = 1L;
  
  private long o = 24L;
  
  private String p = "";
  
  private String q = "";
  
  private az(Context paramContext) {
    this.b = paramContext;
    m();
    j();
    k();
  }
  
  public static az a(Context paramContext) { // Byte code:
    //   0: getstatic com/baidu/mobstat/az.a : Lcom/baidu/mobstat/az;
    //   3: ifnonnull -> 38
    //   6: ldc com/baidu/mobstat/az
    //   8: monitorenter
    //   9: getstatic com/baidu/mobstat/az.a : Lcom/baidu/mobstat/az;
    //   12: ifnonnull -> 26
    //   15: new com/baidu/mobstat/az
    //   18: dup
    //   19: aload_0
    //   20: invokespecial <init> : (Landroid/content/Context;)V
    //   23: putstatic com/baidu/mobstat/az.a : Lcom/baidu/mobstat/az;
    //   26: ldc com/baidu/mobstat/az
    //   28: monitorexit
    //   29: goto -> 38
    //   32: astore_0
    //   33: ldc com/baidu/mobstat/az
    //   35: monitorexit
    //   36: aload_0
    //   37: athrow
    //   38: getstatic com/baidu/mobstat/az.a : Lcom/baidu/mobstat/az;
    //   41: areturn
    // Exception table:
    //   from	to	target	type
    //   9	26	32	finally
    //   26	29	32	finally
    //   33	36	32	finally }
  
  private long b(long paramLong) {
    long l1 = paramLong;
    if (paramLong - System.currentTimeMillis() > 0L)
      l1 = 0L; 
    return l1;
  }
  
  private void m() {
    str = cs.b("backups/system/.timestamp");
    try {
      if (!TextUtils.isEmpty(str))
        this.c = new JSONObject(str); 
      return;
    } catch (Exception str) {
      return;
    } 
  }
  
  public long a(u paramu) {
    long l1;
    long l2 = paramu.j;
    try {
      String str = paramu.toString();
      l1 = l2;
      if (this.c.has(str))
        l1 = this.c.getLong(str); 
    } catch (Exception paramu) {
      bd.a(paramu);
      l1 = l2;
    } 
    return b(l1);
  }
  
  public void a(u paramu, long paramLong) {
    paramu.j = paramLong;
    try {
      this.c.put(paramu.toString(), paramLong);
    } catch (Exception paramu) {
      bd.a(paramu);
    } 
    try {
      cs.a("backups/system/.timestamp", this.c.toString(), false);
      return;
    } catch (Exception paramu) {
      bd.a(paramu);
      return;
    } 
  }
  
  public void a(String paramString) {
    cs.a(this.b, ".config2", paramString, false);
    j();
  }
  
  public boolean a() { return (this.e != 0L); }
  
  public boolean a(long paramLong) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
    return simpleDateFormat.format(Long.valueOf(paramLong)).equals(simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
  }
  
  public void b(String paramString) {
    cs.a(this.b, ".sign", paramString, false);
    k();
  }
  
  public boolean b() { return (this.f != 0L); }
  
  public long c() { return this.d * 60L * 60L * 1000L; }
  
  public String c(String paramString) { return (!TextUtils.isEmpty(this.p) && this.p.equals(paramString) && !TextUtils.isEmpty(this.q)) ? this.q : ""; }
  
  public long d() { return this.o * 60L * 60L * 1000L; }
  
  public long e() { return this.h * 60L * 1000L; }
  
  public long f() { return this.i * 60L * 60L * 1000L; }
  
  public long g() { return this.j * 24L * 60L * 60L * 1000L; }
  
  public long h() { return this.k * 24L * 60L * 60L * 1000L; }
  
  public long i() { return this.m * 60L * 60L * 1000L; }
  
  public void j() {
    str = cs.a(this.b, ".config2");
    try {
      str = new String(da.b(false, cu.a(), ct.a(str.getBytes())));
      if (TextUtils.isEmpty(str))
        return; 
      jSONObject = new JSONObject(str);
      try {
        this.e = jSONObject.getLong("c");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.h = jSONObject.getLong("d");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.i = jSONObject.getLong("e");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.j = jSONObject.getLong("i");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.d = jSONObject.getLong("f");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.o = jSONObject.getLong("s");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.k = jSONObject.getLong("pk");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.l = jSONObject.getLong("at");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.m = jSONObject.getLong("as");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.n = jSONObject.getLong("ac");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.f = jSONObject.getLong("mc");
      } catch (JSONException jSONException) {
        bd.b(jSONException);
      } 
      try {
        this.g = jSONObject.getLong("lsc");
        return;
      } catch (JSONException jSONObject) {
        bd.b(jSONObject);
        return;
      } 
    } catch (Exception str) {
      bd.b(str);
      return;
    } 
  }
  
  public void k() {
    str = cs.a(this.b, ".sign");
    try {
      str = new String(da.b(false, cu.a(), ct.a(str.getBytes())));
      if (TextUtils.isEmpty(str))
        return; 
      jSONObject = new JSONObject(str);
      try {
        this.q = jSONObject.getString("sign");
      } catch (Exception exception) {
        bd.b(exception);
      } 
      try {
        this.p = jSONObject.getString("ver");
        return;
      } catch (Exception jSONObject) {
        bd.b(jSONObject);
        return;
      } 
    } catch (Exception str) {
      bd.b(str);
      return;
    } 
  }
  
  public boolean l() {
    long l1 = System.currentTimeMillis();
    long l2 = a(u.h);
    long l3 = d();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("canSend now=");
    stringBuilder.append(l1);
    stringBuilder.append(";lastSendTime=");
    stringBuilder.append(l2);
    stringBuilder.append(";sendLogTimeInterval=");
    stringBuilder.append(l3);
    bd.a(stringBuilder.toString());
    return (l1 - l2 > l3 || !a(l2));
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
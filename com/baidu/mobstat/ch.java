package com.baidu.mobstat;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.a.a.a;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONObject;

class ch {
  private static final ch a = new ch();
  
  private static HashMap<String, cl> n = new HashMap();
  
  private cm b = new cm();
  
  private cm c = new cm();
  
  private cm d = new cm();
  
  private cm e = new cm();
  
  private long f = 0L;
  
  private boolean g = true;
  
  private boolean h;
  
  private cf i = new cf();
  
  private int j = -1;
  
  private Handler m;
  
  private ch() {
    HandlerThread handlerThread = new HandlerThread("SessionAnalysisThread");
    handlerThread.start();
    handlerThread.setPriority(10);
    this.m = new Handler(handlerThread.getLooper());
  }
  
  static Context a(Object paramObject) {
    try {
      return (Context)paramObject.getClass().getMethod("getActivity", new Class[0]).invoke(paramObject, new Object[0]);
    } catch (Throwable paramObject) {
      cz.a(paramObject.getMessage());
      return null;
    } 
  }
  
  public static ch a() { return a; }
  
  private void a(String paramString) { // Byte code:
    //   0: getstatic com/baidu/mobstat/ch.n : Ljava/util/HashMap;
    //   3: astore_2
    //   4: aload_2
    //   5: monitorenter
    //   6: aload_1
    //   7: ifnonnull -> 18
    //   10: ldc 'page Object is null'
    //   12: invokestatic c : (Ljava/lang/String;)V
    //   15: aload_2
    //   16: monitorexit
    //   17: return
    //   18: new com/baidu/mobstat/cl
    //   21: dup
    //   22: aload_1
    //   23: invokespecial <init> : (Ljava/lang/String;)V
    //   26: astore_3
    //   27: getstatic com/baidu/mobstat/ch.n : Ljava/util/HashMap;
    //   30: aload_1
    //   31: invokevirtual containsKey : (Ljava/lang/Object;)Z
    //   34: ifne -> 46
    //   37: getstatic com/baidu/mobstat/ch.n : Ljava/util/HashMap;
    //   40: aload_1
    //   41: aload_3
    //   42: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   45: pop
    //   46: aload_2
    //   47: monitorexit
    //   48: return
    //   49: aload_2
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    //   53: astore_1
    //   54: goto -> 49
    // Exception table:
    //   from	to	target	type
    //   10	17	53	finally
    //   18	46	53	finally
    //   46	48	53	finally
    //   49	51	53	finally }
  
  private void a(boolean paramBoolean) { this.g = paramBoolean; }
  
  private cl b(String paramString) {
    synchronized (n) {
      if (!n.containsKey(paramString))
        a(paramString); 
      return (cl)n.get(paramString);
    } 
  }
  
  private void b(Context paramContext) {
    String str1 = this.i.c().toString();
    this.k = str1.getBytes().length;
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append("cacheString = ");
    stringBuilder1.append(str1);
    cz.a(stringBuilder1.toString());
    String str2 = dc.q(paramContext);
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(str2);
    stringBuilder2.append("__local_last_session.json");
    cs.a(paramContext, stringBuilder2.toString(), str1, false);
  }
  
  private void c(String paramString) { // Byte code:
    //   0: getstatic com/baidu/mobstat/ch.n : Ljava/util/HashMap;
    //   3: astore_2
    //   4: aload_2
    //   5: monitorenter
    //   6: aload_1
    //   7: ifnonnull -> 18
    //   10: ldc 'pageName is null'
    //   12: invokestatic c : (Ljava/lang/String;)V
    //   15: aload_2
    //   16: monitorexit
    //   17: return
    //   18: getstatic com/baidu/mobstat/ch.n : Ljava/util/HashMap;
    //   21: aload_1
    //   22: invokevirtual containsKey : (Ljava/lang/Object;)Z
    //   25: ifeq -> 36
    //   28: getstatic com/baidu/mobstat/ch.n : Ljava/util/HashMap;
    //   31: aload_1
    //   32: invokevirtual remove : (Ljava/lang/Object;)Ljava/lang/Object;
    //   35: pop
    //   36: aload_2
    //   37: monitorexit
    //   38: return
    //   39: aload_2
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    //   43: astore_1
    //   44: goto -> 39
    // Exception table:
    //   from	to	target	type
    //   10	17	43	finally
    //   18	36	43	finally
    //   36	38	43	finally
    //   39	41	43	finally }
  
  private boolean h() { return this.g; }
  
  private int i() {
    try {
      classNotFoundException1 = Class.forName("android.app.Fragment");
    } catch (ClassNotFoundException classNotFoundException1) {
      classNotFoundException1 = null;
    } 
    try {
      classNotFoundException2 = Class.forName("android.support.a.a.a");
    } catch (ClassNotFoundException classNotFoundException2) {
      classNotFoundException2 = null;
    } 
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    byte b1 = 0;
    while (true) {
      if (b1 < arrayOfStackTraceElement.length) {
        str1 = arrayOfStackTraceElement[b1].getClassName();
        String str2 = arrayOfStackTraceElement[b1].getMethodName();
        if (!TextUtils.isEmpty(str1) && !TextUtils.isEmpty(str2) && str2.equals("onResume")) {
          try {
            Class clazz = Class.forName(str1);
          } catch (Throwable str1) {
            str1 = null;
          } 
          if (str1 != null) {
            if (android.app.Activity.class.isAssignableFrom(str1))
              return 1; 
            if (classNotFoundException1 != null && classNotFoundException1.isAssignableFrom(str1))
              return 2; 
            if (classNotFoundException2 != null && classNotFoundException2.isAssignableFrom(str1))
              return 2; 
          } 
        } 
        b1++;
        continue;
      } 
      return 3;
    } 
  }
  
  private void j() {
    boolean bool = h();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("isFirstResume:");
    stringBuilder.append(bool);
    cz.a(stringBuilder.toString());
    if (bool) {
      a(false);
      this.m.post(new ck(this));
    } 
  }
  
  public void a(int paramInt) { this.j = paramInt * 1000; }
  
  public void a(long paramLong) { this.i.a(paramLong); }
  
  @TargetApi(11)
  public void a(Fragment paramFragment, long paramLong) {
    cz.a("post resume job");
    if (this.d.c)
      cz.c("遗漏StatService.onPause() || missing StatService.onPause()"); 
    this.d.c = true;
    j();
    co co = new co(this, this.f, paramLong, this.l, null, null, paramFragment, 2, 3);
    this.m.post(co);
    this.d.b = new WeakReference(paramFragment);
    this.d.a = paramLong;
  }
  
  public void a(Context paramContext) {
    if (paramContext == null) {
      cz.a("clearLastSession context is null, invalid");
      return;
    } 
    String str1 = (new JSONObject()).toString();
    String str2 = dc.q(paramContext);
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str2);
    stringBuilder.append("__local_last_session.json");
    cs.a(paramContext, stringBuilder.toString(), str1, false);
  }
  
  public void a(Context paramContext, long paramLong) {
    if (this.l == 0L) {
      ci ci = new ci(this, paramLong);
      this.m.post(ci);
    } 
    this.l = paramLong;
  }
  
  public void a(Context paramContext, long paramLong, String paramString) {
    cz.a("AnalysisPageStart");
    if (TextUtils.isEmpty(paramString)) {
      cz.c("自定义页面 pageName 为 null");
      return;
    } 
    cl cl = b(paramString);
    if (cl == null) {
      cz.c("get page info, PageInfo null");
      return;
    } 
    if (cl.b)
      cz.c("遗漏StatService.onPageEnd() || missing StatService.onPageEnd()"); 
    cl.b = true;
    cl.c = paramLong;
    j();
    if (!this.h) {
      co co = new co(this, this.f, paramLong, this.l, paramContext, null, null, i(), 1);
      this.m.post(co);
      this.h = true;
    } 
    this.b.b = new WeakReference(paramContext);
    this.b.a = paramLong;
  }
  
  public void a(Context paramContext, long paramLong, String paramString1, String paramString2, ExtraInfo paramExtraInfo) {
    cz.a("post pause job");
    this.h = false;
    if (TextUtils.isEmpty(paramString2)) {
      cz.c("自定义页面 pageName 无效值");
      return;
    } 
    cl cl = b(paramString2);
    if (cl == null) {
      cz.c("get page info, PageInfo null");
      return;
    } 
    if (!cl.b) {
      cz.c("Please check (1)遗漏StatService.onPageStart() || missing StatService.onPageStart()");
      return;
    } 
    cl.b = false;
    cl.d = paramLong;
    cn cn = new cn(this, paramLong, paramContext, null, cl.c, (Context)this.b.b.get(), null, 1, paramString2, null, null, paramString1, false, paramExtraInfo, cl);
    this.m.post(cn);
    c(paramString2);
    this.f = paramLong;
  }
  
  public void a(Context paramContext, long paramLong, boolean paramBoolean) {
    if (paramBoolean) {
      this.e.c = true;
      this.e.b = new WeakReference(paramContext);
      this.e.a = paramLong;
    } 
    cz.a("AnalysisResume job");
    if (!paramBoolean && this.b.c)
      cz.c("遗漏StatService.onPause() || missing StatService.onPause()"); 
    if (!paramBoolean)
      this.b.c = true; 
    j();
    if (!this.h) {
      co co = new co(this, this.f, paramLong, this.l, paramContext, null, null, 1, 1);
      this.m.post(co);
      this.h = true;
    } 
    this.b.b = new WeakReference(paramContext);
    this.b.a = paramLong;
  }
  
  public void a(Context paramContext, long paramLong, boolean paramBoolean, ExtraInfo paramExtraInfo) {
    cz.a("post pause job");
    this.h = false;
    if (paramBoolean) {
      this.e.c = false;
      cn = new cn(this, paramLong, paramContext, null, this.e.a, (Context)this.e.b.get(), null, 1, null, null, null, null, paramBoolean, paramExtraInfo, null);
      this.m.post(cn);
      this.f = paramLong;
      return;
    } 
    if (!this.b.c) {
      cz.c("遗漏StatService.onResume() || missing StatService.onResume()");
      return;
    } 
    this.b.c = false;
    cn cn = new cn(this, paramLong, cn, null, this.b.a, (Context)this.b.b.get(), null, 1, null, null, null, null, paramBoolean, paramExtraInfo, null);
    this.m.post(cn);
    this.f = paramLong;
  }
  
  public void a(a parama, long paramLong) {
    cz.a("post resume job");
    if (this.c.c)
      cz.c("遗漏StatService.onPause() || missing StatService.onPause()"); 
    this.c.c = true;
    j();
    co co = new co(this, this.f, paramLong, this.l, null, parama, null, 2, 2);
    this.m.post(co);
    this.c.b = new WeakReference(parama);
    this.c.a = paramLong;
  }
  
  public int b() { return this.k; }
  
  public void b(int paramInt) { this.i.b(paramInt); }
  
  public void b(long paramLong) { this.i.b(paramLong); }
  
  @TargetApi(11)
  public void b(Fragment paramFragment, long paramLong) {
    cz.a("post pause job");
    if (!this.d.c) {
      cz.c("遗漏android.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()");
      return;
    } 
    this.d.c = false;
    cn cn = new cn(this, paramLong, null, null, this.d.a, null, null, 3, null, this.d.b.get(), paramFragment, null, false, null, null);
    this.m.post(cn);
    this.f = paramLong;
  }
  
  public void b(Context paramContext, long paramLong) {
    cj cj = new cj(this, paramLong, paramContext);
    this.m.post(cj);
  }
  
  public void b(a parama, long paramLong) {
    cz.a("post pause job");
    if (!this.c.c) {
      cz.c("遗漏android.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()");
      return;
    } 
    this.c.c = false;
    cn cn = new cn(this, paramLong, null, parama, this.c.a, null, (a)this.c.b.get(), 2, null, null, null, null, false, null, null);
    this.m.post(cn);
    this.f = paramLong;
  }
  
  public int c() {
    if (this.j == -1)
      this.j = 30000; 
    return this.j;
  }
  
  public void c(int paramInt) { this.i.a(paramInt); }
  
  public void d() { b(f() + 1); }
  
  public void e() { this.i.a(); }
  
  public int f() { return this.i.d(); }
  
  public long g() { return this.i.b(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

class bv {
  private static final bv a = new bv();
  
  private Context b;
  
  private HandlerThread f;
  
  private Handler g;
  
  public static bv a() { return a; }
  
  private void c(Context paramContext) {
    if (paramContext == null)
      return; 
    if (!this.c) {
      this.b = paramContext.getApplicationContext();
      e();
      this.c = true;
    } 
  }
  
  private void e() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new com/baidu/mobstat/bx
    //   5: dup
    //   6: aload_0
    //   7: aconst_null
    //   8: invokespecial <init> : (Lcom/baidu/mobstat/bv;Lcom/baidu/mobstat/bw;)V
    //   11: astore_1
    //   12: aload_1
    //   13: bipush #10
    //   15: invokevirtual setPriority : (I)V
    //   18: aload_1
    //   19: invokevirtual start : ()V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	25	finally }
  
  public void a(Context paramContext) {
    try {
      a().b(paramContext.getApplicationContext());
    } catch (Throwable throwable) {}
    c(paramContext.getApplicationContext());
  }
  
  public void a(Context paramContext, boolean paramBoolean) {
    if (this.d)
      return; 
    PrefOperate.loadMetaDataConfig(paramContext);
    DataCore.instance().loadStatData(paramContext);
    DataCore.instance().loadLastSession(paramContext);
    DataCore.instance().installHeader(paramContext);
    if (paramBoolean)
      DataCore.instance().saveLogDataToSend(paramContext); 
    this.d = true;
  }
  
  public void b(Context paramContext) {
    if (this.e)
      return; 
    if (paramContext == null)
      return; 
    if (this.f == null || !this.f.isAlive()) {
      this.f = new HandlerThread("dataAnalyzeThread");
      this.f.start();
      Looper looper = this.f.getLooper();
      if (looper != null)
        this.g = new Handler(looper); 
    } 
    if (this.g == null)
      return; 
    this.g.postDelayed(new bw(this, paramContext), 5000L);
    this.e = true;
  }
  
  public boolean b() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield c : Z
    //   6: istore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: iload_1
    //   10: ireturn
    //   11: astore_2
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_2
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally }
  
  public boolean c() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield d : Z
    //   6: istore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: iload_1
    //   10: ireturn
    //   11: astore_2
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_2
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally }
  
  public void d() { // Byte code:
    //   0: aload_0
    //   1: getfield d : Z
    //   4: ifne -> 47
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield d : Z
    //   13: istore_1
    //   14: iload_1
    //   15: ifne -> 39
    //   18: aload_0
    //   19: ldc2_w 50
    //   22: invokevirtual wait : (J)V
    //   25: goto -> 9
    //   28: astore_2
    //   29: aload_2
    //   30: invokevirtual getMessage : ()Ljava/lang/String;
    //   33: invokestatic b : (Ljava/lang/String;)V
    //   36: goto -> 9
    //   39: aload_0
    //   40: monitorexit
    //   41: return
    //   42: astore_2
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_2
    //   46: athrow
    //   47: return
    // Exception table:
    //   from	to	target	type
    //   9	14	42	finally
    //   18	25	28	java/lang/InterruptedException
    //   18	25	42	finally
    //   29	36	42	finally
    //   39	41	42	finally
    //   43	45	42	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
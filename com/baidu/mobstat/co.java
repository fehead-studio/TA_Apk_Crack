package com.baidu.mobstat;

import android.content.Context;
import android.support.a.a.a;
import android.support.v4.app.FragmentActivity;
import java.lang.ref.WeakReference;

class co implements Runnable {
  private long b;
  
  private long c;
  
  private WeakReference<Context> d;
  
  private WeakReference<a> e;
  
  private WeakReference<Object> f;
  
  private long g;
  
  private int h;
  
  private int i = 1;
  
  public co(ch paramch, long paramLong1, long paramLong2, long paramLong3, Context paramContext, a parama, Object paramObject, int paramInt1, int paramInt2) {
    this.b = paramLong1;
    this.c = paramLong2;
    this.d = new WeakReference(paramContext);
    this.e = new WeakReference(parama);
    this.f = new WeakReference(paramObject);
    this.g = paramLong3;
    this.h = paramInt1;
    this.i = paramInt2;
  }
  
  public void run() {
    boolean bool;
    if (this.c - this.b >= this.a.c()) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool && this.b > 0L) {
      Context context = (Context)this.d.get();
      a a1 = (a)this.e.get();
      Object object = this.f.get();
      if (context != null || a1 != null || object != null) {
        ch.a(this.a).d(this.b);
        String str = ch.a(this.a).c().toString();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("new session:");
        stringBuilder.append(str);
        cz.a(stringBuilder.toString());
        DataCore.instance().putSession(str);
        if (this.i != 1)
          if (this.i == 2) {
            FragmentActivity fragmentActivity = a1.getActivity();
          } else if (this.i == 3) {
            context = ch.a(object);
          } else {
            context = null;
            this.a.e();
            this.a.a(this.g);
            this.a.c(this.h);
          }  
        DataCore.instance().flush(context);
      } else {
        return;
      } 
    } else {
      if (bool && this.b == 0L)
        this.a.c(this.h); 
      return;
    } 
    this.a.e();
    this.a.a(this.g);
    this.a.c(this.h);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\co.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
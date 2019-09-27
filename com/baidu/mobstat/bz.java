package com.baidu.mobstat;

import android.content.Context;

class bz implements Runnable {
  bz(by paramby, Context paramContext) {}
  
  public void run() {
    if (by.a(this.b) != null) {
      by.a(this.b).cancel();
      by.a(this.b, null);
    } 
    by.a(this.b, SendStrategyEnum.values()[bj.a().a(this.a)]);
    by.a(this.b, bj.a().b(this.a));
    by.a(this.b, bj.a().c(this.a));
    if (by.b(this.b).equals(SendStrategyEnum.SET_TIME_INTERVAL) || by.b(this.b).equals(SendStrategyEnum.ONCE_A_DAY))
      this.b.b(this.a); 
    by.d(this.b).postDelayed(new ca(this), (by.c(this.b) * 1000));
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
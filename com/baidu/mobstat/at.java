package com.baidu.mobstat;

import android.content.Context;
import android.content.Intent;
import com.baidu.bottom.service.BottomReceiver;

public class at extends Thread {
  public at(BottomReceiver paramBottomReceiver, Context paramContext, Intent paramIntent, db paramdb) {}
  
  public void run() {
    try {
      BottomReceiver.a(this.d, this.a, this.b);
      BottomReceiver.b(this.d, this.a, this.b);
      l = System.currentTimeMillis();
      if (l - BottomReceiver.a() < 30000L) {
        bd.a("No need to handle receiver due to time strategy");
        return;
      } 
    } catch (Throwable throwable) {
    
    } finally {
      this.c.b();
      BottomReceiver.a(null);
    } 
    this.c.b();
    BottomReceiver.a(null);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
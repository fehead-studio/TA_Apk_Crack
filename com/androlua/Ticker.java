package com.androlua;

import android.os.Handler;
import android.os.Message;

public class Ticker {
  private Handler a;
  
  private OnTickListener b;
  
  private Thread c;
  
  private long d = 1000L;
  
  private boolean e = true;
  
  private boolean f = false;
  
  private long g;
  
  private long h;
  
  public Ticker() { a(); }
  
  private void a() {
    this.a = new Handler(this) {
        public void handleMessage(Message param1Message) {
          if (Ticker.a(this.a) != null)
            Ticker.a(this.a).onTick(); 
        }
      };
    this.c = new Thread(this) {
        public void run() {
          Ticker.a(this.a, true);
          while (true) {
            if (Ticker.b(this.a)) {
              long l = System.currentTimeMillis();
              if (!Ticker.c(this.a))
                Ticker.a(this.a, l - Ticker.d(this.a)); 
              if (l - Ticker.e(this.a) >= Ticker.f(this.a)) {
                Ticker.a(this.a, l);
                Ticker.g(this.a).sendEmptyMessage(0);
              } 
              try {
                Ticker.null.sleep(1L);
                continue;
              } catch (InterruptedException interruptedException) {
                continue;
              } 
            } 
            return;
          } 
        }
      };
  }
  
  public boolean getEnabled() { return this.e; }
  
  public long getInterval() { return this.d; }
  
  public long getPeriod() { return this.d; }
  
  public boolean isRun() { return this.f; }
  
  public void setEnabled(boolean paramBoolean) {
    this.e = paramBoolean;
    if (!paramBoolean)
      this.h = System.currentTimeMillis() - this.g; 
  }
  
  public void setInterval(long paramLong) {
    this.g = System.currentTimeMillis();
    this.d = paramLong;
  }
  
  public void setOnTickListener(OnTickListener paramOnTickListener) { this.b = paramOnTickListener; }
  
  public void setPeriod(long paramLong) {
    this.g = System.currentTimeMillis();
    this.d = paramLong;
  }
  
  public void start() { this.c.start(); }
  
  public void stop() { this.f = false; }
  
  public static interface OnTickListener {
    void onTick();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\Ticker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
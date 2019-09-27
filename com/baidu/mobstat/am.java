package com.baidu.mobstat;

import android.content.Context;

class am implements Runnable {
  am(al paramal, String paramString, Context paramContext) {}
  
  public void run() {
    try {
      al.a(this.c, this.a);
      if (this.b == null)
        return; 
      Context context = this.b.getApplicationContext();
      al.a(this.c, context);
      return;
    } catch (Throwable throwable) {
      bd.b(throwable);
      return;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
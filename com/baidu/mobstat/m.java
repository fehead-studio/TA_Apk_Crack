package com.baidu.mobstat;

import android.content.Context;

class m {
  static m a = new m();
  
  public void a(Context paramContext) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic l : (Landroid/content/Context;)Ljava/lang/String;
    //   6: astore_1
    //   7: aload_1
    //   8: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   11: ifne -> 25
    //   14: getstatic com/baidu/mobstat/y.a : Lcom/baidu/mobstat/y;
    //   17: invokestatic currentTimeMillis : ()J
    //   20: aload_1
    //   21: invokevirtual a : (JLjava/lang/String;)J
    //   24: pop2
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Exception table:
    //   from	to	target	type
    //   2	25	28	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
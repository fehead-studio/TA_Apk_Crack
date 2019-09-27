package com.baidu.mobstat;

import android.net.LocalServerSocket;

public final class db {
  private LocalServerSocket a;
  
  public final boolean a() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/net/LocalServerSocket;
    //   6: ifnonnull -> 33
    //   9: aload_0
    //   10: new android/net/LocalServerSocket
    //   13: dup
    //   14: ldc 'com.baidu.mobstat.bplus'
    //   16: invokespecial <init> : (Ljava/lang/String;)V
    //   19: putfield a : Landroid/net/LocalServerSocket;
    //   22: iconst_1
    //   23: istore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: iload_1
    //   27: ireturn
    //   28: astore_2
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_2
    //   32: athrow
    //   33: iconst_0
    //   34: istore_1
    //   35: goto -> 24
    //   38: astore_2
    //   39: goto -> 33
    // Exception table:
    //   from	to	target	type
    //   2	22	38	java/io/IOException
    //   2	22	28	finally }
  
  public final void b() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/net/LocalServerSocket;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull -> 23
    //   11: aload_0
    //   12: getfield a : Landroid/net/LocalServerSocket;
    //   15: invokevirtual close : ()V
    //   18: aload_0
    //   19: aconst_null
    //   20: putfield a : Landroid/net/LocalServerSocket;
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    //   31: astore_1
    //   32: goto -> 23
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
    //   11	23	31	java/io/IOException
    //   11	23	26	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\db.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
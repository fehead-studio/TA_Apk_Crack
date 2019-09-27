package com.baidu.mobstat;

import android.content.Context;

public class au {
  private static l a;
  
  public static l a(Context paramContext) { // Byte code:
    //   0: ldc com/baidu/mobstat/au
    //   2: monitorenter
    //   3: ldc 'getBPStretegyController begin'
    //   5: invokestatic a : (Ljava/lang/String;)V
    //   8: getstatic com/baidu/mobstat/au.a : Lcom/baidu/mobstat/l;
    //   11: astore_2
    //   12: aload_2
    //   13: astore_1
    //   14: aload_2
    //   15: ifnonnull -> 64
    //   18: aload_0
    //   19: ldc 'com.baidu.bottom.remote.BPStretegyController2'
    //   21: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    //   24: astore_3
    //   25: aload_2
    //   26: astore_1
    //   27: aload_3
    //   28: ifnull -> 64
    //   31: new com/baidu/mobstat/aw
    //   34: dup
    //   35: aload_3
    //   36: invokevirtual newInstance : ()Ljava/lang/Object;
    //   39: invokespecial <init> : (Ljava/lang/Object;)V
    //   42: astore_1
    //   43: ldc 'Get BPStretegyController load remote class v2'
    //   45: invokestatic a : (Ljava/lang/String;)V
    //   48: goto -> 64
    //   51: astore_2
    //   52: aload_2
    //   53: astore_3
    //   54: goto -> 60
    //   57: astore_3
    //   58: aload_2
    //   59: astore_1
    //   60: aload_3
    //   61: invokestatic a : (Ljava/lang/Throwable;)V
    //   64: aload_1
    //   65: astore_2
    //   66: aload_1
    //   67: ifnonnull -> 83
    //   70: new com/baidu/mobstat/av
    //   73: dup
    //   74: invokespecial <init> : ()V
    //   77: astore_2
    //   78: ldc 'Get BPStretegyController load local class'
    //   80: invokestatic a : (Ljava/lang/String;)V
    //   83: aload_2
    //   84: putstatic com/baidu/mobstat/au.a : Lcom/baidu/mobstat/l;
    //   87: aload_0
    //   88: aload_2
    //   89: invokestatic a : (Landroid/content/Context;Lcom/baidu/mobstat/l;)V
    //   92: ldc 'getBPStretegyController end'
    //   94: invokestatic a : (Ljava/lang/String;)V
    //   97: ldc com/baidu/mobstat/au
    //   99: monitorexit
    //   100: aload_2
    //   101: areturn
    //   102: astore_0
    //   103: ldc com/baidu/mobstat/au
    //   105: monitorexit
    //   106: aload_0
    //   107: athrow
    // Exception table:
    //   from	to	target	type
    //   3	12	102	finally
    //   18	25	57	java/lang/Exception
    //   18	25	102	finally
    //   31	43	57	java/lang/Exception
    //   31	43	102	finally
    //   43	48	51	java/lang/Exception
    //   43	48	102	finally
    //   60	64	102	finally
    //   70	83	102	finally
    //   83	97	102	finally }
  
  public static void a() { // Byte code:
    //   0: ldc com/baidu/mobstat/au
    //   2: monitorenter
    //   3: aconst_null
    //   4: putstatic com/baidu/mobstat/au.a : Lcom/baidu/mobstat/l;
    //   7: ldc com/baidu/mobstat/au
    //   9: monitorexit
    //   10: return
    //   11: astore_0
    //   12: ldc com/baidu/mobstat/au
    //   14: monitorexit
    //   15: aload_0
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	11	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
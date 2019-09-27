package com.androlua.util;

public class VolatileDispose<T> extends Object {
  public T blockedGet() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/lang/Object;
    //   6: ifnull -> 18
    //   9: aload_0
    //   10: getfield a : Ljava/lang/Object;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: aload_0
    //   19: ldc2_w 1000
    //   22: invokevirtual wait : (J)V
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_0
    //   28: getfield a : Ljava/lang/Object;
    //   31: areturn
    //   32: astore_1
    //   33: new java/lang/RuntimeException
    //   36: dup
    //   37: aload_1
    //   38: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   41: athrow
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	42	finally
    //   18	25	32	java/lang/InterruptedException
    //   18	25	42	finally
    //   25	27	42	finally
    //   33	42	42	finally
    //   43	45	42	finally }
  
  public T blockedGetOrThrow(Class<? extends RuntimeException> paramClass) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/lang/Object;
    //   6: ifnull -> 18
    //   9: aload_0
    //   10: getfield a : Ljava/lang/Object;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: aload_0
    //   19: invokevirtual wait : ()V
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_0
    //   25: getfield a : Ljava/lang/Object;
    //   28: areturn
    //   29: aload_1
    //   30: invokevirtual newInstance : ()Ljava/lang/Object;
    //   33: checkcast java/lang/RuntimeException
    //   36: athrow
    //   37: astore_1
    //   38: new java/lang/RuntimeException
    //   41: dup
    //   42: aload_1
    //   43: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   46: athrow
    //   47: astore_1
    //   48: new java/lang/RuntimeException
    //   51: dup
    //   52: aload_1
    //   53: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   56: athrow
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    //   62: astore_2
    //   63: goto -> 29
    // Exception table:
    //   from	to	target	type
    //   2	16	57	finally
    //   18	22	62	java/lang/InterruptedException
    //   18	22	57	finally
    //   22	24	57	finally
    //   29	37	47	java/lang/InstantiationException
    //   29	37	37	java/lang/IllegalAccessException
    //   29	37	57	finally
    //   38	47	57	finally
    //   48	57	57	finally
    //   58	60	57	finally }
  
  public void setAndNotify(T paramT) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: putfield a : Ljava/lang/Object;
    //   7: aload_0
    //   8: invokevirtual notify : ()V
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: astore_1
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_1
    //   18: athrow
    // Exception table:
    //   from	to	target	type
    //   2	13	14	finally
    //   15	17	14	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\VolatileDispose.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
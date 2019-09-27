package com.androlua.util;

public class VolatileBox<T> extends Object {
  public VolatileBox() {}
  
  public VolatileBox(T paramT) { set(paramT); }
  
  public T blockedGet() {
    TimerTaskX timerTaskX;
    /* monitor enter ThisExpression{ObjectType{com/androlua/util/VolatileBox}} */
    try {
      wait();
      /* monitor exit ThisExpression{ObjectType{com/androlua/util/VolatileBox}} */
      return (T)this.a;
    } catch (InterruptedException null) {
      throw new RuntimeException(timerTaskX);
    } finally {}
    /* monitor exit ThisExpression{ObjectType{com/androlua/util/VolatileBox}} */
    throw timerTaskX;
  }
  
  public T blockedGetOrThrow(Class<? extends RuntimeException> paramClass) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual wait : ()V
    //   6: aload_0
    //   7: monitorexit
    //   8: aload_0
    //   9: getfield a : Ljava/lang/Object;
    //   12: areturn
    //   13: astore_1
    //   14: goto -> 45
    //   17: aload_1
    //   18: invokevirtual newInstance : ()Ljava/lang/Object;
    //   21: checkcast java/lang/RuntimeException
    //   24: athrow
    //   25: astore_1
    //   26: new java/lang/RuntimeException
    //   29: dup
    //   30: aload_1
    //   31: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   34: athrow
    //   35: astore_1
    //   36: new java/lang/RuntimeException
    //   39: dup
    //   40: aload_1
    //   41: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   44: athrow
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    //   49: astore_2
    //   50: goto -> 17
    // Exception table:
    //   from	to	target	type
    //   2	6	49	java/lang/InterruptedException
    //   2	6	13	finally
    //   6	8	13	finally
    //   17	25	35	java/lang/InstantiationException
    //   17	25	25	java/lang/IllegalAccessException
    //   17	25	13	finally
    //   26	35	13	finally
    //   36	45	13	finally
    //   45	47	13	finally }
  
  public T get() { return (T)this.a; }
  
  public boolean isNull() { return (this.a == null); }
  
  public boolean notNull() { return (this.a != null); }
  
  public void set(T paramT) { this.a = paramT; }
  
  public void setAndNotify(T paramT) { // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield a : Ljava/lang/Object;
    //   5: aload_0
    //   6: monitorenter
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
    //   7	13	14	finally
    //   15	17	14	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\VolatileBox.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
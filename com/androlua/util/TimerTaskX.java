package com.androlua.util;

public abstract class TimerTaskX implements Runnable {
  private long a;
  
  final Object b = new Object();
  
  boolean c;
  
  long d;
  
  long e;
  
  boolean f;
  
  private boolean g;
  
  boolean a() {
    synchronized (this.b) {
      if (this.d > 0L || this.a > 0L)
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public boolean cancel() {
    synchronized (this.b) {
      if (!this.c && this.d > 0L) {
        boolean bool1 = true;
        this.c = true;
        return bool1;
      } 
    } 
    boolean bool = false;
    this.c = true;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public long getPeriod() { return this.e; }
  
  public boolean isEnabled() { return this.g; }
  
  public abstract void run();
  
  public long scheduledExecutionTime() {
    synchronized (this.b) {
      return this.a;
    } 
  }
  
  public void setEnabled(boolean paramBoolean) { this.g = paramBoolean; }
  
  public void setPeriod(long paramLong) { this.e = paramLong; }
  
  public void setScheduledTime(long paramLong) {
    synchronized (this.b) {
      this.a = paramLong;
      return;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\TimerTaskX.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
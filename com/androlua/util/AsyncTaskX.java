package com.androlua.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class AsyncTaskX<Params, Progress, Result> extends Object {
  public static final Executor SERIAL_EXECUTOR;
  
  public static final Executor THREAD_POOL_EXECUTOR;
  
  private static final int a = Runtime.getRuntime().availableProcessors();
  
  private static final ThreadFactory b = new ThreadFactory() {
      private final AtomicInteger a = new AtomicInteger(1);
      
      public Thread newThread(Runnable param1Runnable) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AsyncTask #");
        stringBuilder.append(this.a.getAndIncrement());
        return new Thread(param1Runnable, stringBuilder.toString());
      }
    };
  
  private static final BlockingQueue<Runnable> c = new LinkedBlockingQueue(1024);
  
  private static InternalHandler e;
  
  private final WorkerRunnable<Params, Result> f;
  
  private final FutureTask<Result> g;
  
  private final AtomicBoolean i = new AtomicBoolean();
  
  private final AtomicBoolean j = new AtomicBoolean();
  
  private final Handler k;
  
  static  {
    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 128, 30L, TimeUnit.SECONDS, c, b);
    threadPoolExecutor.allowCoreThreadTimeOut(true);
    THREAD_POOL_EXECUTOR = threadPoolExecutor;
    SERIAL_EXECUTOR = new SerialExecutor(null);
    d = THREAD_POOL_EXECUTOR;
  }
  
  public AsyncTaskX() { this((Looper)null); }
  
  public AsyncTaskX(Handler paramHandler) { this(paramHandler); }
  
  public AsyncTaskX(Looper paramLooper) {
    if (paramLooper == null || paramLooper == Looper.getMainLooper()) {
      handler = c();
    } else {
      handler = new Handler(handler);
    } 
    this.k = handler;
    this.f = new WorkerRunnable<Params, Result>(this) {
        public Result call() {
          AsyncTaskX.a(this.a).set(true);
          object3 = null;
          object2 = null;
          object1 = object2;
          try {
            Process.setThreadPriority(10);
            object1 = object2;
            object2 = this.a.a(this.b);
            try {
              return (Result)object2;
            } catch (Throwable object3) {
            
            } finally {
              object3 = null;
              object1 = object2;
            } 
          } catch (Throwable object1) {
            object2 = object3;
            object3 = object1;
          } finally {}
          object1 = object2;
          AsyncTaskX.b(this.a).set(true);
          object1 = object2;
          throw object3;
        }
      };
    this.g = new FutureTask<Result>(this, this.f) {
        protected void done() {
          try {
            AsyncTaskX.b(this.a, get());
            return;
          } catch (InterruptedException interruptedException) {
            Log.w("AsyncTaskX", interruptedException);
            return;
          } catch (ExecutionException executionException) {
            throw new RuntimeException("An error occurred while executing doInBackground()", executionException.getCause());
          } catch (CancellationException cancellationException) {
            AsyncTaskX.b(this.a, null);
            return;
          } 
        }
      };
  }
  
  private static Handler c() { // Byte code:
    //   0: ldc com/androlua/util/AsyncTaskX
    //   2: monitorenter
    //   3: getstatic com/androlua/util/AsyncTaskX.e : Lcom/androlua/util/AsyncTaskX$InternalHandler;
    //   6: ifnonnull -> 22
    //   9: new com/androlua/util/AsyncTaskX$InternalHandler
    //   12: dup
    //   13: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   16: invokespecial <init> : (Landroid/os/Looper;)V
    //   19: putstatic com/androlua/util/AsyncTaskX.e : Lcom/androlua/util/AsyncTaskX$InternalHandler;
    //   22: getstatic com/androlua/util/AsyncTaskX.e : Lcom/androlua/util/AsyncTaskX$InternalHandler;
    //   25: astore_0
    //   26: ldc com/androlua/util/AsyncTaskX
    //   28: monitorexit
    //   29: aload_0
    //   30: areturn
    //   31: astore_0
    //   32: ldc com/androlua/util/AsyncTaskX
    //   34: monitorexit
    //   35: aload_0
    //   36: athrow
    // Exception table:
    //   from	to	target	type
    //   3	22	31	finally
    //   22	29	31	finally
    //   32	35	31	finally }
  
  private void c(Result paramResult) {
    if (!this.j.get())
      d(paramResult); 
  }
  
  private Handler d() { return this.k; }
  
  private Result d(Result paramResult) {
    d().obtainMessage(1, new AsyncTaskResult(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }
  
  private void e(Result paramResult) {
    if (isCancelled()) {
      b(paramResult);
    } else {
      a(paramResult);
    } 
    this.h = Status.FINISHED;
  }
  
  public static void execute(Runnable paramRunnable) { d.execute(paramRunnable); }
  
  public static void setDefaultExecutor(Executor paramExecutor) { d = paramExecutor; }
  
  protected abstract Result a(Params... paramVarArgs);
  
  protected void a() {}
  
  protected void a(Result paramResult) {}
  
  protected void b() {}
  
  protected void b(Result paramResult) { b(); }
  
  protected void b(Progress... paramVarArgs) {}
  
  protected final void c(Progress... paramVarArgs) {
    if (!isCancelled())
      d().obtainMessage(2, new AsyncTaskResult(this, paramVarArgs)).sendToTarget(); 
  }
  
  public final boolean cancel(boolean paramBoolean) {
    this.i.set(true);
    return this.g.cancel(paramBoolean);
  }
  
  public final AsyncTaskX<Params, Progress, Result> execute(Params... paramVarArgs) { return executeOnExecutor(d, paramVarArgs); }
  
  public final AsyncTaskX<Params, Progress, Result> executeOnExecutor(Executor paramExecutor, Params... paramVarArgs) {
    if (this.h != Status.PENDING) {
      switch (null.a[this.h.ordinal()]) {
        default:
          this.h = Status.RUNNING;
          a();
          this.f.b = paramVarArgs;
          paramExecutor.execute(this.g);
          return this;
        case 2:
          throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        case 1:
          break;
      } 
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    } 
  }
  
  public final Result get() { return (Result)this.g.get(); }
  
  public final Result get(long paramLong, TimeUnit paramTimeUnit) { return (Result)this.g.get(paramLong, paramTimeUnit); }
  
  public final Status getStatus() { return this.h; }
  
  public final boolean isCancelled() { return this.i.get(); }
  
  private static class AsyncTaskResult<Data> extends Object {
    final AsyncTaskX a;
    
    final Data[] b;
    
    AsyncTaskResult(AsyncTaskX param1AsyncTaskX, Data... param1VarArgs) {
      this.a = param1AsyncTaskX;
      this.b = param1VarArgs;
    }
  }
  
  private static class InternalHandler extends Handler {
    public InternalHandler(Looper param1Looper) { super(param1Looper); }
    
    public void handleMessage(Message param1Message) {
      AsyncTaskX.AsyncTaskResult asyncTaskResult = (AsyncTaskX.AsyncTaskResult)param1Message.obj;
      switch (param1Message.what) {
        default:
          return;
        case 2:
          asyncTaskResult.a.b(asyncTaskResult.b);
          return;
        case 1:
          break;
      } 
      AsyncTaskX.c(asyncTaskResult.a, asyncTaskResult.b[0]);
    }
  }
  
  private static class SerialExecutor implements Executor {
    final ArrayDeque<Runnable> a = new ArrayDeque();
    
    Runnable b;
    
    private SerialExecutor() {}
    
    protected void a() { // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield a : Ljava/util/ArrayDeque;
      //   6: invokevirtual poll : ()Ljava/lang/Object;
      //   9: checkcast java/lang/Runnable
      //   12: astore_1
      //   13: aload_0
      //   14: aload_1
      //   15: putfield b : Ljava/lang/Runnable;
      //   18: aload_1
      //   19: ifnull -> 34
      //   22: getstatic com/androlua/util/AsyncTaskX.THREAD_POOL_EXECUTOR : Ljava/util/concurrent/Executor;
      //   25: aload_0
      //   26: getfield b : Ljava/lang/Runnable;
      //   29: invokeinterface execute : (Ljava/lang/Runnable;)V
      //   34: aload_0
      //   35: monitorexit
      //   36: return
      //   37: astore_1
      //   38: aload_0
      //   39: monitorexit
      //   40: aload_1
      //   41: athrow
      // Exception table:
      //   from	to	target	type
      //   2	18	37	finally
      //   22	34	37	finally }
    
    public void execute(Runnable param1Runnable) { // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield a : Ljava/util/ArrayDeque;
      //   6: new com/androlua/util/AsyncTaskX$SerialExecutor$1
      //   9: dup
      //   10: aload_0
      //   11: aload_1
      //   12: invokespecial <init> : (Lcom/androlua/util/AsyncTaskX$SerialExecutor;Ljava/lang/Runnable;)V
      //   15: invokevirtual offer : (Ljava/lang/Object;)Z
      //   18: pop
      //   19: aload_0
      //   20: getfield b : Ljava/lang/Runnable;
      //   23: ifnonnull -> 30
      //   26: aload_0
      //   27: invokevirtual a : ()V
      //   30: aload_0
      //   31: monitorexit
      //   32: return
      //   33: astore_1
      //   34: aload_0
      //   35: monitorexit
      //   36: aload_1
      //   37: athrow
      // Exception table:
      //   from	to	target	type
      //   2	30	33	finally }
  }
  
  class null implements Runnable {
    null(AsyncTaskX this$0, Runnable param1Runnable) {}
    
    public void run() {
      try {
        this.a.run();
        return;
      } finally {
        this.b.a();
      } 
    }
  }
  
  public enum Status {
    FINISHED, PENDING, RUNNING;
    
    static  {
      FINISHED = new Status("FINISHED", 2);
      a = new Status[] { PENDING, RUNNING, FINISHED };
    }
  }
  
  private static abstract class WorkerRunnable<Params, Result> extends Object implements Callable<Result> {
    Params[] b;
    
    private WorkerRunnable() {}
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\AsyncTaskX.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
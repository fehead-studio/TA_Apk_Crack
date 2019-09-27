package com.androlua.util;

import java.util.Date;

public class TimerX {
  private static long a;
  
  private final TimerImpl b;
  
  private final FinalizerHelper c;
  
  public TimerX() { this(false); }
  
  public TimerX(String paramString) { this(paramString, false); }
  
  public TimerX(String paramString, boolean paramBoolean) {
    if (paramString == null)
      throw new NullPointerException("name is null"); 
    this.b = new TimerImpl(paramString, paramBoolean);
    this.c = new FinalizerHelper(this.b);
  }
  
  public TimerX(boolean paramBoolean) { this(stringBuilder.toString(), paramBoolean); }
  
  private static long a() { // Byte code:
    //   0: ldc com/androlua/util/TimerX
    //   2: monitorenter
    //   3: getstatic com/androlua/util/TimerX.a : J
    //   6: lstore_0
    //   7: lload_0
    //   8: lconst_1
    //   9: ladd
    //   10: putstatic com/androlua/util/TimerX.a : J
    //   13: ldc com/androlua/util/TimerX
    //   15: monitorexit
    //   16: lload_0
    //   17: lreturn
    //   18: astore_2
    //   19: ldc com/androlua/util/TimerX
    //   21: monitorexit
    //   22: aload_2
    //   23: athrow
    // Exception table:
    //   from	to	target	type
    //   3	13	18	finally }
  
  private void a(TimerTaskX paramTimerTaskX, long paramLong1, long paramLong2, boolean paramBoolean) {
    synchronized (this.b) {
      if (TimerImpl.a(this.b))
        throw new IllegalStateException("Timer was canceled"); 
      paramLong1 += System.currentTimeMillis();
      if (paramLong1 < 0L) {
        null = new StringBuilder();
        null.append("Illegal delay to start the TimerTask: ");
        null.append(paramLong1);
        throw new IllegalArgumentException(null.toString());
      } 
      synchronized (null.b) {
        if (null.a())
          throw new IllegalStateException("TimerTask is scheduled already"); 
        if (null.c)
          throw new IllegalStateException("TimerTask is canceled"); 
        null.d = paramLong1;
        null.e = paramLong2;
        null.f = paramBoolean;
        TimerImpl.a(this.b, null);
        return;
      } 
    } 
  }
  
  public void cancel() { this.b.cancel(); }
  
  public int purge() {
    synchronized (this.b) {
      return this.b.purge();
    } 
  }
  
  public void schedule(TimerTaskX paramTimerTaskX, long paramLong) {
    if (paramLong < 0L)
      throw new IllegalArgumentException(); 
    a(paramTimerTaskX, paramLong, -1L, false);
  }
  
  public void schedule(TimerTaskX paramTimerTaskX, long paramLong1, long paramLong2) {
    if (paramLong1 < 0L || paramLong2 <= 0L)
      throw new IllegalArgumentException(); 
    a(paramTimerTaskX, paramLong1, paramLong2, false);
  }
  
  public void schedule(TimerTaskX paramTimerTaskX, Date paramDate) {
    if (paramDate.getTime() < 0L)
      throw new IllegalArgumentException(); 
    long l = paramDate.getTime() - System.currentTimeMillis();
    if (l < 0L)
      l = 0L; 
    a(paramTimerTaskX, l, -1L, false);
  }
  
  public void schedule(TimerTaskX paramTimerTaskX, Date paramDate, long paramLong) {
    if (paramLong <= 0L || paramDate.getTime() < 0L)
      throw new IllegalArgumentException(); 
    long l = paramDate.getTime() - System.currentTimeMillis();
    if (l < 0L)
      l = 0L; 
    a(paramTimerTaskX, l, paramLong, false);
  }
  
  public void scheduleAtFixedRate(TimerTaskX paramTimerTaskX, long paramLong1, long paramLong2) {
    if (paramLong1 < 0L || paramLong2 <= 0L)
      throw new IllegalArgumentException(); 
    a(paramTimerTaskX, paramLong1, paramLong2, true);
  }
  
  public void scheduleAtFixedRate(TimerTaskX paramTimerTaskX, Date paramDate, long paramLong) {
    if (paramLong <= 0L || paramDate.getTime() < 0L)
      throw new IllegalArgumentException(); 
    a(paramTimerTaskX, paramDate.getTime() - System.currentTimeMillis(), paramLong, true);
  }
  
  private static final class FinalizerHelper {
    private final TimerX.TimerImpl a;
    
    FinalizerHelper(TimerX.TimerImpl param1TimerImpl) { this.a = param1TimerImpl; }
    
    protected void finalize() {
      try {
      
      } finally {
        super.finalize();
      } 
    }
  }
  
  private static final class TimerImpl extends Thread {
    private boolean a;
    
    private boolean b;
    
    private TimerHeap c = new TimerHeap(null);
    
    TimerImpl(String param1String, boolean param1Boolean) {
      setName(param1String);
      setDaemon(param1Boolean);
      start();
    }
    
    private void a(TimerTaskX param1TimerTaskX) {
      this.c.insert(param1TimerTaskX);
      notify();
    }
    
    public void cancel() { // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: iconst_1
      //   4: putfield a : Z
      //   7: aload_0
      //   8: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   11: invokevirtual reset : ()V
      //   14: aload_0
      //   15: invokevirtual notify : ()V
      //   18: aload_0
      //   19: monitorexit
      //   20: return
      //   21: astore_1
      //   22: aload_0
      //   23: monitorexit
      //   24: aload_1
      //   25: athrow
      // Exception table:
      //   from	to	target	type
      //   2	18	21	finally }
    
    public int purge() {
      if (this.c.isEmpty())
        return 0; 
      TimerHeap.a(this.c, 0);
      this.c.deleteIfCancelled();
      return TimerHeap.a(this.c);
    }
    
    public void run() { // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield a : Z
      //   6: ifeq -> 12
      //   9: aload_0
      //   10: monitorexit
      //   11: return
      //   12: aload_0
      //   13: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   16: invokevirtual isEmpty : ()Z
      //   19: ifeq -> 41
      //   22: aload_0
      //   23: getfield b : Z
      //   26: ifeq -> 32
      //   29: aload_0
      //   30: monitorexit
      //   31: return
      //   32: aload_0
      //   33: invokevirtual wait : ()V
      //   36: aload_0
      //   37: monitorexit
      //   38: goto -> 0
      //   41: invokestatic currentTimeMillis : ()J
      //   44: lstore_2
      //   45: aload_0
      //   46: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   49: invokevirtual minimum : ()Lcom/androlua/util/TimerTaskX;
      //   52: astore #5
      //   54: aload #5
      //   56: getfield b : Ljava/lang/Object;
      //   59: astore #6
      //   61: aload #6
      //   63: monitorenter
      //   64: aload #5
      //   66: getfield c : Z
      //   69: istore #4
      //   71: iconst_0
      //   72: istore_1
      //   73: iload #4
      //   75: ifeq -> 92
      //   78: aload_0
      //   79: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   82: iconst_0
      //   83: invokevirtual delete : (I)V
      //   86: aload #6
      //   88: monitorexit
      //   89: goto -> 36
      //   92: aload #5
      //   94: getfield d : J
      //   97: lload_2
      //   98: lsub
      //   99: lstore_2
      //   100: aload #6
      //   102: monitorexit
      //   103: lload_2
      //   104: lconst_0
      //   105: lcmp
      //   106: ifle -> 117
      //   109: aload_0
      //   110: lload_2
      //   111: invokevirtual wait : (J)V
      //   114: goto -> 36
      //   117: aload #5
      //   119: getfield b : Ljava/lang/Object;
      //   122: astore #6
      //   124: aload #6
      //   126: monitorenter
      //   127: aload_0
      //   128: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   131: invokevirtual minimum : ()Lcom/androlua/util/TimerTaskX;
      //   134: getfield d : J
      //   137: aload #5
      //   139: getfield d : J
      //   142: lcmp
      //   143: ifeq -> 156
      //   146: aload_0
      //   147: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   150: aload #5
      //   152: invokestatic a : (Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;Lcom/androlua/util/TimerTaskX;)I
      //   155: istore_1
      //   156: aload #5
      //   158: getfield c : Z
      //   161: ifeq -> 186
      //   164: aload_0
      //   165: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   168: aload_0
      //   169: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   172: aload #5
      //   174: invokestatic a : (Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;Lcom/androlua/util/TimerTaskX;)I
      //   177: invokevirtual delete : (I)V
      //   180: aload #6
      //   182: monitorexit
      //   183: goto -> 36
      //   186: aload #5
      //   188: aload #5
      //   190: getfield d : J
      //   193: invokevirtual setScheduledTime : (J)V
      //   196: aload_0
      //   197: getfield c : Lcom/androlua/util/TimerX$TimerImpl$TimerHeap;
      //   200: iload_1
      //   201: invokevirtual delete : (I)V
      //   204: aload #5
      //   206: getfield e : J
      //   209: lconst_0
      //   210: lcmp
      //   211: iflt -> 264
      //   214: aload #5
      //   216: getfield f : Z
      //   219: ifeq -> 241
      //   222: aload #5
      //   224: aload #5
      //   226: getfield d : J
      //   229: aload #5
      //   231: getfield e : J
      //   234: ladd
      //   235: putfield d : J
      //   238: goto -> 255
      //   241: aload #5
      //   243: invokestatic currentTimeMillis : ()J
      //   246: aload #5
      //   248: getfield e : J
      //   251: ladd
      //   252: putfield d : J
      //   255: aload_0
      //   256: aload #5
      //   258: invokespecial a : (Lcom/androlua/util/TimerTaskX;)V
      //   261: goto -> 270
      //   264: aload #5
      //   266: lconst_0
      //   267: putfield d : J
      //   270: aload #6
      //   272: monitorexit
      //   273: aload_0
      //   274: monitorexit
      //   275: aload #5
      //   277: invokevirtual isEnabled : ()Z
      //   280: ifeq -> 0
      //   283: aload #5
      //   285: invokevirtual run : ()V
      //   288: goto -> 0
      //   291: astore #5
      //   293: aload_0
      //   294: monitorenter
      //   295: aload_0
      //   296: iconst_1
      //   297: putfield a : Z
      //   300: aload_0
      //   301: monitorexit
      //   302: goto -> 312
      //   305: astore #5
      //   307: aload_0
      //   308: monitorexit
      //   309: aload #5
      //   311: athrow
      //   312: aload #5
      //   314: athrow
      //   315: astore #5
      //   317: aload #6
      //   319: monitorexit
      //   320: aload #5
      //   322: athrow
      //   323: astore #5
      //   325: aload #6
      //   327: monitorexit
      //   328: aload #5
      //   330: athrow
      //   331: astore #5
      //   333: aload_0
      //   334: monitorexit
      //   335: aload #5
      //   337: athrow
      //   338: astore #5
      //   340: goto -> 36
      // Exception table:
      //   from	to	target	type
      //   2	11	331	finally
      //   12	31	331	finally
      //   32	36	338	java/lang/InterruptedException
      //   32	36	331	finally
      //   36	38	331	finally
      //   41	64	331	finally
      //   64	71	323	finally
      //   78	89	323	finally
      //   92	103	323	finally
      //   109	114	338	java/lang/InterruptedException
      //   109	114	331	finally
      //   117	127	331	finally
      //   127	156	315	finally
      //   156	183	315	finally
      //   186	238	315	finally
      //   241	255	315	finally
      //   255	261	315	finally
      //   264	270	315	finally
      //   270	273	315	finally
      //   273	275	331	finally
      //   275	288	291	finally
      //   295	302	305	finally
      //   307	309	305	finally
      //   317	320	315	finally
      //   320	323	331	finally
      //   325	328	323	finally
      //   328	331	331	finally
      //   333	335	331	finally }
    
    private static final class TimerHeap {
      private int a = 256;
      
      private TimerTaskX[] b = new TimerTaskX[this.a];
      
      private int c = 0;
      
      private int d = 0;
      
      private TimerHeap() {}
      
      private int a(TimerTaskX param2TimerTaskX) {
        for (byte b1 = 0; b1 < this.b.length; b1++) {
          if (this.b[b1] == param2TimerTaskX)
            return b1; 
        } 
        return -1;
      }
      
      private void a() {
        int j = this.c - 1;
        for (int i = (j - 1) / 2; (this.b[j]).d < (this.b[i]).d; i = k) {
          TimerTaskX timerTaskX = this.b[j];
          this.b[j] = this.b[i];
          this.b[i] = timerTaskX;
          int k = (i - 1) / 2;
          j = i;
        } 
      }
      
      private void a(int param2Int) {
        int i = param2Int * 2 + 1;
        int j = param2Int;
        param2Int = i;
        while (param2Int < this.c && this.c > 0) {
          int k = param2Int + 1;
          i = param2Int;
          if (k < this.c) {
            i = param2Int;
            if ((this.b[k]).d < (this.b[param2Int]).d)
              i = k; 
          } 
          if ((this.b[j]).d < (this.b[i]).d)
            return; 
          TimerTaskX timerTaskX = this.b[j];
          this.b[j] = this.b[i];
          this.b[i] = timerTaskX;
          param2Int = i * 2 + 1;
          j = i;
        } 
      }
      
      public void adjustMinimum() { a(0); }
      
      public void delete(int param2Int) {
        if (param2Int >= 0 && param2Int < this.c) {
          TimerTaskX[] arrayOfTimerTaskX1 = this.b;
          TimerTaskX[] arrayOfTimerTaskX2 = this.b;
          int i = this.c - 1;
          this.c = i;
          arrayOfTimerTaskX1[param2Int] = arrayOfTimerTaskX2[i];
          this.b[this.c] = null;
          a(param2Int);
        } 
      }
      
      public void deleteIfCancelled() {
        for (byte b1 = 0; b1 < this.c; b1 = b2 + 1) {
          byte b2 = b1;
          if ((this.b[b1]).c) {
            this.d++;
            delete(b1);
            b2 = b1 - 1;
          } 
        } 
      }
      
      public void insert(TimerTaskX param2TimerTaskX) {
        if (this.b.length == this.c) {
          TimerTaskX[] arrayOfTimerTaskX1 = new TimerTaskX[this.c * 2];
          System.arraycopy(this.b, 0, arrayOfTimerTaskX1, 0, this.c);
          this.b = arrayOfTimerTaskX1;
        } 
        TimerTaskX[] arrayOfTimerTaskX = this.b;
        int i = this.c;
        this.c = i + 1;
        arrayOfTimerTaskX[i] = param2TimerTaskX;
        a();
      }
      
      public boolean isEmpty() { return (this.c == 0); }
      
      public TimerTaskX minimum() { return this.b[0]; }
      
      public void reset() {
        this.b = new TimerTaskX[this.a];
        this.c = 0;
      }
    }
  }
  
  private static final class TimerHeap {
    private int a = 256;
    
    private TimerTaskX[] b = new TimerTaskX[this.a];
    
    private int c = 0;
    
    private int d = 0;
    
    private TimerHeap() {}
    
    private int a(TimerTaskX param1TimerTaskX) {
      for (byte b1 = 0; b1 < this.b.length; b1++) {
        if (this.b[b1] == param1TimerTaskX)
          return b1; 
      } 
      return -1;
    }
    
    private void a() {
      int j = this.c - 1;
      for (int i = (j - 1) / 2; (this.b[j]).d < (this.b[i]).d; i = k) {
        TimerTaskX timerTaskX = this.b[j];
        this.b[j] = this.b[i];
        this.b[i] = timerTaskX;
        int k = (i - 1) / 2;
        j = i;
      } 
    }
    
    private void a(int param1Int) {
      int i = param1Int * 2 + 1;
      int j = param1Int;
      param1Int = i;
      while (param1Int < this.c && this.c > 0) {
        int k = param1Int + 1;
        i = param1Int;
        if (k < this.c) {
          i = param1Int;
          if ((this.b[k]).d < (this.b[param1Int]).d)
            i = k; 
        } 
        if ((this.b[j]).d < (this.b[i]).d)
          return; 
        TimerTaskX timerTaskX = this.b[j];
        this.b[j] = this.b[i];
        this.b[i] = timerTaskX;
        param1Int = i * 2 + 1;
        j = i;
      } 
    }
    
    public void adjustMinimum() { a(0); }
    
    public void delete(int param1Int) {
      if (param1Int >= 0 && param1Int < this.c) {
        TimerTaskX[] arrayOfTimerTaskX1 = this.b;
        TimerTaskX[] arrayOfTimerTaskX2 = this.b;
        int i = this.c - 1;
        this.c = i;
        arrayOfTimerTaskX1[param1Int] = arrayOfTimerTaskX2[i];
        this.b[this.c] = null;
        a(param1Int);
      } 
    }
    
    public void deleteIfCancelled() {
      for (byte b1 = 0; b1 < this.c; b1 = b2 + 1) {
        byte b2 = b1;
        if ((this.b[b1]).c) {
          this.d++;
          delete(b1);
          b2 = b1 - 1;
        } 
      } 
    }
    
    public void insert(TimerTaskX param1TimerTaskX) {
      if (this.b.length == this.c) {
        TimerTaskX[] arrayOfTimerTaskX1 = new TimerTaskX[this.c * 2];
        System.arraycopy(this.b, 0, arrayOfTimerTaskX1, 0, this.c);
        this.b = arrayOfTimerTaskX1;
      } 
      TimerTaskX[] arrayOfTimerTaskX = this.b;
      int i = this.c;
      this.c = i + 1;
      arrayOfTimerTaskX[i] = param1TimerTaskX;
      a();
    }
    
    public boolean isEmpty() { return (this.c == 0); }
    
    public TimerTaskX minimum() { return this.b[0]; }
    
    public void reset() {
      this.b = new TimerTaskX[this.a];
      this.c = 0;
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\TimerX.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
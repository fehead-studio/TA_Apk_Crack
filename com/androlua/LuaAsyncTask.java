package com.androlua;

import com.androlua.util.AsyncTaskX;
import com.luajava.JavaFunction;
import com.luajava.LuaException;
import com.luajava.LuaObject;
import com.luajava.LuaState;

public class LuaAsyncTask extends AsyncTaskX implements LuaGcable {
  private Object[] a;
  
  private boolean b;
  
  private LuaState c;
  
  private LuaContext d;
  
  private byte[] e;
  
  private long f = 0L;
  
  private LuaObject g;
  
  private LuaObject h;
  
  static  {
    AsyncTaskX.setDefaultExecutor(AsyncTaskX.THREAD_POOL_EXECUTOR);
  }
  
  public LuaAsyncTask(LuaContext paramLuaContext, long paramLong, LuaObject paramLuaObject) {
    paramLuaContext.regGc(this);
    this.d = paramLuaContext;
    this.f = paramLong;
    this.g = paramLuaObject;
  }
  
  public LuaAsyncTask(LuaContext paramLuaContext, LuaObject paramLuaObject1, LuaObject paramLuaObject2) {
    paramLuaContext.regGc(this);
    this.d = paramLuaContext;
    this.e = paramLuaObject1.dump();
    this.g = paramLuaObject2;
    LuaObject luaObject = paramLuaObject1.getLuaState().getLuaObject("luajava").getField("imported");
    if (!luaObject.isNil())
      this.a = luaObject.asArray(); 
  }
  
  public LuaAsyncTask(LuaContext paramLuaContext, LuaObject paramLuaObject1, LuaObject paramLuaObject2, LuaObject paramLuaObject3) {
    paramLuaContext.regGc(this);
    this.d = paramLuaContext;
    this.e = paramLuaObject1.dump();
    this.h = paramLuaObject2;
    this.g = paramLuaObject3;
  }
  
  public LuaAsyncTask(LuaContext paramLuaContext, String paramString, LuaObject paramLuaObject) {
    paramLuaContext.regGc(this);
    this.d = paramLuaContext;
    this.e = paramString.getBytes();
    this.g = paramLuaObject;
  }
  
  private String a(int paramInt) {
    StringBuilder stringBuilder;
    switch (paramInt) {
      default:
        stringBuilder = new StringBuilder();
        stringBuilder.append("Unknown error ");
        stringBuilder.append(paramInt);
        return stringBuilder.toString();
      case 6:
        return "error error";
      case 5:
        return "GC error";
      case 4:
        return "Out of memory";
      case 3:
        return "Syntax error";
      case 2:
        return "Runtime error";
      case 1:
        break;
    } 
    return "Yield error";
  }
  
  protected Object a(Object[] paramArrayOfObject) { // Byte code:
    //   0: aload_0
    //   1: getfield f : J
    //   4: lconst_0
    //   5: lcmp
    //   6: ifeq -> 18
    //   9: aload_0
    //   10: getfield f : J
    //   13: invokestatic sleep : (J)V
    //   16: aload_1
    //   17: areturn
    //   18: aload_0
    //   19: invokestatic newLuaState : ()Lcom/luajava/LuaState;
    //   22: putfield c : Lcom/luajava/LuaState;
    //   25: aload_0
    //   26: getfield c : Lcom/luajava/LuaState;
    //   29: invokevirtual openLibs : ()V
    //   32: aload_0
    //   33: getfield c : Lcom/luajava/LuaState;
    //   36: aload_0
    //   37: getfield d : Lcom/androlua/LuaContext;
    //   40: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   43: aload_0
    //   44: getfield d : Lcom/androlua/LuaContext;
    //   47: instanceof com/androlua/LuaActivity
    //   50: ifeq -> 73
    //   53: aload_0
    //   54: getfield c : Lcom/luajava/LuaState;
    //   57: astore #5
    //   59: ldc 'activity'
    //   61: astore #6
    //   63: aload #5
    //   65: aload #6
    //   67: invokevirtual setGlobal : (Ljava/lang/String;)V
    //   70: goto -> 96
    //   73: aload_0
    //   74: getfield d : Lcom/androlua/LuaContext;
    //   77: instanceof com/androlua/LuaService
    //   80: ifeq -> 96
    //   83: aload_0
    //   84: getfield c : Lcom/luajava/LuaState;
    //   87: astore #5
    //   89: ldc 'service'
    //   91: astore #6
    //   93: goto -> 63
    //   96: aload_0
    //   97: getfield c : Lcom/luajava/LuaState;
    //   100: aload_0
    //   101: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   104: aload_0
    //   105: getfield c : Lcom/luajava/LuaState;
    //   108: ldc 'this'
    //   110: invokevirtual setGlobal : (Ljava/lang/String;)V
    //   113: aload_0
    //   114: getfield c : Lcom/luajava/LuaState;
    //   117: aload_0
    //   118: getfield d : Lcom/androlua/LuaContext;
    //   121: invokevirtual pushContext : (Lcom/androlua/LuaContext;)V
    //   124: aload_0
    //   125: getfield c : Lcom/luajava/LuaState;
    //   128: ldc 'luajava'
    //   130: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   133: pop
    //   134: aload_0
    //   135: getfield c : Lcom/luajava/LuaState;
    //   138: aload_0
    //   139: getfield d : Lcom/androlua/LuaContext;
    //   142: invokeinterface getLuaDir : ()Ljava/lang/String;
    //   147: invokevirtual pushString : (Ljava/lang/String;)V
    //   150: aload_0
    //   151: getfield c : Lcom/luajava/LuaState;
    //   154: bipush #-2
    //   156: ldc 'luadir'
    //   158: invokevirtual setField : (ILjava/lang/String;)V
    //   161: aload_0
    //   162: getfield c : Lcom/luajava/LuaState;
    //   165: iconst_1
    //   166: invokevirtual pop : (I)V
    //   169: new com/androlua/LuaPrint
    //   172: dup
    //   173: aload_0
    //   174: getfield d : Lcom/androlua/LuaContext;
    //   177: aload_0
    //   178: getfield c : Lcom/luajava/LuaState;
    //   181: invokespecial <init> : (Lcom/androlua/LuaContext;Lcom/luajava/LuaState;)V
    //   184: ldc 'print'
    //   186: invokevirtual register : (Ljava/lang/String;)V
    //   189: new com/androlua/LuaAsyncTask$1
    //   192: dup
    //   193: aload_0
    //   194: aload_0
    //   195: getfield c : Lcom/luajava/LuaState;
    //   198: invokespecial <init> : (Lcom/androlua/LuaAsyncTask;Lcom/luajava/LuaState;)V
    //   201: ldc 'update'
    //   203: invokevirtual register : (Ljava/lang/String;)V
    //   206: aload_0
    //   207: getfield c : Lcom/luajava/LuaState;
    //   210: ldc 'package'
    //   212: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   215: pop
    //   216: aload_0
    //   217: getfield c : Lcom/luajava/LuaState;
    //   220: aload_0
    //   221: getfield d : Lcom/androlua/LuaContext;
    //   224: invokeinterface getLuaLpath : ()Ljava/lang/String;
    //   229: invokevirtual pushString : (Ljava/lang/String;)V
    //   232: aload_0
    //   233: getfield c : Lcom/luajava/LuaState;
    //   236: bipush #-2
    //   238: ldc 'path'
    //   240: invokevirtual setField : (ILjava/lang/String;)V
    //   243: aload_0
    //   244: getfield c : Lcom/luajava/LuaState;
    //   247: aload_0
    //   248: getfield d : Lcom/androlua/LuaContext;
    //   251: invokeinterface getLuaCpath : ()Ljava/lang/String;
    //   256: invokevirtual pushString : (Ljava/lang/String;)V
    //   259: aload_0
    //   260: getfield c : Lcom/luajava/LuaState;
    //   263: bipush #-2
    //   265: ldc 'cpath'
    //   267: invokevirtual setField : (ILjava/lang/String;)V
    //   270: aload_0
    //   271: getfield c : Lcom/luajava/LuaState;
    //   274: iconst_1
    //   275: invokevirtual pop : (I)V
    //   278: goto -> 296
    //   281: astore #5
    //   283: aload_0
    //   284: getfield d : Lcom/androlua/LuaContext;
    //   287: ldc 'AsyncTask'
    //   289: aload #5
    //   291: invokeinterface sendError : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   296: aload_0
    //   297: getfield a : [Ljava/lang/Object;
    //   300: astore #5
    //   302: iconst_0
    //   303: istore_3
    //   304: aload #5
    //   306: ifnull -> 392
    //   309: aload_0
    //   310: getfield c : Lcom/luajava/LuaState;
    //   313: ldc 'require'
    //   315: invokevirtual getLuaObject : (Ljava/lang/String;)Lcom/luajava/LuaObject;
    //   318: astore #5
    //   320: aload #5
    //   322: iconst_1
    //   323: anewarray java/lang/Object
    //   326: dup
    //   327: iconst_0
    //   328: ldc 'import'
    //   330: aastore
    //   331: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   334: pop
    //   335: aload_0
    //   336: getfield c : Lcom/luajava/LuaState;
    //   339: ldc 'import'
    //   341: invokevirtual getLuaObject : (Ljava/lang/String;)Lcom/luajava/LuaObject;
    //   344: astore #5
    //   346: aload_0
    //   347: getfield a : [Ljava/lang/Object;
    //   350: astore #6
    //   352: aload #6
    //   354: arraylength
    //   355: istore #4
    //   357: iconst_0
    //   358: istore_2
    //   359: iload_2
    //   360: iload #4
    //   362: if_icmpge -> 392
    //   365: aload #5
    //   367: iconst_1
    //   368: anewarray java/lang/Object
    //   371: dup
    //   372: iconst_0
    //   373: aload #6
    //   375: iload_2
    //   376: aaload
    //   377: invokevirtual toString : ()Ljava/lang/String;
    //   380: aastore
    //   381: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   384: pop
    //   385: iload_2
    //   386: iconst_1
    //   387: iadd
    //   388: istore_2
    //   389: goto -> 359
    //   392: aload_0
    //   393: getfield c : Lcom/luajava/LuaState;
    //   396: iconst_0
    //   397: invokevirtual setTop : (I)V
    //   400: aload_0
    //   401: getfield c : Lcom/luajava/LuaState;
    //   404: aload_0
    //   405: getfield e : [B
    //   408: ldc 'LuaAsyncTask'
    //   410: invokevirtual LloadBuffer : ([BLjava/lang/String;)I
    //   413: istore #4
    //   415: iload #4
    //   417: istore_2
    //   418: iload #4
    //   420: ifne -> 561
    //   423: aload_0
    //   424: getfield c : Lcom/luajava/LuaState;
    //   427: ldc 'debug'
    //   429: invokevirtual getGlobal : (Ljava/lang/String;)I
    //   432: pop
    //   433: aload_0
    //   434: getfield c : Lcom/luajava/LuaState;
    //   437: iconst_m1
    //   438: ldc 'traceback'
    //   440: invokevirtual getField : (ILjava/lang/String;)I
    //   443: pop
    //   444: aload_0
    //   445: getfield c : Lcom/luajava/LuaState;
    //   448: bipush #-2
    //   450: invokevirtual remove : (I)V
    //   453: aload_0
    //   454: getfield c : Lcom/luajava/LuaState;
    //   457: bipush #-2
    //   459: invokevirtual insert : (I)V
    //   462: aload_1
    //   463: arraylength
    //   464: istore #4
    //   466: iconst_0
    //   467: istore_2
    //   468: iload_2
    //   469: iload #4
    //   471: if_icmpge -> 491
    //   474: aload_0
    //   475: getfield c : Lcom/luajava/LuaState;
    //   478: aload_1
    //   479: iload_2
    //   480: aaload
    //   481: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   484: iload_2
    //   485: iconst_1
    //   486: iadd
    //   487: istore_2
    //   488: goto -> 468
    //   491: aload_0
    //   492: getfield c : Lcom/luajava/LuaState;
    //   495: iload #4
    //   497: iconst_m1
    //   498: bipush #-2
    //   500: iload #4
    //   502: isub
    //   503: invokevirtual pcall : (III)I
    //   506: istore #4
    //   508: iload #4
    //   510: istore_2
    //   511: iload #4
    //   513: ifne -> 561
    //   516: aload_0
    //   517: getfield c : Lcom/luajava/LuaState;
    //   520: invokevirtual getTop : ()I
    //   523: iconst_1
    //   524: isub
    //   525: istore #4
    //   527: iload #4
    //   529: anewarray java/lang/Object
    //   532: astore_1
    //   533: iload_3
    //   534: istore_2
    //   535: iload_2
    //   536: iload #4
    //   538: if_icmpge -> 637
    //   541: aload_1
    //   542: iload_2
    //   543: aload_0
    //   544: getfield c : Lcom/luajava/LuaState;
    //   547: iload_2
    //   548: iconst_2
    //   549: iadd
    //   550: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   553: aastore
    //   554: iload_2
    //   555: iconst_1
    //   556: iadd
    //   557: istore_2
    //   558: goto -> 535
    //   561: new java/lang/StringBuilder
    //   564: dup
    //   565: invokespecial <init> : ()V
    //   568: astore_1
    //   569: aload_1
    //   570: aload_0
    //   571: iload_2
    //   572: invokespecial a : (I)Ljava/lang/String;
    //   575: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   578: pop
    //   579: aload_1
    //   580: ldc_w ': '
    //   583: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: pop
    //   587: aload_1
    //   588: aload_0
    //   589: getfield c : Lcom/luajava/LuaState;
    //   592: iconst_m1
    //   593: invokevirtual toString : (I)Ljava/lang/String;
    //   596: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   599: pop
    //   600: new com/luajava/LuaException
    //   603: dup
    //   604: aload_1
    //   605: invokevirtual toString : ()Ljava/lang/String;
    //   608: invokespecial <init> : (Ljava/lang/String;)V
    //   611: athrow
    //   612: astore_1
    //   613: aload_0
    //   614: getfield d : Lcom/androlua/LuaContext;
    //   617: ldc_w 'doInBackground'
    //   620: aload_1
    //   621: invokeinterface sendError : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   626: aconst_null
    //   627: areturn
    //   628: astore #5
    //   630: aload_1
    //   631: areturn
    //   632: astore #5
    //   634: goto -> 392
    //   637: aload_1
    //   638: areturn
    // Exception table:
    //   from	to	target	type
    //   9	16	628	java/lang/InterruptedException
    //   169	278	281	com/luajava/LuaException
    //   320	357	632	com/luajava/LuaException
    //   365	385	632	com/luajava/LuaException
    //   392	415	612	com/luajava/LuaException
    //   423	466	612	com/luajava/LuaException
    //   474	484	612	com/luajava/LuaException
    //   491	508	612	com/luajava/LuaException
    //   516	533	612	com/luajava/LuaException
    //   541	554	612	com/luajava/LuaException
    //   561	612	612	com/luajava/LuaException }
  
  protected void a(Object paramObject) {
    if (isCancelled())
      return; 
    try {
      if (this.g != null)
        this.g.call((Object[])paramObject); 
    } catch (LuaException paramObject) {
      this.d.sendError("onPostExecute", paramObject);
    } 
    if (this.c != null)
      this.c.gc(2, 1); 
    System.gc();
  }
  
  protected void b(Object[] paramArrayOfObject) {
    try {
      if (this.h != null)
        this.h.call(paramArrayOfObject); 
    } catch (LuaException luaException) {
      this.d.sendError("onProgressUpdate", luaException);
    } 
    super.b(paramArrayOfObject);
  }
  
  public void execute() { execute(new Object[0]); }
  
  public void gc() {
    if (getStatus() == AsyncTaskX.Status.RUNNING)
      cancel(true); 
    this.b = true;
  }
  
  public boolean isGc() { return this.b; }
  
  public void update(int paramInt) { c(new Object[] { Integer.valueOf(paramInt) }); }
  
  public void update(Object paramObject) { c(new Object[] { paramObject }); }
  
  public void update(String paramString) { c(new Object[] { paramString }); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaAsyncTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
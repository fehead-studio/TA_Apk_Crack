package com.baidu.mobstat;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Fragment;
import android.content.Context;
import android.support.a.a.a;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class StatService {
  public static final int EXCEPTION_LOG = 1;
  
  public static final int JAVA_EXCEPTION_LOG = 16;
  
  private static boolean a;
  
  private static long b;
  
  static  {
  
  }
  
  private static String a(boolean paramBoolean) {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    byte b1 = 0;
    while (true) {
      if (b1 < arrayOfStackTraceElement.length) {
        str = arrayOfStackTraceElement[b1].getClassName();
        if (!TextUtils.isEmpty(str)) {
          try {
            Class clazz = Class.forName(str);
          } catch (Throwable str) {
            str = null;
          } 
          if (str != null && android.app.Activity.class.isAssignableFrom(str))
            return paramBoolean ? str.getName() : str.getSimpleName(); 
        } 
        b1++;
        continue;
      } 
      return "";
    } 
  }
  
  private static void a(Context paramContext) { bf.a().a(paramContext); }
  
  private static void a(Context paramContext, ExtraInfo paramExtraInfo) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc 'onPause(...)'
    //   6: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)Z
    //   9: istore_2
    //   10: iload_2
    //   11: ifne -> 18
    //   14: ldc com/baidu/mobstat/StatService
    //   16: monitorexit
    //   17: return
    //   18: ldc android/app/Activity
    //   20: ldc 'onPause'
    //   22: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;)Z
    //   25: ifne -> 38
    //   28: new java/lang/SecurityException
    //   31: dup
    //   32: ldc 'onPause(Context context)不在Activity.onPause()中被调用||onPause(Context context)is not called in Activity.onPause().'
    //   34: invokespecial <init> : (Ljava/lang/String;)V
    //   37: athrow
    //   38: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   41: aload_0
    //   42: invokestatic currentTimeMillis : ()J
    //   45: iconst_0
    //   46: aload_1
    //   47: invokevirtual a : (Landroid/content/Context;JZLcom/baidu/mobstat/ExtraInfo;)V
    //   50: ldc com/baidu/mobstat/StatService
    //   52: monitorexit
    //   53: return
    //   54: astore_0
    //   55: ldc com/baidu/mobstat/StatService
    //   57: monitorexit
    //   58: aload_0
    //   59: athrow
    // Exception table:
    //   from	to	target	type
    //   3	10	54	finally
    //   18	38	54	finally
    //   38	50	54	finally }
  
  private static void a(Context paramContext, String paramString, ExtraInfo paramExtraInfo) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull -> 92
    //   7: aload_1
    //   8: ifnull -> 92
    //   11: aload_1
    //   12: ldc ''
    //   14: invokevirtual equals : (Ljava/lang/Object;)Z
    //   17: ifeq -> 23
    //   20: goto -> 92
    //   23: iconst_0
    //   24: invokestatic a : (Z)Ljava/lang/String;
    //   27: astore_3
    //   28: new java/lang/StringBuilder
    //   31: dup
    //   32: invokespecial <init> : ()V
    //   35: astore #4
    //   37: aload #4
    //   39: ldc 'pageName is:'
    //   41: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload #4
    //   47: aload_1
    //   48: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: pop
    //   52: aload #4
    //   54: ldc '; activityName is:'
    //   56: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: aload #4
    //   62: aload_3
    //   63: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: pop
    //   67: aload #4
    //   69: invokevirtual toString : ()Ljava/lang/String;
    //   72: invokestatic a : (Ljava/lang/String;)V
    //   75: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   78: aload_0
    //   79: invokestatic currentTimeMillis : ()J
    //   82: aload_3
    //   83: aload_1
    //   84: aload_2
    //   85: invokevirtual a : (Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    //   88: ldc com/baidu/mobstat/StatService
    //   90: monitorexit
    //   91: return
    //   92: ldc 'onPageEnd :parame=null || empty'
    //   94: invokestatic c : (Ljava/lang/String;)V
    //   97: ldc com/baidu/mobstat/StatService
    //   99: monitorexit
    //   100: return
    //   101: astore_0
    //   102: ldc com/baidu/mobstat/StatService
    //   104: monitorexit
    //   105: aload_0
    //   106: athrow
    // Exception table:
    //   from	to	target	type
    //   11	20	101	finally
    //   23	88	101	finally
    //   92	97	101	finally }
  
  private static void a(Context paramContext, String paramString1, String paramString2, int paramInt, ExtraInfo paramExtraInfo) {
    if (!a(paramContext, "onEvent(...)"))
      return; 
    if (paramString1 != null) {
      if (paramString1.equals(""))
        return; 
      a(paramContext);
      bv.a().a(paramContext);
      bm.a().a(paramContext.getApplicationContext(), paramString1, paramString2, paramInt, System.currentTimeMillis(), paramExtraInfo);
    } 
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, long paramLong, ExtraInfo paramExtraInfo) {
    if (!a(paramContext, "onEventDuration(...)"))
      return; 
    if (paramString1 != null) {
      if (paramString1.equals(""))
        return; 
      if (paramLong <= 0L) {
        cz.b("onEventDuration: duration must be greater than zero");
        return;
      } 
      a(paramContext);
      bv.a().a(paramContext);
      bm.a().b(paramContext.getApplicationContext(), paramString1, paramString2, paramLong, paramExtraInfo);
    } 
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, ExtraInfo paramExtraInfo) { a(paramContext, paramString1, paramString2, 1, paramExtraInfo); }
  
  private static void a(Context paramContext, boolean paramBoolean) {
    if (!a(paramContext, "onError(...)"))
      return; 
    bt.a().a(paramContext.getApplicationContext(), paramBoolean);
  }
  
  private static boolean a(Context paramContext, String paramString) {
    if (paramContext == null) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(paramString);
      stringBuilder.append(":context=null");
      cz.b(stringBuilder.toString());
      return false;
    } 
    return true;
  }
  
  private static boolean a(Class<?> paramClass, String paramString) {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    int i = 0;
    byte b1 = 2;
    while (b1 < arrayOfStackTraceElement.length) {
      stackTraceElement = arrayOfStackTraceElement[b1];
      byte b2 = i;
      if (stackTraceElement.getMethodName().equals(paramString))
        try {
          for (Class clazz = Class.forName(stackTraceElement.getClassName()); clazz.getSuperclass() != null && clazz.getSuperclass() != paramClass; clazz = clazz.getSuperclass());
          b2 = 1;
        } catch (Exception stackTraceElement) {
          cz.a(stackTraceElement);
          b2 = i;
        }  
      b1++;
      i = b2;
    } 
    return i;
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, ExtraInfo paramExtraInfo) {
    if (!a(paramContext, "onEventEnd(...)"))
      return; 
    if (paramString1 != null) {
      if (paramString1.equals(""))
        return; 
      bm.a().a(paramContext.getApplicationContext(), paramString1, paramString2, System.currentTimeMillis(), paramExtraInfo);
    } 
  }
  
  public static void bindJSInterface(Context paramContext, WebView paramWebView) { bindJSInterface(paramContext, paramWebView, null); }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public static void bindJSInterface(Context paramContext, WebView paramWebView, WebViewClient paramWebViewClient) {
    if (paramContext == null)
      throw new IllegalArgumentException("context can't be null."); 
    if (paramWebView == null)
      throw new IllegalArgumentException("webview can't be null."); 
    WebSettings webSettings = paramWebView.getSettings();
    webSettings.setJavaScriptEnabled(true);
    webSettings.setDefaultTextEncodingName("UTF-8");
    webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    paramWebView.setWebViewClient(new bi(paramContext, paramWebViewClient));
    a(paramContext);
  }
  
  public static void enableDeviceMac(Context paramContext, boolean paramBoolean) {
    CooperService.a().enableDeviceMac(paramContext, paramBoolean);
    a(paramContext);
  }
  
  public static String getAppKey(Context paramContext) { return PrefOperate.getAppKey(paramContext); }
  
  public static String getSdkVersion() { return CooperService.a().getMTJSDKVersion(); }
  
  public static void onErised(Context paramContext, String paramString1, String paramString2, String paramString3) {
    if (bv.a().b())
      return; 
    if (!a(paramContext, "onErised(...)"))
      return; 
    if (paramString1 == null || "".equals(paramString1)) {
      cz.c("AppKey is invalid");
      return;
    } 
    bv.a().a(paramContext, false);
    long l = System.currentTimeMillis();
    bm.a().a(paramContext, paramString2, paramString3, 1, l, 0L, null);
    DataCore.instance().saveLogDataToSend(paramContext);
    if (l - b > 30000L && dc.n(paramContext)) {
      by.a().a(paramContext);
      b = l;
    } 
  }
  
  public static void onEvent(Context paramContext, String paramString1, String paramString2) { a(paramContext, paramString1, paramString2, null); }
  
  public static void onEvent(Context paramContext, String paramString1, String paramString2, int paramInt) { a(paramContext, paramString1, paramString2, paramInt, null); }
  
  public static void onEventDuration(Context paramContext, String paramString1, String paramString2, long paramLong) { a(paramContext, paramString1, paramString2, paramLong, null); }
  
  public static void onEventEnd(Context paramContext, String paramString1, String paramString2) { b(paramContext, paramString1, paramString2, null); }
  
  public static void onEventStart(Context paramContext, String paramString1, String paramString2) {
    if (!a(paramContext, "onEventStart(...)"))
      return; 
    if (paramString1 != null) {
      if (paramString1.equals(""))
        return; 
      a(paramContext);
      bv.a().a(paramContext);
      bm.a().a(paramContext.getApplicationContext(), paramString1, paramString2, System.currentTimeMillis());
    } 
  }
  
  public static void onPageEnd(Context paramContext, String paramString) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: aload_1
    //   5: aconst_null
    //   6: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    //   9: ldc com/baidu/mobstat/StatService
    //   11: monitorexit
    //   12: return
    //   13: astore_0
    //   14: ldc com/baidu/mobstat/StatService
    //   16: monitorexit
    //   17: aload_0
    //   18: athrow
    // Exception table:
    //   from	to	target	type
    //   3	9	13	finally }
  
  public static void onPageStart(Context paramContext, String paramString) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull -> 49
    //   7: aload_1
    //   8: ifnull -> 49
    //   11: aload_1
    //   12: ldc ''
    //   14: invokevirtual equals : (Ljava/lang/Object;)Z
    //   17: ifeq -> 23
    //   20: goto -> 49
    //   23: aload_0
    //   24: invokestatic a : (Landroid/content/Context;)V
    //   27: invokestatic a : ()Lcom/baidu/mobstat/bv;
    //   30: aload_0
    //   31: invokevirtual a : (Landroid/content/Context;)V
    //   34: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   37: aload_0
    //   38: invokestatic currentTimeMillis : ()J
    //   41: aload_1
    //   42: invokevirtual a : (Landroid/content/Context;JLjava/lang/String;)V
    //   45: ldc com/baidu/mobstat/StatService
    //   47: monitorexit
    //   48: return
    //   49: ldc_w 'onPageStart :parame=null || empty'
    //   52: invokestatic c : (Ljava/lang/String;)V
    //   55: ldc com/baidu/mobstat/StatService
    //   57: monitorexit
    //   58: return
    //   59: astore_0
    //   60: ldc com/baidu/mobstat/StatService
    //   62: monitorexit
    //   63: aload_0
    //   64: athrow
    // Exception table:
    //   from	to	target	type
    //   11	20	59	finally
    //   23	45	59	finally
    //   49	55	59	finally }
  
  @Deprecated
  @TargetApi(11)
  public static void onPause(Fragment paramFragment) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnonnull -> 21
    //   7: ldc_w 'android.app.Fragment onResume :parame=null'
    //   10: invokestatic c : (Ljava/lang/String;)V
    //   13: ldc com/baidu/mobstat/StatService
    //   15: monitorexit
    //   16: return
    //   17: astore_0
    //   18: goto -> 58
    //   21: aload_0
    //   22: invokevirtual getClass : ()Ljava/lang/Class;
    //   25: ldc 'onPause'
    //   27: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;)Z
    //   30: ifne -> 44
    //   33: new java/lang/SecurityException
    //   36: dup
    //   37: ldc_w 'android.app.Fragment onPause(Context context)不在android.app.Fragment.onPause()中被调用||onPause(Context context)is not called in android.app.Fragment.onPause().'
    //   40: invokespecial <init> : (Ljava/lang/String;)V
    //   43: athrow
    //   44: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   47: aload_0
    //   48: invokestatic currentTimeMillis : ()J
    //   51: invokevirtual b : (Landroid/app/Fragment;J)V
    //   54: ldc com/baidu/mobstat/StatService
    //   56: monitorexit
    //   57: return
    //   58: ldc com/baidu/mobstat/StatService
    //   60: monitorexit
    //   61: aload_0
    //   62: athrow
    // Exception table:
    //   from	to	target	type
    //   7	13	17	finally
    //   21	44	17	finally
    //   44	54	17	finally }
  
  public static void onPause(Context paramContext) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: aconst_null
    //   5: invokestatic a : (Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    //   8: ldc com/baidu/mobstat/StatService
    //   10: monitorexit
    //   11: return
    //   12: astore_0
    //   13: ldc com/baidu/mobstat/StatService
    //   15: monitorexit
    //   16: aload_0
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   3	8	12	finally }
  
  @Deprecated
  public static void onPause(a parama) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnonnull -> 21
    //   7: ldc_w 'onResume :parame=null'
    //   10: invokestatic c : (Ljava/lang/String;)V
    //   13: ldc com/baidu/mobstat/StatService
    //   15: monitorexit
    //   16: return
    //   17: astore_0
    //   18: goto -> 57
    //   21: ldc_w android/support/a/a/a
    //   24: ldc 'onPause'
    //   26: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;)Z
    //   29: ifne -> 43
    //   32: new java/lang/SecurityException
    //   35: dup
    //   36: ldc_w 'Fragment onPause(Context context)不在Fragment.onPause()中被调用||onPause(Context context)is not called in Fragment.onPause().'
    //   39: invokespecial <init> : (Ljava/lang/String;)V
    //   42: athrow
    //   43: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   46: aload_0
    //   47: invokestatic currentTimeMillis : ()J
    //   50: invokevirtual b : (Landroid/support/a/a/a;J)V
    //   53: ldc com/baidu/mobstat/StatService
    //   55: monitorexit
    //   56: return
    //   57: ldc com/baidu/mobstat/StatService
    //   59: monitorexit
    //   60: aload_0
    //   61: athrow
    // Exception table:
    //   from	to	target	type
    //   7	13	17	finally
    //   21	43	17	finally
    //   43	53	17	finally }
  
  @Deprecated
  @TargetApi(11)
  public static void onResume(Fragment paramFragment) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnonnull -> 21
    //   7: ldc_w 'onResume :parame=null'
    //   10: invokestatic c : (Ljava/lang/String;)V
    //   13: ldc com/baidu/mobstat/StatService
    //   15: monitorexit
    //   16: return
    //   17: astore_0
    //   18: goto -> 89
    //   21: aload_0
    //   22: invokevirtual getClass : ()Ljava/lang/Class;
    //   25: ldc_w 'onResume'
    //   28: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;)Z
    //   31: ifne -> 45
    //   34: new java/lang/SecurityException
    //   37: dup
    //   38: ldc_w 'onResume(Context context)不在Fragment.onResume()中被调用||onResume(Context context)is not called in Fragment.onResume().'
    //   41: invokespecial <init> : (Ljava/lang/String;)V
    //   44: athrow
    //   45: aload_0
    //   46: invokestatic a : (Ljava/lang/Object;)Landroid/content/Context;
    //   49: astore_1
    //   50: aload_1
    //   51: ifnonnull -> 64
    //   54: ldc_w 'can not get correct context, fragment may not attached to activity'
    //   57: invokestatic c : (Ljava/lang/String;)V
    //   60: ldc com/baidu/mobstat/StatService
    //   62: monitorexit
    //   63: return
    //   64: aload_1
    //   65: invokestatic a : (Landroid/content/Context;)V
    //   68: invokestatic a : ()Lcom/baidu/mobstat/bv;
    //   71: aload_1
    //   72: invokevirtual a : (Landroid/content/Context;)V
    //   75: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   78: aload_0
    //   79: invokestatic currentTimeMillis : ()J
    //   82: invokevirtual a : (Landroid/app/Fragment;J)V
    //   85: ldc com/baidu/mobstat/StatService
    //   87: monitorexit
    //   88: return
    //   89: ldc com/baidu/mobstat/StatService
    //   91: monitorexit
    //   92: aload_0
    //   93: athrow
    // Exception table:
    //   from	to	target	type
    //   7	13	17	finally
    //   21	45	17	finally
    //   45	50	17	finally
    //   54	60	17	finally
    //   64	85	17	finally }
  
  public static void onResume(Context paramContext) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc_w 'onResume(...)'
    //   7: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)Z
    //   10: istore_1
    //   11: iload_1
    //   12: ifne -> 19
    //   15: ldc com/baidu/mobstat/StatService
    //   17: monitorexit
    //   18: return
    //   19: ldc android/app/Activity
    //   21: ldc_w 'onResume'
    //   24: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;)Z
    //   27: ifne -> 41
    //   30: new java/lang/SecurityException
    //   33: dup
    //   34: ldc_w 'onResume(Context context)不在Activity.onResume()中被调用||onResume(Context context)is not called in Activity.onResume().'
    //   37: invokespecial <init> : (Ljava/lang/String;)V
    //   40: athrow
    //   41: aload_0
    //   42: invokestatic a : (Landroid/content/Context;)V
    //   45: invokestatic a : ()Lcom/baidu/mobstat/bv;
    //   48: aload_0
    //   49: invokevirtual a : (Landroid/content/Context;)V
    //   52: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   55: aload_0
    //   56: invokestatic currentTimeMillis : ()J
    //   59: iconst_0
    //   60: invokevirtual a : (Landroid/content/Context;JZ)V
    //   63: ldc com/baidu/mobstat/StatService
    //   65: monitorexit
    //   66: return
    //   67: astore_0
    //   68: ldc com/baidu/mobstat/StatService
    //   70: monitorexit
    //   71: aload_0
    //   72: athrow
    // Exception table:
    //   from	to	target	type
    //   3	11	67	finally
    //   19	41	67	finally
    //   41	63	67	finally }
  
  @Deprecated
  public static void onResume(a parama) { // Byte code:
    //   0: ldc com/baidu/mobstat/StatService
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnonnull -> 21
    //   7: ldc_w 'onResume :parame=null'
    //   10: invokestatic c : (Ljava/lang/String;)V
    //   13: ldc com/baidu/mobstat/StatService
    //   15: monitorexit
    //   16: return
    //   17: astore_0
    //   18: goto -> 88
    //   21: ldc_w android/support/a/a/a
    //   24: ldc_w 'onResume'
    //   27: invokestatic a : (Ljava/lang/Class;Ljava/lang/String;)Z
    //   30: ifne -> 44
    //   33: new java/lang/SecurityException
    //   36: dup
    //   37: ldc_w 'onResume(Context context)不在Fragment.onResume()中被调用||onResume(Context context)is not called in Fragment.onResume().'
    //   40: invokespecial <init> : (Ljava/lang/String;)V
    //   43: athrow
    //   44: aload_0
    //   45: invokevirtual getActivity : ()Landroid/support/v4/app/FragmentActivity;
    //   48: astore_1
    //   49: aload_1
    //   50: ifnonnull -> 63
    //   53: ldc_w 'can not get correct fragmentActivity, fragment may not attached to activity'
    //   56: invokestatic c : (Ljava/lang/String;)V
    //   59: ldc com/baidu/mobstat/StatService
    //   61: monitorexit
    //   62: return
    //   63: aload_1
    //   64: invokestatic a : (Landroid/content/Context;)V
    //   67: invokestatic a : ()Lcom/baidu/mobstat/bv;
    //   70: aload_1
    //   71: invokevirtual a : (Landroid/content/Context;)V
    //   74: invokestatic a : ()Lcom/baidu/mobstat/ch;
    //   77: aload_0
    //   78: invokestatic currentTimeMillis : ()J
    //   81: invokevirtual a : (Landroid/support/a/a/a;J)V
    //   84: ldc com/baidu/mobstat/StatService
    //   86: monitorexit
    //   87: return
    //   88: ldc com/baidu/mobstat/StatService
    //   90: monitorexit
    //   91: aload_0
    //   92: athrow
    // Exception table:
    //   from	to	target	type
    //   7	13	17	finally
    //   21	44	17	finally
    //   44	49	17	finally
    //   53	59	17	finally
    //   63	84	17	finally }
  
  public static void setAppChannel(Context paramContext, String paramString, boolean paramBoolean) {
    PrefOperate.setAppChannel(paramContext, paramString, paramBoolean);
    a(paramContext);
  }
  
  @Deprecated
  public static void setAppChannel(String paramString) { PrefOperate.setAppChannel(paramString); }
  
  public static void setAppKey(String paramString) { PrefOperate.setAppKey(paramString); }
  
  public static void setDebugOn(boolean paramBoolean) {
    byte b1;
    if (paramBoolean) {
      b1 = 2;
    } else {
      b1 = 7;
    } 
    cz.a = b1;
  }
  
  public static void setForTv(Context paramContext, boolean paramBoolean) {
    bj.a().c(paramContext, paramBoolean);
    a(paramContext);
  }
  
  public static void setLogSenderDelayed(int paramInt) { by.a().a(paramInt); }
  
  public static void setOn(Context paramContext, int paramInt) {
    if (!a(paramContext, "setOn(...)"))
      return; 
    if (a)
      return; 
    a = true;
    if ((paramInt & true) != 0) {
      a(paramContext, false);
    } else if ((paramInt & 0x10) != 0) {
      a(paramContext, true);
    } 
    a(paramContext);
  }
  
  @Deprecated
  public static void setSendLogStrategy(Context paramContext, SendStrategyEnum paramSendStrategyEnum, int paramInt) { setSendLogStrategy(paramContext, paramSendStrategyEnum, paramInt, false); }
  
  @Deprecated
  public static void setSendLogStrategy(Context paramContext, SendStrategyEnum paramSendStrategyEnum, int paramInt, boolean paramBoolean) {
    if (!a(paramContext, "setSendLogStrategy(...)"))
      return; 
    a(paramContext);
    bv.a().a(paramContext);
    by.a().a(paramContext.getApplicationContext(), paramSendStrategyEnum, paramInt, paramBoolean);
  }
  
  public static void setSessionTimeOut(int paramInt) {
    if (paramInt <= 0) {
      cz.b("SessionTimeOut is between 1 and 600. Default value[30] is used");
      return;
    } 
    if (paramInt <= 600) {
      ch.a().a(paramInt);
      return;
    } 
    cz.b("SessionTimeOut is between 1 and 600. Value[600] is used");
    ch.a().a(600);
  }
  
  public static void start(Context paramContext) {
    if (!a(paramContext, "start(...)"))
      return; 
    a(paramContext);
    bv.a().a(paramContext);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\StatService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
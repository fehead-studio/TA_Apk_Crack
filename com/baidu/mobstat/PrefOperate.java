package com.baidu.mobstat;

import android.content.Context;

public class PrefOperate {
  public static String getAppKey(Context paramContext) { return CooperService.a().getAppKey(paramContext); }
  
  public static void loadMetaDataConfig(Context paramContext) { // Byte code:
    //   0: getstatic com/baidu/mobstat/SendStrategyEnum.APP_START : Lcom/baidu/mobstat/SendStrategyEnum;
    //   3: astore_2
    //   4: aload_0
    //   5: ldc 'BaiduMobAd_EXCEPTION_LOG'
    //   7: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   10: astore_3
    //   11: aload_3
    //   12: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   15: ifne -> 43
    //   18: ldc 'true'
    //   20: aload_3
    //   21: invokevirtual equals : (Ljava/lang/Object;)Z
    //   24: ifeq -> 43
    //   27: invokestatic a : ()Lcom/baidu/mobstat/bt;
    //   30: aload_0
    //   31: iconst_0
    //   32: invokevirtual a : (Landroid/content/Context;Z)V
    //   35: goto -> 43
    //   38: astore_3
    //   39: aload_3
    //   40: invokestatic a : (Ljava/lang/Throwable;)V
    //   43: aload_0
    //   44: ldc 'BaiduMobAd_SEND_STRATEGY'
    //   46: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   49: astore_3
    //   50: aload_3
    //   51: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   54: ifne -> 182
    //   57: aload_3
    //   58: getstatic com/baidu/mobstat/SendStrategyEnum.APP_START : Lcom/baidu/mobstat/SendStrategyEnum;
    //   61: invokevirtual name : ()Ljava/lang/String;
    //   64: invokevirtual equals : (Ljava/lang/Object;)Z
    //   67: ifeq -> 104
    //   70: getstatic com/baidu/mobstat/SendStrategyEnum.APP_START : Lcom/baidu/mobstat/SendStrategyEnum;
    //   73: astore_3
    //   74: aload_3
    //   75: astore_2
    //   76: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   79: astore #4
    //   81: aload_3
    //   82: astore_2
    //   83: aload_3
    //   84: invokevirtual ordinal : ()I
    //   87: istore_1
    //   88: aload_3
    //   89: astore_2
    //   90: aload #4
    //   92: aload_0
    //   93: iload_1
    //   94: invokevirtual a : (Landroid/content/Context;I)V
    //   97: goto -> 184
    //   100: astore_3
    //   101: goto -> 190
    //   104: aload_3
    //   105: getstatic com/baidu/mobstat/SendStrategyEnum.ONCE_A_DAY : Lcom/baidu/mobstat/SendStrategyEnum;
    //   108: invokevirtual name : ()Ljava/lang/String;
    //   111: invokevirtual equals : (Ljava/lang/Object;)Z
    //   114: ifeq -> 148
    //   117: getstatic com/baidu/mobstat/SendStrategyEnum.ONCE_A_DAY : Lcom/baidu/mobstat/SendStrategyEnum;
    //   120: astore_3
    //   121: aload_3
    //   122: astore_2
    //   123: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   126: aload_0
    //   127: aload_3
    //   128: invokevirtual ordinal : ()I
    //   131: invokevirtual a : (Landroid/content/Context;I)V
    //   134: aload_3
    //   135: astore_2
    //   136: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   139: aload_0
    //   140: bipush #24
    //   142: invokevirtual b : (Landroid/content/Context;I)V
    //   145: goto -> 184
    //   148: aload_3
    //   149: getstatic com/baidu/mobstat/SendStrategyEnum.SET_TIME_INTERVAL : Lcom/baidu/mobstat/SendStrategyEnum;
    //   152: invokevirtual name : ()Ljava/lang/String;
    //   155: invokevirtual equals : (Ljava/lang/Object;)Z
    //   158: ifeq -> 182
    //   161: getstatic com/baidu/mobstat/SendStrategyEnum.SET_TIME_INTERVAL : Lcom/baidu/mobstat/SendStrategyEnum;
    //   164: astore_3
    //   165: aload_3
    //   166: astore_2
    //   167: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   170: astore #4
    //   172: aload_3
    //   173: astore_2
    //   174: aload_3
    //   175: invokevirtual ordinal : ()I
    //   178: istore_1
    //   179: goto -> 88
    //   182: aload_2
    //   183: astore_3
    //   184: aload_3
    //   185: astore_2
    //   186: goto -> 194
    //   189: astore_3
    //   190: aload_3
    //   191: invokestatic a : (Ljava/lang/Throwable;)V
    //   194: aload_0
    //   195: ldc 'BaiduMobAd_TIME_INTERVAL'
    //   197: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   200: astore_3
    //   201: aload_3
    //   202: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   205: ifne -> 252
    //   208: aload_3
    //   209: invokestatic parseInt : (Ljava/lang/String;)I
    //   212: istore_1
    //   213: aload_2
    //   214: invokevirtual ordinal : ()I
    //   217: getstatic com/baidu/mobstat/SendStrategyEnum.SET_TIME_INTERVAL : Lcom/baidu/mobstat/SendStrategyEnum;
    //   220: invokevirtual ordinal : ()I
    //   223: if_icmpne -> 252
    //   226: iload_1
    //   227: ifle -> 252
    //   230: iload_1
    //   231: bipush #24
    //   233: if_icmpgt -> 252
    //   236: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   239: aload_0
    //   240: iload_1
    //   241: invokevirtual b : (Landroid/content/Context;I)V
    //   244: goto -> 252
    //   247: astore_2
    //   248: aload_2
    //   249: invokestatic a : (Ljava/lang/Throwable;)V
    //   252: aload_0
    //   253: ldc 'BaiduMobAd_ONLY_WIFI'
    //   255: invokestatic a : (Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   258: astore_2
    //   259: aload_2
    //   260: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   263: ifne -> 307
    //   266: ldc 'true'
    //   268: aload_2
    //   269: invokevirtual equals : (Ljava/lang/Object;)Z
    //   272: ifeq -> 284
    //   275: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   278: aload_0
    //   279: iconst_1
    //   280: invokevirtual a : (Landroid/content/Context;Z)V
    //   283: return
    //   284: ldc 'false'
    //   286: aload_2
    //   287: invokevirtual equals : (Ljava/lang/Object;)Z
    //   290: ifeq -> 307
    //   293: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   296: aload_0
    //   297: iconst_0
    //   298: invokevirtual a : (Landroid/content/Context;Z)V
    //   301: return
    //   302: astore_0
    //   303: aload_0
    //   304: invokestatic a : (Ljava/lang/Throwable;)V
    //   307: return
    // Exception table:
    //   from	to	target	type
    //   4	35	38	java/lang/Exception
    //   43	74	189	java/lang/Exception
    //   76	81	100	java/lang/Exception
    //   83	88	100	java/lang/Exception
    //   90	97	100	java/lang/Exception
    //   104	121	189	java/lang/Exception
    //   123	134	100	java/lang/Exception
    //   136	145	100	java/lang/Exception
    //   148	165	189	java/lang/Exception
    //   167	172	100	java/lang/Exception
    //   174	179	100	java/lang/Exception
    //   194	226	247	java/lang/Exception
    //   236	244	247	java/lang/Exception
    //   252	283	302	java/lang/Exception
    //   284	301	302	java/lang/Exception }
  
  public static void setAppChannel(Context paramContext, String paramString, boolean paramBoolean) {
    if (paramString == null || paramString.equals(""))
      cz.c("设置的渠道不能为空或者为null || The channel that you have been set is null or empty, please check it."); 
    (CooperService.a().getHeadObject()).m = paramString;
    if (paramBoolean && paramString != null && !paramString.equals("")) {
      bj.a().c(paramContext, paramString);
      bj.a().b(paramContext, true);
    } 
    if (!paramBoolean) {
      bj.a().c(paramContext, "");
      bj.a().b(paramContext, false);
    } 
  }
  
  public static void setAppChannel(String paramString) {
    if (paramString == null || paramString.equals(""))
      cz.c("设置的渠道不能为空或者为null || The channel that you have been set is null or empty, please check it."); 
    (CooperService.a().getHeadObject()).m = paramString;
  }
  
  public static void setAppKey(String paramString) { (CooperService.a().getHeadObject()).f = paramString; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\PrefOperate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
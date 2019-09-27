package com.baidu.mobstat;

import android.content.Context;
import org.json.JSONObject;

class bu {
  static String a = "Android";
  
  boolean b = false;
  
  String c;
  
  String d;
  
  String e = "0";
  
  String f = null;
  
  String g = null;
  
  int h = -1;
  
  String i;
  
  String j;
  
  int k;
  
  int l;
  
  String m = null;
  
  String n;
  
  String o;
  
  String p;
  
  String q;
  
  String r;
  
  String s;
  
  String t;
  
  String u;
  
  String v;
  
  String w;
  
  String x;
  
  JSONObject y;
  
  int z = 0;
  
  static  {
  
  }
  
  public void a(Context paramContext) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield b : Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_1
    //   15: ldc 'android.permission.READ_PHONE_STATE'
    //   17: invokestatic e : (Landroid/content/Context;Ljava/lang/String;)Z
    //   20: pop
    //   21: aload_1
    //   22: ldc 'android.permission.INTERNET'
    //   24: invokestatic e : (Landroid/content/Context;Ljava/lang/String;)Z
    //   27: pop
    //   28: aload_1
    //   29: ldc 'android.permission.ACCESS_NETWORK_STATE'
    //   31: invokestatic e : (Landroid/content/Context;Ljava/lang/String;)Z
    //   34: pop
    //   35: aload_1
    //   36: ldc 'android.permission.WRITE_SETTINGS'
    //   38: invokestatic e : (Landroid/content/Context;Ljava/lang/String;)Z
    //   41: pop
    //   42: aload_1
    //   43: ldc 'phone'
    //   45: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   48: checkcast android/telephony/TelephonyManager
    //   51: astore #4
    //   53: aload_0
    //   54: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   57: invokevirtual getOSVersion : ()Ljava/lang/String;
    //   60: putfield c : Ljava/lang/String;
    //   63: aload_0
    //   64: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   67: invokevirtual getOSSysVersion : ()Ljava/lang/String;
    //   70: putfield d : Ljava/lang/String;
    //   73: aload_0
    //   74: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   77: invokevirtual getPhoneModel : ()Ljava/lang/String;
    //   80: putfield o : Ljava/lang/String;
    //   83: aload_0
    //   84: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   87: invokevirtual getManufacturer : ()Ljava/lang/String;
    //   90: putfield p : Ljava/lang/String;
    //   93: aload_0
    //   94: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   97: invokevirtual getUUID : ()Ljava/lang/String;
    //   100: putfield x : Ljava/lang/String;
    //   103: aload_0
    //   104: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   107: aload_1
    //   108: invokevirtual getHeaderExt : (Landroid/content/Context;)Lorg/json/JSONObject;
    //   111: putfield y : Lorg/json/JSONObject;
    //   114: aload_0
    //   115: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   118: aload #4
    //   120: aload_1
    //   121: invokevirtual getDeviceId : (Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    //   124: putfield j : Ljava/lang/String;
    //   127: invokestatic a : ()Lcom/baidu/mobstat/bj;
    //   130: aload_1
    //   131: invokevirtual i : (Landroid/content/Context;)Z
    //   134: ifeq -> 516
    //   137: ldc '1'
    //   139: astore_3
    //   140: goto -> 143
    //   143: aload_0
    //   144: aload_3
    //   145: putfield e : Ljava/lang/String;
    //   148: aload_1
    //   149: invokestatic s : (Landroid/content/Context;)Z
    //   152: ifeq -> 161
    //   155: aload_0
    //   156: ldc '2'
    //   158: putfield e : Ljava/lang/String;
    //   161: new java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial <init> : ()V
    //   168: astore_3
    //   169: aload_3
    //   170: aload_0
    //   171: getfield e : Ljava/lang/String;
    //   174: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: aload_3
    //   179: ldc '-0'
    //   181: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: pop
    //   185: aload_0
    //   186: aload_3
    //   187: invokevirtual toString : ()Ljava/lang/String;
    //   190: putfield e : Ljava/lang/String;
    //   193: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   196: aload_1
    //   197: invokevirtual isDeviceMacEnabled : (Landroid/content/Context;)Z
    //   200: istore_2
    //   201: aload_0
    //   202: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   205: aload_1
    //   206: iload_2
    //   207: invokevirtual getMacAddress : (Landroid/content/Context;Z)Ljava/lang/String;
    //   210: putfield t : Ljava/lang/String;
    //   213: goto -> 221
    //   216: astore_3
    //   217: aload_3
    //   218: invokestatic a : (Ljava/lang/Throwable;)V
    //   221: aload_0
    //   222: iconst_1
    //   223: aload_1
    //   224: invokestatic f : (ILandroid/content/Context;)Ljava/lang/String;
    //   227: putfield v : Ljava/lang/String;
    //   230: goto -> 238
    //   233: astore_3
    //   234: aload_3
    //   235: invokestatic a : (Ljava/lang/Throwable;)V
    //   238: aload_0
    //   239: aload_1
    //   240: iconst_1
    //   241: invokestatic a : (Landroid/content/Context;I)Ljava/lang/String;
    //   244: putfield w : Ljava/lang/String;
    //   247: goto -> 255
    //   250: astore_3
    //   251: aload_3
    //   252: invokestatic a : (Ljava/lang/Throwable;)V
    //   255: aload_0
    //   256: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   259: aload_1
    //   260: iconst_1
    //   261: invokevirtual getCUID : (Landroid/content/Context;Z)Ljava/lang/String;
    //   264: putfield g : Ljava/lang/String;
    //   267: aload_0
    //   268: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   271: aload #4
    //   273: invokevirtual getOperator : (Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    //   276: putfield n : Ljava/lang/String;
    //   279: goto -> 287
    //   282: astore_3
    //   283: aload_3
    //   284: invokestatic a : (Ljava/lang/Throwable;)V
    //   287: aload_0
    //   288: aload_1
    //   289: invokestatic b : (Landroid/content/Context;)I
    //   292: putfield k : I
    //   295: aload_0
    //   296: aload_1
    //   297: invokestatic c : (Landroid/content/Context;)I
    //   300: putfield l : I
    //   303: aload_1
    //   304: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   307: invokevirtual getConfiguration : ()Landroid/content/res/Configuration;
    //   310: getfield orientation : I
    //   313: iconst_2
    //   314: if_icmpne -> 364
    //   317: aload_0
    //   318: aload_0
    //   319: getfield k : I
    //   322: aload_0
    //   323: getfield l : I
    //   326: ixor
    //   327: putfield k : I
    //   330: aload_0
    //   331: aload_0
    //   332: getfield k : I
    //   335: aload_0
    //   336: getfield l : I
    //   339: ixor
    //   340: putfield l : I
    //   343: aload_0
    //   344: aload_0
    //   345: getfield k : I
    //   348: aload_0
    //   349: getfield l : I
    //   352: ixor
    //   353: putfield k : I
    //   356: goto -> 364
    //   359: astore_3
    //   360: aload_3
    //   361: invokestatic a : (Ljava/lang/Throwable;)V
    //   364: aload_0
    //   365: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   368: aload_1
    //   369: invokevirtual getAppChannel : (Landroid/content/Context;)Ljava/lang/String;
    //   372: putfield m : Ljava/lang/String;
    //   375: aload_0
    //   376: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   379: aload_1
    //   380: invokevirtual getAppKey : (Landroid/content/Context;)Ljava/lang/String;
    //   383: putfield f : Ljava/lang/String;
    //   386: aload_0
    //   387: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   390: aload_1
    //   391: invokevirtual getAppVersionCode : (Landroid/content/Context;)I
    //   394: putfield h : I
    //   397: aload_0
    //   398: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   401: aload_1
    //   402: invokevirtual getAppVersionName : (Landroid/content/Context;)Ljava/lang/String;
    //   405: putfield i : Ljava/lang/String;
    //   408: goto -> 416
    //   411: astore_3
    //   412: aload_3
    //   413: invokestatic a : (Ljava/lang/Throwable;)V
    //   416: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   419: aload_1
    //   420: invokevirtual checkCellLocationSetting : (Landroid/content/Context;)Z
    //   423: ifeq -> 439
    //   426: aload_1
    //   427: invokestatic g : (Landroid/content/Context;)Ljava/lang/String;
    //   430: astore_3
    //   431: aload_0
    //   432: aload_3
    //   433: putfield q : Ljava/lang/String;
    //   436: goto -> 450
    //   439: ldc '0_0_0'
    //   441: astore_3
    //   442: goto -> 431
    //   445: astore_3
    //   446: aload_3
    //   447: invokestatic a : (Ljava/lang/Throwable;)V
    //   450: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   453: aload_1
    //   454: invokevirtual checkGPSLocationSetting : (Landroid/content/Context;)Z
    //   457: ifeq -> 473
    //   460: aload_1
    //   461: invokestatic h : (Landroid/content/Context;)Ljava/lang/String;
    //   464: astore_3
    //   465: aload_0
    //   466: aload_3
    //   467: putfield r : Ljava/lang/String;
    //   470: goto -> 484
    //   473: ldc ''
    //   475: astore_3
    //   476: goto -> 465
    //   479: astore_3
    //   480: aload_3
    //   481: invokestatic a : (Ljava/lang/Throwable;)V
    //   484: aload_0
    //   485: invokestatic a : ()Lcom/baidu/mobstat/CooperService;
    //   488: aload_1
    //   489: invokevirtual getLinkedWay : (Landroid/content/Context;)Ljava/lang/String;
    //   492: putfield s : Ljava/lang/String;
    //   495: goto -> 503
    //   498: astore_1
    //   499: aload_1
    //   500: invokestatic a : (Ljava/lang/Throwable;)V
    //   503: aload_0
    //   504: iconst_1
    //   505: putfield b : Z
    //   508: aload_0
    //   509: monitorexit
    //   510: return
    //   511: astore_1
    //   512: aload_0
    //   513: monitorexit
    //   514: aload_1
    //   515: athrow
    //   516: ldc '0'
    //   518: astore_3
    //   519: goto -> 143
    // Exception table:
    //   from	to	target	type
    //   2	7	511	finally
    //   14	137	511	finally
    //   143	161	511	finally
    //   161	193	511	finally
    //   193	213	216	java/lang/Exception
    //   193	213	511	finally
    //   217	221	511	finally
    //   221	230	233	java/lang/Exception
    //   221	230	511	finally
    //   234	238	511	finally
    //   238	247	250	java/lang/Exception
    //   238	247	511	finally
    //   251	255	511	finally
    //   255	267	511	finally
    //   267	279	282	java/lang/Exception
    //   267	279	511	finally
    //   283	287	511	finally
    //   287	356	359	java/lang/Exception
    //   287	356	511	finally
    //   360	364	511	finally
    //   364	386	511	finally
    //   386	408	411	java/lang/Exception
    //   386	408	511	finally
    //   412	416	511	finally
    //   416	431	445	java/lang/Exception
    //   416	431	511	finally
    //   431	436	445	java/lang/Exception
    //   431	436	511	finally
    //   446	450	511	finally
    //   450	465	479	java/lang/Exception
    //   450	465	511	finally
    //   465	470	479	java/lang/Exception
    //   465	470	511	finally
    //   480	484	511	finally
    //   484	495	498	java/lang/Exception
    //   484	495	511	finally
    //   499	503	511	finally
    //   503	508	511	finally }
  
  public void a(Context paramContext, JSONObject paramJSONObject) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual a : (Landroid/content/Context;)V
    //   7: aload_2
    //   8: invokevirtual length : ()I
    //   11: bipush #10
    //   13: if_icmple -> 48
    //   16: new java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial <init> : ()V
    //   23: astore_1
    //   24: aload_1
    //   25: ldc_w 'header has been installed; header is:'
    //   28: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: pop
    //   32: aload_1
    //   33: aload_2
    //   34: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   37: pop
    //   38: aload_1
    //   39: invokevirtual toString : ()Ljava/lang/String;
    //   42: invokestatic a : (Ljava/lang/String;)V
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: aload_0
    //   49: aload_1
    //   50: aload_2
    //   51: invokevirtual b : (Landroid/content/Context;Lorg/json/JSONObject;)V
    //   54: aload_0
    //   55: monitorexit
    //   56: return
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Exception table:
    //   from	to	target	type
    //   2	45	57	finally
    //   48	54	57	finally }
  
  public void a(JSONObject paramJSONObject) { this.y = paramJSONObject; }
  
  public void b(Context paramContext, JSONObject paramJSONObject) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic com/baidu/mobstat/bu.a : Ljava/lang/String;
    //   5: ifnonnull -> 14
    //   8: ldc ''
    //   10: astore_3
    //   11: goto -> 18
    //   14: getstatic com/baidu/mobstat/bu.a : Ljava/lang/String;
    //   17: astore_3
    //   18: aload_2
    //   19: ldc_w 'o'
    //   22: aload_3
    //   23: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   26: pop
    //   27: aload_2
    //   28: ldc_w 'st'
    //   31: iconst_0
    //   32: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   35: pop
    //   36: aload_0
    //   37: getfield c : Ljava/lang/String;
    //   40: ifnonnull -> 49
    //   43: ldc ''
    //   45: astore_3
    //   46: goto -> 54
    //   49: aload_0
    //   50: getfield c : Ljava/lang/String;
    //   53: astore_3
    //   54: aload_2
    //   55: ldc_w 's'
    //   58: aload_3
    //   59: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   62: pop
    //   63: aload_0
    //   64: getfield d : Ljava/lang/String;
    //   67: ifnonnull -> 76
    //   70: ldc ''
    //   72: astore_3
    //   73: goto -> 81
    //   76: aload_0
    //   77: getfield d : Ljava/lang/String;
    //   80: astore_3
    //   81: aload_2
    //   82: ldc_w 'sv'
    //   85: aload_3
    //   86: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   89: pop
    //   90: aload_0
    //   91: getfield f : Ljava/lang/String;
    //   94: ifnonnull -> 103
    //   97: ldc ''
    //   99: astore_3
    //   100: goto -> 108
    //   103: aload_0
    //   104: getfield f : Ljava/lang/String;
    //   107: astore_3
    //   108: aload_2
    //   109: ldc_w 'k'
    //   112: aload_3
    //   113: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   116: pop
    //   117: aload_0
    //   118: getfield e : Ljava/lang/String;
    //   121: ifnonnull -> 130
    //   124: ldc '0'
    //   126: astore_3
    //   127: goto -> 135
    //   130: aload_0
    //   131: getfield e : Ljava/lang/String;
    //   134: astore_3
    //   135: aload_2
    //   136: ldc_w 'pt'
    //   139: aload_3
    //   140: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   143: pop
    //   144: aload_2
    //   145: ldc_w 'i'
    //   148: ldc ''
    //   150: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   153: pop
    //   154: aload_2
    //   155: ldc_w 'v'
    //   158: ldc_w '3.7.5.5'
    //   161: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   164: pop
    //   165: aload_2
    //   166: ldc_w 'sc'
    //   169: iconst_0
    //   170: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   173: pop
    //   174: aload_2
    //   175: ldc_w 'a'
    //   178: aload_0
    //   179: getfield h : I
    //   182: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   185: pop
    //   186: aload_0
    //   187: getfield i : Ljava/lang/String;
    //   190: ifnonnull -> 199
    //   193: ldc ''
    //   195: astore_3
    //   196: goto -> 204
    //   199: aload_0
    //   200: getfield i : Ljava/lang/String;
    //   203: astore_3
    //   204: aload_2
    //   205: ldc_w 'n'
    //   208: aload_3
    //   209: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   212: pop
    //   213: aload_2
    //   214: ldc_w 'd'
    //   217: ldc ''
    //   219: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   222: pop
    //   223: aload_0
    //   224: getfield t : Ljava/lang/String;
    //   227: ifnonnull -> 236
    //   230: ldc ''
    //   232: astore_3
    //   233: goto -> 241
    //   236: aload_0
    //   237: getfield t : Ljava/lang/String;
    //   240: astore_3
    //   241: aload_2
    //   242: ldc_w 'mc'
    //   245: aload_3
    //   246: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   249: pop
    //   250: aload_0
    //   251: getfield v : Ljava/lang/String;
    //   254: ifnonnull -> 263
    //   257: ldc ''
    //   259: astore_3
    //   260: goto -> 268
    //   263: aload_0
    //   264: getfield v : Ljava/lang/String;
    //   267: astore_3
    //   268: aload_2
    //   269: ldc_w 'bm'
    //   272: aload_3
    //   273: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   276: pop
    //   277: aload_0
    //   278: getfield j : Ljava/lang/String;
    //   281: ifnonnull -> 290
    //   284: ldc ''
    //   286: astore_3
    //   287: goto -> 295
    //   290: aload_0
    //   291: getfield j : Ljava/lang/String;
    //   294: astore_3
    //   295: aload_2
    //   296: ldc_w 'dd'
    //   299: aload_3
    //   300: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   303: pop
    //   304: aload_0
    //   305: getfield g : Ljava/lang/String;
    //   308: ifnonnull -> 317
    //   311: ldc ''
    //   313: astore_3
    //   314: goto -> 322
    //   317: aload_0
    //   318: getfield g : Ljava/lang/String;
    //   321: astore_3
    //   322: aload_2
    //   323: ldc_w 'ii'
    //   326: aload_3
    //   327: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   330: pop
    //   331: aload_2
    //   332: ldc_w 'tg'
    //   335: iconst_1
    //   336: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   339: pop
    //   340: aload_2
    //   341: ldc_w 'w'
    //   344: aload_0
    //   345: getfield k : I
    //   348: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   351: pop
    //   352: aload_2
    //   353: ldc_w 'h'
    //   356: aload_0
    //   357: getfield l : I
    //   360: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   363: pop
    //   364: aload_0
    //   365: getfield w : Ljava/lang/String;
    //   368: ifnonnull -> 377
    //   371: ldc ''
    //   373: astore_3
    //   374: goto -> 382
    //   377: aload_0
    //   378: getfield w : Ljava/lang/String;
    //   381: astore_3
    //   382: aload_2
    //   383: ldc_w 'dn'
    //   386: aload_3
    //   387: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   390: pop
    //   391: aload_0
    //   392: getfield m : Ljava/lang/String;
    //   395: ifnonnull -> 404
    //   398: ldc ''
    //   400: astore_3
    //   401: goto -> 409
    //   404: aload_0
    //   405: getfield m : Ljava/lang/String;
    //   408: astore_3
    //   409: aload_2
    //   410: ldc_w 'c'
    //   413: aload_3
    //   414: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   417: pop
    //   418: aload_0
    //   419: getfield n : Ljava/lang/String;
    //   422: ifnonnull -> 431
    //   425: ldc ''
    //   427: astore_3
    //   428: goto -> 436
    //   431: aload_0
    //   432: getfield n : Ljava/lang/String;
    //   435: astore_3
    //   436: aload_2
    //   437: ldc_w 'op'
    //   440: aload_3
    //   441: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   444: pop
    //   445: aload_0
    //   446: getfield o : Ljava/lang/String;
    //   449: ifnonnull -> 458
    //   452: ldc ''
    //   454: astore_3
    //   455: goto -> 463
    //   458: aload_0
    //   459: getfield o : Ljava/lang/String;
    //   462: astore_3
    //   463: aload_2
    //   464: ldc_w 'm'
    //   467: aload_3
    //   468: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   471: pop
    //   472: aload_0
    //   473: getfield p : Ljava/lang/String;
    //   476: ifnonnull -> 485
    //   479: ldc ''
    //   481: astore_3
    //   482: goto -> 490
    //   485: aload_0
    //   486: getfield p : Ljava/lang/String;
    //   489: astore_3
    //   490: aload_2
    //   491: ldc_w 'ma'
    //   494: aload_3
    //   495: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   498: pop
    //   499: aload_2
    //   500: ldc_w 'cl'
    //   503: aload_0
    //   504: getfield q : Ljava/lang/String;
    //   507: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   510: pop
    //   511: aload_0
    //   512: getfield r : Ljava/lang/String;
    //   515: ifnonnull -> 524
    //   518: ldc ''
    //   520: astore_3
    //   521: goto -> 529
    //   524: aload_0
    //   525: getfield r : Ljava/lang/String;
    //   528: astore_3
    //   529: aload_2
    //   530: ldc_w 'gl'
    //   533: aload_3
    //   534: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   537: pop
    //   538: aload_0
    //   539: getfield s : Ljava/lang/String;
    //   542: ifnonnull -> 551
    //   545: ldc ''
    //   547: astore_3
    //   548: goto -> 556
    //   551: aload_0
    //   552: getfield s : Ljava/lang/String;
    //   555: astore_3
    //   556: aload_2
    //   557: ldc_w 'l'
    //   560: aload_3
    //   561: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   564: pop
    //   565: aload_2
    //   566: ldc_w 't'
    //   569: invokestatic currentTimeMillis : ()J
    //   572: invokevirtual put : (Ljava/lang/String;J)Lorg/json/JSONObject;
    //   575: pop
    //   576: aload_2
    //   577: ldc_w 'sq'
    //   580: aload_0
    //   581: getfield z : I
    //   584: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   587: pop
    //   588: aload_2
    //   589: ldc_w 'pn'
    //   592: iconst_1
    //   593: aload_1
    //   594: invokestatic h : (ILandroid/content/Context;)Ljava/lang/String;
    //   597: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   600: pop
    //   601: aload_1
    //   602: invokestatic q : (Landroid/content/Context;)Ljava/lang/String;
    //   605: astore #4
    //   607: aload_2
    //   608: ldc_w 'pl'
    //   611: aload #4
    //   613: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   616: pop
    //   617: aconst_null
    //   618: astore_3
    //   619: aload #4
    //   621: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   624: ifne -> 773
    //   627: aload_1
    //   628: invokestatic r : (Landroid/content/Context;)Ljava/lang/String;
    //   631: astore_3
    //   632: goto -> 773
    //   635: aload_2
    //   636: ldc_w 'scl'
    //   639: aload_1
    //   640: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   643: pop
    //   644: aload_0
    //   645: getfield x : Ljava/lang/String;
    //   648: ifnonnull -> 657
    //   651: ldc ''
    //   653: astore_1
    //   654: goto -> 662
    //   657: aload_0
    //   658: getfield x : Ljava/lang/String;
    //   661: astore_1
    //   662: aload_2
    //   663: ldc_w 'sign'
    //   666: aload_1
    //   667: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   670: pop
    //   671: aload_0
    //   672: getfield y : Lorg/json/JSONObject;
    //   675: ifnull -> 700
    //   678: aload_0
    //   679: getfield y : Lorg/json/JSONObject;
    //   682: invokevirtual length : ()I
    //   685: ifeq -> 700
    //   688: aload_2
    //   689: ldc_w 'ext'
    //   692: aload_0
    //   693: getfield y : Lorg/json/JSONObject;
    //   696: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   699: pop
    //   700: new java/lang/StringBuilder
    //   703: dup
    //   704: invokespecial <init> : ()V
    //   707: astore_1
    //   708: aload_1
    //   709: ldc_w 'header is: '
    //   712: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   715: pop
    //   716: aload_1
    //   717: aload_2
    //   718: invokevirtual toString : ()Ljava/lang/String;
    //   721: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   724: pop
    //   725: aload_1
    //   726: ldc_w '; len: '
    //   729: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   732: pop
    //   733: aload_1
    //   734: aload_2
    //   735: invokevirtual length : ()I
    //   738: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   741: pop
    //   742: aload_1
    //   743: invokevirtual toString : ()Ljava/lang/String;
    //   746: invokestatic a : (Ljava/lang/String;)V
    //   749: goto -> 762
    //   752: astore_1
    //   753: goto -> 765
    //   756: ldc_w 'header ini error'
    //   759: invokestatic a : (Ljava/lang/String;)V
    //   762: aload_0
    //   763: monitorexit
    //   764: return
    //   765: aload_0
    //   766: monitorexit
    //   767: aload_1
    //   768: athrow
    //   769: astore_1
    //   770: goto -> 756
    //   773: aload_3
    //   774: astore_1
    //   775: aload_3
    //   776: ifnonnull -> 635
    //   779: ldc ''
    //   781: astore_1
    //   782: goto -> 635
    // Exception table:
    //   from	to	target	type
    //   2	8	769	org/json/JSONException
    //   2	8	752	finally
    //   14	18	769	org/json/JSONException
    //   14	18	752	finally
    //   18	43	769	org/json/JSONException
    //   18	43	752	finally
    //   49	54	769	org/json/JSONException
    //   49	54	752	finally
    //   54	70	769	org/json/JSONException
    //   54	70	752	finally
    //   76	81	769	org/json/JSONException
    //   76	81	752	finally
    //   81	97	769	org/json/JSONException
    //   81	97	752	finally
    //   103	108	769	org/json/JSONException
    //   103	108	752	finally
    //   108	124	769	org/json/JSONException
    //   108	124	752	finally
    //   130	135	769	org/json/JSONException
    //   130	135	752	finally
    //   135	193	769	org/json/JSONException
    //   135	193	752	finally
    //   199	204	769	org/json/JSONException
    //   199	204	752	finally
    //   204	230	769	org/json/JSONException
    //   204	230	752	finally
    //   236	241	769	org/json/JSONException
    //   236	241	752	finally
    //   241	257	769	org/json/JSONException
    //   241	257	752	finally
    //   263	268	769	org/json/JSONException
    //   263	268	752	finally
    //   268	284	769	org/json/JSONException
    //   268	284	752	finally
    //   290	295	769	org/json/JSONException
    //   290	295	752	finally
    //   295	311	769	org/json/JSONException
    //   295	311	752	finally
    //   317	322	769	org/json/JSONException
    //   317	322	752	finally
    //   322	371	769	org/json/JSONException
    //   322	371	752	finally
    //   377	382	769	org/json/JSONException
    //   377	382	752	finally
    //   382	398	769	org/json/JSONException
    //   382	398	752	finally
    //   404	409	769	org/json/JSONException
    //   404	409	752	finally
    //   409	425	769	org/json/JSONException
    //   409	425	752	finally
    //   431	436	769	org/json/JSONException
    //   431	436	752	finally
    //   436	452	769	org/json/JSONException
    //   436	452	752	finally
    //   458	463	769	org/json/JSONException
    //   458	463	752	finally
    //   463	479	769	org/json/JSONException
    //   463	479	752	finally
    //   485	490	769	org/json/JSONException
    //   485	490	752	finally
    //   490	518	769	org/json/JSONException
    //   490	518	752	finally
    //   524	529	769	org/json/JSONException
    //   524	529	752	finally
    //   529	545	769	org/json/JSONException
    //   529	545	752	finally
    //   551	556	769	org/json/JSONException
    //   551	556	752	finally
    //   556	617	769	org/json/JSONException
    //   556	617	752	finally
    //   619	632	769	org/json/JSONException
    //   619	632	752	finally
    //   635	651	769	org/json/JSONException
    //   635	651	752	finally
    //   657	662	769	org/json/JSONException
    //   657	662	752	finally
    //   662	700	769	org/json/JSONException
    //   662	700	752	finally
    //   700	749	769	org/json/JSONException
    //   700	749	752	finally
    //   756	762	752	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
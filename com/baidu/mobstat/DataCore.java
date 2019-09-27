package com.baidu.mobstat;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DataCore {
  private static JSONObject a = new JSONObject();
  
  private static DataCore b = new DataCore();
  
  private JSONArray c = new JSONArray();
  
  private JSONArray d = new JSONArray();
  
  private JSONArray e = new JSONArray();
  
  private boolean f = false;
  
  private StatService$WearListener h;
  
  private void a(Context paramContext) {
    clearCache(paramContext);
    CooperService.a().setHeadSqCounted(true);
    ch.a().d();
  }
  
  private void a(Context paramContext, String paramString) {
    if (this.h != null && this.h.onSendLogData(paramString)) {
      cz.a("log data has been passed to app level");
      return;
    } 
    by.a().a(paramContext, paramString);
  }
  
  private void a(JSONObject paramJSONObject, String paramString1, String paramString2, String paramString3, long paramLong, String paramString4, String paramString5, int paramInt, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: getfield d : Lorg/json/JSONArray;
    //   4: astore #24
    //   6: aload #24
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield d : Lorg/json/JSONArray;
    //   13: invokevirtual length : ()I
    //   16: istore #15
    //   18: aload #4
    //   20: ifnull -> 33
    //   23: aload #4
    //   25: ldc ''
    //   27: invokevirtual equals : (Ljava/lang/Object;)Z
    //   30: ifeq -> 50
    //   33: aload_1
    //   34: ldc 's'
    //   36: ldc '0|'
    //   38: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   41: pop
    //   42: goto -> 50
    //   45: ldc 'event put s fail'
    //   47: invokestatic a : (Ljava/lang/String;)V
    //   50: iload #15
    //   52: istore #11
    //   54: iconst_0
    //   55: istore #12
    //   57: iload #12
    //   59: iload #15
    //   61: if_icmpge -> 511
    //   64: aload_0
    //   65: getfield d : Lorg/json/JSONArray;
    //   68: iload #12
    //   70: invokevirtual getJSONObject : (I)Lorg/json/JSONObject;
    //   73: astore #25
    //   75: aload #25
    //   77: ldc 'i'
    //   79: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   82: astore #4
    //   84: aload #25
    //   86: ldc 'l'
    //   88: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   91: astore #23
    //   93: aload #25
    //   95: ldc 't'
    //   97: invokevirtual getLong : (Ljava/lang/String;)J
    //   100: ldc2_w 3600000
    //   103: ldiv
    //   104: lstore #17
    //   106: aload #25
    //   108: ldc 'd'
    //   110: invokevirtual getInt : (Ljava/lang/String;)I
    //   113: istore #13
    //   115: goto -> 126
    //   118: ldc 'old version data, No duration Tag'
    //   120: invokestatic a : (Ljava/lang/String;)V
    //   123: iconst_0
    //   124: istore #13
    //   126: aload #25
    //   128: ldc 'h'
    //   130: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   133: astore #26
    //   135: aload #25
    //   137: ldc 'p'
    //   139: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   142: astore #27
    //   144: aload #25
    //   146: ldc 'v'
    //   148: invokevirtual optInt : (Ljava/lang/String;)I
    //   151: istore #16
    //   153: iload #11
    //   155: istore #14
    //   157: aload #25
    //   159: ldc 'at'
    //   161: invokevirtual optBoolean : (Ljava/lang/String;)Z
    //   164: istore #21
    //   166: lload #17
    //   168: lload #5
    //   170: lcmp
    //   171: ifne -> 419
    //   174: iload #13
    //   176: ifeq -> 182
    //   179: goto -> 419
    //   182: aload #4
    //   184: aload_2
    //   185: invokevirtual equals : (Ljava/lang/Object;)Z
    //   188: ifeq -> 407
    //   191: aload #23
    //   193: aload_3
    //   194: invokevirtual equals : (Ljava/lang/Object;)Z
    //   197: ifeq -> 407
    //   200: aload #26
    //   202: aload #7
    //   204: invokevirtual equals : (Ljava/lang/Object;)Z
    //   207: istore #22
    //   209: iload #22
    //   211: ifeq -> 407
    //   214: aload #27
    //   216: aload #8
    //   218: invokevirtual equals : (Ljava/lang/Object;)Z
    //   221: istore #22
    //   223: iload #22
    //   225: ifeq -> 407
    //   228: iload #16
    //   230: iload #9
    //   232: if_icmpne -> 407
    //   235: iload #14
    //   237: istore #13
    //   239: iload #21
    //   241: iload #10
    //   243: if_icmpne -> 498
    //   246: aload_1
    //   247: ldc 'c'
    //   249: invokevirtual getInt : (Ljava/lang/String;)I
    //   252: istore #13
    //   254: aload #25
    //   256: ldc 'c'
    //   258: invokevirtual getInt : (Ljava/lang/String;)I
    //   261: istore #14
    //   263: aload #25
    //   265: ldc 's'
    //   267: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   270: astore #23
    //   272: aload #23
    //   274: ifnull -> 491
    //   277: aload #23
    //   279: astore #4
    //   281: aload #23
    //   283: ldc ''
    //   285: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   288: ifeq -> 294
    //   291: goto -> 491
    //   294: aload_1
    //   295: ldc 't'
    //   297: invokevirtual getLong : (Ljava/lang/String;)J
    //   300: lstore #17
    //   302: aload #25
    //   304: ldc 't'
    //   306: invokevirtual getLong : (Ljava/lang/String;)J
    //   309: lstore #19
    //   311: new java/lang/StringBuilder
    //   314: dup
    //   315: invokespecial <init> : ()V
    //   318: astore #23
    //   320: aload #23
    //   322: aload #4
    //   324: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: pop
    //   328: aload #23
    //   330: lload #17
    //   332: lload #19
    //   334: lsub
    //   335: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   338: pop
    //   339: aload #23
    //   341: ldc '|'
    //   343: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: pop
    //   347: aload #23
    //   349: invokevirtual toString : ()Ljava/lang/String;
    //   352: astore #4
    //   354: aload #25
    //   356: ldc 'c'
    //   358: invokevirtual remove : (Ljava/lang/String;)Ljava/lang/Object;
    //   361: pop
    //   362: aload #25
    //   364: ldc 'c'
    //   366: iload #13
    //   368: iload #14
    //   370: iadd
    //   371: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   374: pop
    //   375: aload #25
    //   377: ldc 's'
    //   379: aload #4
    //   381: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   384: pop
    //   385: goto -> 441
    //   388: astore #4
    //   390: iload #12
    //   392: istore #13
    //   394: goto -> 433
    //   397: astore #4
    //   399: goto -> 429
    //   402: astore #4
    //   404: goto -> 424
    //   407: iload #14
    //   409: istore #13
    //   411: goto -> 498
    //   414: astore #4
    //   416: goto -> 424
    //   419: goto -> 407
    //   422: astore #4
    //   424: goto -> 429
    //   427: astore #4
    //   429: iload #11
    //   431: istore #13
    //   433: aload #4
    //   435: invokestatic a : (Ljava/lang/Throwable;)V
    //   438: goto -> 498
    //   441: iload #12
    //   443: iload #15
    //   445: if_icmpge -> 452
    //   448: aload #24
    //   450: monitorexit
    //   451: return
    //   452: aload_0
    //   453: getfield d : Lorg/json/JSONArray;
    //   456: iload #15
    //   458: aload_1
    //   459: invokevirtual put : (ILjava/lang/Object;)Lorg/json/JSONArray;
    //   462: pop
    //   463: goto -> 471
    //   466: astore_1
    //   467: aload_1
    //   468: invokestatic a : (Ljava/lang/Throwable;)V
    //   471: aload #24
    //   473: monitorexit
    //   474: return
    //   475: astore_1
    //   476: aload #24
    //   478: monitorexit
    //   479: aload_1
    //   480: athrow
    //   481: astore #4
    //   483: goto -> 45
    //   486: astore #26
    //   488: goto -> 118
    //   491: ldc '0|'
    //   493: astore #4
    //   495: goto -> 294
    //   498: iload #13
    //   500: istore #11
    //   502: iload #12
    //   504: iconst_1
    //   505: iadd
    //   506: istore #12
    //   508: goto -> 57
    //   511: iload #11
    //   513: istore #12
    //   515: goto -> 441
    // Exception table:
    //   from	to	target	type
    //   9	18	475	finally
    //   23	33	481	org/json/JSONException
    //   23	33	475	finally
    //   33	42	481	org/json/JSONException
    //   33	42	475	finally
    //   45	50	475	finally
    //   64	106	427	org/json/JSONException
    //   64	106	475	finally
    //   106	115	486	org/json/JSONException
    //   106	115	475	finally
    //   118	123	427	org/json/JSONException
    //   118	123	475	finally
    //   126	153	427	org/json/JSONException
    //   126	153	475	finally
    //   157	166	422	org/json/JSONException
    //   157	166	475	finally
    //   182	209	414	org/json/JSONException
    //   182	209	475	finally
    //   214	223	402	org/json/JSONException
    //   214	223	475	finally
    //   246	272	397	org/json/JSONException
    //   246	272	475	finally
    //   281	291	397	org/json/JSONException
    //   281	291	475	finally
    //   294	354	397	org/json/JSONException
    //   294	354	475	finally
    //   354	385	388	org/json/JSONException
    //   354	385	475	finally
    //   433	438	475	finally
    //   448	451	475	finally
    //   452	463	466	org/json/JSONException
    //   452	463	475	finally
    //   467	471	475	finally
    //   471	474	475	finally
    //   476	479	475	finally }
  
  private void a(boolean paramBoolean) { this.f = paramBoolean; }
  
  private boolean a() { return this.f; }
  
  private boolean a(String paramString) { return (paramString.getBytes().length + ch.a().b() + this.g > 204800); }
  
  private void b(Context paramContext) {
    synchronized (this.d) {
      this.d = new JSONArray();
      synchronized (this.c) {
        this.c = new JSONArray();
        synchronized (this.e) {
          this.e = new JSONArray();
          flush(paramContext);
          return;
        } 
      } 
    } 
  }
  
  public static DataCore instance() { return b; }
  
  public void clearCache(Context paramContext) {
    a(false);
    synchronized (a) {
      a = new JSONObject();
      installHeader(paramContext);
      b(paramContext);
      return;
    } 
  }
  
  public String constructLogWithEmptyBody(Context paramContext, String paramString) {
    JSONObject jSONObject1 = new JSONObject();
    JSONObject jSONObject2 = new JSONObject();
    bu bu = CooperService.a().getHeadObject();
    if (TextUtils.isEmpty(bu.f)) {
      bu.a(paramContext, jSONObject2);
    } else {
      bu.b(paramContext, jSONObject2);
    } 
    jSONArray = new JSONArray();
    long l = System.currentTimeMillis();
    try {
      jSONObject2.put("t", l);
      jSONObject2.put("ss", l);
      jSONObject2.put("wl2", jSONArray);
      jSONObject2.put("sq", 0);
      jSONObject2.put("sign", CooperService.a().getUUID());
      jSONObject2.put("k", paramString);
      jSONObject1.put("he", jSONObject2);
      try {
        jSONObject1.put("pr", jSONArray);
        try {
          jSONObject1.put("ev", jSONArray);
          try {
            jSONObject1.put("ex", jSONArray);
            return jSONObject1.toString();
          } catch (JSONException jSONArray) {
            cz.a(jSONArray);
            return null;
          } 
        } catch (JSONException jSONArray) {
          cz.a(jSONArray);
          return null;
        } 
      } catch (JSONException jSONArray) {
        cz.a(jSONArray);
        return null;
      } 
    } catch (Exception jSONArray) {
      cz.a(jSONArray);
      return null;
    } 
  }
  
  public void flush(Context paramContext) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new org/json/JSONObject
    //   5: dup
    //   6: invokespecial <init> : ()V
    //   9: astore_3
    //   10: aload_0
    //   11: getfield c : Lorg/json/JSONArray;
    //   14: astore #4
    //   16: aload #4
    //   18: monitorenter
    //   19: aload_3
    //   20: ldc_w 'pr'
    //   23: new org/json/JSONArray
    //   26: dup
    //   27: aload_0
    //   28: getfield c : Lorg/json/JSONArray;
    //   31: invokevirtual toString : ()Ljava/lang/String;
    //   34: invokespecial <init> : (Ljava/lang/String;)V
    //   37: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   40: pop
    //   41: aload #4
    //   43: monitorexit
    //   44: aload_0
    //   45: getfield d : Lorg/json/JSONArray;
    //   48: astore #4
    //   50: aload #4
    //   52: monitorenter
    //   53: aload_3
    //   54: ldc_w 'ev'
    //   57: new org/json/JSONArray
    //   60: dup
    //   61: aload_0
    //   62: getfield d : Lorg/json/JSONArray;
    //   65: invokevirtual toString : ()Ljava/lang/String;
    //   68: invokespecial <init> : (Ljava/lang/String;)V
    //   71: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   74: pop
    //   75: aload #4
    //   77: monitorexit
    //   78: getstatic com/baidu/mobstat/DataCore.a : Lorg/json/JSONObject;
    //   81: astore #4
    //   83: aload #4
    //   85: monitorenter
    //   86: aload_3
    //   87: ldc_w 'he'
    //   90: new org/json/JSONObject
    //   93: dup
    //   94: getstatic com/baidu/mobstat/DataCore.a : Lorg/json/JSONObject;
    //   97: invokevirtual toString : ()Ljava/lang/String;
    //   100: invokespecial <init> : (Ljava/lang/String;)V
    //   103: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   106: pop
    //   107: aload #4
    //   109: monitorexit
    //   110: goto -> 143
    //   113: astore #5
    //   115: aload #4
    //   117: monitorexit
    //   118: aload #5
    //   120: athrow
    //   121: astore #5
    //   123: aload #4
    //   125: monitorexit
    //   126: aload #5
    //   128: athrow
    //   129: astore #5
    //   131: aload #4
    //   133: monitorexit
    //   134: aload #5
    //   136: athrow
    //   137: ldc_w 'flushLogWithoutHeader() construct cache error'
    //   140: invokestatic a : (Ljava/lang/String;)V
    //   143: aload_3
    //   144: invokevirtual toString : ()Ljava/lang/String;
    //   147: astore_3
    //   148: aload_0
    //   149: invokespecial a : ()Z
    //   152: ifeq -> 164
    //   155: ldc_w 'cache.json exceed 204800B,stop flush.'
    //   158: invokestatic a : (Ljava/lang/String;)V
    //   161: aload_0
    //   162: monitorexit
    //   163: return
    //   164: aload_3
    //   165: invokevirtual getBytes : ()[B
    //   168: arraylength
    //   169: istore_2
    //   170: iload_2
    //   171: ldc 204800
    //   173: if_icmplt -> 184
    //   176: aload_0
    //   177: iconst_1
    //   178: invokespecial a : (Z)V
    //   181: aload_0
    //   182: monitorexit
    //   183: return
    //   184: aload_0
    //   185: iload_2
    //   186: putfield g : I
    //   189: new java/lang/StringBuilder
    //   192: dup
    //   193: invokespecial <init> : ()V
    //   196: astore #4
    //   198: aload #4
    //   200: ldc_w 'flush:cacheFileSize is:'
    //   203: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: pop
    //   207: aload #4
    //   209: aload_0
    //   210: getfield g : I
    //   213: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   216: pop
    //   217: aload #4
    //   219: ldc_w ', capacity is:'
    //   222: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: pop
    //   226: aload #4
    //   228: ldc 204800
    //   230: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   233: pop
    //   234: aload #4
    //   236: invokevirtual toString : ()Ljava/lang/String;
    //   239: invokestatic a : (Ljava/lang/String;)V
    //   242: aload_1
    //   243: invokestatic q : (Landroid/content/Context;)Ljava/lang/String;
    //   246: astore #4
    //   248: new java/lang/StringBuilder
    //   251: dup
    //   252: invokespecial <init> : ()V
    //   255: astore #5
    //   257: aload #5
    //   259: aload #4
    //   261: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: pop
    //   265: aload #5
    //   267: ldc_w '__local_stat_cache.json'
    //   270: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: pop
    //   274: aload_1
    //   275: aload #5
    //   277: invokevirtual toString : ()Ljava/lang/String;
    //   280: aload_3
    //   281: iconst_0
    //   282: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    //   285: aload_0
    //   286: getfield e : Lorg/json/JSONArray;
    //   289: astore_3
    //   290: aload_3
    //   291: monitorenter
    //   292: aload_0
    //   293: getfield e : Lorg/json/JSONArray;
    //   296: invokevirtual toString : ()Ljava/lang/String;
    //   299: astore #4
    //   301: new java/lang/StringBuilder
    //   304: dup
    //   305: invokespecial <init> : ()V
    //   308: astore #5
    //   310: aload #5
    //   312: ldc_w 'flush wifi data: '
    //   315: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: pop
    //   319: aload #5
    //   321: aload #4
    //   323: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: pop
    //   327: aload #5
    //   329: invokevirtual toString : ()Ljava/lang/String;
    //   332: invokestatic a : (Ljava/lang/String;)V
    //   335: aload_1
    //   336: ldc_w '__local_ap_info_cache.json'
    //   339: aload #4
    //   341: iconst_0
    //   342: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    //   345: aload_3
    //   346: monitorexit
    //   347: aload_0
    //   348: monitorexit
    //   349: return
    //   350: astore_1
    //   351: aload_3
    //   352: monitorexit
    //   353: aload_1
    //   354: athrow
    //   355: astore_1
    //   356: aload_0
    //   357: monitorexit
    //   358: aload_1
    //   359: athrow
    //   360: astore #4
    //   362: goto -> 137
    // Exception table:
    //   from	to	target	type
    //   2	10	355	finally
    //   10	19	360	java/lang/Exception
    //   10	19	355	finally
    //   19	44	129	finally
    //   44	53	360	java/lang/Exception
    //   44	53	355	finally
    //   53	78	121	finally
    //   78	86	360	java/lang/Exception
    //   78	86	355	finally
    //   86	110	113	finally
    //   115	118	113	finally
    //   118	121	360	java/lang/Exception
    //   118	121	355	finally
    //   123	126	121	finally
    //   126	129	360	java/lang/Exception
    //   126	129	355	finally
    //   131	134	129	finally
    //   134	137	360	java/lang/Exception
    //   134	137	355	finally
    //   137	143	355	finally
    //   143	161	355	finally
    //   164	170	355	finally
    //   176	181	355	finally
    //   184	292	355	finally
    //   292	347	350	finally
    //   351	353	350	finally
    //   353	355	355	finally }
  
  public int getCacheFileSzie() { return this.g; }
  
  public void installHeader(Context paramContext) {
    synchronized (a) {
      CooperService.a().getHeadObject().a(paramContext, a);
      return;
    } 
  }
  
  public boolean isPartEmpty() {
    synchronized (this.c) {
      if (this.c.length() == 0)
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public void loadLastSession(Context paramContext) {
    if (paramContext == null)
      return; 
    String str1 = dc.q(paramContext);
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str1);
    stringBuilder.append("__local_last_session.json");
    str1 = stringBuilder.toString();
    if (!cs.c(paramContext, str1))
      return; 
    String str2 = cs.a(paramContext, str1);
    if (TextUtils.isEmpty(str2)) {
      cz.a("loadLastSession(): last_session.json file not found.");
      return;
    } 
    cs.a(paramContext, str1, (new JSONObject()).toString(), false);
    putSession(str2);
    flush(paramContext);
  }
  
  public void loadStatData(Context paramContext) {
    byte b1;
    if (paramContext == null)
      return; 
    String str1 = dc.q(paramContext);
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str1);
    stringBuilder.append("__local_stat_cache.json");
    str1 = stringBuilder.toString();
    if (!cs.c(paramContext, str1))
      return; 
    String str2 = cs.a(paramContext, str1);
    if (str2.equals("")) {
      cz.a("stat_cache file not found.");
      return;
    } 
    cz.a("loadStatData, ");
    try {
      this.g = str2.getBytes().length;
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("load Stat Data:cacheFileSize is:");
      stringBuilder1.append(this.g);
      cz.a(stringBuilder1.toString());
      JSONObject jSONObject = new JSONObject(str2);
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("Load cache:");
      stringBuilder2.append(str2);
      cz.a(stringBuilder2.toString());
      long l = System.currentTimeMillis();
      JSONArray jSONArray = jSONObject.getJSONArray("pr");
      byte b2 = 0;
      for (b1 = 0;; b1++) {
        if (b1 < jSONArray.length()) {
          JSONObject jSONObject1 = jSONArray.getJSONObject(b1);
          if (l - jSONObject1.getLong("s") <= 604800000L)
            putSession(jSONObject1); 
        } else {
          jSONArray = jSONObject.getJSONArray("ev");
          for (b1 = b2;; b1++) {
            if (b1 < jSONArray.length()) {
              JSONObject jSONObject1 = jSONArray.getJSONObject(b1);
              if (l - jSONObject1.getLong("t") <= 604800000L)
                putEvent(paramContext, jSONObject1, true); 
            } else {
              boolean bool = isPartEmpty();
              if (!bool)
                try {
                  jSONObject = jSONObject.getJSONObject("he");
                  synchronized (a) {
                    a = jSONObject;
                    return;
                  } 
                } catch (JSONException paramContext) {
                  cz.a(paramContext);
                  return;
                }  
              return;
            } 
          } 
        } 
      } 
    } catch (JSONException paramContext) {
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("Load stat data error:");
      stringBuilder1.append(paramContext);
      cz.a(stringBuilder1.toString());
      return;
    } 
    b1++;
    continue;
  }
  
  public void loadWifiData(Context paramContext) {
    if (paramContext == null)
      return; 
    if (!cs.c(paramContext, "__local_ap_info_cache.json"))
      return; 
    String str = cs.a(paramContext, "__local_ap_info_cache.json");
    try {
      JSONArray jSONArray = new JSONArray(str);
      int i = jSONArray.length();
      null = jSONArray;
      if (i >= 10) {
        null = new JSONArray();
        for (int j = i - 10; j < i; j++)
          null.put(jSONArray.get(j)); 
      } 
      String str1 = dc.g(1, paramContext);
      if (!TextUtils.isEmpty(str1))
        null.put(str1); 
      synchronized (this.e) {
        this.e = null;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("wifiPart: ");
        stringBuilder.append(this.e.toString());
        cz.a(stringBuilder.toString());
        return;
      } 
    } catch (JSONException paramContext) {
      cz.b(paramContext);
      return;
    } 
  }
  
  public void putEvent(Context paramContext, String paramString1, String paramString2, int paramInt1, long paramLong1, long paramLong2, String paramString3, String paramString4, int paramInt2, boolean paramBoolean, ExtraInfo paramExtraInfo) { throw new RuntimeException("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\r\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\r\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\r\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\r\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\r\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\r\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\r\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\r\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\r\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\r\n"); }
  
  public void putEvent(Context paramContext, JSONObject paramJSONObject, boolean paramBoolean) {
    if (paramJSONObject == null)
      return; 
    if (a(paramJSONObject.toString())) {
      cz.b("data to put exceed limit, will not put");
      return;
    } 
    try {
      int i;
      String str1 = paramJSONObject.getString("i");
      String str2 = paramJSONObject.getString("l");
      long l = paramJSONObject.getLong("t") / 3600000L;
      String str3 = paramJSONObject.optString("s");
      String str4 = paramJSONObject.optString("h");
      String str5 = paramJSONObject.optString("p");
      int j = paramJSONObject.optInt("v");
      paramBoolean = paramJSONObject.optBoolean("at");
      String str6 = paramJSONObject.optString("ext");
      byte b2 = 0;
      try {
        i = paramJSONObject.getInt("d");
      } catch (JSONException jSONException) {
        cz.a("old version data, No duration Tag");
        i = 0;
      } 
      byte b1 = b2;
      b1 = b2;
      if (!TextUtils.isEmpty(str6) && !(new JSONObject()).toString().equals(str6))
        b1 = 1; 
      if (!i && b1 == 0) {
        a(paramJSONObject, str1, str2, str3, l, str4, str5, j, paramBoolean);
        return;
      } 
      synchronized (this.d) {
        i = this.d.length();
        try {
          paramJSONObject.put("s", "0");
          this.d.put(i, paramJSONObject);
        } catch (JSONException paramJSONObject) {
          cz.a(paramJSONObject);
        } 
        return;
      } 
    } catch (JSONException paramContext) {
      cz.a(paramContext);
      return;
    } 
  }
  
  public void putSession(String paramString) {
    if (!TextUtils.isEmpty(paramString)) {
      if (paramString.equals((new JSONObject()).toString()))
        return; 
      try {
        JSONObject jSONObject = new JSONObject(paramString);
        putSession(jSONObject);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Load last session:");
        stringBuilder.append(jSONObject);
        cz.a(stringBuilder.toString());
        return;
      } catch (JSONException paramString) {
        cz.a(paramString);
      } 
    } 
  }
  
  public void putSession(JSONObject paramJSONObject) {
    if (paramJSONObject == null)
      return; 
    if (a(paramJSONObject.toString())) {
      cz.b("data to put exceed limit, will not put");
      return;
    } 
    synchronized (this.c) {
      int i = this.c.length();
      try {
        this.c.put(i, paramJSONObject);
      } catch (JSONException paramJSONObject) {
        cz.a(paramJSONObject);
      } 
      return;
    } 
  }
  
  public void saveLogDataToSend(Context paramContext) {
    cz.a("sendLogData() begin.");
    bu bu = CooperService.a().getHeadObject();
    if (bu != null && TextUtils.isEmpty(bu.f))
      synchronized (a) {
        bu.a(paramContext, a);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("constructHeader() begin.");
        stringBuilder.append(a);
        stringBuilder.append(a.length());
        cz.a(stringBuilder.toString());
        if (TextUtils.isEmpty(bu.f)) {
          cz.c("不能在manifest.xml中找到APP Key||can't find app key in manifest.xml.");
          return;
        } 
      }  
    JSONObject jSONObject = new JSONObject();
    synchronized (a) {
      long l = System.currentTimeMillis();
      try {
        a.put("t", l);
        a.put("ss", ch.a().g());
        synchronized (this.e) {
          a.put("wl2", this.e);
          a.put("sign", CooperService.a().getUUID());
          jSONObject.put("he", a);
          null = this.c;
          /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{org/json/JSONArray}, name=null} */
          try {
            jSONObject.put("pr", this.c);
            JSONArray jSONArray = this.d;
            /* monitor enter ClassFileLocalVariableReferenceExpression{type=ObjectType{org/json/JSONArray}, name=null} */
            try {
              jSONObject.put("ev", this.d);
              try {
                jSONObject.put("ex", new JSONArray());
                String str = jSONObject.toString();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("---Send Data Is:");
                stringBuilder.append(str);
                cz.a(stringBuilder.toString());
                a(paramContext, str);
                a(paramContext);
                return;
              } catch (JSONException paramContext) {
                cz.a(paramContext);
                return;
              } 
            } catch (JSONException paramContext) {
              cz.a(paramContext);
              return;
            } finally {}
            /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{org/json/JSONArray}, name=null} */
            throw paramContext;
          } catch (JSONException paramContext) {
            return;
          } finally {
            paramContext = null;
          } 
          throw paramContext;
        } 
      } catch (Exception paramContext) {
        cz.a(paramContext);
        return;
      } 
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\DataCore.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import android.content.Context;
import android.support.a.a.a;
import java.lang.ref.WeakReference;

class cn implements Runnable {
  private long b;
  
  private WeakReference<Context> c;
  
  private WeakReference<a> d;
  
  private WeakReference<Object> e;
  
  private long f;
  
  private WeakReference<Context> g;
  
  private WeakReference<a> h;
  
  private WeakReference<Object> i;
  
  private int j;
  
  private String k;
  
  private String l;
  
  private boolean m;
  
  private ExtraInfo n;
  
  private cl o;
  
  public cn(ch paramch, long paramLong1, Context paramContext1, a parama1, long paramLong2, Context paramContext2, a parama2, int paramInt, String paramString1, Object paramObject1, Object paramObject2, String paramString2, boolean paramBoolean, ExtraInfo paramExtraInfo, cl paramcl) {
    this.b = paramLong1;
    this.f = paramLong2;
    this.c = new WeakReference(paramContext1);
    this.g = new WeakReference(paramContext2);
    this.d = new WeakReference(parama1);
    this.h = new WeakReference(parama2);
    this.i = new WeakReference(paramObject1);
    this.e = new WeakReference(paramObject2);
    this.j = paramInt;
    this.k = paramString1;
    this.l = paramString2;
    this.m = paramBoolean;
    this.n = paramExtraInfo;
    this.o = paramcl;
  }
  
  public void run() { // Byte code:
    //   0: aload_0
    //   1: getfield j : I
    //   4: iconst_1
    //   5: if_icmpne -> 506
    //   8: aload_0
    //   9: getfield c : Ljava/lang/ref/WeakReference;
    //   12: invokevirtual get : ()Ljava/lang/Object;
    //   15: checkcast android/content/Context
    //   18: astore #6
    //   20: aload_0
    //   21: getfield g : Ljava/lang/ref/WeakReference;
    //   24: invokevirtual get : ()Ljava/lang/Object;
    //   27: checkcast android/content/Context
    //   30: astore #5
    //   32: aload #6
    //   34: ifnull -> 499
    //   37: aload #5
    //   39: ifnonnull -> 45
    //   42: goto -> 499
    //   45: aload #6
    //   47: aload #5
    //   49: if_acmpeq -> 76
    //   52: aload_0
    //   53: getfield k : Ljava/lang/String;
    //   56: ifnull -> 69
    //   59: ldc 'onPageStart() or onPageEnd() install error.'
    //   61: astore #5
    //   63: aload #5
    //   65: invokestatic b : (Ljava/lang/String;)V
    //   68: return
    //   69: ldc 'onPause() or onResume() install error.'
    //   71: astore #5
    //   73: goto -> 63
    //   76: ldc ''
    //   78: astore #7
    //   80: aload_0
    //   81: getfield b : J
    //   84: lstore_1
    //   85: aload_0
    //   86: getfield f : J
    //   89: lstore_3
    //   90: new java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial <init> : ()V
    //   97: astore #8
    //   99: aload_0
    //   100: getfield k : Ljava/lang/String;
    //   103: ifnull -> 213
    //   106: aload #8
    //   108: aload_0
    //   109: getfield k : Ljava/lang/String;
    //   112: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: aload_0
    //   117: getfield o : Lcom/baidu/mobstat/cl;
    //   120: ifnull -> 263
    //   123: aload_0
    //   124: getfield o : Lcom/baidu/mobstat/cl;
    //   127: getfield d : J
    //   130: aload_0
    //   131: getfield o : Lcom/baidu/mobstat/cl;
    //   134: getfield c : J
    //   137: lsub
    //   138: lstore_1
    //   139: new java/lang/StringBuilder
    //   142: dup
    //   143: invokespecial <init> : ()V
    //   146: astore #5
    //   148: aload #5
    //   150: ldc 'page time = '
    //   152: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: pop
    //   156: aload #5
    //   158: aload_0
    //   159: getfield o : Lcom/baidu/mobstat/cl;
    //   162: getfield a : Ljava/lang/String;
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: aload #5
    //   171: ldc '; time = '
    //   173: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: aload #5
    //   179: lload_1
    //   180: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   183: pop
    //   184: aload #5
    //   186: invokevirtual toString : ()Ljava/lang/String;
    //   189: invokestatic c : (Ljava/lang/String;)V
    //   192: lload_1
    //   193: ldc2_w 20
    //   196: lcmp
    //   197: ifge -> 210
    //   200: ldc 'page time little than 20 mills.'
    //   202: astore #5
    //   204: aload #5
    //   206: invokestatic c : (Ljava/lang/String;)V
    //   209: return
    //   210: goto -> 267
    //   213: aload #6
    //   215: instanceof android/app/Activity
    //   218: ifne -> 228
    //   221: ldc 'onPause, pause is not a Activity'
    //   223: astore #5
    //   225: goto -> 204
    //   228: aload #8
    //   230: aload #6
    //   232: checkcast android/app/Activity
    //   235: invokevirtual getComponentName : ()Landroid/content/ComponentName;
    //   238: invokevirtual getShortClassName : ()Ljava/lang/String;
    //   241: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: pop
    //   245: aload #8
    //   247: iconst_0
    //   248: invokevirtual charAt : (I)C
    //   251: bipush #46
    //   253: if_icmpne -> 263
    //   256: aload #8
    //   258: iconst_0
    //   259: invokevirtual deleteCharAt : (I)Ljava/lang/StringBuilder;
    //   262: pop
    //   263: lload_1
    //   264: lload_3
    //   265: lsub
    //   266: lstore_1
    //   267: aload #7
    //   269: astore #5
    //   271: aload #6
    //   273: instanceof android/app/Activity
    //   276: ifeq -> 307
    //   279: aload #6
    //   281: checkcast android/app/Activity
    //   284: invokevirtual getTitle : ()Ljava/lang/CharSequence;
    //   287: astore #9
    //   289: aload #7
    //   291: astore #5
    //   293: aload #9
    //   295: ifnull -> 307
    //   298: aload #9
    //   300: invokeinterface toString : ()Ljava/lang/String;
    //   305: astore #5
    //   307: new java/lang/StringBuilder
    //   310: dup
    //   311: invokespecial <init> : ()V
    //   314: astore #7
    //   316: aload #7
    //   318: ldc 'new page view, page name = '
    //   320: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: pop
    //   324: aload #7
    //   326: aload #8
    //   328: invokevirtual toString : ()Ljava/lang/String;
    //   331: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: pop
    //   335: aload #7
    //   337: ldc ', stay time = '
    //   339: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: pop
    //   343: aload #7
    //   345: lload_1
    //   346: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   349: pop
    //   350: aload #7
    //   352: ldc '(ms)'
    //   354: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   357: pop
    //   358: aload #7
    //   360: invokevirtual toString : ()Ljava/lang/String;
    //   363: invokestatic a : (Ljava/lang/String;)V
    //   366: aload #8
    //   368: invokevirtual toString : ()Ljava/lang/String;
    //   371: astore #7
    //   373: aload_0
    //   374: getfield k : Ljava/lang/String;
    //   377: ifnonnull -> 386
    //   380: aload_0
    //   381: aload #7
    //   383: putfield l : Ljava/lang/String;
    //   386: new com/baidu/mobstat/cg
    //   389: dup
    //   390: aload #7
    //   392: aload #5
    //   394: aload_0
    //   395: getfield l : Ljava/lang/String;
    //   398: lload_1
    //   399: aload_0
    //   400: getfield f : J
    //   403: aload_0
    //   404: getfield m : Z
    //   407: aload_0
    //   408: getfield n : Lcom/baidu/mobstat/ExtraInfo;
    //   411: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V
    //   414: astore #5
    //   416: aload_0
    //   417: getfield a : Lcom/baidu/mobstat/ch;
    //   420: invokestatic a : (Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    //   423: aload #5
    //   425: invokevirtual a : (Lcom/baidu/mobstat/cg;)V
    //   428: aload_0
    //   429: getfield k : Ljava/lang/String;
    //   432: ifnull -> 462
    //   435: aload_0
    //   436: getfield o : Lcom/baidu/mobstat/cl;
    //   439: ifnull -> 1023
    //   442: aload_0
    //   443: getfield a : Lcom/baidu/mobstat/ch;
    //   446: invokestatic a : (Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    //   449: astore #5
    //   451: aload_0
    //   452: getfield o : Lcom/baidu/mobstat/cl;
    //   455: getfield d : J
    //   458: lstore_1
    //   459: goto -> 476
    //   462: aload_0
    //   463: getfield a : Lcom/baidu/mobstat/ch;
    //   466: invokestatic a : (Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    //   469: astore #5
    //   471: aload_0
    //   472: getfield b : J
    //   475: lstore_1
    //   476: aload #5
    //   478: lload_1
    //   479: invokevirtual d : (J)V
    //   482: aload_0
    //   483: getfield a : Lcom/baidu/mobstat/ch;
    //   486: astore #7
    //   488: aload #6
    //   490: astore #5
    //   492: aload #7
    //   494: astore #6
    //   496: goto -> 755
    //   499: ldc 'onPause, WeakReference is already been released'
    //   501: astore #5
    //   503: goto -> 204
    //   506: aload_0
    //   507: getfield j : I
    //   510: iconst_2
    //   511: if_icmpne -> 763
    //   514: aload_0
    //   515: getfield d : Ljava/lang/ref/WeakReference;
    //   518: invokevirtual get : ()Ljava/lang/Object;
    //   521: checkcast android/support/a/a/a
    //   524: astore #7
    //   526: aload_0
    //   527: getfield h : Ljava/lang/ref/WeakReference;
    //   530: invokevirtual get : ()Ljava/lang/Object;
    //   533: checkcast android/support/a/a/a
    //   536: astore #5
    //   538: aload #7
    //   540: ifnull -> 499
    //   543: aload #5
    //   545: ifnonnull -> 551
    //   548: goto -> 499
    //   551: aload #7
    //   553: aload #5
    //   555: if_acmpeq -> 565
    //   558: ldc 'onPause() or onResume() install error.'
    //   560: astore #5
    //   562: goto -> 204
    //   565: ldc ''
    //   567: astore #5
    //   569: aload #7
    //   571: invokevirtual getActivity : ()Landroid/support/v4/app/FragmentActivity;
    //   574: astore #6
    //   576: aload #6
    //   578: ifnull -> 593
    //   581: aload #6
    //   583: invokevirtual getTitle : ()Ljava/lang/CharSequence;
    //   586: invokeinterface toString : ()Ljava/lang/String;
    //   591: astore #5
    //   593: aload_0
    //   594: getfield b : J
    //   597: aload_0
    //   598: getfield f : J
    //   601: lsub
    //   602: lstore_1
    //   603: aload #7
    //   605: invokevirtual getClass : ()Ljava/lang/Class;
    //   608: invokevirtual getName : ()Ljava/lang/String;
    //   611: astore #6
    //   613: aload #6
    //   615: aload #6
    //   617: ldc '.'
    //   619: invokevirtual lastIndexOf : (Ljava/lang/String;)I
    //   622: iconst_1
    //   623: iadd
    //   624: invokevirtual substring : (I)Ljava/lang/String;
    //   627: astore #8
    //   629: new java/lang/StringBuilder
    //   632: dup
    //   633: invokespecial <init> : ()V
    //   636: astore #9
    //   638: aload #9
    //   640: ldc 'Fragment new page view, page name = '
    //   642: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   645: pop
    //   646: aload #9
    //   648: aload #6
    //   650: invokevirtual toString : ()Ljava/lang/String;
    //   653: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   656: pop
    //   657: aload #9
    //   659: ldc ', stay time = '
    //   661: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: pop
    //   665: aload #9
    //   667: lload_1
    //   668: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   671: pop
    //   672: aload #9
    //   674: ldc '(ms)'
    //   676: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   679: pop
    //   680: aload #9
    //   682: invokevirtual toString : ()Ljava/lang/String;
    //   685: invokestatic a : (Ljava/lang/String;)V
    //   688: new com/baidu/mobstat/cg
    //   691: dup
    //   692: aload #8
    //   694: aload #5
    //   696: aload #8
    //   698: lload_1
    //   699: aload_0
    //   700: getfield f : J
    //   703: aload_0
    //   704: getfield m : Z
    //   707: aload_0
    //   708: getfield n : Lcom/baidu/mobstat/ExtraInfo;
    //   711: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V
    //   714: astore #5
    //   716: aload_0
    //   717: getfield a : Lcom/baidu/mobstat/ch;
    //   720: invokestatic a : (Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    //   723: aload #5
    //   725: invokevirtual a : (Lcom/baidu/mobstat/cg;)V
    //   728: aload_0
    //   729: getfield a : Lcom/baidu/mobstat/ch;
    //   732: invokestatic a : (Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    //   735: aload_0
    //   736: getfield b : J
    //   739: invokevirtual d : (J)V
    //   742: aload_0
    //   743: getfield a : Lcom/baidu/mobstat/ch;
    //   746: astore #6
    //   748: aload #7
    //   750: invokevirtual getActivity : ()Landroid/support/v4/app/FragmentActivity;
    //   753: astore #5
    //   755: aload #6
    //   757: aload #5
    //   759: invokestatic a : (Lcom/baidu/mobstat/ch;Landroid/content/Context;)V
    //   762: return
    //   763: aload_0
    //   764: getfield j : I
    //   767: iconst_3
    //   768: if_icmpne -> 1023
    //   771: aload_0
    //   772: getfield e : Ljava/lang/ref/WeakReference;
    //   775: invokevirtual get : ()Ljava/lang/Object;
    //   778: checkcast android/app/Fragment
    //   781: astore #6
    //   783: aload_0
    //   784: getfield i : Ljava/lang/ref/WeakReference;
    //   787: invokevirtual get : ()Ljava/lang/Object;
    //   790: checkcast android/app/Fragment
    //   793: astore #5
    //   795: aload #6
    //   797: ifnull -> 499
    //   800: aload #5
    //   802: ifnonnull -> 808
    //   805: goto -> 499
    //   808: aload #6
    //   810: aload #5
    //   812: if_acmpeq -> 818
    //   815: goto -> 558
    //   818: ldc ''
    //   820: astore #5
    //   822: aload #6
    //   824: invokevirtual getActivity : ()Landroid/app/Activity;
    //   827: astore #7
    //   829: aload #7
    //   831: ifnull -> 846
    //   834: aload #7
    //   836: invokevirtual getTitle : ()Ljava/lang/CharSequence;
    //   839: invokeinterface toString : ()Ljava/lang/String;
    //   844: astore #5
    //   846: aload_0
    //   847: getfield b : J
    //   850: aload_0
    //   851: getfield f : J
    //   854: lsub
    //   855: lstore_1
    //   856: aload #6
    //   858: invokestatic a : (Ljava/lang/Object;)Landroid/content/Context;
    //   861: astore #7
    //   863: aload #7
    //   865: ifnonnull -> 875
    //   868: ldc 'getContxtFromReverse faild.'
    //   870: astore #5
    //   872: goto -> 204
    //   875: aload #6
    //   877: invokevirtual getClass : ()Ljava/lang/Class;
    //   880: invokevirtual getName : ()Ljava/lang/String;
    //   883: astore #6
    //   885: aload #6
    //   887: aload #6
    //   889: ldc '.'
    //   891: invokevirtual lastIndexOf : (Ljava/lang/String;)I
    //   894: iconst_1
    //   895: iadd
    //   896: invokevirtual substring : (I)Ljava/lang/String;
    //   899: astore #8
    //   901: new java/lang/StringBuilder
    //   904: dup
    //   905: invokespecial <init> : ()V
    //   908: astore #9
    //   910: aload #9
    //   912: ldc 'android.app.Fragment new page view, page name = '
    //   914: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   917: pop
    //   918: aload #9
    //   920: aload #6
    //   922: invokevirtual toString : ()Ljava/lang/String;
    //   925: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   928: pop
    //   929: aload #9
    //   931: ldc '; stay time = '
    //   933: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   936: pop
    //   937: aload #9
    //   939: lload_1
    //   940: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   943: pop
    //   944: aload #9
    //   946: ldc '(ms)'
    //   948: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   951: pop
    //   952: aload #9
    //   954: invokevirtual toString : ()Ljava/lang/String;
    //   957: invokestatic a : (Ljava/lang/String;)V
    //   960: new com/baidu/mobstat/cg
    //   963: dup
    //   964: aload #8
    //   966: aload #5
    //   968: aload #8
    //   970: lload_1
    //   971: aload_0
    //   972: getfield f : J
    //   975: aload_0
    //   976: getfield m : Z
    //   979: aload_0
    //   980: getfield n : Lcom/baidu/mobstat/ExtraInfo;
    //   983: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V
    //   986: astore #5
    //   988: aload_0
    //   989: getfield a : Lcom/baidu/mobstat/ch;
    //   992: invokestatic a : (Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    //   995: aload #5
    //   997: invokevirtual a : (Lcom/baidu/mobstat/cg;)V
    //   1000: aload_0
    //   1001: getfield a : Lcom/baidu/mobstat/ch;
    //   1004: invokestatic a : (Lcom/baidu/mobstat/ch;)Lcom/baidu/mobstat/cf;
    //   1007: aload_0
    //   1008: getfield b : J
    //   1011: invokevirtual d : (J)V
    //   1014: aload_0
    //   1015: getfield a : Lcom/baidu/mobstat/ch;
    //   1018: aload #7
    //   1020: invokestatic a : (Lcom/baidu/mobstat/ch;Landroid/content/Context;)V
    //   1023: return }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
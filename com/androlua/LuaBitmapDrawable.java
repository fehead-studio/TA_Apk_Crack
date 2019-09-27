package com.androlua;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Movie;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.a.a.a.a.a.a.a;
import com.androlua.util.AsyncTaskX;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class LuaBitmapDrawable extends Drawable implements LuaGcable, Runnable {
  public static final int CENTER = 5;
  
  public static final int CENTER_CROP = 6;
  
  public static final int CENTER_INSIDE = 7;
  
  public static final int FIT_CENTER = 3;
  
  public static final int FIT_END = 4;
  
  public static final int FIT_START = 2;
  
  public static final int FIT_XY = 1;
  
  public static final int MATRIX = 0;
  
  private static long q = 604800000L;
  
  private LuaContext a;
  
  private int b;
  
  private long c;
  
  private int d;
  
  private Movie e;
  
  private LoadingDrawable f;
  
  private Drawable g;
  
  private NineBitmapDrawable h;
  
  private ColorFilter i;
  
  private int j;
  
  private int k = 1;
  
  private GifDecoder l;
  
  private GifDecoder m;
  
  private GifDecoder.GifFrame n;
  
  private int o;
  
  private boolean p;
  
  static  {
  
  }
  
  public LuaBitmapDrawable(LuaContext paramLuaContext, String paramString) {
    this.a = paramLuaContext;
    this.f = new LoadingDrawable(paramLuaContext.getContext());
    if (paramString.toLowerCase().startsWith("http://") || paramString.toLowerCase().startsWith("https://")) {
      a(paramLuaContext, paramString);
      return;
    } 
    String str = paramString;
    if (!paramString.startsWith("/"))
      str = paramLuaContext.getLuaPath(paramString); 
    a(str);
  }
  
  public LuaBitmapDrawable(LuaContext paramLuaContext, String paramString, Drawable paramDrawable) {
    this(paramLuaContext, paramString);
    this.g = paramDrawable;
  }
  
  private void a(LuaContext paramLuaContext, String paramString) { (new AsyncTaskX<String, String, String>(this, paramLuaContext, paramString) {
        protected String a(String... param1VarArgs) {
          try {
            return LuaBitmapDrawable.getHttpBitmap(this.a, this.b);
          } catch (Exception param1VarArgs) {
            a.a(param1VarArgs);
            return "";
          } 
        }
        
        protected void a(String param1String) { LuaBitmapDrawable.a(this.c, param1String); }
      }).execute(new String[0]); }
  
  private void a(String paramString) {
    try {
      this.l = new GifDecoder(new FileInputStream(paramString), new GifDecoder.GifAction(this, paramString) {
            public void parseOk(boolean param1Boolean, int param1Int) {
              if (!param1Boolean && param1Int < 0) {
                LuaBitmapDrawable.b(this.b, this.a);
                return;
              } 
              if (param1Boolean && LuaBitmapDrawable.a(this.b) == null && LuaBitmapDrawable.b(this.b).getFrameCount() > 1)
                LuaBitmapDrawable.a(this.b, LuaBitmapDrawable.b(this.b)); 
            }
          });
      this.l.start();
      return;
    } catch (Exception exception) {
      a.a(exception);
      b(paramString);
      return;
    } 
  }
  
  private void b(String paramString) {
    if (paramString.isEmpty()) {
      (new Handler()).postDelayed(new Runnable(this) {
            public void run() { LuaBitmapDrawable.c(this.a).setState(-1); }
          },  1000L);
      invalidateSelf();
      return;
    } 
    if (this.e != null) {
      this.b = this.e.duration();
      if (this.b == 0)
        this.b = 1000; 
    } else {
      try {
        this.h = new NineBitmapDrawable(paramString);
      } catch (Exception exception) {
        try {
          this.g = new BitmapDrawable(LuaBitmap.getLocalBitmap(this.a, paramString));
        } catch (Exception paramString) {
          a.a(paramString);
        } 
      } 
    } 
    if (this.e == null && this.g == null && this.h == null)
      (new Handler()).postDelayed(new Runnable(this) {
            public void run() { LuaBitmapDrawable.c(this.a).setState(-1); }
          },  1000L); 
    invalidateSelf();
  }
  
  public static long getCacheTime() { return q; }
  
  public static String getHttpBitmap(LuaContext paramLuaContext, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramLuaContext.getLuaExtDir("cache"));
    stringBuilder.append("/");
    stringBuilder.append(paramString.hashCode());
    String str = stringBuilder.toString();
    File file = new File(str);
    if (file.exists() && System.currentTimeMillis() - file.lastModified() < q)
      return str; 
    (new File(str)).delete();
    HttpURLConnection httpURLConnection = (HttpURLConnection)(new URL(paramString)).openConnection();
    httpURLConnection.setConnectTimeout(120000);
    httpURLConnection.setDoInput(true);
    httpURLConnection.connect();
    InputStream inputStream = httpURLConnection.getInputStream();
    FileOutputStream fileOutputStream = new FileOutputStream(str);
    if (!LuaUtil.copyFile(inputStream, fileOutputStream)) {
      fileOutputStream.close();
      inputStream.close();
      (new File(str)).delete();
      throw new RuntimeException("LoadHttpBitmap Error.");
    } 
    fileOutputStream.close();
    inputStream.close();
    return str;
  }
  
  public static void setCacheTime(long paramLong) { q = paramLong; }
  
  public void draw(Canvas paramCanvas) { // Byte code:
    //   0: aload_1
    //   1: aload_0
    //   2: getfield j : I
    //   5: invokevirtual drawColor : (I)V
    //   8: aload_0
    //   9: getfield m : Lcom/androlua/GifDecoder;
    //   12: ifnull -> 459
    //   15: invokestatic currentTimeMillis : ()J
    //   18: lstore #11
    //   20: aload_0
    //   21: getfield c : J
    //   24: lconst_0
    //   25: lcmp
    //   26: ifeq -> 94
    //   29: aload_0
    //   30: getfield n : Lcom/androlua/GifDecoder$GifFrame;
    //   33: ifnonnull -> 39
    //   36: goto -> 94
    //   39: lload #11
    //   41: aload_0
    //   42: getfield c : J
    //   45: lsub
    //   46: aload_0
    //   47: getfield o : I
    //   50: i2l
    //   51: lcmp
    //   52: ifle -> 122
    //   55: aload_0
    //   56: aload_0
    //   57: getfield m : Lcom/androlua/GifDecoder;
    //   60: invokevirtual next : ()Lcom/androlua/GifDecoder$GifFrame;
    //   63: putfield n : Lcom/androlua/GifDecoder$GifFrame;
    //   66: aload_0
    //   67: aload_0
    //   68: getfield n : Lcom/androlua/GifDecoder$GifFrame;
    //   71: getfield delay : I
    //   74: putfield o : I
    //   77: aload_0
    //   78: aload_0
    //   79: getfield c : J
    //   82: aload_0
    //   83: getfield o : I
    //   86: i2l
    //   87: ladd
    //   88: putfield c : J
    //   91: goto -> 39
    //   94: aload_0
    //   95: aload_0
    //   96: getfield m : Lcom/androlua/GifDecoder;
    //   99: invokevirtual next : ()Lcom/androlua/GifDecoder$GifFrame;
    //   102: putfield n : Lcom/androlua/GifDecoder$GifFrame;
    //   105: aload_0
    //   106: aload_0
    //   107: getfield n : Lcom/androlua/GifDecoder$GifFrame;
    //   110: getfield delay : I
    //   113: putfield o : I
    //   116: aload_0
    //   117: lload #11
    //   119: putfield c : J
    //   122: aload_0
    //   123: getfield n : Lcom/androlua/GifDecoder$GifFrame;
    //   126: ifnull -> 454
    //   129: aload_0
    //   130: invokevirtual getBounds : ()Landroid/graphics/Rect;
    //   133: astore #13
    //   135: new android/graphics/drawable/BitmapDrawable
    //   138: dup
    //   139: aload_0
    //   140: getfield n : Lcom/androlua/GifDecoder$GifFrame;
    //   143: getfield image : Landroid/graphics/Bitmap;
    //   146: invokespecial <init> : (Landroid/graphics/Bitmap;)V
    //   149: astore #14
    //   151: aload #14
    //   153: invokevirtual getIntrinsicWidth : ()I
    //   156: istore #7
    //   158: aload #14
    //   160: invokevirtual getIntrinsicHeight : ()I
    //   163: istore #10
    //   165: aload_0
    //   166: getfield k : I
    //   169: iconst_1
    //   170: if_icmpne -> 243
    //   173: aload #13
    //   175: getfield right : I
    //   178: aload #13
    //   180: getfield left : I
    //   183: isub
    //   184: i2f
    //   185: fstore_3
    //   186: iload #7
    //   188: i2f
    //   189: fstore_2
    //   190: fload_3
    //   191: fload_2
    //   192: fdiv
    //   193: fstore_3
    //   194: aload #13
    //   196: getfield bottom : I
    //   199: aload #13
    //   201: getfield top : I
    //   204: isub
    //   205: i2f
    //   206: fstore #5
    //   208: iload #10
    //   210: i2f
    //   211: fstore #4
    //   213: fload #5
    //   215: fload #4
    //   217: fdiv
    //   218: fstore #5
    //   220: fload_2
    //   221: fload_3
    //   222: fmul
    //   223: f2i
    //   224: istore #7
    //   226: fload #4
    //   228: fload #5
    //   230: fmul
    //   231: fstore_2
    //   232: fload_2
    //   233: f2i
    //   234: istore #9
    //   236: iload #7
    //   238: istore #8
    //   240: goto -> 324
    //   243: iload #7
    //   245: istore #8
    //   247: iload #10
    //   249: istore #9
    //   251: aload_0
    //   252: getfield k : I
    //   255: ifeq -> 324
    //   258: aload #13
    //   260: getfield bottom : I
    //   263: aload #13
    //   265: getfield top : I
    //   268: isub
    //   269: i2f
    //   270: fstore_3
    //   271: iload #10
    //   273: i2f
    //   274: fstore_2
    //   275: fload_3
    //   276: fload_2
    //   277: fdiv
    //   278: fstore #4
    //   280: aload #13
    //   282: getfield right : I
    //   285: aload #13
    //   287: getfield left : I
    //   290: isub
    //   291: i2f
    //   292: fstore #5
    //   294: iload #7
    //   296: i2f
    //   297: fstore_3
    //   298: fload #4
    //   300: fload #5
    //   302: fload_3
    //   303: fdiv
    //   304: invokestatic min : (FF)F
    //   307: fstore #4
    //   309: fload_3
    //   310: fload #4
    //   312: fmul
    //   313: f2i
    //   314: istore #7
    //   316: fload_2
    //   317: fload #4
    //   319: fmul
    //   320: fstore_2
    //   321: goto -> 232
    //   324: aload #13
    //   326: getfield left : I
    //   329: istore #10
    //   331: aload #13
    //   333: getfield top : I
    //   336: istore #7
    //   338: aload_0
    //   339: getfield k : I
    //   342: tableswitch default -> 364, 3 -> 386, 4 -> 367
    //   364: goto -> 422
    //   367: aload #13
    //   369: getfield bottom : I
    //   372: aload #13
    //   374: getfield top : I
    //   377: isub
    //   378: iload #9
    //   380: isub
    //   381: istore #7
    //   383: goto -> 422
    //   386: aload #13
    //   388: getfield right : I
    //   391: aload #13
    //   393: getfield left : I
    //   396: isub
    //   397: iload #8
    //   399: isub
    //   400: iconst_2
    //   401: idiv
    //   402: istore #10
    //   404: aload #13
    //   406: getfield bottom : I
    //   409: aload #13
    //   411: getfield top : I
    //   414: isub
    //   415: iload #9
    //   417: isub
    //   418: iconst_2
    //   419: idiv
    //   420: istore #7
    //   422: aload #14
    //   424: new android/graphics/Rect
    //   427: dup
    //   428: iload #10
    //   430: iload #7
    //   432: iload #8
    //   434: iload #10
    //   436: iadd
    //   437: iload #9
    //   439: iload #7
    //   441: iadd
    //   442: invokespecial <init> : (IIII)V
    //   445: invokevirtual setBounds : (Landroid/graphics/Rect;)V
    //   448: aload #14
    //   450: aload_1
    //   451: invokevirtual draw : (Landroid/graphics/Canvas;)V
    //   454: aload_0
    //   455: invokevirtual invalidateSelf : ()V
    //   458: return
    //   459: aload_0
    //   460: getfield e : Landroid/graphics/Movie;
    //   463: ifnull -> 879
    //   466: invokestatic currentTimeMillis : ()J
    //   469: lstore #11
    //   471: aload_0
    //   472: getfield c : J
    //   475: lconst_0
    //   476: lcmp
    //   477: ifne -> 486
    //   480: aload_0
    //   481: lload #11
    //   483: putfield c : J
    //   486: aload_0
    //   487: lload #11
    //   489: aload_0
    //   490: getfield c : J
    //   493: lsub
    //   494: aload_0
    //   495: getfield b : I
    //   498: i2l
    //   499: lrem
    //   500: l2i
    //   501: putfield d : I
    //   504: aload_0
    //   505: getfield e : Landroid/graphics/Movie;
    //   508: aload_0
    //   509: getfield d : I
    //   512: invokevirtual setTime : (I)Z
    //   515: pop
    //   516: aload_0
    //   517: invokevirtual getBounds : ()Landroid/graphics/Rect;
    //   520: astore #13
    //   522: aload_1
    //   523: invokevirtual save : ()I
    //   526: pop
    //   527: aload_0
    //   528: getfield e : Landroid/graphics/Movie;
    //   531: invokevirtual width : ()I
    //   534: istore #9
    //   536: aload_0
    //   537: getfield e : Landroid/graphics/Movie;
    //   540: invokevirtual height : ()I
    //   543: istore #10
    //   545: fconst_1
    //   546: fstore_2
    //   547: aload_0
    //   548: getfield k : I
    //   551: iconst_1
    //   552: if_icmpne -> 633
    //   555: aload #13
    //   557: getfield right : I
    //   560: aload #13
    //   562: getfield left : I
    //   565: isub
    //   566: i2f
    //   567: fstore #4
    //   569: iload #9
    //   571: i2f
    //   572: fstore_3
    //   573: fload #4
    //   575: fload_3
    //   576: fdiv
    //   577: fstore #4
    //   579: aload #13
    //   581: getfield bottom : I
    //   584: aload #13
    //   586: getfield top : I
    //   589: isub
    //   590: i2f
    //   591: fstore #6
    //   593: iload #10
    //   595: i2f
    //   596: fstore #5
    //   598: fload #6
    //   600: fload #5
    //   602: fdiv
    //   603: fstore #6
    //   605: aload_1
    //   606: fload #4
    //   608: fload #6
    //   610: invokevirtual scale : (FF)V
    //   613: fload_3
    //   614: fload #4
    //   616: fmul
    //   617: f2i
    //   618: istore #7
    //   620: fload #5
    //   622: fload #6
    //   624: fmul
    //   625: fstore_3
    //   626: fload_3
    //   627: f2i
    //   628: istore #8
    //   630: goto -> 718
    //   633: iload #9
    //   635: istore #7
    //   637: iload #10
    //   639: istore #8
    //   641: aload_0
    //   642: getfield k : I
    //   645: ifeq -> 718
    //   648: aload #13
    //   650: getfield bottom : I
    //   653: aload #13
    //   655: getfield top : I
    //   658: isub
    //   659: i2f
    //   660: fstore_2
    //   661: iload #10
    //   663: i2f
    //   664: fstore_3
    //   665: fload_2
    //   666: fload_3
    //   667: fdiv
    //   668: fstore_2
    //   669: aload #13
    //   671: getfield right : I
    //   674: aload #13
    //   676: getfield left : I
    //   679: isub
    //   680: i2f
    //   681: fstore #5
    //   683: iload #9
    //   685: i2f
    //   686: fstore #4
    //   688: fload_2
    //   689: fload #5
    //   691: fload #4
    //   693: fdiv
    //   694: invokestatic min : (FF)F
    //   697: fstore_2
    //   698: aload_1
    //   699: fload_2
    //   700: fload_2
    //   701: invokevirtual scale : (FF)V
    //   704: fload #4
    //   706: fload_2
    //   707: fmul
    //   708: f2i
    //   709: istore #7
    //   711: fload_3
    //   712: fload_2
    //   713: fmul
    //   714: fstore_3
    //   715: goto -> 626
    //   718: aload #13
    //   720: getfield left : I
    //   723: istore #9
    //   725: aload #13
    //   727: getfield top : I
    //   730: istore #10
    //   732: aload_0
    //   733: getfield k : I
    //   736: tableswitch default -> 760, 3 -> 799, 4 -> 771
    //   760: iload #9
    //   762: istore #8
    //   764: iload #10
    //   766: istore #7
    //   768: goto -> 851
    //   771: aload #13
    //   773: getfield bottom : I
    //   776: aload #13
    //   778: getfield top : I
    //   781: isub
    //   782: i2f
    //   783: iload #8
    //   785: i2f
    //   786: fload_2
    //   787: fdiv
    //   788: fsub
    //   789: f2i
    //   790: istore #7
    //   792: iload #9
    //   794: istore #8
    //   796: goto -> 851
    //   799: aload #13
    //   801: getfield right : I
    //   804: aload #13
    //   806: getfield left : I
    //   809: isub
    //   810: iload #7
    //   812: isub
    //   813: i2f
    //   814: fload_2
    //   815: fdiv
    //   816: fconst_2
    //   817: fdiv
    //   818: f2i
    //   819: istore #7
    //   821: aload #13
    //   823: getfield bottom : I
    //   826: aload #13
    //   828: getfield top : I
    //   831: isub
    //   832: iload #8
    //   834: isub
    //   835: i2f
    //   836: fload_2
    //   837: fdiv
    //   838: fconst_2
    //   839: fdiv
    //   840: f2i
    //   841: istore #9
    //   843: iload #7
    //   845: istore #8
    //   847: iload #9
    //   849: istore #7
    //   851: aload_0
    //   852: getfield e : Landroid/graphics/Movie;
    //   855: aload_1
    //   856: iload #8
    //   858: i2f
    //   859: iload #7
    //   861: i2f
    //   862: new android/graphics/Paint
    //   865: dup
    //   866: invokespecial <init> : ()V
    //   869: invokevirtual draw : (Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    //   872: aload_1
    //   873: invokevirtual restore : ()V
    //   876: goto -> 454
    //   879: aload_0
    //   880: getfield g : Landroid/graphics/drawable/Drawable;
    //   883: ifnull -> 1203
    //   886: aload_0
    //   887: invokevirtual getBounds : ()Landroid/graphics/Rect;
    //   890: astore #13
    //   892: aload_0
    //   893: getfield g : Landroid/graphics/drawable/Drawable;
    //   896: invokevirtual getIntrinsicWidth : ()I
    //   899: istore #7
    //   901: aload_0
    //   902: getfield g : Landroid/graphics/drawable/Drawable;
    //   905: invokevirtual getIntrinsicHeight : ()I
    //   908: istore #10
    //   910: aload_0
    //   911: getfield k : I
    //   914: iconst_1
    //   915: if_icmpne -> 988
    //   918: aload #13
    //   920: getfield right : I
    //   923: aload #13
    //   925: getfield left : I
    //   928: isub
    //   929: i2f
    //   930: fstore_3
    //   931: iload #7
    //   933: i2f
    //   934: fstore_2
    //   935: fload_3
    //   936: fload_2
    //   937: fdiv
    //   938: fstore_3
    //   939: aload #13
    //   941: getfield bottom : I
    //   944: aload #13
    //   946: getfield top : I
    //   949: isub
    //   950: i2f
    //   951: fstore #5
    //   953: iload #10
    //   955: i2f
    //   956: fstore #4
    //   958: fload #5
    //   960: fload #4
    //   962: fdiv
    //   963: fstore #5
    //   965: fload_2
    //   966: fload_3
    //   967: fmul
    //   968: f2i
    //   969: istore #7
    //   971: fload #4
    //   973: fload #5
    //   975: fmul
    //   976: fstore_2
    //   977: fload_2
    //   978: f2i
    //   979: istore #9
    //   981: iload #7
    //   983: istore #8
    //   985: goto -> 1069
    //   988: iload #7
    //   990: istore #8
    //   992: iload #10
    //   994: istore #9
    //   996: aload_0
    //   997: getfield k : I
    //   1000: ifeq -> 1069
    //   1003: aload #13
    //   1005: getfield bottom : I
    //   1008: aload #13
    //   1010: getfield top : I
    //   1013: isub
    //   1014: i2f
    //   1015: fstore_3
    //   1016: iload #10
    //   1018: i2f
    //   1019: fstore_2
    //   1020: fload_3
    //   1021: fload_2
    //   1022: fdiv
    //   1023: fstore #4
    //   1025: aload #13
    //   1027: getfield right : I
    //   1030: aload #13
    //   1032: getfield left : I
    //   1035: isub
    //   1036: i2f
    //   1037: fstore #5
    //   1039: iload #7
    //   1041: i2f
    //   1042: fstore_3
    //   1043: fload #4
    //   1045: fload #5
    //   1047: fload_3
    //   1048: fdiv
    //   1049: invokestatic min : (FF)F
    //   1052: fstore #4
    //   1054: fload_3
    //   1055: fload #4
    //   1057: fmul
    //   1058: f2i
    //   1059: istore #7
    //   1061: fload_2
    //   1062: fload #4
    //   1064: fmul
    //   1065: fstore_2
    //   1066: goto -> 977
    //   1069: aload #13
    //   1071: getfield left : I
    //   1074: istore #10
    //   1076: aload #13
    //   1078: getfield top : I
    //   1081: istore #7
    //   1083: aload_0
    //   1084: getfield k : I
    //   1087: tableswitch default -> 1108, 3 -> 1130, 4 -> 1111
    //   1108: goto -> 1166
    //   1111: aload #13
    //   1113: getfield bottom : I
    //   1116: aload #13
    //   1118: getfield top : I
    //   1121: isub
    //   1122: iload #9
    //   1124: isub
    //   1125: istore #7
    //   1127: goto -> 1166
    //   1130: aload #13
    //   1132: getfield right : I
    //   1135: aload #13
    //   1137: getfield left : I
    //   1140: isub
    //   1141: iload #8
    //   1143: isub
    //   1144: iconst_2
    //   1145: idiv
    //   1146: istore #10
    //   1148: aload #13
    //   1150: getfield bottom : I
    //   1153: aload #13
    //   1155: getfield top : I
    //   1158: isub
    //   1159: iload #9
    //   1161: isub
    //   1162: iconst_2
    //   1163: idiv
    //   1164: istore #7
    //   1166: aload_0
    //   1167: getfield g : Landroid/graphics/drawable/Drawable;
    //   1170: new android/graphics/Rect
    //   1173: dup
    //   1174: iload #10
    //   1176: iload #7
    //   1178: iload #8
    //   1180: iload #10
    //   1182: iadd
    //   1183: iload #9
    //   1185: iload #7
    //   1187: iadd
    //   1188: invokespecial <init> : (IIII)V
    //   1191: invokevirtual setBounds : (Landroid/graphics/Rect;)V
    //   1194: aload_0
    //   1195: getfield g : Landroid/graphics/drawable/Drawable;
    //   1198: aload_1
    //   1199: invokevirtual draw : (Landroid/graphics/Canvas;)V
    //   1202: return
    //   1203: aload_0
    //   1204: getfield h : Lcom/androlua/NineBitmapDrawable;
    //   1207: ifnull -> 1230
    //   1210: aload_0
    //   1211: getfield h : Lcom/androlua/NineBitmapDrawable;
    //   1214: aload_0
    //   1215: invokevirtual getBounds : ()Landroid/graphics/Rect;
    //   1218: invokevirtual setBounds : (Landroid/graphics/Rect;)V
    //   1221: aload_0
    //   1222: getfield h : Lcom/androlua/NineBitmapDrawable;
    //   1225: aload_1
    //   1226: invokevirtual draw : (Landroid/graphics/Canvas;)V
    //   1229: return
    //   1230: aload_0
    //   1231: getfield f : Lcom/androlua/LoadingDrawable;
    //   1234: ifnull -> 1259
    //   1237: aload_0
    //   1238: getfield f : Lcom/androlua/LoadingDrawable;
    //   1241: aload_0
    //   1242: invokevirtual getBounds : ()Landroid/graphics/Rect;
    //   1245: invokevirtual setBounds : (Landroid/graphics/Rect;)V
    //   1248: aload_0
    //   1249: getfield f : Lcom/androlua/LoadingDrawable;
    //   1252: aload_1
    //   1253: invokevirtual draw : (Landroid/graphics/Canvas;)V
    //   1256: goto -> 454
    //   1259: return }
  
  protected void finalize() {
    if (this.m != null)
      this.m.free(); 
  }
  
  public void gc() {
    if (this.m != null)
      this.m.free(); 
    if (this.g != null && this.g instanceof BitmapDrawable)
      ((BitmapDrawable)this.g).getBitmap().recycle(); 
    if (this.h != null)
      this.h.gc(); 
    this.m = null;
    this.g = null;
    this.h = null;
    this.f.setState(-1);
    this.p = true;
  }
  
  public int getIntrinsicHeight() {
    if (this.e != null)
      return this.e.height(); 
    if (this.g != null) {
      this.g.getIntrinsicHeight();
    } else if (this.h != null) {
      this.h.getIntrinsicHeight();
    } 
    return super.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth() {
    if (this.e != null)
      return this.e.width(); 
    if (this.g != null) {
      this.g.getIntrinsicWidth();
    } else if (this.h != null) {
      this.h.getIntrinsicWidth();
    } 
    return super.getIntrinsicWidth();
  }
  
  public int getOpacity() { return 0; }
  
  public boolean isGc() { return this.p; }
  
  public void run() { invalidateSelf(); }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) { this.i = paramColorFilter; }
  
  public void setFillColor(int paramInt) {
    if (paramInt == this.j)
      return; 
    this.j = paramInt;
  }
  
  public void setScaleType(int paramInt) {
    if (this.k != paramInt) {
      this.k = paramInt;
      invalidateSelf();
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaBitmapDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
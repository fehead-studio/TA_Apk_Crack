package com.nirenr.screencapture;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;
import com.a.a.a.a.a.a.a;
import com.androlua.LuaAccessibilityService;
import java.nio.ByteBuffer;

@TargetApi(21)
public class ScreenShot {
  private static LuaAccessibilityService a;
  
  public static String appName = "";
  
  private static ScreenCaptureListener b;
  
  private static Intent c;
  
  private static ScreenShot h;
  
  public static Bitmap mScreenCaptureBitmap;
  
  private final Context d;
  
  private final VirtualDisplay.Callback e;
  
  private ScreenCaptureListener f;
  
  private Image g;
  
  private MediaProjection i;
  
  private VirtualDisplay j;
  
  private ImageReader k;
  
  private int l;
  
  private int m;
  
  private int n;
  
  static  {
  
  }
  
  public ScreenShot(Context paramContext, VirtualDisplay.Callback paramCallback) {
    this.d = paramContext;
    this.e = paramCallback;
    c();
    if (c == null) {
      Intent intent = new Intent(this.d, ScreenCaptureActivity.class);
      intent.setFlags(268435456);
      this.d.startActivity(intent);
      return;
    } 
    startVirtual();
  }
  
  private void c() {
    WindowManager windowManager = (WindowManager)this.d.getSystemService("window");
    DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
    this.n = displayMetrics.densityDpi;
    this.l = displayMetrics.widthPixels;
    this.m = displayMetrics.heightPixels;
    d();
  }
  
  private void d() { this.k = ImageReader.newInstance(this.l, this.m, 1, 1); }
  
  private MediaProjectionManager e() { return (MediaProjectionManager)this.d.getSystemService("media_projection"); }
  
  private void f() {
    if (this.i == null)
      setUpMediaProjection(); 
    if (this.i == null)
      return; 
    if (this.j != null)
      return; 
    try {
      this.j = this.i.createVirtualDisplay("screen-mirror", this.l, this.m, this.n, 16, this.k.getSurface(), this.e, null);
      return;
    } catch (Exception exception) {
      a.a(exception);
      return;
    } 
  }
  
  private void g() {
    if (this.g != null)
      return; 
    this.g = this.k.acquireLatestImage();
    if (this.g == null) {
      if (this.f != null) {
        this.f.onScreenCaptureDone(null);
        this.f = null;
        return;
      } 
    } else {
      (new SaveTask(this)).execute(new Image[] { this.g });
    } 
  }
  
  public static void getResultData(LuaAccessibilityService paramLuaAccessibilityService) {
    if (paramLuaAccessibilityService == null)
      return; 
    if (c == null) {
      Intent intent = new Intent(paramLuaAccessibilityService, ScreenCaptureActivity.class);
      intent.setFlags(268435456);
      paramLuaAccessibilityService.startActivity(intent);
    } 
  }
  
  public static void getScreenCaptureBitmap(LuaAccessibilityService paramLuaAccessibilityService, ScreenCaptureListener paramScreenCaptureListener) { // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 5
    //   4: return
    //   5: aload_0
    //   6: putstatic com/nirenr/screencapture/ScreenShot.a : Lcom/androlua/LuaAccessibilityService;
    //   9: aload_1
    //   10: putstatic com/nirenr/screencapture/ScreenShot.b : Lcom/nirenr/screencapture/ScreenCaptureListener;
    //   13: aconst_null
    //   14: astore #7
    //   16: getstatic com/nirenr/screencapture/ScreenShot.c : Landroid/content/Intent;
    //   19: ifnonnull -> 58
    //   22: new android/content/Intent
    //   25: dup
    //   26: aload_0
    //   27: ldc com/nirenr/screencapture/ScreenCaptureActivity
    //   29: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   32: astore_1
    //   33: aload_1
    //   34: ldc 268435456
    //   36: invokevirtual setFlags : (I)Landroid/content/Intent;
    //   39: pop
    //   40: aload_0
    //   41: aload_1
    //   42: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   45: aconst_null
    //   46: astore #6
    //   48: aload #6
    //   50: astore #5
    //   52: aload #7
    //   54: astore_0
    //   55: goto -> 541
    //   58: aload_0
    //   59: ldc 'window'
    //   61: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   64: checkcast android/view/WindowManager
    //   67: astore #5
    //   69: new android/util/DisplayMetrics
    //   72: dup
    //   73: invokespecial <init> : ()V
    //   76: astore #6
    //   78: aload #5
    //   80: ifnull -> 117
    //   83: aload #5
    //   85: invokeinterface getDefaultDisplay : ()Landroid/view/Display;
    //   90: aload #6
    //   92: invokevirtual getRealMetrics : (Landroid/util/DisplayMetrics;)V
    //   95: aload #6
    //   97: getfield densityDpi : I
    //   100: istore_2
    //   101: aload #6
    //   103: getfield widthPixels : I
    //   106: istore #4
    //   108: aload #6
    //   110: getfield heightPixels : I
    //   113: istore_3
    //   114: goto -> 133
    //   117: aload_0
    //   118: invokevirtual getHeight : ()I
    //   121: istore_3
    //   122: aload_0
    //   123: invokevirtual getWidth : ()I
    //   126: istore #4
    //   128: aload_0
    //   129: invokevirtual getDensity : ()I
    //   132: istore_2
    //   133: iload #4
    //   135: iload_3
    //   136: iconst_1
    //   137: iconst_1
    //   138: invokestatic newInstance : (IIII)Landroid/media/ImageReader;
    //   141: astore #5
    //   143: aload_0
    //   144: ldc 'media_projection'
    //   146: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   149: checkcast android/media/projection/MediaProjectionManager
    //   152: iconst_m1
    //   153: getstatic com/nirenr/screencapture/ScreenShot.c : Landroid/content/Intent;
    //   156: invokevirtual getMediaProjection : (ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    //   159: astore #6
    //   161: aload #6
    //   163: ldc 'screen-mirror'
    //   165: iload #4
    //   167: iload_3
    //   168: iload_2
    //   169: bipush #16
    //   171: aload #5
    //   173: invokevirtual getSurface : ()Landroid/view/Surface;
    //   176: aconst_null
    //   177: aconst_null
    //   178: invokevirtual createVirtualDisplay : (Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    //   181: astore_0
    //   182: aload #5
    //   184: astore #7
    //   186: aload_0
    //   187: astore #8
    //   189: aload #6
    //   191: astore #9
    //   193: aload #5
    //   195: invokevirtual acquireLatestImage : ()Landroid/media/Image;
    //   198: astore #10
    //   200: aload #10
    //   202: astore #7
    //   204: iconst_0
    //   205: istore_2
    //   206: aload #7
    //   208: astore #10
    //   210: iload_2
    //   211: bipush #40
    //   213: if_icmpge -> 280
    //   216: aload #5
    //   218: astore #7
    //   220: aload_0
    //   221: astore #8
    //   223: aload #6
    //   225: astore #9
    //   227: ldc2_w 5
    //   230: invokestatic sleep : (J)V
    //   233: goto -> 254
    //   236: astore #10
    //   238: aload #5
    //   240: astore #7
    //   242: aload_0
    //   243: astore #8
    //   245: aload #6
    //   247: astore #9
    //   249: aload #10
    //   251: invokestatic a : (Ljava/lang/Throwable;)V
    //   254: aload #5
    //   256: astore #7
    //   258: aload_0
    //   259: astore #8
    //   261: aload #6
    //   263: astore #9
    //   265: aload #5
    //   267: invokevirtual acquireLatestImage : ()Landroid/media/Image;
    //   270: astore #10
    //   272: aload #10
    //   274: ifnull -> 793
    //   277: goto -> 280
    //   280: aload #10
    //   282: ifnonnull -> 307
    //   285: aload #5
    //   287: astore #7
    //   289: aload_0
    //   290: astore #8
    //   292: aload #6
    //   294: astore #9
    //   296: aload_1
    //   297: ldc '请重试'
    //   299: invokeinterface onScreenCaptureError : (Ljava/lang/String;)V
    //   304: goto -> 511
    //   307: aload #5
    //   309: astore #7
    //   311: aload_0
    //   312: astore #8
    //   314: aload #6
    //   316: astore #9
    //   318: aload #10
    //   320: invokevirtual getWidth : ()I
    //   323: istore_2
    //   324: aload #5
    //   326: astore #7
    //   328: aload_0
    //   329: astore #8
    //   331: aload #6
    //   333: astore #9
    //   335: aload #10
    //   337: invokevirtual getHeight : ()I
    //   340: istore_3
    //   341: aload #5
    //   343: astore #7
    //   345: aload_0
    //   346: astore #8
    //   348: aload #6
    //   350: astore #9
    //   352: aload #10
    //   354: invokevirtual getPlanes : ()[Landroid/media/Image$Plane;
    //   357: astore #12
    //   359: aload #5
    //   361: astore #7
    //   363: aload_0
    //   364: astore #8
    //   366: aload #6
    //   368: astore #9
    //   370: aload #12
    //   372: iconst_0
    //   373: aaload
    //   374: invokevirtual getBuffer : ()Ljava/nio/ByteBuffer;
    //   377: astore #11
    //   379: aload #5
    //   381: astore #7
    //   383: aload_0
    //   384: astore #8
    //   386: aload #6
    //   388: astore #9
    //   390: aload #12
    //   392: iconst_0
    //   393: aaload
    //   394: invokevirtual getPixelStride : ()I
    //   397: istore #4
    //   399: aload #5
    //   401: astore #7
    //   403: aload_0
    //   404: astore #8
    //   406: aload #6
    //   408: astore #9
    //   410: aload #12
    //   412: iconst_0
    //   413: aaload
    //   414: invokevirtual getRowStride : ()I
    //   417: iload #4
    //   419: iload_2
    //   420: imul
    //   421: isub
    //   422: iload #4
    //   424: idiv
    //   425: iload_2
    //   426: iadd
    //   427: iload_3
    //   428: getstatic android/graphics/Bitmap$Config.ARGB_4444 : Landroid/graphics/Bitmap$Config;
    //   431: invokestatic createBitmap : (IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   434: astore #12
    //   436: aload #5
    //   438: astore #7
    //   440: aload_0
    //   441: astore #8
    //   443: aload #6
    //   445: astore #9
    //   447: aload #12
    //   449: aload #11
    //   451: invokevirtual copyPixelsFromBuffer : (Ljava/nio/Buffer;)V
    //   454: aload #5
    //   456: astore #7
    //   458: aload_0
    //   459: astore #8
    //   461: aload #6
    //   463: astore #9
    //   465: aload #12
    //   467: iconst_0
    //   468: iconst_0
    //   469: iload_2
    //   470: iload_3
    //   471: invokestatic createBitmap : (Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    //   474: astore #11
    //   476: aload #5
    //   478: astore #7
    //   480: aload_0
    //   481: astore #8
    //   483: aload #6
    //   485: astore #9
    //   487: aload #10
    //   489: invokevirtual close : ()V
    //   492: aload #5
    //   494: astore #7
    //   496: aload_0
    //   497: astore #8
    //   499: aload #6
    //   501: astore #9
    //   503: aload_1
    //   504: aload #11
    //   506: invokeinterface onScreenCaptureDone : (Landroid/graphics/Bitmap;)V
    //   511: aload #5
    //   513: astore #7
    //   515: aload_0
    //   516: astore #8
    //   518: aload #6
    //   520: astore #9
    //   522: aconst_null
    //   523: putstatic com/nirenr/screencapture/ScreenShot.a : Lcom/androlua/LuaAccessibilityService;
    //   526: aload #5
    //   528: astore #7
    //   530: aload_0
    //   531: astore #8
    //   533: aload #6
    //   535: astore #9
    //   537: aconst_null
    //   538: putstatic com/nirenr/screencapture/ScreenShot.b : Lcom/nirenr/screencapture/ScreenCaptureListener;
    //   541: aload_0
    //   542: ifnull -> 549
    //   545: aload_0
    //   546: invokevirtual release : ()V
    //   549: aload #5
    //   551: ifnull -> 559
    //   554: aload #5
    //   556: invokevirtual close : ()V
    //   559: aload #6
    //   561: ifnull -> 750
    //   564: aload #6
    //   566: astore_1
    //   567: goto -> 746
    //   570: astore #7
    //   572: aload #5
    //   574: astore #10
    //   576: aload #6
    //   578: astore_1
    //   579: aload #7
    //   581: astore #5
    //   583: goto -> 661
    //   586: astore_1
    //   587: aconst_null
    //   588: astore_0
    //   589: goto -> 763
    //   592: astore #7
    //   594: aconst_null
    //   595: astore_0
    //   596: aload #5
    //   598: astore #10
    //   600: aload #6
    //   602: astore_1
    //   603: aload #7
    //   605: astore #5
    //   607: goto -> 661
    //   610: astore_1
    //   611: aconst_null
    //   612: astore #6
    //   614: aload #6
    //   616: astore_0
    //   617: goto -> 763
    //   620: astore #6
    //   622: aconst_null
    //   623: astore_1
    //   624: aload_1
    //   625: astore_0
    //   626: aload #5
    //   628: astore #10
    //   630: aload #6
    //   632: astore #5
    //   634: goto -> 661
    //   637: astore_1
    //   638: aconst_null
    //   639: astore #6
    //   641: aload #6
    //   643: astore #5
    //   645: aload #5
    //   647: astore_0
    //   648: goto -> 763
    //   651: astore #5
    //   653: aconst_null
    //   654: astore_1
    //   655: aload_1
    //   656: astore #10
    //   658: aload #10
    //   660: astore_0
    //   661: aload #10
    //   663: astore #7
    //   665: aload_0
    //   666: astore #8
    //   668: aload_1
    //   669: astore #9
    //   671: aload #5
    //   673: invokestatic a : (Ljava/lang/Throwable;)V
    //   676: aload #10
    //   678: astore #7
    //   680: aload_0
    //   681: astore #8
    //   683: aload_1
    //   684: astore #9
    //   686: getstatic com/nirenr/screencapture/ScreenShot.b : Lcom/nirenr/screencapture/ScreenCaptureListener;
    //   689: ldc '请重试'
    //   691: invokeinterface onScreenCaptureError : (Ljava/lang/String;)V
    //   696: aload #10
    //   698: astore #7
    //   700: aload_0
    //   701: astore #8
    //   703: aload_1
    //   704: astore #9
    //   706: aconst_null
    //   707: putstatic com/nirenr/screencapture/ScreenShot.a : Lcom/androlua/LuaAccessibilityService;
    //   710: aload #10
    //   712: astore #7
    //   714: aload_0
    //   715: astore #8
    //   717: aload_1
    //   718: astore #9
    //   720: aconst_null
    //   721: putstatic com/nirenr/screencapture/ScreenShot.b : Lcom/nirenr/screencapture/ScreenCaptureListener;
    //   724: aload_0
    //   725: ifnull -> 732
    //   728: aload_0
    //   729: invokevirtual release : ()V
    //   732: aload #10
    //   734: ifnull -> 742
    //   737: aload #10
    //   739: invokevirtual close : ()V
    //   742: aload_1
    //   743: ifnull -> 750
    //   746: aload_1
    //   747: invokevirtual stop : ()V
    //   750: return
    //   751: astore_1
    //   752: aload #9
    //   754: astore #6
    //   756: aload #8
    //   758: astore_0
    //   759: aload #7
    //   761: astore #5
    //   763: aload_0
    //   764: ifnull -> 771
    //   767: aload_0
    //   768: invokevirtual release : ()V
    //   771: aload #5
    //   773: ifnull -> 781
    //   776: aload #5
    //   778: invokevirtual close : ()V
    //   781: aload #6
    //   783: ifnull -> 791
    //   786: aload #6
    //   788: invokevirtual stop : ()V
    //   791: aload_1
    //   792: athrow
    //   793: iload_2
    //   794: iconst_1
    //   795: iadd
    //   796: istore_2
    //   797: aload #10
    //   799: astore #7
    //   801: goto -> 206
    // Exception table:
    //   from	to	target	type
    //   16	45	651	java/lang/Exception
    //   16	45	637	finally
    //   58	78	651	java/lang/Exception
    //   58	78	637	finally
    //   83	114	651	java/lang/Exception
    //   83	114	637	finally
    //   117	133	651	java/lang/Exception
    //   117	133	637	finally
    //   133	143	651	java/lang/Exception
    //   133	143	637	finally
    //   143	161	620	java/lang/Exception
    //   143	161	610	finally
    //   161	182	592	java/lang/Exception
    //   161	182	586	finally
    //   193	200	570	java/lang/Exception
    //   193	200	751	finally
    //   227	233	236	java/lang/InterruptedException
    //   227	233	570	java/lang/Exception
    //   227	233	751	finally
    //   249	254	570	java/lang/Exception
    //   249	254	751	finally
    //   265	272	570	java/lang/Exception
    //   265	272	751	finally
    //   296	304	570	java/lang/Exception
    //   296	304	751	finally
    //   318	324	570	java/lang/Exception
    //   318	324	751	finally
    //   335	341	570	java/lang/Exception
    //   335	341	751	finally
    //   352	359	570	java/lang/Exception
    //   352	359	751	finally
    //   370	379	570	java/lang/Exception
    //   370	379	751	finally
    //   390	399	570	java/lang/Exception
    //   390	399	751	finally
    //   410	436	570	java/lang/Exception
    //   410	436	751	finally
    //   447	454	570	java/lang/Exception
    //   447	454	751	finally
    //   465	476	570	java/lang/Exception
    //   465	476	751	finally
    //   487	492	570	java/lang/Exception
    //   487	492	751	finally
    //   503	511	570	java/lang/Exception
    //   503	511	751	finally
    //   522	526	570	java/lang/Exception
    //   522	526	751	finally
    //   537	541	570	java/lang/Exception
    //   537	541	751	finally
    //   671	676	751	finally
    //   686	696	751	finally
    //   706	710	751	finally
    //   720	724	751	finally }
  
  private Bitmap h() {
    if (this.k == null)
      return null; 
    this.g = this.k.acquireLatestImage();
    if (this.g == null)
      return null; 
    int i1 = this.g.getWidth();
    int i2 = this.g.getHeight();
    Image.Plane[] arrayOfPlane = this.g.getPlanes();
    ByteBuffer byteBuffer = arrayOfPlane[0].getBuffer();
    int i3 = arrayOfPlane[0].getPixelStride();
    Bitmap bitmap2 = Bitmap.createBitmap((arrayOfPlane[0].getRowStride() - i3 * i1) / i3 + i1, i2, Bitmap.Config.ARGB_8888);
    bitmap2.copyPixelsFromBuffer(byteBuffer);
    Bitmap bitmap1 = Bitmap.createBitmap(bitmap2, 0, 0, i1, i2);
    this.g.close();
    this.g = null;
    return bitmap1;
  }
  
  private void i() {
    if (this.i != null) {
      this.i.stop();
      this.i = null;
    } 
  }
  
  private void j() {
    if (this.j == null)
      return; 
    this.j.release();
    this.j = null;
  }
  
  private void k() {
    if (this.k != null)
      this.k.close(); 
    this.k = null;
  }
  
  public static void setResultData(Intent paramIntent) {
    if (paramIntent == null) {
      if (a != null)
        Toast.makeText(a, "未获得权限", 0).show(); 
      if (b != null)
        b.onScreenCaptureError("未获得权限"); 
      return;
    } 
    c = paramIntent;
    if (a != null)
      a.getHandler().postDelayed(new Runnable() {
            public void run() { ScreenShot.getScreenCaptureBitmap(ScreenShot.a(), ScreenShot.b()); }
          }500L); 
  }
  
  public Bitmap getScreenShot() { return h(); }
  
  public void reSize() {
    j();
    k();
    c();
    startVirtual();
  }
  
  public void release() {
    j();
    i();
    k();
    h = null;
  }
  
  public void setScreenCaptureBitmap(Bitmap paramBitmap) { mScreenCaptureBitmap = paramBitmap; }
  
  public void setUpMediaProjection() {
    if (this.i != null)
      return; 
    if (c == null) {
      Intent intent = new Intent(this.d, ScreenCaptureActivity.class);
      intent.setFlags(268435456);
      this.d.startActivity(intent);
      return;
    } 
    this.i = e().getMediaProjection(-1, c);
  }
  
  public void startScreenShot() {
    Handler handler = new Handler();
    handler.postDelayed(new Runnable(this) {
          public void run() { this.a.startVirtual(); }
        },  5L);
    handler.postDelayed(new Runnable(this) {
          public void run() { ScreenShot.a(this.a); }
        },  100L);
  }
  
  public void startScreenShot(ScreenCaptureListener paramScreenCaptureListener) {
    if (this.f != null)
      return; 
    this.f = paramScreenCaptureListener;
    startScreenShot();
  }
  
  public void startVirtual() {
    if (this.i == null)
      setUpMediaProjection(); 
    f();
  }
  
  public class SaveTask extends AsyncTask<Image, Void, Bitmap> {
    public SaveTask(ScreenShot this$0) {}
    
    protected Bitmap a(Image... param1VarArgs) {
      if (param1VarArgs != null && param1VarArgs.length >= 1) {
        if (param1VarArgs[false] == null)
          return null; 
        Image image = param1VarArgs[0];
        int i = image.getWidth();
        int j = image.getHeight();
        Image.Plane[] arrayOfPlane = image.getPlanes();
        ByteBuffer byteBuffer = arrayOfPlane[0].getBuffer();
        int k = arrayOfPlane[0].getPixelStride();
        Bitmap bitmap2 = Bitmap.createBitmap((arrayOfPlane[0].getRowStride() - k * i) / k + i, j, Bitmap.Config.ARGB_8888);
        bitmap2.copyPixelsFromBuffer(byteBuffer);
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap2, 0, 0, i, j);
        image.close();
        ScreenShot.a(this.a, null);
        if (ScreenShot.b(this.a) != null) {
          ScreenShot.b(this.a).onScreenCaptureDone(bitmap1);
          ScreenShot.a(this.a, null);
        } 
      } 
      return null;
    }
    
    protected void a(Bitmap param1Bitmap) {
      super.onPostExecute(param1Bitmap);
      if (param1Bitmap != null) {
        this.a.setScreenCaptureBitmap(param1Bitmap);
        Log.e("ryze", "获取图片成功");
      } 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\nirenr\screencapture\ScreenShot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
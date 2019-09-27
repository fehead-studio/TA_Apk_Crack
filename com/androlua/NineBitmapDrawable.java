package com.androlua;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.a.a.a.a.a.a.a;

public class NineBitmapDrawable extends Drawable implements LuaGcable {
  private Paint a = new Paint();
  
  private Bitmap b;
  
  private int c;
  
  private int d;
  
  private int e;
  
  private int f;
  
  private Rect g;
  
  private Rect h;
  
  private Rect i;
  
  private Rect j;
  
  private Rect k;
  
  private Rect l;
  
  private Rect m;
  
  private Rect n;
  
  private Rect o;
  
  private boolean p;
  
  public NineBitmapDrawable(Bitmap paramBitmap) { // Byte code:
    //   0: aload_0
    //   1: invokespecial <init> : ()V
    //   4: aload_0
    //   5: new android/graphics/Paint
    //   8: dup
    //   9: invokespecial <init> : ()V
    //   12: putfield a : Landroid/graphics/Paint;
    //   15: aload_1
    //   16: invokevirtual getWidth : ()I
    //   19: istore #4
    //   21: aload_1
    //   22: invokevirtual getHeight : ()I
    //   25: istore #6
    //   27: iconst_0
    //   28: istore_2
    //   29: iload_2
    //   30: iload #4
    //   32: if_icmpge -> 56
    //   35: aload_1
    //   36: iload_2
    //   37: iconst_0
    //   38: invokevirtual getPixel : (II)I
    //   41: ldc -16777216
    //   43: if_icmpne -> 49
    //   46: goto -> 58
    //   49: iload_2
    //   50: iconst_1
    //   51: iadd
    //   52: istore_2
    //   53: goto -> 29
    //   56: iconst_0
    //   57: istore_2
    //   58: iload_2
    //   59: ifeq -> 271
    //   62: iload_2
    //   63: iload #4
    //   65: iconst_1
    //   66: isub
    //   67: if_icmpne -> 73
    //   70: goto -> 271
    //   73: iload_2
    //   74: istore_3
    //   75: iload_3
    //   76: iload #4
    //   78: if_icmpge -> 108
    //   81: aload_1
    //   82: iload_3
    //   83: iconst_0
    //   84: invokevirtual getPixel : (II)I
    //   87: ldc -16777216
    //   89: if_icmpeq -> 101
    //   92: iload #4
    //   94: iload_3
    //   95: isub
    //   96: istore #4
    //   98: goto -> 111
    //   101: iload_3
    //   102: iconst_1
    //   103: iadd
    //   104: istore_3
    //   105: goto -> 75
    //   108: iconst_0
    //   109: istore #4
    //   111: iload #4
    //   113: ifeq -> 261
    //   116: iload #4
    //   118: iconst_1
    //   119: if_icmpne -> 125
    //   122: goto -> 261
    //   125: iconst_0
    //   126: istore_3
    //   127: iload_3
    //   128: iload #6
    //   130: if_icmpge -> 154
    //   133: aload_1
    //   134: iconst_0
    //   135: iload_3
    //   136: invokevirtual getPixel : (II)I
    //   139: ldc -16777216
    //   141: if_icmpne -> 147
    //   144: goto -> 156
    //   147: iload_3
    //   148: iconst_1
    //   149: iadd
    //   150: istore_3
    //   151: goto -> 127
    //   154: iconst_0
    //   155: istore_3
    //   156: iload_3
    //   157: ifeq -> 251
    //   160: iload_3
    //   161: iload #6
    //   163: iconst_1
    //   164: isub
    //   165: if_icmpne -> 171
    //   168: goto -> 251
    //   171: iload_3
    //   172: istore #5
    //   174: iload #5
    //   176: iload #6
    //   178: if_icmpge -> 212
    //   181: aload_1
    //   182: iconst_0
    //   183: iload #5
    //   185: invokevirtual getPixel : (II)I
    //   188: ldc -16777216
    //   190: if_icmpeq -> 203
    //   193: iload #6
    //   195: iload #5
    //   197: isub
    //   198: istore #5
    //   200: goto -> 215
    //   203: iload #5
    //   205: iconst_1
    //   206: iadd
    //   207: istore #5
    //   209: goto -> 174
    //   212: iconst_0
    //   213: istore #5
    //   215: iload #5
    //   217: ifeq -> 241
    //   220: iload #5
    //   222: iconst_1
    //   223: if_icmpne -> 229
    //   226: goto -> 241
    //   229: aload_0
    //   230: aload_1
    //   231: iload_2
    //   232: iload_3
    //   233: iload #4
    //   235: iload #5
    //   237: invokespecial a : (Landroid/graphics/Bitmap;IIII)V
    //   240: return
    //   241: new java/lang/IllegalArgumentException
    //   244: dup
    //   245: ldc 'not found y2'
    //   247: invokespecial <init> : (Ljava/lang/String;)V
    //   250: athrow
    //   251: new java/lang/IllegalArgumentException
    //   254: dup
    //   255: ldc 'not found y1'
    //   257: invokespecial <init> : (Ljava/lang/String;)V
    //   260: athrow
    //   261: new java/lang/IllegalArgumentException
    //   264: dup
    //   265: ldc 'not found x2'
    //   267: invokespecial <init> : (Ljava/lang/String;)V
    //   270: athrow
    //   271: new java/lang/IllegalArgumentException
    //   274: dup
    //   275: ldc 'not found x1'
    //   277: invokespecial <init> : (Ljava/lang/String;)V
    //   280: athrow }
  
  public NineBitmapDrawable(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4) { a(paramBitmap, paramInt1, paramInt2, paramInt3, paramInt4); }
  
  public NineBitmapDrawable(String paramString) { this(LuaBitmap.getLocalBitmap(paramString)); }
  
  private void a(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.b = paramBitmap;
    int i2 = paramBitmap.getWidth();
    int i1 = paramBitmap.getHeight();
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
    paramInt3 = i2 - paramInt3;
    paramInt4 = i1 - paramInt4;
    this.g = new Rect(1, 1, paramInt1, paramInt2);
    this.h = new Rect(paramInt1, 1, paramInt3, paramInt2);
    this.i = new Rect(paramInt3, 1, --i2, paramInt2);
    this.j = new Rect(1, paramInt2, paramInt1, paramInt4);
    this.k = new Rect(paramInt1, paramInt2, paramInt3, paramInt4);
    this.l = new Rect(paramInt3, paramInt2, i2, paramInt4);
    paramInt2 = i1 - 1;
    this.m = new Rect(1, paramInt4, paramInt1, paramInt2);
    this.n = new Rect(paramInt1, paramInt4, paramInt3, paramInt2);
    this.o = new Rect(paramInt3, paramInt4, i2, paramInt2);
  }
  
  public void draw(Canvas paramCanvas) {
    Rect rect1 = getBounds();
    int i1 = rect1.right;
    int i2 = rect1.bottom;
    rect1 = new Rect(0, 0, this.c, this.d);
    Rect rect2 = new Rect(this.c, 0, i1 - this.e, this.d);
    Rect rect3 = new Rect(i1 - this.e, 0, i1, this.d);
    Rect rect4 = new Rect(0, this.d, this.c, i2 - this.f);
    Rect rect5 = new Rect(this.c, this.d, i1 - this.e, i2 - this.f);
    Rect rect6 = new Rect(i1 - this.e, this.d, i1, i2 - this.f);
    Rect rect7 = new Rect(0, i2 - this.f, this.c, i2);
    Rect rect8 = new Rect(this.c, i2 - this.f, i1 - this.e, i2);
    Rect rect9 = new Rect(i1 - this.e, i2 - this.f, i1, i2);
    paramCanvas.drawBitmap(this.b, this.g, rect1, this.a);
    paramCanvas.drawBitmap(this.b, this.h, rect2, this.a);
    paramCanvas.drawBitmap(this.b, this.i, rect3, this.a);
    paramCanvas.drawBitmap(this.b, this.j, rect4, this.a);
    paramCanvas.drawBitmap(this.b, this.k, rect5, this.a);
    paramCanvas.drawBitmap(this.b, this.l, rect6, this.a);
    paramCanvas.drawBitmap(this.b, this.m, rect7, this.a);
    paramCanvas.drawBitmap(this.b, this.n, rect8, this.a);
    paramCanvas.drawBitmap(this.b, this.o, rect9, this.a);
  }
  
  public void gc() {
    try {
      this.b.recycle();
      this.p = true;
      return;
    } catch (Exception exception) {
      a.a(exception);
      return;
    } 
  }
  
  public int getOpacity() { return 0; }
  
  public boolean isGc() { return this.p; }
  
  public void setAlpha(int paramInt) { this.a.setAlpha(paramInt); }
  
  public void setColorFilter(ColorFilter paramColorFilter) { this.a.setColorFilter(paramColorFilter); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\NineBitmapDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
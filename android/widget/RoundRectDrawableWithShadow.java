package android.widget;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;

class RoundRectDrawableWithShadow extends Drawable {
  static final double a = Math.cos(Math.toRadians(45.0D));
  
  static RoundRectHelper c;
  
  final int b;
  
  Paint d;
  
  Paint e;
  
  Paint f;
  
  final RectF g;
  
  float h;
  
  Path i;
  
  float j;
  
  float k;
  
  float l;
  
  float m;
  
  private boolean n = true;
  
  private final int o = 922746880;
  
  private final int p = 50331648;
  
  private boolean q = true;
  
  private boolean r = false;
  
  private DisplayMetrics s;
  
  RoundRectDrawableWithShadow(Resources paramResources, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3) {
    this.s = paramResources.getDisplayMetrics();
    this.b = (int)d(1.0F);
    this.d = new Paint(5);
    this.d.setColor(paramInt);
    this.e = new Paint(5);
    this.e.setStyle(Paint.Style.FILL);
    this.h = (int)(paramFloat1 + 0.5F);
    this.g = new RectF();
    this.f = new Paint(this.e);
    this.f.setAntiAlias(false);
    a(paramFloat2, paramFloat3);
  }
  
  static float a(float paramFloat1, float paramFloat2, boolean paramBoolean) { return paramBoolean ? (float)((paramFloat1 * 1.5F) + (1.0D - a) * paramFloat2) : (paramFloat1 * 1.5F); }
  
  private void a(Canvas paramCanvas) {
    boolean bool;
    float f1 = -this.h - this.l;
    float f2 = this.h + this.b + this.m / 2.0F;
    float f3 = this.g.width();
    float f4 = f2 * 2.0F;
    if (f3 - f4 > 0.0F) {
      i1 = 1;
    } else {
      i1 = 0;
    } 
    if (this.g.height() - f4 > 0.0F) {
      bool = true;
    } else {
      bool = false;
    } 
    int i2 = paramCanvas.save();
    paramCanvas.translate(this.g.left + f2, this.g.top + f2);
    paramCanvas.drawPath(this.i, this.e);
    if (i1)
      paramCanvas.drawRect(0.0F, f1, this.g.width() - f4, -this.h, this.f); 
    paramCanvas.restoreToCount(i2);
    i2 = paramCanvas.save();
    paramCanvas.translate(this.g.right - f2, this.g.bottom - f2);
    paramCanvas.rotate(180.0F);
    paramCanvas.drawPath(this.i, this.e);
    if (i1)
      paramCanvas.drawRect(0.0F, f1, this.g.width() - f4, -this.h + this.l, this.f); 
    paramCanvas.restoreToCount(i2);
    int i1 = paramCanvas.save();
    paramCanvas.translate(this.g.left + f2, this.g.bottom - f2);
    paramCanvas.rotate(270.0F);
    paramCanvas.drawPath(this.i, this.e);
    if (bool)
      paramCanvas.drawRect(0.0F, f1, this.g.height() - f4, -this.h, this.f); 
    paramCanvas.restoreToCount(i1);
    i1 = paramCanvas.save();
    paramCanvas.translate(this.g.right - f2, this.g.top + f2);
    paramCanvas.rotate(90.0F);
    paramCanvas.drawPath(this.i, this.e);
    if (bool)
      paramCanvas.drawRect(0.0F, f1, this.g.height() - f4, -this.h, this.f); 
    paramCanvas.restoreToCount(i1);
  }
  
  static float b(float paramFloat1, float paramFloat2, boolean paramBoolean) {
    float f1 = paramFloat1;
    if (paramBoolean)
      f1 = (float)(paramFloat1 + (1.0D - a) * paramFloat2); 
    return f1;
  }
  
  private void b(Rect paramRect) {
    float f1 = this.k * 1.5F;
    this.g.set(paramRect.left + this.k, paramRect.top + f1, paramRect.right - this.k, paramRect.bottom - f1);
    f();
  }
  
  private float d(float paramFloat) { return TypedValue.applyDimension(1, paramFloat, this.s); }
  
  private int e(float paramFloat) {
    int i2 = (int)(paramFloat + 0.5F);
    int i1 = i2;
    if (i2 % 2 == 1)
      i1 = i2 - 1; 
    return i1;
  }
  
  private void f() {
    RectF rectF1 = new RectF(-this.h, -this.h, this.h, this.h);
    RectF rectF2 = new RectF(rectF1);
    rectF2.inset(-this.l, -this.l);
    if (this.i == null) {
      this.i = new Path();
    } else {
      this.i.reset();
    } 
    this.i.setFillType(Path.FillType.EVEN_ODD);
    this.i.moveTo(-this.h, 0.0F);
    this.i.rLineTo(-this.l, 0.0F);
    this.i.arcTo(rectF2, 180.0F, 90.0F, false);
    this.i.arcTo(rectF1, 270.0F, -90.0F, false);
    this.i.close();
    float f1 = this.h / (this.h + this.l);
    Paint paint = this.e;
    float f2 = this.h;
    float f3 = this.l;
    int i1 = this.o;
    int i2 = this.o;
    int i3 = this.p;
    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
    paint.setShader(new RadialGradient(0.0F, 0.0F, f2 + f3, new int[] { i1, i2, i3 }, new float[] { 0.0F, f1, 1.0F }, tileMode));
    paint = this.f;
    f1 = -this.h;
    f2 = this.l;
    f3 = -this.h;
    float f4 = this.l;
    i1 = this.o;
    i2 = this.o;
    i3 = this.p;
    tileMode = Shader.TileMode.CLAMP;
    paint.setShader(new LinearGradient(0.0F, f1 + f2, 0.0F, f3 - f4, new int[] { i1, i2, i3 }, new float[] { 0.0F, 0.5F, 1.0F }, tileMode));
    this.f.setAntiAlias(false);
  }
  
  float a() { return this.h; }
  
  void a(float paramFloat) {
    paramFloat = (int)(paramFloat + 0.5F);
    if (this.h == paramFloat)
      return; 
    this.h = paramFloat;
    this.n = true;
    invalidateSelf();
  }
  
  void a(float paramFloat1, float paramFloat2) {
    if (paramFloat1 < 0.0F || paramFloat2 < 0.0F)
      throw new IllegalArgumentException("invalid shadow size"); 
    float f1 = e(paramFloat1);
    paramFloat2 = e(paramFloat2);
    paramFloat1 = f1;
    if (f1 > paramFloat2) {
      if (!this.r)
        this.r = true; 
      paramFloat1 = paramFloat2;
    } 
    if (this.m == paramFloat1 && this.k == paramFloat2)
      return; 
    this.m = paramFloat1;
    this.k = paramFloat2;
    this.l = (int)(paramFloat1 * 1.5F + this.b + 0.5F);
    this.j = paramFloat2 + this.b;
    this.n = true;
    invalidateSelf();
  }
  
  void a(Rect paramRect) { getPadding(paramRect); }
  
  float b() { return this.m; }
  
  void b(float paramFloat) { a(paramFloat, this.k); }
  
  float c() { return this.k; }
  
  void c(float paramFloat) { a(this.m, paramFloat); }
  
  float d() { return Math.max(this.k, this.h + this.b + this.k / 2.0F) * 2.0F + (this.k + this.b) * 2.0F; }
  
  public void draw(Canvas paramCanvas) {
    if (this.n) {
      b(getBounds());
      this.n = false;
    } 
    paramCanvas.translate(0.0F, this.m / 2.0F);
    a(paramCanvas);
    paramCanvas.translate(0.0F, -this.m / 2.0F);
    c.drawRoundRect(paramCanvas, this.g, this.h, this.d);
  }
  
  float e() { return Math.max(this.k, this.h + this.b + this.k * 1.5F / 2.0F) * 2.0F + (this.k * 1.5F + this.b) * 2.0F; }
  
  public int getOpacity() { return -3; }
  
  public boolean getPadding(Rect paramRect) {
    int i1 = (int)Math.ceil(a(this.k, this.h, this.q));
    int i2 = (int)Math.ceil(b(this.k, this.h, this.q));
    paramRect.set(i2, i1, i2, i1);
    return true;
  }
  
  protected void onBoundsChange(Rect paramRect) {
    super.onBoundsChange(paramRect);
    this.n = true;
  }
  
  public void setAddPaddingForCorners(boolean paramBoolean) {
    this.q = paramBoolean;
    invalidateSelf();
  }
  
  public void setAlpha(int paramInt) {
    this.d.setAlpha(paramInt);
    this.e.setAlpha(paramInt);
    this.f.setAlpha(paramInt);
  }
  
  public void setColor(int paramInt) {
    this.d.setColor(paramInt);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    this.d.setColorFilter(paramColorFilter);
    this.e.setColorFilter(paramColorFilter);
    this.f.setColorFilter(paramColorFilter);
  }
  
  static interface RoundRectHelper {
    void drawRoundRect(Canvas param1Canvas, RectF param1RectF, float param1Float, Paint param1Paint);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\RoundRectDrawableWithShadow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
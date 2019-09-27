package android.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;

class RoundRectDrawable extends Drawable {
  private float a;
  
  private final Paint b;
  
  private final RectF c;
  
  private final Rect d;
  
  private float e;
  
  private boolean f = false;
  
  private boolean g = true;
  
  public RoundRectDrawable(int paramInt, float paramFloat) {
    this.a = paramFloat;
    this.b = new Paint(5);
    this.b.setColor(paramInt);
    this.c = new RectF();
    this.d = new Rect();
  }
  
  private void a(Rect paramRect) {
    Rect rect = paramRect;
    if (paramRect == null)
      rect = getBounds(); 
    this.c.set(rect.left, rect.top, rect.right, rect.bottom);
    this.d.set(rect);
    if (this.f) {
      float f1 = RoundRectDrawableWithShadow.a(this.e, this.a, this.g);
      float f2 = RoundRectDrawableWithShadow.b(this.e, this.a, this.g);
      this.d.inset((int)Math.ceil(f2), (int)Math.ceil(f1));
      this.c.set(this.d);
    } 
  }
  
  float a() { return this.e; }
  
  void a(float paramFloat) {
    if (paramFloat == this.a)
      return; 
    this.a = paramFloat;
    a(null);
    invalidateSelf();
  }
  
  void a(float paramFloat, boolean paramBoolean1, boolean paramBoolean2) {
    if (paramFloat == this.e && this.f == paramBoolean1 && this.g == paramBoolean2)
      return; 
    this.e = paramFloat;
    this.f = paramBoolean1;
    this.g = paramBoolean2;
    a(null);
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas) { paramCanvas.drawRoundRect(this.c, this.a, this.a, this.b); }
  
  public int getOpacity() { return -3; }
  
  public void getOutline(Outline paramOutline) {
    if (Build.VERSION.SDK_INT >= 21)
      paramOutline.setRoundRect(this.d, this.a); 
  }
  
  public float getRadius() { return this.a; }
  
  protected void onBoundsChange(Rect paramRect) {
    super.onBoundsChange(paramRect);
    a(paramRect);
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColor(int paramInt) {
    this.b.setColor(paramInt);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\RoundRectDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
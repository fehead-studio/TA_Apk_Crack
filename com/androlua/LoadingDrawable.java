package com.androlua;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;

public class LoadingDrawable extends Drawable {
  private final DisplayMetrics a;
  
  private int b = 0;
  
  private int c = 0;
  
  private int d = 0;
  
  private int e = 0;
  
  private int f = 3;
  
  private int g = 1;
  
  private Paint h;
  
  private int i;
  
  public LoadingDrawable(Context paramContext) {
    this.a = paramContext.getResources().getDisplayMetrics();
    this.h = new Paint();
    this.h.setStyle(Paint.Style.STROKE);
    this.h.setAntiAlias(true);
    this.h.setStrokeWidth(a(8.0F));
    this.h.setColor(-2004318072);
  }
  
  private int a(float paramFloat) { return (int)TypedValue.applyDimension(1, paramFloat, this.a); }
  
  public void draw(Canvas paramCanvas) {
    Rect rect = new Rect(getBounds());
    int j = (int)Math.min(rect.right, rect.bottom);
    int k = rect.right;
    int m = rect.bottom;
    rect.right = j;
    rect.bottom = j;
    paramCanvas.save();
    paramCanvas.translate(((k - j) / 2), ((m - j) / 2));
    float f2 = j;
    float f1 = 0.15F * f2;
    f2 *= 0.85F;
    RectF rectF = new RectF(f1, f1, f2, f2);
    if (this.b >= 360 && this.i == 0) {
      this.g = 8;
      this.f = -6;
    } else if (this.b <= 6) {
      this.f = 6;
      this.g = 2;
    } 
    if (this.b < 360 || this.i == 0) {
      if (this.i == 0) {
        this.b += this.f;
        j = this.c;
        k = this.g;
      } else {
        this.b += this.f * 2;
        j = this.c;
        k = this.g * 2;
      } 
      this.c = j + k;
      this.c %= 360;
    } 
    paramCanvas.drawArc(rectF, this.c, this.b, false, this.h);
    if (this.b >= 360) {
      this.f = -6;
      this.g = 8;
      if (this.i == 1) {
        Path path = new Path();
        path.moveTo(rect.right * 0.3F, rect.bottom * 0.5F);
        path.lineTo(rect.right * 0.45F, rect.bottom * 0.7F);
        path.lineTo(rect.right * 0.75F, rect.bottom * 0.4F);
        paramCanvas.drawPath(path, this.h);
      } else if (this.i == -1) {
        paramCanvas.drawLine((rect.right / 2), rect.bottom * 0.25F, (rect.right / 2), rect.bottom * 0.65F, this.h);
        paramCanvas.drawLine((rect.right / 2), rect.bottom * 0.7F, (rect.right / 2), rect.bottom * 0.75F, this.h);
      } 
    } 
    paramCanvas.restore();
    invalidateSelf();
  }
  
  public int getOpacity() { return 0; }
  
  public void setAlpha(int paramInt) { this.h.setAlpha(paramInt); }
  
  public void setColor(int paramInt) { this.h.setColor(paramInt); }
  
  public void setColorFilter(ColorFilter paramColorFilter) { this.h.setColorFilter(paramColorFilter); }
  
  public void setState(int paramInt) { this.i = paramInt; }
  
  public void setStrokeWidth(float paramFloat) { this.h.setStrokeWidth(paramFloat); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LoadingDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package android.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import com.androlua.util.TimerTaskX;
import com.androlua.util.TimerX;

public class RippleHelper extends Drawable implements View.OnTouchListener {
  private final DisplayMetrics a;
  
  private int b;
  
  private int c;
  
  private int d;
  
  private boolean e;
  
  private boolean f;
  
  private int g;
  
  private TimerX h;
  
  private task i;
  
  private Paint j;
  
  private float k;
  
  private float l;
  
  private View m;
  
  private Drawable n;
  
  private int o;
  
  private boolean p;
  
  private int q;
  
  private int r;
  
  private int s;
  
  public RippleHelper(View paramView) {
    this.m = paramView;
    this.a = paramView.getResources().getDisplayMetrics();
    a();
  }
  
  private int a(float paramFloat) { return (int)TypedValue.applyDimension(1, paramFloat, this.a); }
  
  private void a() {
    if (this.m.isClickable())
      this.f = true; 
    this.n = this.m.getBackground();
    this.m.setBackgroundDrawable(this);
    this.m.setOnTouchListener(this);
    this.j = new Paint();
    this.j.setColor(1152035498);
    this.j.setAntiAlias(true);
    this.j.setStrokeWidth(a(4.0F));
    this.o = this.j.getAlpha();
    this.h = new TimerX();
    this.i = new task(this, null);
    this.h.schedule(this.i, 0L, 16L);
    this.i.setEnabled(false);
    this.g = 0;
  }
  
  public void draw(Canvas paramCanvas) {
    if (this.n != null) {
      this.n.setBounds(getBounds());
      this.n.draw(paramCanvas);
    } 
    this.j.setColor(this.r);
    this.j.setAlpha(this.s);
    if (this.b != 0) {
      if (this.e) {
        paramCanvas.drawCircle(this.k, this.l, this.c, this.j);
      } else {
        paramCanvas.drawRect(getBounds(), this.j);
      } 
      int i2 = this.c;
      if (this.p) {
        paramCanvas.drawCircle(this.k, this.l, Math.min(this.g, this.c), this.j);
        return;
      } 
      int i1 = this.g;
      byte b1 = 0;
      while (i1 >= 0) {
        paramCanvas.drawCircle(this.k, this.l, Math.min(i1, i2), this.j);
        if (++b1 >= 2) {
          Paint paint = this.j;
          float f1 = this.k;
          float f2 = this.l;
          float f3 = a(6.0F);
          i1 = this.q;
          Shader.TileMode tileMode = Shader.TileMode.MIRROR;
          paint.setShader(new RadialGradient(f1, f2, f3, new int[] { 1157627903, i1, 1140850688 }, null, tileMode));
          this.j.setStyle(Paint.Style.STROKE);
          this.j.setColor(this.q);
          paramCanvas.drawCircle(this.k, this.l, (this.g % i2), this.j);
          break;
        } 
        i1 -= i2;
      } 
      this.j.setShader(null);
      this.j.setStyle(Paint.Style.FILL);
    } 
  }
  
  public int getOpacity() { return 0; }
  
  public boolean isCircle() { return this.e; }
  
  public boolean isSingle() { return this.p; }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    onTouchEvent(paramMotionEvent);
    return false;
  }
  
  public void onTouchEvent(MotionEvent paramMotionEvent) {
    int i1;
    if (!this.m.hasOnClickListeners() && !this.f)
      return; 
    switch (paramMotionEvent.getAction()) {
      default:
        return;
      case 1:
      case 3:
      case 4:
        this.b = 2;
        return;
      case 0:
        break;
    } 
    Rect rect = getBounds();
    if (this.e) {
      this.l = (rect.bottom / 2);
      this.k = (rect.right / 2);
      i1 = Math.max(rect.bottom, rect.right) / 2;
    } else {
      this.k = paramMotionEvent.getX();
      this.l = paramMotionEvent.getY();
      i1 = (int)Math.hypot(rect.bottom, rect.right);
    } 
    this.c = i1;
    this.d = Math.max(this.c / 60, 1);
    this.g = 0;
    this.i.setEnabled(true);
    this.j.setAlpha(this.o);
    this.b = 1;
  }
  
  public void setAlpha(int paramInt) {
    this.o = paramInt;
    this.j.setAlpha(paramInt);
  }
  
  public void setBackgroundColor(int paramInt) { this.n = new ColorDrawable(paramInt); }
  
  public void setCircle(boolean paramBoolean) { this.e = paramBoolean; }
  
  public void setColorFilter(ColorFilter paramColorFilter) { this.j.setColorFilter(paramColorFilter); }
  
  public void setRippleColor(int paramInt) {
    this.r = paramInt;
    this.j.setColor(paramInt);
    this.o = this.j.getAlpha();
  }
  
  public void setRippleLineColor(int paramInt) { this.q = paramInt; }
  
  public void setSingle(boolean paramBoolean) { this.p = paramBoolean; }
  
  private class task extends TimerTaskX {
    private task(RippleHelper this$0) {}
    
    public void run() {
      RippleHelper rippleHelper;
      int j;
      int i;
      switch (RippleHelper.a(this.a)) {
        default:
          RippleHelper.a(this.a, 0);
          setEnabled(false);
          return;
        case 3:
          RippleHelper.b(this.a, RippleHelper.h(this.a) - Math.max(RippleHelper.h(this.a) / 16, 4));
          RippleHelper.i(this.a).setAlpha(RippleHelper.h(this.a));
          RippleHelper.f(this.a).postInvalidate();
          if (RippleHelper.h(this.a) < 4) {
            RippleHelper.c(this.a, 0);
            return;
          } 
          return;
        case 2:
          RippleHelper.a(this.a, RippleHelper.c(this.a) + RippleHelper.d(this.a) * 4);
          RippleHelper.b(this.a, Math.min(RippleHelper.e(this.a), RippleHelper.c(this.a) / RippleHelper.d(this.a) * 2));
          RippleHelper.f(this.a).postInvalidate();
          if (RippleHelper.c(this.a) / RippleHelper.g(this.a) >= 1) {
            RippleHelper.a(this.a, RippleHelper.g(this.a));
            RippleHelper.b(this.a, RippleHelper.e(this.a));
            RippleHelper.c(this.a, 3);
            return;
          } 
          return;
        case 1:
          break;
      } 
      if (RippleHelper.b(this.a)) {
        i = (rippleHelper = this.a).c(this.a);
        j = Math.max(RippleHelper.c(this.a) / 16, RippleHelper.d(this.a));
      } else {
        i = (rippleHelper = this.a).c(this.a);
        j = RippleHelper.d(this.a);
      } 
      RippleHelper.a(rippleHelper, i + j);
      RippleHelper.b(this.a, Math.min(RippleHelper.e(this.a), RippleHelper.c(this.a) / RippleHelper.d(this.a)));
      RippleHelper.f(this.a).postInvalidate();
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\RippleHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
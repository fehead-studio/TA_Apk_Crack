package android.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

public class FloatWindow {
  private Context a;
  
  private TitleBar b;
  
  private WindowManager c;
  
  private WindowManager.LayoutParams d;
  
  private LinearLayout e;
  
  private FrameLayout f;
  
  private int g;
  
  private DisplayMetrics h;
  
  private int i;
  
  private int j;
  
  public FloatWindow(Context paramContext) {
    this.a = paramContext;
    this.h = paramContext.getResources().getDisplayMetrics();
    this.i = a();
    this.j = b();
    a(paramContext);
  }
  
  private int a() { return (this.a.getResources().getDisplayMetrics()).widthPixels; }
  
  private int a(float paramFloat) { return (int)TypedValue.applyDimension(1, paramFloat, this.h); }
  
  private void a(Context paramContext) {
    this.c = (WindowManager)paramContext.getApplicationContext().getSystemService("window");
    this.d = new WindowManager.LayoutParams();
    this.d.format = 1;
    this.d.flags = 262176;
    this.d.type = 2002;
    this.d.width = -2;
    this.d.height = -2;
    this.e = new ContentView(this, paramContext);
    this.e.setPadding(a(8.0F), a(8.0F), a(8.0F), a(8.0F));
    this.e.setOrientation(1);
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(new int[] { 16842801, 16842806 });
    int k = typedArray.getColor(0, 16711935);
    this.g = typedArray.getColor(1, 16711935);
    typedArray.recycle();
    GradientDrawable gradientDrawable = new GradientDrawable();
    gradientDrawable.setColor(k);
    gradientDrawable.setCornerRadius(4.0F);
    gradientDrawable.setStroke(2, this.g);
    gradientDrawable.setAlpha(136);
    this.e.setBackgroundDrawable(gradientDrawable);
    this.c.addView(this.e, this.d);
    this.e.setVisibility(8);
    this.b = new TitleBar(this, paramContext);
    this.f = new FrameLayout(paramContext);
    this.e.addView(this.b);
    this.e.addView(this.f);
  }
  
  private void a(boolean paramBoolean) {
    WindowManager.LayoutParams layoutParams;
    int k = 8;
    if (paramBoolean) {
      if (this.d.flags == 8) {
        this.c.removeView(this.e);
        this.c.addView(this.e, this.d);
        layoutParams = this.d;
        k = 262176;
      } else {
        return;
      } 
    } else {
      layoutParams = this.d;
    } 
    layoutParams.flags = k;
    this.c.updateViewLayout(this.e, this.d);
  }
  
  private int b() { return (this.a.getResources().getDisplayMetrics()).heightPixels; }
  
  public void dismiss() { this.c.removeView(this.e); }
  
  public Drawable getBackground() { return this.e.getBackground(); }
  
  public void hide() { this.e.setVisibility(8); }
  
  public void setBackground(Drawable paramDrawable) { this.e.setBackgroundDrawable(paramDrawable); }
  
  public void setContentView(View paramView) {
    this.f.removeAllViews();
    this.f.addView(paramView);
  }
  
  public void setFlags(int paramInt) {
    this.d.flags = paramInt;
    this.c.updateViewLayout(this.e, this.d);
  }
  
  public void setFormat(int paramInt) {
    this.d.format = paramInt;
    this.c.updateViewLayout(this.e, this.d);
  }
  
  public void setTitle(CharSequence paramCharSequence) { this.b.setTitle(paramCharSequence); }
  
  public void setType(int paramInt) {
    this.d.type = paramInt;
    this.c.updateViewLayout(this.e, this.d);
  }
  
  public void show() { this.e.setVisibility(0); }
  
  private class ContentView extends LinearLayout {
    private int b = 0;
    
    private int c = 0;
    
    private int d;
    
    private int e;
    
    private int f;
    
    private int g;
    
    private int h;
    
    private int i;
    
    private boolean j;
    
    private int k;
    
    private boolean l;
    
    public ContentView(FloatWindow this$0, Context param1Context) {
      super(param1Context);
      this.k = FloatWindow.a(this$0, 8.0F);
    }
    
    public boolean onInterceptTouchEvent(MotionEvent param1MotionEvent) {
      FloatWindow floatWindow;
      boolean bool;
      if (param1MotionEvent.getAction() == 4) {
        floatWindow = this.a;
        bool = false;
      } else if (param1MotionEvent.getAction() == 0) {
        floatWindow = this.a;
        bool = true;
      } else {
        return super.onInterceptTouchEvent(param1MotionEvent);
      } 
      FloatWindow.a(floatWindow, bool);
      return super.onInterceptTouchEvent(param1MotionEvent);
    }
    
    public boolean onTouchEvent(MotionEvent param1MotionEvent) {
      this.d = (int)param1MotionEvent.getRawY();
      this.e = (int)param1MotionEvent.getRawX();
      if (param1MotionEvent.getAction() == 4) {
        FloatWindow.a(this.a, false);
      } else if (param1MotionEvent.getAction() == 0) {
        FloatWindow.a(this.a, true);
      } 
      if (param1MotionEvent.getAction() == 0) {
        if (getWidth() - param1MotionEvent.getX() < this.k)
          this.j = true; 
        if (getHeight() - param1MotionEvent.getY() < this.k)
          this.l = true; 
        this.f = getWidth();
        this.g = getHeight();
        this.c = this.d;
        this.b = this.e;
        this.h = (FloatWindow.b(this.a)).x;
        this.i = (FloatWindow.b(this.a)).y;
        return true;
      } 
      if (param1MotionEvent.getAction() == 2) {
        (FloatWindow.b(this.a)).x = this.h;
        (FloatWindow.b(this.a)).y = this.i;
        if (this.j)
          (FloatWindow.b(this.a)).width = Math.min(this.f + this.e - this.b, FloatWindow.e(this.a)); 
        if (this.l)
          (FloatWindow.b(this.a)).height = Math.min(this.g + this.d - this.c, FloatWindow.f(this.a)); 
        FloatWindow.d(this.a).updateViewLayout(FloatWindow.c(this.a), FloatWindow.b(this.a));
        return true;
      } 
      if (param1MotionEvent.getAction() == 1) {
        this.j = false;
        this.l = false;
      } 
      return true;
    }
  }
  
  private class TitleBar extends LinearLayout {
    private TextView b;
    
    public TitleBar(FloatWindow this$0, Context param1Context) {
      super(param1Context);
      this.b = new FloatWindow.TitleView(this$0, param1Context);
      this.b.setSingleLine(true);
      TextView textView = new TextView(param1Context);
      textView.setText("X");
      textView.setGravity(17);
      GradientDrawable gradientDrawable = new GradientDrawable();
      gradientDrawable.setColor(1140850943);
      gradientDrawable.setCornerRadius(4.0F);
      gradientDrawable.setStroke(2, FloatWindow.a(this$0));
      gradientDrawable.setAlpha(136);
      textView.setBackgroundDrawable(gradientDrawable);
      textView.setTextSize(1, 18.0F);
      textView.setOnClickListener(new View.OnClickListener(this, this$0) {
            public void onClick(View param2View) { this.b.a.dismiss(); }
          });
      addView(this.b, new LinearLayout.LayoutParams(-1, FloatWindow.a(this$0, 24.0F), 1.0F));
      addView(textView, new LinearLayout.LayoutParams(FloatWindow.a(this$0, 24.0F), FloatWindow.a(this$0, 24.0F)));
    }
    
    public void setTitle(CharSequence param1CharSequence) { this.b.setText(param1CharSequence); }
  }
  
  class null implements View.OnClickListener {
    null(FloatWindow this$0, FloatWindow param1FloatWindow) {}
    
    public void onClick(View param1View) { this.b.a.dismiss(); }
  }
  
  private class TitleView extends TextView {
    private int b = 0;
    
    private int c = 0;
    
    private int d = 0;
    
    private int e = 0;
    
    private int f = 0;
    
    private int g;
    
    private int h;
    
    public TitleView(FloatWindow this$0, Context param1Context) { super(param1Context); }
    
    public boolean onTouchEvent(MotionEvent param1MotionEvent) {
      Rect rect = new Rect();
      getWindowVisibleDisplayFrame(rect);
      this.f = rect.top;
      this.g = (int)param1MotionEvent.getRawY();
      this.h = (int)param1MotionEvent.getRawX();
      if (param1MotionEvent.getAction() == 0) {
        this.e = this.g - (int)param1MotionEvent.getY();
        this.d = this.h - (int)param1MotionEvent.getX();
        this.c = this.g;
        this.b = this.h;
      } else if (param1MotionEvent.getAction() == 2) {
        (FloatWindow.b(this.a)).gravity = 51;
        (FloatWindow.b(this.a)).x = this.d + this.h - this.b;
        (FloatWindow.b(this.a)).y = this.e + this.g - this.c - this.f + 3;
        FloatWindow.d(this.a).updateViewLayout(FloatWindow.c(this.a), FloatWindow.b(this.a));
      } 
      return true;
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\app\FloatWindow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
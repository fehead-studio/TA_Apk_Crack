package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class SlidingLayout extends HorizontalScrollView {
  private int a;
  
  private int b = 0;
  
  private int c = 0;
  
  private int d = 0;
  
  private boolean e;
  
  private boolean f;
  
  private LinearLayout g;
  
  private OnMenuOpenedListener h;
  
  private OnMenuClosedListener i;
  
  private OnMenuStateChangeListener j;
  
  private boolean k;
  
  public SlidingLayout(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  public SlidingLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a(Context paramContext) {
    setHorizontalScrollBarEnabled(false);
    this.a = (paramContext.getResources().getDisplayMetrics()).widthPixels;
    this.b = this.a / 10;
    this.g = new LinearLayout(paramContext);
    super.addView(this.g);
  }
  
  public void addView(View paramView) { this.g.addView(paramView); }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams) { this.g.addView(paramView, paramLayoutParams); }
  
  public void closeMenu() {
    smoothScrollTo(this.c, 0);
    if (this.f && this.i != null)
      this.i.onMenuClosed(this); 
    this.f = false;
  }
  
  public int getMenuWidth() { return this.c; }
  
  public int getTouchScale() { return this.b; }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) { return (this.f || paramMotionEvent.getX() < this.b) ? super.onInterceptTouchEvent(paramMotionEvent) : 0; }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean) {
      if (!this.e) {
        scrollTo(this.c, 0);
      } else {
        closeMenu();
      } 
      this.e = true;
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    if (!this.e) {
      View view2 = this.g.getChildAt(0);
      View view1 = this.g.getChildAt(1);
      ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
      if (this.c == 0 && layoutParams.width < 0)
        layoutParams.width = (int)(this.a * 0.8D); 
      this.c = layoutParams.width;
      this.d = layoutParams.width / 2;
      (view1.getLayoutParams()).width = this.a;
      (this.g.getLayoutParams()).width = this.a + this.c;
    } 
    if (this.f) {
      openMenu();
    } else {
      closeMenu();
    } 
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    switch (paramMotionEvent.getAction()) {
      default:
        return super.onTouchEvent(paramMotionEvent);
      case 2:
        if (!this.k && this.j != null)
          this.j.onMenuStateChange(this, this.f); 
        this.k = true;
      case 1:
        break;
    } 
    int m = getScrollX();
    if (this.f ? (m > this.d / 2) : (m > this.d * 1.5D)) {
      closeMenu();
    } else {
      openMenu();
    } 
    this.k = false;
    return true;
  }
  
  public void openMenu() {
    smoothScrollTo(0, 0);
    if (!this.f && this.h != null)
      this.h.onMenuOpened(this); 
    this.f = true;
  }
  
  public void setMenuWidth(int paramInt) { this.c = paramInt; }
  
  public void setOnMenuClosedListener(OnMenuClosedListener paramOnMenuClosedListener) { this.i = paramOnMenuClosedListener; }
  
  public void setOnMenuOpenedListener(OnMenuOpenedListener paramOnMenuOpenedListener) { this.h = paramOnMenuOpenedListener; }
  
  public void setOnMenuStateChangeListener(OnMenuStateChangeListener paramOnMenuStateChangeListener) { this.j = paramOnMenuStateChangeListener; }
  
  public void setTouchScale(int paramInt) { this.b = paramInt; }
  
  public void toggle() {
    if (this.f) {
      closeMenu();
      return;
    } 
    openMenu();
  }
  
  public static interface OnMenuClosedListener {
    void onMenuClosed(View param1View);
  }
  
  public static interface OnMenuOpenedListener {
    void onMenuOpened(View param1View);
  }
  
  public static interface OnMenuStateChangeListener {
    void onMenuStateChange(View param1View, boolean param1Boolean);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\SlidingLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
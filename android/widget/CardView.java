package android.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;

public class CardView extends FrameLayout implements CardViewDelegate {
  private static final CardViewImpl a;
  
  private DisplayMetrics b;
  
  private boolean c;
  
  private boolean d;
  
  private final Rect e = new Rect();
  
  private final Rect f = new Rect();
  
  static  {
    CardViewEclairMr1 cardViewEclairMr1;
    if (Build.VERSION.SDK_INT >= 21) {
      cardViewEclairMr1 = new CardViewApi21();
    } else if (Build.VERSION.SDK_INT >= 17) {
      cardViewEclairMr1 = new CardViewJellybeanMr1();
    } else {
      cardViewEclairMr1 = new CardViewEclairMr1();
    } 
    a = cardViewEclairMr1;
    a.initStatic();
  }
  
  public CardView(Context paramContext) {
    super(paramContext);
    a(paramContext, null, 0);
  }
  
  public CardView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0);
  }
  
  public CardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  private float a(float paramFloat) { return TypedValue.applyDimension(1, paramFloat, this.b); }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    this.b = paramContext.getResources().getDisplayMetrics();
    TypedArray typedArray = paramContext.getTheme().obtainStyledAttributes(new int[] { 16842801 });
    paramInt = typedArray.getColor(0, -328966);
    typedArray.recycle();
    float f3 = a(2.0F);
    float f2 = a(2.0F);
    float f1 = a(2.0F);
    this.c = false;
    this.d = true;
    this.e.left = 0;
    this.e.top = 0;
    this.e.right = 0;
    this.e.bottom = 0;
    if (f2 > f1)
      f1 = f2; 
    a.initialize(this, paramContext, paramInt, f3, f2, f1);
  }
  
  public float getCardElevation() { return a.getElevation(this); }
  
  public int getContentPaddingBottom() { return this.e.bottom; }
  
  public int getContentPaddingLeft() { return this.e.left; }
  
  public int getContentPaddingRight() { return this.e.right; }
  
  public int getContentPaddingTop() { return this.e.top; }
  
  public float getMaxCardElevation() { return a.getMaxElevation(this); }
  
  public boolean getPreventCornerOverlap() { return this.d; }
  
  public float getRadius() { return a.getRadius(this); }
  
  public boolean getUseCompatPadding() { return this.c; }
  
  @SuppressLint({"SwitchIntDef"})
  protected void onMeasure(int paramInt1, int paramInt2) {
    int j = paramInt1;
    int i = paramInt2;
    if (!(a instanceof CardViewApi21)) {
      i = View.MeasureSpec.getMode(paramInt1);
      if (i == Integer.MIN_VALUE || i == 1073741824)
        paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(a.getMinWidth(this)), View.MeasureSpec.getSize(paramInt1)), i); 
      i = View.MeasureSpec.getMode(paramInt2);
      if (i != Integer.MIN_VALUE && i != 1073741824) {
        j = paramInt1;
        i = paramInt2;
      } else {
        i = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(a.getMinHeight(this)), View.MeasureSpec.getSize(paramInt2)), i);
        j = paramInt1;
      } 
    } 
    super.onMeasure(j, i);
  }
  
  public void setBackgroundColor(int paramInt) { a.setBackgroundColor(this, paramInt); }
  
  public void setCardBackgroundColor(int paramInt) { a.setBackgroundColor(this, paramInt); }
  
  public void setCardElevation(float paramFloat) { a.setElevation(this, paramFloat); }
  
  public void setContentPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.e.set(paramInt1, paramInt2, paramInt3, paramInt4);
    a.updatePadding(this);
  }
  
  public void setMaxCardElevation(float paramFloat) { a.setMaxElevation(this, paramFloat); }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPaddingRelative(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPreventCornerOverlap(boolean paramBoolean) {
    if (paramBoolean == this.d)
      return; 
    this.d = paramBoolean;
    a.onPreventCornerOverlapChanged(this);
  }
  
  public void setRadius(float paramFloat) { a.setRadius(this, paramFloat); }
  
  public void setShadowPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.f.set(paramInt1, paramInt2, paramInt3, paramInt4);
    super.setPadding(paramInt1 + this.e.left, paramInt2 + this.e.top, paramInt3 + this.e.right, paramInt4 + this.e.bottom);
  }
  
  public void setUseCompatPadding(boolean paramBoolean) {
    if (this.c == paramBoolean)
      return; 
    this.c = paramBoolean;
    a.onCompatPaddingChanged(this);
  }
  
  @SuppressLint({"NewApi"})
  static class CardViewApi21 implements CardViewImpl {
    public float getElevation(CardViewDelegate param1CardViewDelegate) { return ((View)param1CardViewDelegate).getElevation(); }
    
    public float getMaxElevation(CardViewDelegate param1CardViewDelegate) { return ((RoundRectDrawable)param1CardViewDelegate.getBackground()).a(); }
    
    public float getMinHeight(CardViewDelegate param1CardViewDelegate) { return getRadius(param1CardViewDelegate) * 2.0F; }
    
    public float getMinWidth(CardViewDelegate param1CardViewDelegate) { return getRadius(param1CardViewDelegate) * 2.0F; }
    
    public float getRadius(CardViewDelegate param1CardViewDelegate) { return ((RoundRectDrawable)param1CardViewDelegate.getBackground()).getRadius(); }
    
    public void initStatic() {}
    
    public void initialize(CardViewDelegate param1CardViewDelegate, Context param1Context, int param1Int, float param1Float1, float param1Float2, float param1Float3) {
      param1CardViewDelegate.setBackgroundDrawable(new RoundRectDrawable(param1Int, param1Float1));
      View view = (View)param1CardViewDelegate;
      view.setClipToOutline(true);
      view.setElevation(param1Float2);
      setMaxElevation(param1CardViewDelegate, param1Float3);
    }
    
    public void onCompatPaddingChanged(CardViewDelegate param1CardViewDelegate) { setMaxElevation(param1CardViewDelegate, getMaxElevation(param1CardViewDelegate)); }
    
    public void onPreventCornerOverlapChanged(CardViewDelegate param1CardViewDelegate) { setMaxElevation(param1CardViewDelegate, getMaxElevation(param1CardViewDelegate)); }
    
    public void setBackgroundColor(CardViewDelegate param1CardViewDelegate, int param1Int) { ((RoundRectDrawable)param1CardViewDelegate.getBackground()).setColor(param1Int); }
    
    public void setElevation(CardViewDelegate param1CardViewDelegate, float param1Float) { ((View)param1CardViewDelegate).setElevation(param1Float); }
    
    public void setMaxElevation(CardViewDelegate param1CardViewDelegate, float param1Float) {
      ((RoundRectDrawable)param1CardViewDelegate.getBackground()).a(param1Float, param1CardViewDelegate.getUseCompatPadding(), param1CardViewDelegate.getPreventCornerOverlap());
      updatePadding(param1CardViewDelegate);
    }
    
    public void setRadius(CardViewDelegate param1CardViewDelegate, float param1Float) { ((RoundRectDrawable)param1CardViewDelegate.getBackground()).a(param1Float); }
    
    public void updatePadding(CardViewDelegate param1CardViewDelegate) {
      if (!param1CardViewDelegate.getUseCompatPadding()) {
        param1CardViewDelegate.setShadowPadding(0, 0, 0, 0);
        return;
      } 
      float f1 = getMaxElevation(param1CardViewDelegate);
      float f2 = getRadius(param1CardViewDelegate);
      int i = (int)Math.ceil(RoundRectDrawableWithShadow.b(f1, f2, param1CardViewDelegate.getPreventCornerOverlap()));
      int j = (int)Math.ceil(RoundRectDrawableWithShadow.a(f1, f2, param1CardViewDelegate.getPreventCornerOverlap()));
      param1CardViewDelegate.setShadowPadding(i, j, i, j);
    }
  }
  
  static class CardViewEclairMr1 implements CardViewImpl {
    final RectF a = new RectF();
    
    private RoundRectDrawableWithShadow a(CardViewDelegate param1CardViewDelegate) { return (RoundRectDrawableWithShadow)param1CardViewDelegate.getBackground(); }
    
    RoundRectDrawableWithShadow a(Context param1Context, int param1Int, float param1Float1, float param1Float2, float param1Float3) { return new RoundRectDrawableWithShadow(param1Context.getResources(), param1Int, param1Float1, param1Float2, param1Float3); }
    
    public float getElevation(CardViewDelegate param1CardViewDelegate) { return a(param1CardViewDelegate).b(); }
    
    public float getMaxElevation(CardViewDelegate param1CardViewDelegate) { return a(param1CardViewDelegate).c(); }
    
    public float getMinHeight(CardViewDelegate param1CardViewDelegate) { return a(param1CardViewDelegate).e(); }
    
    public float getMinWidth(CardViewDelegate param1CardViewDelegate) { return a(param1CardViewDelegate).d(); }
    
    public float getRadius(CardViewDelegate param1CardViewDelegate) { return a(param1CardViewDelegate).a(); }
    
    public void initStatic() { RoundRectDrawableWithShadow.c = new RoundRectDrawableWithShadow.RoundRectHelper(this) {
          public void drawRoundRect(Canvas param2Canvas, RectF param2RectF, float param2Float, Paint param2Paint) {
            float f1 = 2.0F * param2Float;
            float f2 = param2RectF.width() - f1 - 1.0F;
            float f3 = param2RectF.height();
            if (param2Float >= 1.0F) {
              param2Float += 0.5F;
              RectF rectF = this.a.a;
              float f = -param2Float;
              rectF.set(f, f, param2Float, param2Float);
              int i = param2Canvas.save();
              param2Canvas.translate(param2RectF.left + param2Float, param2RectF.top + param2Float);
              param2Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param2Paint);
              param2Canvas.translate(f2, 0.0F);
              param2Canvas.rotate(90.0F);
              param2Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param2Paint);
              param2Canvas.translate(f3 - f1 - 1.0F, 0.0F);
              param2Canvas.rotate(90.0F);
              param2Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param2Paint);
              param2Canvas.translate(f2, 0.0F);
              param2Canvas.rotate(90.0F);
              param2Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param2Paint);
              param2Canvas.restoreToCount(i);
              param2Canvas.drawRect(param2RectF.left + param2Float - 1.0F, param2RectF.top, param2RectF.right - param2Float + 1.0F, param2RectF.top + param2Float, param2Paint);
              param2Canvas.drawRect(param2RectF.left + param2Float - 1.0F, param2RectF.bottom - param2Float + 1.0F, param2RectF.right - param2Float + 1.0F, param2RectF.bottom, param2Paint);
            } 
            f1 = param2RectF.left;
            f2 = param2RectF.top;
            param2Canvas.drawRect(f1, Math.max(0.0F, param2Float - 1.0F) + f2, param2RectF.right, param2RectF.bottom - param2Float + 1.0F, param2Paint);
          }
        }; }
    
    public void initialize(CardViewDelegate param1CardViewDelegate, Context param1Context, int param1Int, float param1Float1, float param1Float2, float param1Float3) {
      RoundRectDrawableWithShadow roundRectDrawableWithShadow = a(param1Context, param1Int, param1Float1, param1Float2, param1Float3);
      roundRectDrawableWithShadow.setAddPaddingForCorners(param1CardViewDelegate.getPreventCornerOverlap());
      param1CardViewDelegate.setBackgroundDrawable(roundRectDrawableWithShadow);
      updatePadding(param1CardViewDelegate);
    }
    
    public void onCompatPaddingChanged(CardViewDelegate param1CardViewDelegate) {}
    
    public void onPreventCornerOverlapChanged(CardViewDelegate param1CardViewDelegate) {
      a(param1CardViewDelegate).setAddPaddingForCorners(param1CardViewDelegate.getPreventCornerOverlap());
      updatePadding(param1CardViewDelegate);
    }
    
    public void setBackgroundColor(CardViewDelegate param1CardViewDelegate, int param1Int) { a(param1CardViewDelegate).setColor(param1Int); }
    
    public void setElevation(CardViewDelegate param1CardViewDelegate, float param1Float) { a(param1CardViewDelegate).b(param1Float); }
    
    public void setMaxElevation(CardViewDelegate param1CardViewDelegate, float param1Float) {
      a(param1CardViewDelegate).c(param1Float);
      updatePadding(param1CardViewDelegate);
    }
    
    public void setRadius(CardViewDelegate param1CardViewDelegate, float param1Float) {
      a(param1CardViewDelegate).a(param1Float);
      updatePadding(param1CardViewDelegate);
    }
    
    public void updatePadding(CardViewDelegate param1CardViewDelegate) {
      Rect rect = new Rect();
      a(param1CardViewDelegate).a(rect);
      View view = (View)param1CardViewDelegate;
      view.setMinimumHeight((int)Math.ceil(getMinHeight(param1CardViewDelegate)));
      view.setMinimumWidth((int)Math.ceil(getMinWidth(param1CardViewDelegate)));
      param1CardViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }
  }
  
  class null implements RoundRectDrawableWithShadow.RoundRectHelper {
    null(CardView this$0) {}
    
    public void drawRoundRect(Canvas param1Canvas, RectF param1RectF, float param1Float, Paint param1Paint) {
      float f1 = 2.0F * param1Float;
      float f2 = param1RectF.width() - f1 - 1.0F;
      float f3 = param1RectF.height();
      if (param1Float >= 1.0F) {
        param1Float += 0.5F;
        RectF rectF = this.a.a;
        float f = -param1Float;
        rectF.set(f, f, param1Float, param1Float);
        int i = param1Canvas.save();
        param1Canvas.translate(param1RectF.left + param1Float, param1RectF.top + param1Float);
        param1Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param1Paint);
        param1Canvas.translate(f2, 0.0F);
        param1Canvas.rotate(90.0F);
        param1Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param1Paint);
        param1Canvas.translate(f3 - f1 - 1.0F, 0.0F);
        param1Canvas.rotate(90.0F);
        param1Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param1Paint);
        param1Canvas.translate(f2, 0.0F);
        param1Canvas.rotate(90.0F);
        param1Canvas.drawArc(this.a.a, 180.0F, 90.0F, true, param1Paint);
        param1Canvas.restoreToCount(i);
        param1Canvas.drawRect(param1RectF.left + param1Float - 1.0F, param1RectF.top, param1RectF.right - param1Float + 1.0F, param1RectF.top + param1Float, param1Paint);
        param1Canvas.drawRect(param1RectF.left + param1Float - 1.0F, param1RectF.bottom - param1Float + 1.0F, param1RectF.right - param1Float + 1.0F, param1RectF.bottom, param1Paint);
      } 
      f1 = param1RectF.left;
      f2 = param1RectF.top;
      param1Canvas.drawRect(f1, Math.max(0.0F, param1Float - 1.0F) + f2, param1RectF.right, param1RectF.bottom - param1Float + 1.0F, param1Paint);
    }
  }
  
  static class CardViewJellybeanMr1 extends CardViewEclairMr1 {
    public void initStatic() { RoundRectDrawableWithShadow.c = new RoundRectDrawableWithShadow.RoundRectHelper(this) {
          public void drawRoundRect(Canvas param2Canvas, RectF param2RectF, float param2Float, Paint param2Paint) { param2Canvas.drawRoundRect(param2RectF, param2Float, param2Float, param2Paint); }
        }; }
  }
  
  class null implements RoundRectDrawableWithShadow.RoundRectHelper {
    null(CardView this$0) {}
    
    public void drawRoundRect(Canvas param1Canvas, RectF param1RectF, float param1Float, Paint param1Paint) { param1Canvas.drawRoundRect(param1RectF, param1Float, param1Float, param1Paint); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\CardView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
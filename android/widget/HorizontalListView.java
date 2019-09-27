package android.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class HorizontalListView extends AdapterView<ListAdapter> {
  private int A;
  
  private boolean B = false;
  
  private boolean C = false;
  
  private View.OnClickListener D;
  
  private Rect E;
  
  private int F = -2004318072;
  
  private Drawable G;
  
  private int H;
  
  private DataSetObserver I = new DataSetObserver(this) {
      public void onChanged() {
        HorizontalListView.a(this.a, true);
        HorizontalListView.b(this.a, false);
        HorizontalListView.b(this.a);
        this.a.invalidate();
        this.a.requestLayout();
      }
      
      public void onInvalidated() {
        HorizontalListView.b(this.a, false);
        HorizontalListView.b(this.a);
        HorizontalListView.c(this.a);
        this.a.invalidate();
        this.a.requestLayout();
      }
    };
  
  private Runnable J = new Runnable(this) {
      public void run() { this.a.requestLayout(); }
    };
  
  protected Scroller a = new Scroller(getContext());
  
  protected ListAdapter b;
  
  protected int c;
  
  protected int d;
  
  private final DisplayMetrics e;
  
  private final GestureListener f = new GestureListener(this, null);
  
  private GestureDetector g;
  
  private int h;
  
  private List<Queue<View>> i = new ArrayList();
  
  private boolean j = false;
  
  private Rect k = new Rect();
  
  private View l = null;
  
  private int m = 0;
  
  private Drawable n = null;
  
  private Integer o = null;
  
  private int p = Integer.MAX_VALUE;
  
  private int q;
  
  private int r;
  
  private int s;
  
  private RunningOutOfDataListener t = null;
  
  private int u = 0;
  
  private boolean v = false;
  
  private OnScrollStateChangedListener w = null;
  
  private OnScrollStateChangedListener.ScrollState x = OnScrollStateChangedListener.ScrollState.SCROLL_STATE_IDLE;
  
  private EdgeEffect y;
  
  private EdgeEffect z;
  
  public HorizontalListView(Context paramContext) { this(paramContext, null); }
  
  public HorizontalListView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    this.e = paramContext.getResources().getDisplayMetrics();
    this.y = new EdgeEffect(paramContext);
    this.z = new EdgeEffect(paramContext);
    this.g = new GestureDetector(paramContext, this.f);
    a();
    setWillNotDraw(false);
    HoneycombPlus.setFriction(this.a, 0.009F);
  }
  
  private int a(float paramFloat) { return (int)TypedValue.applyDimension(1, paramFloat, this.e); }
  
  private void a() {
    this.q = -1;
    this.r = -1;
    this.s = -1;
    this.h = 0;
    this.c = 0;
    this.d = 0;
    this.p = Integer.MAX_VALUE;
    setCurrentScrollState(OnScrollStateChangedListener.ScrollState.SCROLL_STATE_IDLE);
  }
  
  private void a(int paramInt) {
    this.i.clear();
    for (byte b1 = 0; b1 < paramInt; b1++)
      this.i.add(new LinkedList()); 
  }
  
  private void a(int paramInt1, int paramInt2) {
    while (paramInt1 + paramInt2 + this.m < getWidth() && this.r + 1 < this.b.getCount()) {
      int i1;
      this.r++;
      if (this.q < 0)
        this.q = this.r; 
      View view = this.b.getView(this.r, b(this.r), this);
      a(view, -1);
      if (this.r == 0) {
        i1 = 0;
      } else {
        i1 = this.m;
      } 
      paramInt1 += i1 + view.getMeasuredWidth();
      g();
    } 
  }
  
  private void a(int paramInt, View paramView) {
    paramInt = this.b.getItemViewType(paramInt);
    if (c(paramInt))
      ((Queue)this.i.get(paramInt)).offer(paramView); 
  }
  
  private void a(Canvas paramCanvas) { // Byte code:
    //   0: aload_0
    //   1: getfield y : Landroid/widget/EdgeEffect;
    //   4: ifnull -> 96
    //   7: aload_0
    //   8: getfield y : Landroid/widget/EdgeEffect;
    //   11: invokevirtual isFinished : ()Z
    //   14: ifne -> 96
    //   17: aload_0
    //   18: invokespecial h : ()Z
    //   21: ifeq -> 96
    //   24: aload_1
    //   25: invokevirtual save : ()I
    //   28: istore_3
    //   29: aload_0
    //   30: invokevirtual getHeight : ()I
    //   33: istore_2
    //   34: aload_1
    //   35: ldc_w -90.0
    //   38: fconst_0
    //   39: fconst_0
    //   40: invokevirtual rotate : (FFF)V
    //   43: aload_1
    //   44: iload_2
    //   45: ineg
    //   46: aload_0
    //   47: invokevirtual getPaddingBottom : ()I
    //   50: iadd
    //   51: i2f
    //   52: fconst_0
    //   53: invokevirtual translate : (FF)V
    //   56: aload_0
    //   57: getfield y : Landroid/widget/EdgeEffect;
    //   60: aload_0
    //   61: invokespecial getRenderHeight : ()I
    //   64: aload_0
    //   65: invokespecial getRenderWidth : ()I
    //   68: invokevirtual setSize : (II)V
    //   71: iload_3
    //   72: istore_2
    //   73: aload_0
    //   74: getfield y : Landroid/widget/EdgeEffect;
    //   77: aload_1
    //   78: invokevirtual draw : (Landroid/graphics/Canvas;)Z
    //   81: ifeq -> 90
    //   84: iload_3
    //   85: istore_2
    //   86: aload_0
    //   87: invokevirtual invalidate : ()V
    //   90: aload_1
    //   91: iload_2
    //   92: invokevirtual restoreToCount : (I)V
    //   95: return
    //   96: aload_0
    //   97: getfield z : Landroid/widget/EdgeEffect;
    //   100: ifnull -> 184
    //   103: aload_0
    //   104: getfield z : Landroid/widget/EdgeEffect;
    //   107: invokevirtual isFinished : ()Z
    //   110: ifne -> 184
    //   113: aload_0
    //   114: invokespecial h : ()Z
    //   117: ifeq -> 184
    //   120: aload_1
    //   121: invokevirtual save : ()I
    //   124: istore_3
    //   125: aload_0
    //   126: invokevirtual getWidth : ()I
    //   129: istore_2
    //   130: aload_1
    //   131: ldc_w 90.0
    //   134: fconst_0
    //   135: fconst_0
    //   136: invokevirtual rotate : (FFF)V
    //   139: aload_1
    //   140: aload_0
    //   141: invokevirtual getPaddingTop : ()I
    //   144: i2f
    //   145: iload_2
    //   146: ineg
    //   147: i2f
    //   148: invokevirtual translate : (FF)V
    //   151: aload_0
    //   152: getfield z : Landroid/widget/EdgeEffect;
    //   155: aload_0
    //   156: invokespecial getRenderHeight : ()I
    //   159: aload_0
    //   160: invokespecial getRenderWidth : ()I
    //   163: invokevirtual setSize : (II)V
    //   166: iload_3
    //   167: istore_2
    //   168: aload_0
    //   169: getfield z : Landroid/widget/EdgeEffect;
    //   172: aload_1
    //   173: invokevirtual draw : (Landroid/graphics/Canvas;)Z
    //   176: ifeq -> 90
    //   179: iload_3
    //   180: istore_2
    //   181: goto -> 86
    //   184: return }
  
  private void a(Canvas paramCanvas, Rect paramRect) {
    if (this.n != null) {
      this.n.setBounds(paramRect);
      this.n.draw(paramCanvas);
    } 
  }
  
  private void a(View paramView) {
    int i1;
    ViewGroup.LayoutParams layoutParams = b(paramView);
    int i2 = ViewGroup.getChildMeasureSpec(this.A, getPaddingTop() + getPaddingBottom(), layoutParams.height);
    if (layoutParams.width > 0) {
      i1 = View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
    } else {
      i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    } 
    paramView.measure(i1, i2);
  }
  
  private void a(View paramView, int paramInt) {
    addViewInLayout(paramView, paramInt, b(paramView), true);
    a(paramView);
  }
  
  private void a(Boolean paramBoolean) {
    if (this.C != paramBoolean.booleanValue()) {
      HorizontalListView horizontalListView = this;
      while (horizontalListView.getParent() instanceof View) {
        if (horizontalListView.getParent() instanceof ListView || horizontalListView.getParent() instanceof ScrollView) {
          horizontalListView.getParent().requestDisallowInterceptTouchEvent(paramBoolean.booleanValue());
          this.C = paramBoolean.booleanValue();
          break;
        } 
        View view = (View)horizontalListView.getParent();
      } 
    } 
  }
  
  private View b(int paramInt) {
    paramInt = this.b.getItemViewType(paramInt);
    return c(paramInt) ? (View)((Queue)this.i.get(paramInt)).poll() : null;
  }
  
  private ViewGroup.LayoutParams b(View paramView) {
    ViewGroup.LayoutParams layoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams layoutParams1 = layoutParams2;
    if (layoutParams2 == null)
      layoutParams1 = new ViewGroup.LayoutParams(-2, -1); 
    return layoutParams1;
  }
  
  private void b() {
    a();
    removeAllViewsInLayout();
    requestLayout();
  }
  
  private void b(int paramInt1, int paramInt2) {
    while (paramInt1 + paramInt2 - this.m >= 0 && this.q >= 1) {
      this.q--;
      View view = this.b.getView(this.q, b(this.q), this);
      a(view, 0);
      if (this.q == 0) {
        i1 = view.getMeasuredWidth();
      } else {
        i1 = this.m + view.getMeasuredWidth();
      } 
      int i1 = paramInt1 - i1;
      int i2 = this.h;
      if (i1 + paramInt2 == 0) {
        paramInt1 = view.getMeasuredWidth();
      } else {
        paramInt1 = this.m;
        paramInt1 = view.getMeasuredWidth() + paramInt1;
      } 
      this.h = i2 - paramInt1;
      paramInt1 = i1;
    } 
  }
  
  private void b(Canvas paramCanvas) {
    int i1 = getChildCount();
    Rect rect = this.k;
    this.k.top = getPaddingTop();
    this.k.bottom = this.k.top + getRenderHeight();
    for (byte b1 = 0; b1 < i1; b1++) {
      if (b1 != i1 - 1 || !h(this.r)) {
        View view = getChildAt(b1);
        rect.left = view.getRight();
        rect.right = view.getRight() + this.m;
        if (rect.left < getPaddingLeft())
          rect.left = getPaddingLeft(); 
        if (rect.right > getWidth() - getPaddingRight())
          rect.right = getWidth() - getPaddingRight(); 
        a(paramCanvas, rect);
        if (b1 == 0 && view.getLeft() > getPaddingLeft()) {
          rect.left = getPaddingLeft();
          rect.right = view.getLeft();
          a(paramCanvas, rect);
        } 
      } 
    } 
  }
  
  private float c() { return (Build.VERSION.SDK_INT >= 14) ? IceCreamSandwichPlus.getCurrVelocity(this.a) : 30.0F; }
  
  private int c(int paramInt1, int paramInt2) {
    int i1 = getChildCount();
    for (byte b1 = 0; b1 < i1; b1++) {
      getChildAt(b1).getHitRect(this.k);
      if (this.k.contains(paramInt1, paramInt2))
        return b1; 
    } 
    return -1;
  }
  
  private boolean c(int paramInt) { return (paramInt < this.i.size()); }
  
  private void d(int paramInt) {
    View view = getRightmostChild();
    byte b1 = 0;
    if (view != null) {
      i1 = view.getRight();
    } else {
      i1 = 0;
    } 
    a(i1, paramInt);
    view = getLeftmostChild();
    int i1 = b1;
    if (view != null)
      i1 = view.getLeft(); 
    b(i1, paramInt);
  }
  
  private boolean d() {
    if (h(this.r)) {
      View view = getRightmostChild();
      if (view != null) {
        int i1 = this.p;
        this.p = this.c + view.getRight() - getPaddingLeft() - getRenderWidth();
        if (this.p < 0)
          this.p = 0; 
        if (this.p != i1)
          return true; 
      } 
    } 
    return false;
  }
  
  private void e() {
    if (this.l != null) {
      this.l.setPressed(false);
      refreshDrawableState();
      this.l = null;
    } 
  }
  
  private void e(int paramInt) {
    while (true) {
      View view = getLeftmostChild();
      if (view != null && view.getRight() + paramInt <= 0) {
        int i1;
        int i2 = this.h;
        if (h(this.q)) {
          i1 = view.getMeasuredWidth();
        } else {
          i1 = this.m + view.getMeasuredWidth();
        } 
        this.h = i2 + i1;
        a(this.q, view);
        removeViewInLayout(view);
        this.q++;
        continue;
      } 
      break;
    } 
    while (true) {
      View view = getRightmostChild();
      if (view != null && view.getLeft() + paramInt >= getWidth()) {
        a(this.r, view);
        removeViewInLayout(view);
        this.r--;
        continue;
      } 
      break;
    } 
  }
  
  private void f() {
    if (this.y != null)
      this.y.onRelease(); 
    if (this.z != null)
      this.z.onRelease(); 
  }
  
  private void f(int paramInt) {
    int i2 = getChildCount();
    int i3 = this.H;
    int i1 = 0;
    this.H = 0;
    if (i2 > 0) {
      this.h += paramInt;
      int i4 = this.h;
      for (paramInt = i1; paramInt < i2; paramInt++) {
        View view = getChildAt(paramInt);
        i1 = getPaddingLeft() + i4;
        int i5 = getPaddingTop();
        int i6 = view.getMeasuredWidth();
        int i7 = view.getMeasuredHeight() + i5;
        this.H = Math.max(this.H, getPaddingBottom() + i7);
        view.layout(i1, i5, i6 + i1, i7);
        i4 += view.getMeasuredWidth() + this.m;
      } 
      if (i3 == 0)
        (new Handler()).postDelayed(new Runnable(this) {
              public void run() { this.a.requestLayout(); }
            },  96L); 
    } 
  }
  
  private View g(int paramInt) { return (paramInt >= this.q && paramInt <= this.r) ? getChildAt(paramInt - this.q) : null; }
  
  private void g() {
    if (this.t != null && this.b != null && this.b.getCount() - this.r + 1 < this.u && !this.v) {
      this.v = true;
      this.t.onRunningOutOfData();
    } 
  }
  
  private View getLeftmostChild() { return getChildAt(0); }
  
  private int getRenderHeight() { return getHeight() - getPaddingTop() - getPaddingBottom(); }
  
  private int getRenderWidth() { return getWidth() - getPaddingLeft() - getPaddingRight(); }
  
  private View getRightmostChild() { return getChildAt(getChildCount() - 1); }
  
  private boolean h() {
    ListAdapter listAdapter = this.b;
    byte b1 = 0;
    int i1 = b1;
    if (listAdapter != null) {
      if (this.b.isEmpty())
        return false; 
      i1 = b1;
      if (this.p > 0)
        i1 = 1; 
    } 
    return i1;
  }
  
  private boolean h(int paramInt) { return (paramInt == this.b.getCount() - 1); }
  
  private void i(int paramInt) {
    if (this.y != null) {
      if (this.z == null)
        return; 
      int i1 = this.c + paramInt;
      if (this.a == null || this.a.isFinished()) {
        EdgeEffect edgeEffect;
        if (i1 < 0) {
          paramInt = Math.abs(paramInt);
          this.y.onPull(paramInt / getRenderWidth());
          if (!this.z.isFinished()) {
            edgeEffect = this.z;
          } else {
            return;
          } 
        } else if (i1 > this.p) {
          paramInt = Math.abs(paramInt);
          this.z.onPull(paramInt / getRenderWidth());
          if (!this.y.isFinished()) {
            edgeEffect = this.y;
          } else {
            return;
          } 
        } else {
          return;
        } 
        edgeEffect.onRelease();
      } 
    } 
  }
  
  private void setCurrentScrollState(OnScrollStateChangedListener.ScrollState paramScrollState) {
    if (this.x != paramScrollState && this.w != null)
      this.w.onScrollStateChanged(paramScrollState); 
    this.x = paramScrollState;
  }
  
  protected boolean a(MotionEvent paramMotionEvent) {
    this.B = this.a.isFinished() ^ true;
    this.a.forceFinished(true);
    setCurrentScrollState(OnScrollStateChangedListener.ScrollState.SCROLL_STATE_IDLE);
    e();
    if (!this.B) {
      int i1 = c((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      if (i1 >= 0) {
        this.l = getChildAt(i1);
        if (this.l != null) {
          this.l.setPressed(true);
          refreshDrawableState();
        } 
      } 
    } 
    return true;
  }
  
  protected boolean a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2) {
    this.a.fling(this.d, 0, (int)-paramFloat1, 0, 0, this.p, 0, 0);
    setCurrentScrollState(OnScrollStateChangedListener.ScrollState.SCROLL_STATE_FLING);
    requestLayout();
    return true;
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {
    if (this.E != null) {
      Paint paint = new Paint();
      paint.setColor(-2004318072);
      paramCanvas.drawRect(this.E, paint);
    } 
    if (this.s >= 0 && this.q <= this.s && this.r >= this.s && this.G != null) {
      View view = getSelectedView();
      if (view != null) {
        Rect rect = new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        this.G.setBounds(rect);
        this.G.draw(paramCanvas);
      } 
    } 
    super.dispatchDraw(paramCanvas);
    if (this.s >= 0 && this.q <= this.s && this.r >= this.s) {
      View view = getSelectedView();
      if (view != null) {
        Rect rect = new Rect(view.getLeft(), view.getBottom() - a(2.0F), view.getRight(), view.getBottom());
        Paint paint = new Paint();
        paint.setColor(this.F);
        paramCanvas.drawRect(rect, paint);
      } 
    } 
    a(paramCanvas);
  }
  
  protected void dispatchSetPressed(boolean paramBoolean) {}
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent) {
    boolean bool = super.dispatchTouchEvent(paramMotionEvent) | this.g.onTouchEvent(paramMotionEvent);
    int i1 = paramMotionEvent.getAction();
    if (i1 != 3) {
      switch (i1) {
        default:
          return bool;
        case 1:
          this.E = null;
          invalidate();
          return bool;
        case 0:
          break;
      } 
      i1 = c((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      if (i1 >= 0) {
        View view = getChildAt(i1);
        this.E = new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        invalidate();
        return bool;
      } 
      return bool;
    } 
  }
  
  public ListAdapter getAdapter() { return this.b; }
  
  public int getFirstVisiblePosition() { return this.q; }
  
  public int getLastVisiblePosition() { return this.r; }
  
  protected float getLeftFadingEdgeStrength() {
    int i1 = getHorizontalFadingEdgeLength();
    return (this.c == 0) ? 0.0F : ((this.c < i1) ? (this.c / i1) : 1.0F);
  }
  
  protected float getRightFadingEdgeStrength() {
    int i1 = getHorizontalFadingEdgeLength();
    return (this.c == this.p) ? 0.0F : ((this.p - this.c < i1) ? ((this.p - this.c) / i1) : 1.0F);
  }
  
  public View getSelectedView() { return g(this.s); }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    b(paramCanvas);
  }
  
  @SuppressLint({"WrongCall"})
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) { // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: iload_2
    //   3: iload_3
    //   4: iload #4
    //   6: iload #5
    //   8: invokespecial onLayout : (ZIIII)V
    //   11: aload_0
    //   12: getfield b : Landroid/widget/ListAdapter;
    //   15: ifnonnull -> 19
    //   18: return
    //   19: aload_0
    //   20: invokevirtual invalidate : ()V
    //   23: aload_0
    //   24: getfield j : Z
    //   27: ifeq -> 55
    //   30: aload_0
    //   31: getfield c : I
    //   34: istore #6
    //   36: aload_0
    //   37: invokespecial a : ()V
    //   40: aload_0
    //   41: invokevirtual removeAllViewsInLayout : ()V
    //   44: aload_0
    //   45: iload #6
    //   47: putfield d : I
    //   50: aload_0
    //   51: iconst_0
    //   52: putfield j : Z
    //   55: aload_0
    //   56: getfield o : Ljava/lang/Integer;
    //   59: ifnull -> 78
    //   62: aload_0
    //   63: aload_0
    //   64: getfield o : Ljava/lang/Integer;
    //   67: invokevirtual intValue : ()I
    //   70: putfield d : I
    //   73: aload_0
    //   74: aconst_null
    //   75: putfield o : Ljava/lang/Integer;
    //   78: aload_0
    //   79: getfield a : Landroid/widget/Scroller;
    //   82: invokevirtual computeScrollOffset : ()Z
    //   85: ifeq -> 99
    //   88: aload_0
    //   89: aload_0
    //   90: getfield a : Landroid/widget/Scroller;
    //   93: invokevirtual getCurrX : ()I
    //   96: putfield d : I
    //   99: aload_0
    //   100: getfield d : I
    //   103: ifge -> 155
    //   106: aload_0
    //   107: iconst_0
    //   108: putfield d : I
    //   111: aload_0
    //   112: getfield y : Landroid/widget/EdgeEffect;
    //   115: invokevirtual isFinished : ()Z
    //   118: ifeq -> 137
    //   121: aload_0
    //   122: getfield y : Landroid/widget/EdgeEffect;
    //   125: astore #7
    //   127: aload #7
    //   129: aload_0
    //   130: invokespecial c : ()F
    //   133: f2i
    //   134: invokevirtual onAbsorb : (I)V
    //   137: aload_0
    //   138: getfield a : Landroid/widget/Scroller;
    //   141: iconst_1
    //   142: invokevirtual forceFinished : (Z)V
    //   145: aload_0
    //   146: getstatic android/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState.SCROLL_STATE_IDLE : Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;
    //   149: invokespecial setCurrentScrollState : (Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    //   152: goto -> 193
    //   155: aload_0
    //   156: getfield d : I
    //   159: aload_0
    //   160: getfield p : I
    //   163: if_icmple -> 193
    //   166: aload_0
    //   167: aload_0
    //   168: getfield p : I
    //   171: putfield d : I
    //   174: aload_0
    //   175: getfield z : Landroid/widget/EdgeEffect;
    //   178: invokevirtual isFinished : ()Z
    //   181: ifeq -> 137
    //   184: aload_0
    //   185: getfield z : Landroid/widget/EdgeEffect;
    //   188: astore #7
    //   190: goto -> 127
    //   193: aload_0
    //   194: getfield c : I
    //   197: aload_0
    //   198: getfield d : I
    //   201: isub
    //   202: istore #6
    //   204: aload_0
    //   205: iload #6
    //   207: invokespecial e : (I)V
    //   210: aload_0
    //   211: iload #6
    //   213: invokespecial d : (I)V
    //   216: aload_0
    //   217: iload #6
    //   219: invokespecial f : (I)V
    //   222: aload_0
    //   223: aload_0
    //   224: getfield d : I
    //   227: putfield c : I
    //   230: aload_0
    //   231: invokespecial d : ()Z
    //   234: ifeq -> 249
    //   237: aload_0
    //   238: iload_1
    //   239: iload_2
    //   240: iload_3
    //   241: iload #4
    //   243: iload #5
    //   245: invokevirtual onLayout : (ZIIII)V
    //   248: return
    //   249: aload_0
    //   250: getfield a : Landroid/widget/Scroller;
    //   253: invokevirtual isFinished : ()Z
    //   256: ifeq -> 277
    //   259: aload_0
    //   260: getfield x : Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;
    //   263: getstatic android/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState.SCROLL_STATE_FLING : Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;
    //   266: if_acmpne -> 285
    //   269: aload_0
    //   270: getstatic android/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState.SCROLL_STATE_IDLE : Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;
    //   273: invokespecial setCurrentScrollState : (Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    //   276: return
    //   277: aload_0
    //   278: aload_0
    //   279: getfield J : Ljava/lang/Runnable;
    //   282: invokevirtual postOnAnimation : (Ljava/lang/Runnable;)V
    //   285: return }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt2) == Integer.MIN_VALUE)
      setMeasuredDimension(paramInt1, View.MeasureSpec.makeMeasureSpec(this.H, 1073741824)); 
    this.A = paramInt2;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (paramParcelable instanceof Bundle) {
      Bundle bundle = (Bundle)paramParcelable;
      this.o = Integer.valueOf(bundle.getInt("BUNDLE_ID_CURRENT_X"));
      super.onRestoreInstanceState(bundle.getParcelable("BUNDLE_ID_PARENT_STATE"));
    } 
  }
  
  public Parcelable onSaveInstanceState() {
    Bundle bundle = new Bundle();
    bundle.putParcelable("BUNDLE_ID_PARENT_STATE", super.onSaveInstanceState());
    bundle.putInt("BUNDLE_ID_CURRENT_X", this.c);
    return bundle;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    int i1 = paramMotionEvent.getAction();
    if (i1 != 1) {
      if (i1 == 3) {
        e();
        f();
        a(Boolean.valueOf(false));
      } 
    } else {
      if (this.a == null || this.a.isFinished())
        setCurrentScrollState(OnScrollStateChangedListener.ScrollState.SCROLL_STATE_IDLE); 
      a(Boolean.valueOf(false));
      f();
    } 
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void scrollTo(int paramInt) {
    this.a.startScroll(this.d, 0, paramInt - this.d, 0);
    setCurrentScrollState(OnScrollStateChangedListener.ScrollState.SCROLL_STATE_FLING);
    requestLayout();
  }
  
  public void setAdapter(ListAdapter paramListAdapter) {
    if (this.b != null)
      this.b.unregisterDataSetObserver(this.I); 
    if (paramListAdapter != null) {
      this.v = false;
      this.b = paramListAdapter;
      this.b.registerDataSetObserver(this.I);
    } 
    a(this.b.getViewTypeCount());
    b();
  }
  
  public void setDivider(Drawable paramDrawable) {
    byte b1;
    this.n = paramDrawable;
    if (paramDrawable != null) {
      b1 = paramDrawable.getIntrinsicWidth();
    } else {
      b1 = 0;
    } 
    setDividerWidth(b1);
  }
  
  public void setDividerWidth(int paramInt) {
    this.m = paramInt;
    requestLayout();
    invalidate();
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener) { this.D = paramOnClickListener; }
  
  public void setOnScrollStateChangedListener(OnScrollStateChangedListener paramOnScrollStateChangedListener) { this.w = paramOnScrollStateChangedListener; }
  
  public void setRunningOutOfDataListener(RunningOutOfDataListener paramRunningOutOfDataListener, int paramInt) {
    this.t = paramRunningOutOfDataListener;
    this.u = paramInt;
  }
  
  public void setSelectedBackground(Drawable paramDrawable) {
    this.G = paramDrawable;
    invalidate();
  }
  
  public void setSelectedBackgroundColor(int paramInt) {
    this.G = new ColorDrawable(paramInt);
    invalidate();
  }
  
  public void setSelectedColor(int paramInt) {
    this.F = paramInt;
    invalidate();
  }
  
  public void setSelection(int paramInt) {
    this.s = paramInt;
    if (this.b == null || paramInt < 0 || paramInt > this.b.getCount()) {
      invalidate();
      return;
    } 
    View view = getSelectedView();
    if (view == null || view.getRight() > getWidth() || view.getLeft() < 0) {
      view = null;
      byte b1 = 0;
      int i1 = 0;
      while (b1 < paramInt - 1) {
        int i2;
        view = this.b.getView(b1, view, this);
        a(view);
        if (b1 == 0) {
          i2 = view.getMeasuredWidth();
        } else {
          i2 = this.m + view.getMeasuredWidth();
        } 
        i1 += i2;
        b1++;
      } 
      scrollTo(i1);
    } 
    invalidate();
  }
  
  private class GestureListener extends GestureDetector.SimpleOnGestureListener {
    private GestureListener(HorizontalListView this$0) {}
    
    public boolean onDown(MotionEvent param1MotionEvent) { return this.a.a(param1MotionEvent); }
    
    public boolean onFling(MotionEvent param1MotionEvent1, MotionEvent param1MotionEvent2, float param1Float1, float param1Float2) {
      HorizontalListView.a(this.a, null);
      return this.a.a(param1MotionEvent1, param1MotionEvent2, param1Float1, param1Float2);
    }
    
    public void onLongPress(MotionEvent param1MotionEvent) {
      HorizontalListView.b(this.a);
      int i = HorizontalListView.a(this.a, (int)param1MotionEvent.getX(), (int)param1MotionEvent.getY());
      if (i >= 0 && !HorizontalListView.d(this.a)) {
        View view = this.a.getChildAt(i);
        AdapterView.OnItemLongClickListener onItemLongClickListener = this.a.getOnItemLongClickListener();
        if (onItemLongClickListener != null) {
          i = HorizontalListView.e(this.a) + i;
          if (onItemLongClickListener.onItemLongClick(this.a, view, i, this.a.b.getItemId(i)))
            this.a.performHapticFeedback(0); 
        } 
      } 
    }
    
    public boolean onScroll(MotionEvent param1MotionEvent1, MotionEvent param1MotionEvent2, float param1Float1, float param1Float2) {
      HorizontalListView.a(this.a, null);
      HorizontalListView.a(this.a, Boolean.valueOf(true));
      HorizontalListView.a(this.a, HorizontalListView.OnScrollStateChangedListener.ScrollState.SCROLL_STATE_TOUCH_SCROLL);
      HorizontalListView.b(this.a);
      HorizontalListView horizontalListView = this.a;
      horizontalListView.d += (int)param1Float1;
      HorizontalListView.a(this.a, Math.round(param1Float1));
      this.a.requestLayout();
      return true;
    }
    
    public boolean onSingleTapConfirmed(MotionEvent param1MotionEvent) {
      HorizontalListView.b(this.a);
      AdapterView.OnItemClickListener onItemClickListener = this.a.getOnItemClickListener();
      int i = HorizontalListView.a(this.a, (int)param1MotionEvent.getX(), (int)param1MotionEvent.getY());
      if (i >= 0 && !HorizontalListView.d(this.a)) {
        View view = this.a.getChildAt(i);
        i = HorizontalListView.e(this.a) + i;
        if (onItemClickListener != null) {
          onItemClickListener.onItemClick(this.a, view, i, this.a.b.getItemId(i));
          return true;
        } 
      } 
      if (HorizontalListView.f(this.a) != null && !HorizontalListView.d(this.a))
        HorizontalListView.f(this.a).onClick(this.a); 
      return false;
    }
  }
  
  @TargetApi(11)
  private static final class HoneycombPlus {
    static  {
      if (Build.VERSION.SDK_INT < 11)
        throw new RuntimeException("Should not get to HoneycombPlus class unless sdk is >= 11!"); 
    }
    
    public static void setFriction(Scroller param1Scroller, float param1Float) {
      if (param1Scroller != null)
        param1Scroller.setFriction(param1Float); 
    }
  }
  
  @TargetApi(14)
  private static final class IceCreamSandwichPlus {
    static  {
      if (Build.VERSION.SDK_INT < 14)
        throw new RuntimeException("Should not get to IceCreamSandwichPlus class unless sdk is >= 14!"); 
    }
    
    public static float getCurrVelocity(Scroller param1Scroller) { return param1Scroller.getCurrVelocity(); }
  }
  
  public static interface OnScrollStateChangedListener {
    void onScrollStateChanged(ScrollState param1ScrollState);
    
    public enum ScrollState {
      SCROLL_STATE_FLING, SCROLL_STATE_IDLE, SCROLL_STATE_TOUCH_SCROLL;
      
      static  {
        SCROLL_STATE_FLING = new ScrollState("SCROLL_STATE_FLING", 2);
        a = new ScrollState[] { SCROLL_STATE_IDLE, SCROLL_STATE_TOUCH_SCROLL, SCROLL_STATE_FLING };
      }
    }
  }
  
  public enum ScrollState {
    SCROLL_STATE_IDLE, SCROLL_STATE_FLING, SCROLL_STATE_TOUCH_SCROLL;
    
    static  {
      SCROLL_STATE_FLING = new ScrollState("SCROLL_STATE_FLING", 2);
      a = new ScrollState[] { SCROLL_STATE_IDLE, SCROLL_STATE_TOUCH_SCROLL, SCROLL_STATE_FLING };
    }
  }
  
  public static interface RunningOutOfDataListener {
    void onRunningOutOfData();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\HorizontalListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
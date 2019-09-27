package android.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

public class DrawerLayout extends ViewGroup implements DrawerLayoutImpl {
  public static final int LOCK_MODE_LOCKED_CLOSED = 1;
  
  public static final int LOCK_MODE_LOCKED_OPEN = 2;
  
  public static final int LOCK_MODE_UNLOCKED = 0;
  
  public static final int STATE_DRAGGING = 1;
  
  public static final int STATE_IDLE = 0;
  
  public static final int STATE_SETTLING = 2;
  
  static final DrawerLayoutCompatImpl a;
  
  private static final int[] b;
  
  private static final boolean c;
  
  private static final boolean d;
  
  private Drawable A;
  
  private CharSequence B;
  
  private CharSequence C;
  
  private Object D;
  
  private boolean E;
  
  private Drawable F = null;
  
  private Drawable G = null;
  
  private Drawable H = null;
  
  private Drawable I = null;
  
  private final ArrayList<View> J;
  
  private final View.AccessibilityDelegate e = new View.AccessibilityDelegate();
  
  private float f;
  
  private int g;
  
  private int h = -1728053248;
  
  private float i;
  
  private Paint j = new Paint();
  
  private final ViewDragHelper k;
  
  private final ViewDragHelper l;
  
  private final ViewDragCallback m;
  
  private final ViewDragCallback n;
  
  private int o;
  
  private boolean p;
  
  private boolean q = true;
  
  private int r;
  
  private int s;
  
  private boolean t;
  
  private boolean u;
  
  private DrawerListener v;
  
  private float w;
  
  private float x;
  
  private Drawable y;
  
  private Drawable z;
  
  static  {
    DrawerLayoutCompatImplBase drawerLayoutCompatImplBase;
    byte b1;
    byte b2 = 1;
    b = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19) {
      b1 = 1;
    } else {
      b1 = 0;
    } 
    c = b1;
    if (Build.VERSION.SDK_INT >= 21) {
      b1 = b2;
    } else {
      b1 = 0;
    } 
    d = b1;
    if (Build.VERSION.SDK_INT >= 21) {
      drawerLayoutCompatImplBase = new DrawerLayoutCompatImplApi21();
    } else {
      drawerLayoutCompatImplBase = new DrawerLayoutCompatImplBase();
    } 
    a = drawerLayoutCompatImplBase;
  }
  
  public DrawerLayout(Context paramContext) { this(paramContext, null); }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet) { this(paramContext, paramAttributeSet, 0); }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = (getResources().getDisplayMetrics()).density;
    this.g = (int)(64.0F * f1 + 0.5F);
    float f2 = 400.0F * f1;
    this.m = new ViewDragCallback(this, 3);
    this.n = new ViewDragCallback(this, 5);
    this.k = ViewDragHelper.create(this, 1.0F, this.m);
    this.k.setEdgeTrackingEnabled(1);
    this.k.setMinVelocity(f2);
    this.m.setDragger(this.k);
    this.l = ViewDragHelper.create(this, 1.0F, this.n);
    this.l.setEdgeTrackingEnabled(2);
    this.l.setMinVelocity(f2);
    this.n.setDragger(this.l);
    setFocusableInTouchMode(true);
    setImportantForAccessibility(1);
    setAccessibilityDelegate(new View.AccessibilityDelegate());
    setMotionEventSplittingEnabled(false);
    if (getFitsSystemWindows()) {
      a.configureApplyInsets(this);
      this.y = a.getDefaultStatusBarBackground(paramContext);
    } 
    this.f = f1 * 10.0F;
    this.J = new ArrayList();
  }
  
  private void a(View paramView, boolean paramBoolean) {
    int i1 = getChildCount();
    for (byte b1 = 0; b1 < i1; b1++) {
      byte b2;
      View view = getChildAt(b1);
      if ((!paramBoolean && !f(view)) || (paramBoolean && view == paramView)) {
        b2 = 1;
      } else if (Build.VERSION.SDK_INT >= 19) {
        b2 = 4;
      } else {
        continue;
      } 
      view.setImportantForAccessibility(b2);
      continue;
    } 
  }
  
  private boolean a(Drawable paramDrawable, int paramInt) {
    if (paramDrawable == null)
      return false; 
    if (Build.VERSION.SDK_INT >= 19 && !paramDrawable.isAutoMirrored())
      return false; 
    setLayoutDirection(paramInt);
    return true;
  }
  
  static String b(int paramInt) { return ((paramInt & 0x3) == 3) ? "LEFT" : (((paramInt & 0x5) == 5) ? "RIGHT" : Integer.toHexString(paramInt)); }
  
  private void d() {
    if (d)
      return; 
    this.z = e();
    this.A = f();
  }
  
  private Drawable e() {
    int i1 = getLayoutDirection();
    if (i1 == 0) {
      if (this.F != null) {
        a(this.F, i1);
        return this.F;
      } 
    } else if (this.G != null) {
      a(this.G, i1);
      return this.G;
    } 
    return this.H;
  }
  
  private Drawable f() {
    int i1 = getLayoutDirection();
    if (i1 == 0) {
      if (this.G != null) {
        a(this.G, i1);
        return this.G;
      } 
    } else if (this.F != null) {
      a(this.F, i1);
      return this.F;
    } 
    return this.I;
  }
  
  private boolean g() {
    int i1 = getChildCount();
    for (byte b1 = 0; b1 < i1; b1++) {
      if (((LayoutParams)getChildAt(b1).getLayoutParams()).b)
        return true; 
    } 
    return false;
  }
  
  private static boolean g(View paramView) {
    Drawable drawable = paramView.getBackground();
    byte b1 = 0;
    int i1 = b1;
    if (drawable != null) {
      i1 = b1;
      if (drawable.getOpacity() == -1)
        i1 = 1; 
    } 
    return i1;
  }
  
  private boolean h() { return (i() != null); }
  
  private View i() {
    int i1 = getChildCount();
    for (byte b1 = 0; b1 < i1; b1++) {
      View view = getChildAt(b1);
      if (f(view) && isDrawerVisible(view))
        return view; 
    } 
    return null;
  }
  
  View a() {
    int i1 = getChildCount();
    for (byte b1 = 0; b1 < i1; b1++) {
      View view = getChildAt(b1);
      if (((LayoutParams)view.getLayoutParams()).c)
        return view; 
    } 
    return null;
  }
  
  View a(int paramInt) {
    int i1 = Gravity.getAbsoluteGravity(paramInt, getLayoutDirection());
    int i2 = getChildCount();
    for (paramInt = 0; paramInt < i2; paramInt++) {
      View view = getChildAt(paramInt);
      if ((d(view) & 0x7) == (i1 & 0x7))
        return view; 
    } 
    return null;
  }
  
  void a(int paramInt1, int paramInt2, View paramView) {
    int i2 = this.k.getViewDragState();
    int i3 = this.l.getViewDragState();
    int i1 = 2;
    if (i2 == 1 || i3 == 1) {
      paramInt1 = 1;
    } else {
      paramInt1 = i1;
      if (i2 != 2)
        if (i3 == 2) {
          paramInt1 = i1;
        } else {
          paramInt1 = 0;
        }  
    } 
    if (paramView != null && paramInt2 == 0) {
      LayoutParams layoutParams = (LayoutParams)paramView.getLayoutParams();
      if (layoutParams.a == 0.0F) {
        a(paramView);
      } else if (layoutParams.a == 1.0F) {
        b(paramView);
      } 
    } 
    if (paramInt1 != this.o) {
      this.o = paramInt1;
      if (this.v != null)
        this.v.onDrawerStateChanged(paramInt1); 
    } 
  }
  
  void a(View paramView) {
    LayoutParams layoutParams = (LayoutParams)paramView.getLayoutParams();
    if (layoutParams.c) {
      layoutParams.c = false;
      if (this.v != null)
        this.v.onDrawerClosed(paramView); 
      a(paramView, false);
      if (hasWindowFocus()) {
        paramView = getRootView();
        if (paramView != null)
          paramView.sendAccessibilityEvent(32); 
      } 
    } 
  }
  
  void a(View paramView, float paramFloat) {
    if (this.v != null)
      this.v.onDrawerSlide(paramView, paramFloat); 
  }
  
  void a(boolean paramBoolean) {
    int i2 = getChildCount();
    byte b1 = 0;
    int i1;
    for (i1 = 0; b1 < i2; i1 = i3) {
      View view = getChildAt(b1);
      LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
      int i3 = i1;
      if (f(view))
        if (paramBoolean && !layoutParams.b) {
          i3 = i1;
        } else {
          boolean bool;
          i3 = view.getWidth();
          if (a(view, 3)) {
            bool = this.k.smoothSlideViewTo(view, -i3, view.getTop());
          } else {
            bool = this.l.smoothSlideViewTo(view, getWidth(), view.getTop());
          } 
          i3 = i1 | bool;
          layoutParams.b = false;
        }  
      b1++;
    } 
    this.m.removeCallbacks();
    this.n.removeCallbacks();
    if (i1 != 0)
      invalidate(); 
  }
  
  boolean a(View paramView, int paramInt) { return ((d(paramView) & paramInt) == paramInt); }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2) {
    if (getDescendantFocusability() == 393216)
      return; 
    int i2 = getChildCount();
    byte b2 = 0;
    byte b1 = 0;
    int i1 = 0;
    while (b1 < i2) {
      View view = getChildAt(b1);
      if (f(view)) {
        if (isDrawerOpen(view)) {
          view.addFocusables(paramArrayList, paramInt1, paramInt2);
          i1 = 1;
        } 
      } else {
        this.J.add(view);
      } 
      b1++;
    } 
    if (!i1) {
      i1 = this.J.size();
      for (b1 = b2; b1 < i1; b1++) {
        View view = (View)this.J.get(b1);
        if (view.getVisibility() == 0)
          view.addFocusables(paramArrayList, paramInt1, paramInt2); 
      } 
    } 
    this.J.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) { // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iload_2
    //   3: aload_3
    //   4: invokespecial addView : (Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    //   7: aload_0
    //   8: invokevirtual a : ()Landroid/view/View;
    //   11: ifnonnull -> 35
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual f : (Landroid/view/View;)Z
    //   19: ifeq -> 25
    //   22: goto -> 35
    //   25: iconst_1
    //   26: istore_2
    //   27: aload_1
    //   28: iload_2
    //   29: invokevirtual setImportantForAccessibility : (I)V
    //   32: goto -> 48
    //   35: getstatic android/os/Build$VERSION.SDK_INT : I
    //   38: bipush #19
    //   40: if_icmplt -> 48
    //   43: iconst_4
    //   44: istore_2
    //   45: goto -> 27
    //   48: getstatic android/widget/DrawerLayout.c : Z
    //   51: ifne -> 62
    //   54: aload_1
    //   55: aload_0
    //   56: getfield e : Landroid/view/View$AccessibilityDelegate;
    //   59: invokevirtual setAccessibilityDelegate : (Landroid/view/View$AccessibilityDelegate;)V
    //   62: return }
  
  void b() {
    if (!this.u) {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent motionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
      int i1 = getChildCount();
      for (byte b1 = 0; b1 < i1; b1++)
        getChildAt(b1).dispatchTouchEvent(motionEvent); 
      motionEvent.recycle();
      this.u = true;
    } 
  }
  
  void b(View paramView) {
    LayoutParams layoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!layoutParams.c) {
      layoutParams.c = true;
      if (this.v != null)
        this.v.onDrawerOpened(paramView); 
      a(paramView, true);
      if (hasWindowFocus())
        sendAccessibilityEvent(32); 
      paramView.requestFocus();
    } 
  }
  
  void b(View paramView, float paramFloat) {
    LayoutParams layoutParams = (LayoutParams)paramView.getLayoutParams();
    if (paramFloat == layoutParams.a)
      return; 
    layoutParams.a = paramFloat;
    a(paramView, paramFloat);
  }
  
  float c(View paramView) { return ((LayoutParams)paramView.getLayoutParams()).a; }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) { return (paramLayoutParams instanceof LayoutParams && super.checkLayoutParams(paramLayoutParams)); }
  
  public void closeDrawer(int paramInt) {
    StringBuilder stringBuilder = a(paramInt);
    if (stringBuilder == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("No drawer view found with gravity ");
      stringBuilder.append(b(paramInt));
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    closeDrawer(stringBuilder);
  }
  
  public void closeDrawer(View paramView) {
    LayoutParams layoutParams;
    if (!f(paramView)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("View ");
      stringBuilder.append(paramView);
      stringBuilder.append(" is not a sliding drawer");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    if (this.q) {
      layoutParams = (LayoutParams)paramView.getLayoutParams();
      layoutParams.a = 0.0F;
      layoutParams.c = false;
    } else {
      ViewDragHelper viewDragHelper;
      int i1;
      if (a(layoutParams, 3)) {
        viewDragHelper = this.k;
        i1 = -layoutParams.getWidth();
      } else {
        viewDragHelper = this.l;
        i1 = getWidth();
      } 
      viewDragHelper.smoothSlideViewTo(layoutParams, i1, layoutParams.getTop());
    } 
    invalidate();
  }
  
  public void closeDrawers() { a(false); }
  
  public void computeScroll() {
    int i1 = getChildCount();
    float f1 = 0.0F;
    for (byte b1 = 0; b1 < i1; b1++)
      f1 = Math.max(f1, ((LayoutParams)getChildAt(b1).getLayoutParams()).a); 
    this.i = f1;
    if (this.k.continueSettling(true) | this.l.continueSettling(true))
      postInvalidateOnAnimation(); 
  }
  
  int d(View paramView) { return Gravity.getAbsoluteGravity(((LayoutParams)paramView.getLayoutParams()).gravity, getLayoutDirection()); }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong) {
    int i2;
    Drawable drawable;
    int i4 = getHeight();
    boolean bool1 = e(paramView);
    int i1 = getWidth();
    int i3 = paramCanvas.save();
    if (bool1) {
      int i5 = getChildCount();
      byte b1 = 0;
      i2 = 0;
      while (b1 < i5) {
        View view = getChildAt(b1);
        int i6 = i2;
        int i7 = i1;
        if (view != paramView) {
          i6 = i2;
          i7 = i1;
          if (view.getVisibility() == 0) {
            i6 = i2;
            i7 = i1;
            if (g(view)) {
              i6 = i2;
              i7 = i1;
              if (f(view))
                if (view.getHeight() < i4) {
                  i6 = i2;
                  i7 = i1;
                } else if (a(view, 3)) {
                  int i8 = view.getRight();
                  i6 = i2;
                  i7 = i1;
                  if (i8 > i2) {
                    i6 = i8;
                    i7 = i1;
                  } 
                } else {
                  int i8 = view.getLeft();
                  i6 = i2;
                  i7 = i1;
                  if (i8 < i1) {
                    i7 = i8;
                    i6 = i2;
                  } 
                }  
            } 
          } 
        } 
        b1++;
        i2 = i6;
        i1 = i7;
      } 
      paramCanvas.clipRect(i2, 0, i1, getHeight());
    } else {
      i2 = 0;
    } 
    boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
    paramCanvas.restoreToCount(i3);
    if (this.i > 0.0F && bool1) {
      int i5 = (int)(((this.h & 0xFF000000) >>> 24) * this.i);
      int i6 = this.h;
      this.j.setColor(i5 << 24 | i6 & 0xFFFFFF);
      paramCanvas.drawRect(i2, 0.0F, i1, getHeight(), this.j);
      return bool2;
    } 
    if (this.z != null && a(paramView, 3)) {
      i1 = this.z.getIntrinsicWidth();
      i2 = paramView.getRight();
      int i5 = this.k.getEdgeSize();
      float f1 = Math.max(0.0F, Math.min(i2 / i5, 1.0F));
      this.z.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
      this.z.setAlpha((int)(f1 * 255.0F));
      drawable = this.z;
      drawable.draw(paramCanvas);
      return bool2;
    } 
    if (this.A != null && a(drawable, 5)) {
      i1 = this.A.getIntrinsicWidth();
      i2 = drawable.getLeft();
      int i5 = getWidth();
      int i6 = this.l.getEdgeSize();
      float f1 = Math.max(0.0F, Math.min((i5 - i2) / i6, 1.0F));
      this.A.setBounds(i2 - i1, drawable.getTop(), i2, drawable.getBottom());
      this.A.setAlpha((int)(f1 * 255.0F));
      drawable = this.A;
      drawable.draw(paramCanvas);
      return bool2;
    } 
    return bool2;
  }
  
  boolean e(View paramView) { return (((LayoutParams)paramView.getLayoutParams()).gravity == 0); }
  
  boolean f(View paramView) { return ((Gravity.getAbsoluteGravity(((LayoutParams)paramView.getLayoutParams()).gravity, paramView.getLayoutDirection()) & 0x7) != 0); }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams() { return new LayoutParams(-1, -1); }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) { return new LayoutParams(getContext(), paramAttributeSet); }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) { return (paramLayoutParams instanceof LayoutParams) ? new LayoutParams((LayoutParams)paramLayoutParams) : ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new LayoutParams(paramLayoutParams)); }
  
  public float getDrawerElevation() { return d ? this.f : 0.0F; }
  
  public int getDrawerLockMode(int paramInt) {
    paramInt = Gravity.getAbsoluteGravity(paramInt, getLayoutDirection());
    return (paramInt == 3) ? this.r : ((paramInt == 5) ? this.s : 0);
  }
  
  public int getDrawerLockMode(View paramView) {
    int i1 = d(paramView);
    return (i1 == 3) ? this.r : ((i1 == 5) ? this.s : 0);
  }
  
  public CharSequence getDrawerTitle(int paramInt) {
    paramInt = Gravity.getAbsoluteGravity(paramInt, getLayoutDirection());
    return (paramInt == 3) ? this.B : ((paramInt == 5) ? this.C : null);
  }
  
  public Drawable getStatusBarBackgroundDrawable() { return this.y; }
  
  public boolean isDrawerOpen(int paramInt) {
    View view = a(paramInt);
    return (view != null) ? isDrawerOpen(view) : 0;
  }
  
  public boolean isDrawerOpen(View paramView) {
    if (!f(paramView)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("View ");
      stringBuilder.append(paramView);
      stringBuilder.append(" is not a drawer");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    return ((LayoutParams)paramView.getLayoutParams()).c;
  }
  
  public boolean isDrawerVisible(int paramInt) {
    View view = a(paramInt);
    return (view != null) ? isDrawerVisible(view) : 0;
  }
  
  public boolean isDrawerVisible(View paramView) {
    if (!f(paramView)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("View ");
      stringBuilder.append(paramView);
      stringBuilder.append(" is not a drawer");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    return (((LayoutParams)paramView.getLayoutParams()).a > 0.0F);
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    this.q = true;
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    this.q = true;
  }
  
  public void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (this.E && this.y != null) {
      int i1 = a.getTopInset(this.D);
      if (i1 > 0) {
        this.y.setBounds(0, 0, getWidth(), i1);
        this.y.draw(paramCanvas);
      } 
    } 
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) { // Byte code:
    //   0: aload_1
    //   1: invokevirtual getActionMasked : ()I
    //   4: istore #4
    //   6: aload_0
    //   7: getfield k : Landroid/widget/ViewDragHelper;
    //   10: aload_1
    //   11: invokevirtual shouldInterceptTouchEvent : (Landroid/view/MotionEvent;)Z
    //   14: istore #7
    //   16: aload_0
    //   17: getfield l : Landroid/widget/ViewDragHelper;
    //   20: aload_1
    //   21: invokevirtual shouldInterceptTouchEvent : (Landroid/view/MotionEvent;)Z
    //   24: istore #8
    //   26: iconst_1
    //   27: istore #6
    //   29: iload #4
    //   31: tableswitch default -> 60, 0 -> 109, 1 -> 91, 2 -> 63, 3 -> 91
    //   60: goto -> 184
    //   63: aload_0
    //   64: getfield k : Landroid/widget/ViewDragHelper;
    //   67: iconst_3
    //   68: invokevirtual checkTouchSlop : (I)Z
    //   71: ifeq -> 184
    //   74: aload_0
    //   75: getfield m : Landroid/widget/DrawerLayout$ViewDragCallback;
    //   78: invokevirtual removeCallbacks : ()V
    //   81: aload_0
    //   82: getfield n : Landroid/widget/DrawerLayout$ViewDragCallback;
    //   85: invokevirtual removeCallbacks : ()V
    //   88: goto -> 184
    //   91: aload_0
    //   92: iconst_1
    //   93: invokevirtual a : (Z)V
    //   96: aload_0
    //   97: iconst_0
    //   98: putfield t : Z
    //   101: aload_0
    //   102: iconst_0
    //   103: putfield u : Z
    //   106: goto -> 184
    //   109: aload_1
    //   110: invokevirtual getX : ()F
    //   113: fstore_2
    //   114: aload_1
    //   115: invokevirtual getY : ()F
    //   118: fstore_3
    //   119: aload_0
    //   120: fload_2
    //   121: putfield w : F
    //   124: aload_0
    //   125: fload_3
    //   126: putfield x : F
    //   129: aload_0
    //   130: getfield i : F
    //   133: fconst_0
    //   134: fcmpl
    //   135: ifle -> 168
    //   138: aload_0
    //   139: getfield k : Landroid/widget/ViewDragHelper;
    //   142: fload_2
    //   143: f2i
    //   144: fload_3
    //   145: f2i
    //   146: invokevirtual findTopChildUnder : (II)Landroid/view/View;
    //   149: astore_1
    //   150: aload_1
    //   151: ifnull -> 168
    //   154: aload_0
    //   155: aload_1
    //   156: invokevirtual e : (Landroid/view/View;)Z
    //   159: ifeq -> 168
    //   162: iconst_1
    //   163: istore #4
    //   165: goto -> 171
    //   168: iconst_0
    //   169: istore #4
    //   171: aload_0
    //   172: iconst_0
    //   173: putfield t : Z
    //   176: aload_0
    //   177: iconst_0
    //   178: putfield u : Z
    //   181: goto -> 187
    //   184: iconst_0
    //   185: istore #4
    //   187: iload #6
    //   189: istore #5
    //   191: iload #7
    //   193: iload #8
    //   195: ior
    //   196: ifne -> 231
    //   199: iload #6
    //   201: istore #5
    //   203: iload #4
    //   205: ifne -> 231
    //   208: iload #6
    //   210: istore #5
    //   212: aload_0
    //   213: invokespecial g : ()Z
    //   216: ifne -> 231
    //   219: aload_0
    //   220: getfield u : Z
    //   223: ifeq -> 228
    //   226: iconst_1
    //   227: ireturn
    //   228: iconst_0
    //   229: istore #5
    //   231: iload #5
    //   233: ireturn }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4 && h()) {
      paramKeyEvent.startTracking();
      return true;
    } 
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
    View view;
    if (paramInt == 4) {
      view = i();
      if (view != null && getDrawerLockMode(view) == 0)
        closeDrawers(); 
      return (view != null);
    } 
    return super.onKeyUp(paramInt, view);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.p = true;
    int i1 = paramInt3 - paramInt1;
    int i2 = getChildCount();
    for (paramInt3 = 0; paramInt3 < i2; paramInt3++) {
      View view = getChildAt(paramInt3);
      if (view.getVisibility() != 8) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (e(view)) {
          view.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + view.getMeasuredWidth(), layoutParams.topMargin + view.getMeasuredHeight());
        } else {
          boolean bool;
          int i3;
          float f1;
          int i4 = view.getMeasuredWidth();
          int i5 = view.getMeasuredHeight();
          if (a(view, 3)) {
            paramInt1 = -i4;
            f1 = i4;
            i3 = paramInt1 + (int)(layoutParams.a * f1);
            f1 = (i4 + i3) / f1;
          } else {
            f1 = i4;
            i3 = i1 - (int)(layoutParams.a * f1);
            f1 = (i1 - i3) / f1;
          } 
          if (f1 != layoutParams.a) {
            bool = true;
          } else {
            bool = false;
          } 
          paramInt1 = layoutParams.gravity & 0x70;
          if (paramInt1 != 16) {
            if (paramInt1 != 80) {
              view.layout(i3, layoutParams.topMargin, i4 + i3, layoutParams.topMargin + i5);
            } else {
              paramInt1 = paramInt4 - paramInt2;
              view.layout(i3, paramInt1 - layoutParams.bottomMargin - view.getMeasuredHeight(), i4 + i3, paramInt1 - layoutParams.bottomMargin);
            } 
          } else {
            int i7 = paramInt4 - paramInt2;
            int i6 = (i7 - i5) / 2;
            if (i6 < layoutParams.topMargin) {
              paramInt1 = layoutParams.topMargin;
            } else {
              paramInt1 = i6;
              if (i6 + i5 > i7 - layoutParams.bottomMargin)
                paramInt1 = i7 - layoutParams.bottomMargin - i5; 
            } 
            view.layout(i3, paramInt1, i4 + i3, i5 + paramInt1);
          } 
          if (bool)
            b(view, f1); 
          if (layoutParams.a > 0.0F) {
            paramInt1 = 0;
          } else {
            paramInt1 = 4;
          } 
          if (view.getVisibility() != paramInt1)
            view.setVisibility(paramInt1); 
        } 
      } 
    } 
    this.p = false;
    this.q = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) { // Byte code:
    //   0: iload_1
    //   1: invokestatic getMode : (I)I
    //   4: istore #8
    //   6: iload_2
    //   7: invokestatic getMode : (I)I
    //   10: istore #7
    //   12: iload_1
    //   13: invokestatic getSize : (I)I
    //   16: istore_3
    //   17: iload_2
    //   18: invokestatic getSize : (I)I
    //   21: istore #6
    //   23: iload #8
    //   25: ldc_w 1073741824
    //   28: if_icmpne -> 46
    //   31: iload_3
    //   32: istore #4
    //   34: iload #6
    //   36: istore #5
    //   38: iload #7
    //   40: ldc_w 1073741824
    //   43: if_icmpeq -> 111
    //   46: aload_0
    //   47: invokevirtual isInEditMode : ()Z
    //   50: ifeq -> 568
    //   53: iload #8
    //   55: ldc_w -2147483648
    //   58: if_icmpne -> 64
    //   61: goto -> 73
    //   64: iload #8
    //   66: ifne -> 73
    //   69: sipush #300
    //   72: istore_3
    //   73: iload #7
    //   75: ldc_w -2147483648
    //   78: if_icmpne -> 91
    //   81: iload_3
    //   82: istore #4
    //   84: iload #6
    //   86: istore #5
    //   88: goto -> 111
    //   91: iload_3
    //   92: istore #4
    //   94: iload #6
    //   96: istore #5
    //   98: iload #7
    //   100: ifne -> 111
    //   103: sipush #300
    //   106: istore #5
    //   108: iload_3
    //   109: istore #4
    //   111: aload_0
    //   112: iload #4
    //   114: iload #5
    //   116: invokevirtual setMeasuredDimension : (II)V
    //   119: aload_0
    //   120: getfield D : Ljava/lang/Object;
    //   123: ifnull -> 138
    //   126: aload_0
    //   127: invokevirtual getFitsSystemWindows : ()Z
    //   130: ifeq -> 138
    //   133: iconst_1
    //   134: istore_3
    //   135: goto -> 140
    //   138: iconst_0
    //   139: istore_3
    //   140: aload_0
    //   141: invokevirtual getLayoutDirection : ()I
    //   144: istore #9
    //   146: aload_0
    //   147: invokevirtual getChildCount : ()I
    //   150: istore #10
    //   152: iconst_0
    //   153: istore #6
    //   155: iload #6
    //   157: iload #10
    //   159: if_icmpge -> 567
    //   162: aload_0
    //   163: iload #6
    //   165: invokevirtual getChildAt : (I)Landroid/view/View;
    //   168: astore #11
    //   170: aload #11
    //   172: invokevirtual getVisibility : ()I
    //   175: bipush #8
    //   177: if_icmpne -> 183
    //   180: goto -> 493
    //   183: aload #11
    //   185: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   188: checkcast android/widget/DrawerLayout$LayoutParams
    //   191: astore #12
    //   193: iload_3
    //   194: ifeq -> 252
    //   197: aload #12
    //   199: getfield gravity : I
    //   202: iload #9
    //   204: invokestatic getAbsoluteGravity : (II)I
    //   207: istore #7
    //   209: aload #11
    //   211: invokevirtual getFitsSystemWindows : ()Z
    //   214: ifeq -> 236
    //   217: getstatic android/widget/DrawerLayout.a : Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;
    //   220: aload #11
    //   222: aload_0
    //   223: getfield D : Ljava/lang/Object;
    //   226: iload #7
    //   228: invokeinterface dispatchChildInsets : (Landroid/view/View;Ljava/lang/Object;I)V
    //   233: goto -> 252
    //   236: getstatic android/widget/DrawerLayout.a : Landroid/widget/DrawerLayout$DrawerLayoutCompatImpl;
    //   239: aload #12
    //   241: aload_0
    //   242: getfield D : Ljava/lang/Object;
    //   245: iload #7
    //   247: invokeinterface applyMarginInsets : (Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    //   252: aload_0
    //   253: aload #11
    //   255: invokevirtual e : (Landroid/view/View;)Z
    //   258: ifeq -> 317
    //   261: iload #4
    //   263: aload #12
    //   265: getfield leftMargin : I
    //   268: isub
    //   269: aload #12
    //   271: getfield rightMargin : I
    //   274: isub
    //   275: ldc_w 1073741824
    //   278: invokestatic makeMeasureSpec : (II)I
    //   281: istore #8
    //   283: iload #5
    //   285: aload #12
    //   287: getfield topMargin : I
    //   290: isub
    //   291: aload #12
    //   293: getfield bottomMargin : I
    //   296: isub
    //   297: ldc_w 1073741824
    //   300: invokestatic makeMeasureSpec : (II)I
    //   303: istore #7
    //   305: aload #11
    //   307: iload #8
    //   309: iload #7
    //   311: invokevirtual measure : (II)V
    //   314: goto -> 493
    //   317: aload_0
    //   318: aload #11
    //   320: invokevirtual f : (Landroid/view/View;)Z
    //   323: ifeq -> 502
    //   326: getstatic android/widget/DrawerLayout.d : Z
    //   329: ifeq -> 354
    //   332: aload #11
    //   334: invokevirtual getElevation : ()F
    //   337: aload_0
    //   338: getfield f : F
    //   341: fcmpl
    //   342: ifeq -> 354
    //   345: aload #11
    //   347: aload_0
    //   348: getfield f : F
    //   351: invokevirtual setElevation : (F)V
    //   354: aload_0
    //   355: aload #11
    //   357: invokevirtual d : (Landroid/view/View;)I
    //   360: bipush #7
    //   362: iand
    //   363: istore #7
    //   365: iconst_0
    //   366: iload #7
    //   368: iand
    //   369: ifeq -> 441
    //   372: new java/lang/StringBuilder
    //   375: dup
    //   376: invokespecial <init> : ()V
    //   379: astore #11
    //   381: aload #11
    //   383: ldc_w 'Child drawer has absolute gravity '
    //   386: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: pop
    //   390: aload #11
    //   392: iload #7
    //   394: invokestatic b : (I)Ljava/lang/String;
    //   397: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: pop
    //   401: aload #11
    //   403: ldc_w ' but this '
    //   406: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: pop
    //   410: aload #11
    //   412: ldc_w 'DrawerLayout'
    //   415: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: pop
    //   419: aload #11
    //   421: ldc_w ' already has a drawer view along that edge'
    //   424: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: pop
    //   428: new java/lang/IllegalStateException
    //   431: dup
    //   432: aload #11
    //   434: invokevirtual toString : ()Ljava/lang/String;
    //   437: invokespecial <init> : (Ljava/lang/String;)V
    //   440: athrow
    //   441: iload_1
    //   442: aload_0
    //   443: getfield g : I
    //   446: aload #12
    //   448: getfield leftMargin : I
    //   451: iadd
    //   452: aload #12
    //   454: getfield rightMargin : I
    //   457: iadd
    //   458: aload #12
    //   460: getfield width : I
    //   463: invokestatic getChildMeasureSpec : (III)I
    //   466: istore #8
    //   468: iload_2
    //   469: aload #12
    //   471: getfield topMargin : I
    //   474: aload #12
    //   476: getfield bottomMargin : I
    //   479: iadd
    //   480: aload #12
    //   482: getfield height : I
    //   485: invokestatic getChildMeasureSpec : (III)I
    //   488: istore #7
    //   490: goto -> 305
    //   493: iload #6
    //   495: iconst_1
    //   496: iadd
    //   497: istore #6
    //   499: goto -> 155
    //   502: new java/lang/StringBuilder
    //   505: dup
    //   506: invokespecial <init> : ()V
    //   509: astore #12
    //   511: aload #12
    //   513: ldc_w 'Child '
    //   516: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   519: pop
    //   520: aload #12
    //   522: aload #11
    //   524: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   527: pop
    //   528: aload #12
    //   530: ldc_w ' at index '
    //   533: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   536: pop
    //   537: aload #12
    //   539: iload #6
    //   541: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   544: pop
    //   545: aload #12
    //   547: ldc_w ' does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY'
    //   550: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   553: pop
    //   554: new java/lang/IllegalStateException
    //   557: dup
    //   558: aload #12
    //   560: invokevirtual toString : ()Ljava/lang/String;
    //   563: invokespecial <init> : (Ljava/lang/String;)V
    //   566: athrow
    //   567: return
    //   568: new java/lang/IllegalArgumentException
    //   571: dup
    //   572: ldc_w 'DrawerLayout must be measured with MeasureSpec.EXACTLY.'
    //   575: invokespecial <init> : (Ljava/lang/String;)V
    //   578: athrow }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    SavedState savedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(savedState.getSuperState());
    if (savedState.a != 0) {
      View view = a(savedState.a);
      if (view != null)
        openDrawer(view); 
    } 
    setDrawerLockMode(savedState.b, 3);
    setDrawerLockMode(savedState.c, 5);
  }
  
  public void onRtlPropertiesChanged(int paramInt) { d(); }
  
  protected Parcelable onSaveInstanceState() {
    SavedState savedState = new SavedState(super.onSaveInstanceState());
    View view = a();
    if (view != null)
      savedState.a = ((LayoutParams)view.getLayoutParams()).gravity; 
    savedState.b = this.r;
    savedState.c = this.s;
    return savedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    this.k.processTouchEvent(paramMotionEvent);
    this.l.processTouchEvent(paramMotionEvent);
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if (i1 != 3) {
      boolean bool;
      View view;
      switch (i1) {
        default:
          return true;
        case 1:
          f2 = paramMotionEvent.getX();
          f1 = paramMotionEvent.getY();
          view = this.k.findTopChildUnder((int)f2, (int)f1);
          if (view != null && e(view)) {
            f2 -= this.w;
            f1 -= this.x;
            i1 = this.k.getTouchSlop();
            if (f2 * f2 + f1 * f1 < (i1 * i1)) {
              view = a();
              if (view == null || getDrawerLockMode(view) == 2) {
                boolean bool2 = true;
                a(bool2);
                this.t = false;
                return true;
              } 
              boolean bool1 = false;
              a(bool1);
              this.t = false;
              return true;
            } 
          } 
          bool = true;
          a(bool);
          this.t = false;
          return true;
        case 0:
          break;
      } 
      float f1 = view.getX();
      float f2 = view.getY();
      this.w = f1;
      this.x = f2;
      this.t = false;
      this.u = false;
      return true;
    } 
    a(true);
    this.t = false;
    this.u = false;
    return true;
  }
  
  public void openDrawer(int paramInt) {
    StringBuilder stringBuilder = a(paramInt);
    if (stringBuilder == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("No drawer view found with gravity ");
      stringBuilder.append(b(paramInt));
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    openDrawer(stringBuilder);
  }
  
  public void openDrawer(View paramView) {
    if (!f(paramView)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("View ");
      stringBuilder.append(paramView);
      stringBuilder.append(" is not a sliding drawer");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    if (this.q) {
      LayoutParams layoutParams = (LayoutParams)paramView.getLayoutParams();
      layoutParams.a = 1.0F;
      layoutParams.c = true;
      a(paramView, true);
    } else {
      ViewDragHelper viewDragHelper;
      int i1;
      if (a(paramView, 3)) {
        viewDragHelper = this.k;
        i1 = 0;
      } else {
        viewDragHelper = this.l;
        i1 = getWidth() - paramView.getWidth();
      } 
      viewDragHelper.smoothSlideViewTo(paramView, i1, paramView.getTop());
    } 
    invalidate();
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean) {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    this.t = paramBoolean;
    if (paramBoolean)
      a(true); 
  }
  
  public void requestLayout() {
    if (!this.p)
      super.requestLayout(); 
  }
  
  public void setChildInsets(Object paramObject, boolean paramBoolean) {
    this.D = paramObject;
    this.E = paramBoolean;
    if (!paramBoolean && getBackground() == null) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    setWillNotDraw(paramBoolean);
    requestLayout();
  }
  
  public void setDrawerElevation(float paramFloat) {
    this.f = paramFloat;
    if (Build.VERSION.SDK_INT >= 21)
      for (byte b1 = 0; b1 < getChildCount(); b1++) {
        View view = getChildAt(b1);
        if (f(view))
          view.setElevation(this.f); 
      }  
  }
  
  public void setDrawerListener(DrawerListener paramDrawerListener) { this.v = paramDrawerListener; }
  
  public void setDrawerLockMode(int paramInt) {
    setDrawerLockMode(paramInt, 3);
    setDrawerLockMode(paramInt, 5);
  }
  
  public void setDrawerLockMode(int paramInt1, int paramInt2) {
    paramInt2 = Gravity.getAbsoluteGravity(paramInt2, getLayoutDirection());
    if (paramInt2 == 3) {
      this.r = paramInt1;
    } else if (paramInt2 == 5) {
      this.s = paramInt1;
    } 
    if (paramInt1 != 0) {
      ViewDragHelper viewDragHelper;
      if (paramInt2 == 3) {
        viewDragHelper = this.k;
      } else {
        viewDragHelper = this.l;
      } 
      viewDragHelper.cancel();
    } 
    switch (paramInt1) {
      default:
        return;
      case 2:
        view = a(paramInt2);
        if (view != null) {
          openDrawer(view);
          return;
        } 
        return;
      case 1:
        break;
    } 
    View view = a(paramInt2);
    if (view != null)
      closeDrawer(view); 
  }
  
  public void setDrawerLockMode(int paramInt, View paramView) {
    if (!f(paramView)) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("View ");
      stringBuilder.append(paramView);
      stringBuilder.append(" is not a drawer with appropriate layout_gravity");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    setDrawerLockMode(paramInt, ((LayoutParams)paramView.getLayoutParams()).gravity);
  }
  
  public void setDrawerShadow(int paramInt1, int paramInt2) { setDrawerShadow(getResources().getDrawable(paramInt1), paramInt2); }
  
  public void setDrawerShadow(Drawable paramDrawable, int paramInt) {
    if (d)
      return; 
    if ((paramInt & 0x800003) == 8388611) {
      this.F = paramDrawable;
    } else if ((paramInt & 0x800005) == 8388613) {
      this.G = paramDrawable;
    } else if ((paramInt & 0x3) == 3) {
      this.H = paramDrawable;
    } else if ((paramInt & 0x5) == 5) {
      this.I = paramDrawable;
    } else {
      return;
    } 
    d();
    invalidate();
  }
  
  public void setDrawerTitle(int paramInt, CharSequence paramCharSequence) {
    paramInt = Gravity.getAbsoluteGravity(paramInt, getLayoutDirection());
    if (paramInt == 3) {
      this.B = paramCharSequence;
      return;
    } 
    if (paramInt == 5)
      this.C = paramCharSequence; 
  }
  
  public void setScrimColor(int paramInt) {
    this.h = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt) {
    Object object;
    if (paramInt != 0) {
      object = getContext().getResources().getDrawable(paramInt);
    } else {
      object = null;
    } 
    this.y = object;
    invalidate();
  }
  
  public void setStatusBarBackground(Drawable paramDrawable) {
    this.y = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(int paramInt) {
    this.y = new ColorDrawable(paramInt);
    invalidate();
  }
  
  @SuppressLint({"NewApi"})
  public static class DrawerLayoutCompatApi21 {
    private static final int[] a = { 16843828 };
    
    public static void applyMarginInsets(ViewGroup.MarginLayoutParams param1MarginLayoutParams, Object param1Object, int param1Int) {
      WindowInsets windowInsets = (WindowInsets)param1Object;
      if (param1Int == 3) {
        param1Object = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
      } else {
        param1Object = windowInsets;
        if (param1Int == 5)
          param1Object = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom()); 
      } 
      param1MarginLayoutParams.leftMargin = param1Object.getSystemWindowInsetLeft();
      param1MarginLayoutParams.topMargin = param1Object.getSystemWindowInsetTop();
      param1MarginLayoutParams.rightMargin = param1Object.getSystemWindowInsetRight();
      param1MarginLayoutParams.bottomMargin = param1Object.getSystemWindowInsetBottom();
    }
    
    public static void configureApplyInsets(View param1View) {
      if (param1View instanceof DrawerLayoutImpl) {
        param1View.setOnApplyWindowInsetsListener(new InsetsListener());
        param1View.setSystemUiVisibility(1280);
      } 
    }
    
    public static void dispatchChildInsets(View param1View, Object param1Object, int param1Int) {
      WindowInsets windowInsets = (WindowInsets)param1Object;
      if (param1Int == 3) {
        param1Object = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
      } else {
        param1Object = windowInsets;
        if (param1Int == 5)
          param1Object = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom()); 
      } 
      param1View.dispatchApplyWindowInsets(param1Object);
    }
    
    public static Drawable getDefaultStatusBarBackground(Context param1Context) {
      typedArray = param1Context.obtainStyledAttributes(a);
      try {
        return typedArray.getDrawable(0);
      } finally {
        typedArray.recycle();
      } 
    }
    
    public static int getTopInset(Object param1Object) { return (param1Object != null) ? ((WindowInsets)param1Object).getSystemWindowInsetTop() : 0; }
    
    static class InsetsListener implements View.OnApplyWindowInsetsListener {
      public WindowInsets onApplyWindowInsets(View param2View, WindowInsets param2WindowInsets) {
        boolean bool;
        DrawerLayoutImpl drawerLayoutImpl = (DrawerLayoutImpl)param2View;
        if (param2WindowInsets.getSystemWindowInsetTop() > 0) {
          bool = true;
        } else {
          bool = false;
        } 
        drawerLayoutImpl.setChildInsets(param2WindowInsets, bool);
        return param2WindowInsets.consumeSystemWindowInsets();
      }
    }
  }
  
  static class InsetsListener implements View.OnApplyWindowInsetsListener {
    public WindowInsets onApplyWindowInsets(View param1View, WindowInsets param1WindowInsets) {
      boolean bool;
      DrawerLayoutImpl drawerLayoutImpl = (DrawerLayoutImpl)param1View;
      if (param1WindowInsets.getSystemWindowInsetTop() > 0) {
        bool = true;
      } else {
        bool = false;
      } 
      drawerLayoutImpl.setChildInsets(param1WindowInsets, bool);
      return param1WindowInsets.consumeSystemWindowInsets();
    }
  }
  
  static interface DrawerLayoutCompatImpl {
    void applyMarginInsets(ViewGroup.MarginLayoutParams param1MarginLayoutParams, Object param1Object, int param1Int);
    
    void configureApplyInsets(View param1View);
    
    void dispatchChildInsets(View param1View, Object param1Object, int param1Int);
    
    Drawable getDefaultStatusBarBackground(Context param1Context);
    
    int getTopInset(Object param1Object);
  }
  
  @SuppressLint({"NewApi"})
  static class DrawerLayoutCompatImplApi21 implements DrawerLayoutCompatImpl {
    public void applyMarginInsets(ViewGroup.MarginLayoutParams param1MarginLayoutParams, Object param1Object, int param1Int) { DrawerLayout.DrawerLayoutCompatApi21.applyMarginInsets(param1MarginLayoutParams, param1Object, param1Int); }
    
    public void configureApplyInsets(View param1View) { DrawerLayout.DrawerLayoutCompatApi21.configureApplyInsets(param1View); }
    
    public void dispatchChildInsets(View param1View, Object param1Object, int param1Int) { DrawerLayout.DrawerLayoutCompatApi21.dispatchChildInsets(param1View, param1Object, param1Int); }
    
    public Drawable getDefaultStatusBarBackground(Context param1Context) { return DrawerLayout.DrawerLayoutCompatApi21.getDefaultStatusBarBackground(param1Context); }
    
    public int getTopInset(Object param1Object) { return DrawerLayout.DrawerLayoutCompatApi21.getTopInset(param1Object); }
  }
  
  @SuppressLint({"NewApi"})
  static class DrawerLayoutCompatImplBase implements DrawerLayoutCompatImpl {
    public void applyMarginInsets(ViewGroup.MarginLayoutParams param1MarginLayoutParams, Object param1Object, int param1Int) {}
    
    public void configureApplyInsets(View param1View) {}
    
    public void dispatchChildInsets(View param1View, Object param1Object, int param1Int) {}
    
    public Drawable getDefaultStatusBarBackground(Context param1Context) { return null; }
    
    public int getTopInset(Object param1Object) { return 0; }
  }
  
  public static interface DrawerListener {
    void onDrawerClosed(View param1View);
    
    void onDrawerOpened(View param1View);
    
    void onDrawerSlide(View param1View, float param1Float);
    
    void onDrawerStateChanged(int param1Int);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  private static @interface EdgeGravity {}
  
  public static class LayoutParams extends ViewGroup.MarginLayoutParams {
    float a;
    
    boolean b;
    
    boolean c;
    
    public int gravity = 0;
    
    public LayoutParams(int param1Int1, int param1Int2) { super(param1Int1, param1Int2); }
    
    public LayoutParams(int param1Int1, int param1Int2, int param1Int3) {
      this(param1Int1, param1Int2);
      this.gravity = param1Int3;
    }
    
    public LayoutParams(Context param1Context, AttributeSet param1AttributeSet) {
      super(param1Context, param1AttributeSet);
      TypedArray typedArray = param1Context.obtainStyledAttributes(param1AttributeSet, DrawerLayout.c());
      this.gravity = typedArray.getInt(0, 0);
      typedArray.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams param1LayoutParams) { super(param1LayoutParams); }
    
    public LayoutParams(ViewGroup.MarginLayoutParams param1MarginLayoutParams) { super(param1MarginLayoutParams); }
    
    public LayoutParams(LayoutParams param1LayoutParams) {
      super(param1LayoutParams);
      this.gravity = param1LayoutParams.gravity;
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  private static @interface LockMode {}
  
  protected static class SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
        public DrawerLayout.SavedState createFromParcel(Parcel param2Parcel) { return new DrawerLayout.SavedState(param2Parcel); }
        
        public DrawerLayout.SavedState[] newArray(int param2Int) { return new DrawerLayout.SavedState[param2Int]; }
      };
    
    int a = 0;
    
    int b = 0;
    
    int c = 0;
    
    public SavedState(Parcel param1Parcel) {
      super(param1Parcel);
      this.a = param1Parcel.readInt();
    }
    
    public SavedState(Parcelable param1Parcelable) { super(param1Parcelable); }
    
    public void writeToParcel(Parcel param1Parcel, int param1Int) {
      super.writeToParcel(param1Parcel, param1Int);
      param1Parcel.writeInt(this.a);
    }
  }
  
  static final class null extends Object implements Parcelable.Creator<SavedState> {
    public DrawerLayout.SavedState createFromParcel(Parcel param1Parcel) { return new DrawerLayout.SavedState(param1Parcel); }
    
    public DrawerLayout.SavedState[] newArray(int param1Int) { return new DrawerLayout.SavedState[param1Int]; }
  }
  
  public static abstract class SimpleDrawerListener implements DrawerListener {
    public void onDrawerClosed(View param1View) {}
    
    public void onDrawerOpened(View param1View) {}
    
    public void onDrawerSlide(View param1View, float param1Float) {}
    
    public void onDrawerStateChanged(int param1Int) {}
  }
  
  @Retention(RetentionPolicy.SOURCE)
  private static @interface State {}
  
  private class ViewDragCallback extends ViewDragHelper.Callback {
    private final int b;
    
    private ViewDragHelper c;
    
    private final Runnable d = new Runnable(this) {
        public void run() { DrawerLayout.ViewDragCallback.a(this.a); }
      };
    
    public ViewDragCallback(DrawerLayout this$0, int param1Int) { this.b = param1Int; }
    
    private void a() {
      int i = this.b;
      byte b1 = 3;
      if (i == 3)
        b1 = 5; 
      View view = this.a.a(b1);
      if (view != null)
        this.a.closeDrawer(view); 
    }
    
    private void b() {
      View view;
      int k = this.c.getEdgeSize();
      int i = this.b;
      int j = 0;
      if (i == 3) {
        i = 1;
      } else {
        i = 0;
      } 
      if (i != 0) {
        view = this.a.a(3);
        if (view != null)
          j = -view.getWidth(); 
        j += k;
      } else {
        view = this.a.a(5);
        j = this.a.getWidth() - k;
      } 
      if (view != null && ((i != 0 && view.getLeft() < j) || (i == 0 && view.getLeft() > j)) && this.a.getDrawerLockMode(view) == 0) {
        DrawerLayout.LayoutParams layoutParams = (DrawerLayout.LayoutParams)view.getLayoutParams();
        this.c.smoothSlideViewTo(view, j, view.getTop());
        layoutParams.b = true;
        this.a.invalidate();
        a();
        this.a.b();
      } 
    }
    
    public int clampViewPositionHorizontal(View param1View, int param1Int1, int param1Int2) {
      if (this.a.a(param1View, 3)) {
        param1Int2 = -param1View.getWidth();
        byte b1 = 0;
        return Math.max(param1Int2, Math.min(param1Int1, b1));
      } 
      int i = this.a.getWidth();
      param1Int2 = i - param1View.getWidth();
      return Math.max(param1Int2, Math.min(param1Int1, i));
    }
    
    public int clampViewPositionVertical(View param1View, int param1Int1, int param1Int2) { return param1View.getTop(); }
    
    public int getViewHorizontalDragRange(View param1View) { return this.a.f(param1View) ? param1View.getWidth() : 0; }
    
    public void onEdgeDragStarted(int param1Int1, int param1Int2) {
      DrawerLayout drawerLayout;
      if ((param1Int1 & true) == 1) {
        drawerLayout = this.a;
        param1Int1 = 3;
      } else {
        drawerLayout = this.a;
        param1Int1 = 5;
      } 
      View view = drawerLayout.a(param1Int1);
      if (view != null && this.a.getDrawerLockMode(view) == 0)
        this.c.captureChildView(view, param1Int2); 
    }
    
    public boolean onEdgeLock(int param1Int) { return false; }
    
    public void onEdgeTouched(int param1Int1, int param1Int2) { this.a.postDelayed(this.d, 160L); }
    
    public void onViewCaptured(View param1View, int param1Int) {
      ((DrawerLayout.LayoutParams)param1View.getLayoutParams()).b = false;
      a();
    }
    
    public void onViewDragStateChanged(int param1Int) { this.a.a(this.b, param1Int, this.c.getCapturedView()); }
    
    public void onViewPositionChanged(View param1View, int param1Int1, int param1Int2, int param1Int3, int param1Int4) {
      float f;
      param1Int2 = param1View.getWidth();
      if (this.a.a(param1View, 3)) {
        f = (param1Int1 + param1Int2);
      } else {
        f = (this.a.getWidth() - param1Int1);
      } 
      f /= param1Int2;
      this.a.b(param1View, f);
      if (f == 0.0F) {
        param1Int1 = 4;
      } else {
        param1Int1 = 0;
      } 
      param1View.setVisibility(param1Int1);
      this.a.invalidate();
    }
    
    public void onViewReleased(View param1View, float param1Float1, float param1Float2) { // Byte code:
      //   0: aload_0
      //   1: getfield a : Landroid/widget/DrawerLayout;
      //   4: aload_1
      //   5: invokevirtual c : (Landroid/view/View;)F
      //   8: fstore_3
      //   9: aload_1
      //   10: invokevirtual getWidth : ()I
      //   13: istore #6
      //   15: aload_0
      //   16: getfield a : Landroid/widget/DrawerLayout;
      //   19: aload_1
      //   20: iconst_3
      //   21: invokevirtual a : (Landroid/view/View;I)Z
      //   24: ifeq -> 63
      //   27: fload_2
      //   28: fconst_0
      //   29: fcmpl
      //   30: ifgt -> 57
      //   33: fload_2
      //   34: fconst_0
      //   35: fcmpl
      //   36: ifne -> 49
      //   39: fload_3
      //   40: ldc 0.5
      //   42: fcmpl
      //   43: ifle -> 49
      //   46: goto -> 57
      //   49: iload #6
      //   51: ineg
      //   52: istore #4
      //   54: goto -> 106
      //   57: iconst_0
      //   58: istore #4
      //   60: goto -> 106
      //   63: aload_0
      //   64: getfield a : Landroid/widget/DrawerLayout;
      //   67: invokevirtual getWidth : ()I
      //   70: istore #5
      //   72: fload_2
      //   73: fconst_0
      //   74: fcmpg
      //   75: iflt -> 99
      //   78: iload #5
      //   80: istore #4
      //   82: fload_2
      //   83: fconst_0
      //   84: fcmpl
      //   85: ifne -> 106
      //   88: iload #5
      //   90: istore #4
      //   92: fload_3
      //   93: ldc 0.5
      //   95: fcmpl
      //   96: ifle -> 106
      //   99: iload #5
      //   101: iload #6
      //   103: isub
      //   104: istore #4
      //   106: aload_0
      //   107: getfield c : Landroid/widget/ViewDragHelper;
      //   110: iload #4
      //   112: aload_1
      //   113: invokevirtual getTop : ()I
      //   116: invokevirtual settleCapturedViewAt : (II)Z
      //   119: pop
      //   120: aload_0
      //   121: getfield a : Landroid/widget/DrawerLayout;
      //   124: invokevirtual invalidate : ()V
      //   127: return }
    
    public void removeCallbacks() { this.a.removeCallbacks(this.d); }
    
    public void setDragger(ViewDragHelper param1ViewDragHelper) { this.c = param1ViewDragHelper; }
    
    public boolean tryCaptureView(View param1View, int param1Int) { return (this.a.f(param1View) && this.a.a(param1View, this.b) && this.a.getDrawerLockMode(param1View) == 0); }
  }
  
  class null implements Runnable {
    null(DrawerLayout this$0) {}
    
    public void run() { DrawerLayout.ViewDragCallback.a(this.a); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\DrawerLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
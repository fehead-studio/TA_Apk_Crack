package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class PageView extends ViewGroup {
  public static final int SCROLL_STATE_DRAGGING = 1;
  
  public static final int SCROLL_STATE_IDLE = 0;
  
  public static final int SCROLL_STATE_SETTLING = 2;
  
  private static final int[] a = { 16842931 };
  
  private static final Comparator<ItemInfo> b = new Comparator<ItemInfo>() {
      public int compare(PageView.ItemInfo param1ItemInfo1, PageView.ItemInfo param1ItemInfo2) { return param1ItemInfo1.b - param1ItemInfo2.b; }
    };
  
  private static final Interpolator c = new Interpolator() {
      public float getInterpolation(float param1Float) {
        param1Float--;
        return param1Float * param1Float * param1Float * param1Float * param1Float + 1.0F;
      }
    };
  
  private static final ViewPositionComparator d = new ViewPositionComparator();
  
  private int A = 1;
  
  private boolean B;
  
  private boolean C;
  
  private int D;
  
  private int E;
  
  private int F;
  
  private float G;
  
  private float H;
  
  private float I;
  
  private float J;
  
  private int K = -1;
  
  private VelocityTracker L;
  
  private int M;
  
  private int N;
  
  private int O;
  
  private int P;
  
  private boolean Q;
  
  private long R;
  
  private EdgeEffect S;
  
  private EdgeEffect T;
  
  private boolean U = true;
  
  private boolean V = false;
  
  private boolean W;
  
  private int aa;
  
  private List<OnPageChangeListener> ab;
  
  private OnPageChangeListener ac;
  
  private OnPageChangeListener ad;
  
  private OnAdapterChangeListener ae;
  
  private PageTransformer af;
  
  private Method ag;
  
  private int ah;
  
  private ArrayList<View> ai;
  
  private int aj = 0;
  
  private final Runnable ak = new Runnable(this) {
      public void run() {
        PageView.a(this.a, 0);
        this.a.c();
      }
    };
  
  private boolean al = true;
  
  private final ArrayList<ItemInfo> e = new ArrayList();
  
  private final ItemInfo f = new ItemInfo();
  
  private final Rect g = new Rect();
  
  private int h;
  
  private BasePageAdapter i;
  
  private int j;
  
  private int k = -1;
  
  private Parcelable l = null;
  
  private ClassLoader m = null;
  
  private Scroller n;
  
  private PageObserver o;
  
  private int p;
  
  private Drawable q;
  
  private int r;
  
  private int s;
  
  private float t = -3.4028235E38F;
  
  private float u = Float.MAX_VALUE;
  
  private int v;
  
  private int w;
  
  private boolean x;
  
  private boolean y;
  
  private boolean z;
  
  public PageView(Context paramContext) {
    super(paramContext);
    a();
  }
  
  public PageView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3) {
    if (Math.abs(paramInt3) > this.O && Math.abs(paramInt2) > this.M) {
      if (paramInt2 <= 0)
        paramInt1++; 
    } else {
      float f1;
      if (paramInt1 >= this.j) {
        f1 = 0.4F;
      } else {
        f1 = 0.6F;
      } 
      paramInt1 = (int)(paramInt1 + paramFloat + f1);
    } 
    paramInt2 = paramInt1;
    if (this.e.size() > 0) {
      ItemInfo itemInfo1 = (ItemInfo)this.e.get(0);
      ItemInfo itemInfo2 = (ItemInfo)this.e.get(this.e.size() - 1);
      paramInt2 = Math.max(itemInfo1.b, Math.min(paramInt1, itemInfo2.b));
    } 
    return paramInt2;
  }
  
  private Rect a(Rect paramRect, View paramView) {
    Rect rect = paramRect;
    if (paramRect == null)
      rect = new Rect(); 
    if (paramView == null) {
      rect.set(0, 0, 0, 0);
      return rect;
    } 
    rect.left = paramView.getLeft();
    rect.right = paramView.getRight();
    rect.top = paramView.getTop();
    rect.bottom = paramView.getBottom();
    ViewParent viewParent = paramView.getParent();
    while (viewParent instanceof ViewGroup && viewParent != this) {
      ViewGroup viewGroup = (ViewGroup)viewParent;
      rect.left += viewGroup.getLeft();
      rect.right += viewGroup.getRight();
      rect.top += viewGroup.getTop();
      rect.bottom += viewGroup.getBottom();
      ViewParent viewParent1 = viewGroup.getParent();
    } 
    return rect;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (paramInt2 > 0 && !this.e.isEmpty()) {
      int i1 = getPaddingLeft();
      int i2 = getPaddingRight();
      int i3 = getPaddingLeft();
      int i4 = getPaddingRight();
      paramInt2 = (int)(getScrollX() / (paramInt2 - i3 - i4 + paramInt4) * (paramInt1 - i1 - i2 + paramInt3));
      scrollTo(paramInt2, getScrollY());
      if (!this.n.isFinished()) {
        paramInt3 = this.n.getDuration();
        paramInt4 = this.n.timePassed();
        ItemInfo itemInfo = b(this.j);
        this.n.startScroll(paramInt2, 0, (int)(itemInfo.e * paramInt1), 0, paramInt3 - paramInt4);
        return;
      } 
    } else {
      float f1;
      ItemInfo itemInfo = b(this.j);
      if (itemInfo != null) {
        f1 = Math.min(itemInfo.e, this.u);
      } else {
        f1 = 0.0F;
      } 
      paramInt1 = (int)(f1 * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 != getScrollX()) {
        a(false);
        scrollTo(paramInt1, getScrollY());
      } 
    } 
  }
  
  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2) {
    byte b1;
    ItemInfo itemInfo = b(paramInt1);
    if (itemInfo != null) {
      b1 = (int)(getClientWidth() * Math.max(this.t, Math.min(itemInfo.e, this.u)));
    } else {
      b1 = 0;
    } 
    if (paramBoolean1) {
      a(b1, 0, paramInt2);
      if (paramBoolean2) {
        d(paramInt1);
        return;
      } 
    } else {
      if (paramBoolean2)
        d(paramInt1); 
      a(false);
      scrollTo(b1, 0);
      c(b1);
    } 
  }
  
  private void a(MotionEvent paramMotionEvent) {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == this.K) {
      if (i1 == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      } 
      this.G = paramMotionEvent.getX(i1);
      this.K = paramMotionEvent.getPointerId(i1);
      if (this.L != null)
        this.L.clear(); 
    } 
  }
  
  private void a(ItemInfo paramItemInfo1, int paramInt, ItemInfo paramItemInfo2) {
    float f2;
    int i4 = this.i.getCount();
    int i1 = getClientWidth();
    if (i1 > 0) {
      f2 = this.p / i1;
    } else {
      f2 = 0.0F;
    } 
    if (paramItemInfo2 != null) {
      i1 = paramItemInfo2.b;
      if (i1 < paramItemInfo1.b) {
        f1 = paramItemInfo2.e + paramItemInfo2.d + f2;
        i1++;
        byte b1 = 0;
        while (i1 <= paramItemInfo1.b && b1 < this.e.size()) {
          int i5;
          float f4;
          while (true) {
            paramItemInfo2 = (ItemInfo)this.e.get(b1);
            i5 = i1;
            f4 = f1;
            if (i1 > paramItemInfo2.b) {
              i5 = i1;
              f4 = f1;
              if (b1 < this.e.size() - 1) {
                b1++;
                continue;
              } 
            } 
            break;
          } 
          while (i5 < paramItemInfo2.b) {
            f4 += this.i.getPageWidth(i5) + f2;
            i5++;
          } 
          paramItemInfo2.e = f4;
          f1 = f4 + paramItemInfo2.d + f2;
          i1 = i5 + 1;
        } 
      } else if (i1 > paramItemInfo1.b) {
        int i5 = this.e.size() - 1;
        f1 = paramItemInfo2.e;
        while (--i1 >= paramItemInfo1.b && i5 >= 0) {
          int i6;
          float f4;
          while (true) {
            paramItemInfo2 = (ItemInfo)this.e.get(i5);
            i6 = i1;
            f4 = f1;
            if (i1 < paramItemInfo2.b) {
              i6 = i1;
              f4 = f1;
              if (i5 > 0) {
                i5--;
                continue;
              } 
            } 
            break;
          } 
          while (i6 > paramItemInfo2.b) {
            f4 -= this.i.getPageWidth(i6) + f2;
            i6--;
          } 
          f1 = f4 - paramItemInfo2.d + f2;
          paramItemInfo2.e = f1;
          i1 = i6 - 1;
        } 
      } 
    } 
    int i3 = this.e.size();
    float f3 = paramItemInfo1.e;
    i1 = paramItemInfo1.b - 1;
    if (paramItemInfo1.b == 0) {
      f1 = paramItemInfo1.e;
    } else {
      f1 = -3.4028235E38F;
    } 
    this.t = f1;
    int i2 = paramItemInfo1.b;
    if (i2 == --i4) {
      f1 = paramItemInfo1.e + paramItemInfo1.d - 1.0F;
    } else {
      f1 = Float.MAX_VALUE;
    } 
    this.u = f1;
    i2 = paramInt - 1;
    float f1 = f3;
    while (i2 >= 0) {
      paramItemInfo2 = (ItemInfo)this.e.get(i2);
      while (i1 > paramItemInfo2.b) {
        f1 -= this.i.getPageWidth(i1) + f2;
        i1--;
      } 
      f1 -= paramItemInfo2.d + f2;
      paramItemInfo2.e = f1;
      if (paramItemInfo2.b == 0)
        this.t = f1; 
      i2--;
      i1--;
    } 
    f1 = paramItemInfo1.e + paramItemInfo1.d + f2;
    i2 = paramItemInfo1.b + 1;
    i1 = paramInt + 1;
    for (paramInt = i2; i1 < i3; paramInt++) {
      paramItemInfo1 = (ItemInfo)this.e.get(i1);
      while (paramInt < paramItemInfo1.b) {
        f1 += this.i.getPageWidth(paramInt) + f2;
        paramInt++;
      } 
      if (paramItemInfo1.b == i4)
        this.u = paramItemInfo1.d + f1 - 1.0F; 
      paramItemInfo1.e = f1;
      f1 += paramItemInfo1.d + f2;
      i1++;
    } 
    this.V = false;
  }
  
  private void a(boolean paramBoolean) {
    if (this.aj == 2) {
      b1 = 1;
    } else {
      b1 = 0;
    } 
    if (b1) {
      setScrollingCacheEnabled(false);
      this.n.abortAnimation();
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.n.getCurrX();
      int i4 = this.n.getCurrY();
      if (i1 != i3 || i2 != i4) {
        scrollTo(i3, i4);
        if (i3 != i1)
          c(i3); 
      } 
    } 
    this.z = false;
    byte b2 = 0;
    boolean bool = b1;
    for (byte b1 = b2; b1 < this.e.size(); b1++) {
      ItemInfo itemInfo = (ItemInfo)this.e.get(b1);
      if (itemInfo.c) {
        itemInfo.c = false;
        bool = true;
      } 
    } 
    if (bool) {
      if (paramBoolean) {
        postOnAnimation(this.ak);
        return;
      } 
      this.ak.run();
    } 
  }
  
  private boolean a(float paramFloat1, float paramFloat2) { return ((paramFloat1 < this.E && paramFloat2 > 0.0F) || (paramFloat1 > (getWidth() - this.E) && paramFloat2 < 0.0F)); }
  
  private void b(int paramInt1, float paramFloat, int paramInt2) {
    if (this.ac != null)
      this.ac.onPageScrolled(paramInt1, paramFloat, paramInt2); 
    if (this.ab != null) {
      byte b1 = 0;
      int i1 = this.ab.size();
      while (b1 < i1) {
        OnPageChangeListener onPageChangeListener = (OnPageChangeListener)this.ab.get(b1);
        if (onPageChangeListener != null)
          onPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2); 
        b1++;
      } 
    } 
    if (this.ad != null)
      this.ad.onPageScrolled(paramInt1, paramFloat, paramInt2); 
  }
  
  private void b(boolean paramBoolean) {
    int i1 = getChildCount();
    for (byte b1 = 0; b1 < i1; b1++) {
      byte b2;
      if (paramBoolean) {
        b2 = 2;
      } else {
        b2 = 0;
      } 
      getChildAt(b1).setLayerType(b2, null);
    } 
  }
  
  private boolean b(float paramFloat) {
    float f1 = this.G;
    this.G = paramFloat;
    float f2 = getScrollX() + f1 - paramFloat;
    float f3 = getClientWidth();
    paramFloat = this.t * f3;
    f1 = this.u * f3;
    ItemInfo itemInfo1 = (ItemInfo)this.e.get(0);
    ArrayList arrayList = this.e;
    int i1 = this.e.size();
    boolean bool = true;
    ItemInfo itemInfo2 = (ItemInfo)arrayList.get(i1 - 1);
    if (itemInfo1.b != 0) {
      paramFloat = itemInfo1.e * f3;
      i1 = 0;
    } else {
      i1 = 1;
    } 
    if (itemInfo2.b != this.i.getCount() - 1) {
      f1 = itemInfo2.e * f3;
      bool = false;
    } 
    if (f2 < paramFloat) {
      if (i1 != 0)
        this.S.onPull(Math.abs(paramFloat - f2) / f3); 
    } else {
      paramFloat = f2;
      if (f2 > f1) {
        if (bool)
          this.T.onPull(Math.abs(f2 - f1) / f3); 
        paramFloat = f1;
      } 
    } 
    f1 = this.G;
    i1 = (int)paramFloat;
    this.G = f1 + paramFloat - i1;
    scrollTo(i1, getScrollY());
    c(i1);
    return false;
  }
  
  private void c(boolean paramBoolean) {
    ViewParent viewParent = getParent();
    if (viewParent != null)
      viewParent.requestDisallowInterceptTouchEvent(paramBoolean); 
  }
  
  private boolean c(int paramInt) {
    if (this.e.size() == 0) {
      this.W = false;
      a(0, 0.0F, 0);
      if (!this.W)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation"); 
      return false;
    } 
    ItemInfo itemInfo = j();
    int i2 = getClientWidth();
    int i3 = this.p;
    float f2 = this.p;
    float f1 = i2;
    f2 /= f1;
    int i1 = itemInfo.b;
    f1 = (paramInt / f1 - itemInfo.e) / (itemInfo.d + f2);
    paramInt = (int)((i3 + i2) * f1);
    this.W = false;
    a(i1, f1, paramInt);
    if (!this.W)
      throw new IllegalStateException("onPageScrolled did not call superclass implementation"); 
    return true;
  }
  
  private void d(int paramInt) {
    if (this.ac != null) {
      this.ac.onPageSelected(paramInt);
      this.ac.onPageChange(getChildAt(paramInt), paramInt);
    } 
    if (this.ab != null) {
      byte b1 = 0;
      int i1 = this.ab.size();
      while (b1 < i1) {
        OnPageChangeListener onPageChangeListener = (OnPageChangeListener)this.ab.get(b1);
        if (onPageChangeListener != null)
          onPageChangeListener.onPageSelected(paramInt); 
        b1++;
      } 
    } 
    if (this.ad != null)
      this.ad.onPageSelected(paramInt); 
  }
  
  private void e(int paramInt) {
    if (this.ac != null)
      this.ac.onPageScrollStateChanged(paramInt); 
    if (this.ab != null) {
      byte b1 = 0;
      int i1 = this.ab.size();
      while (b1 < i1) {
        OnPageChangeListener onPageChangeListener = (OnPageChangeListener)this.ab.get(b1);
        if (onPageChangeListener != null)
          onPageChangeListener.onPageScrollStateChanged(paramInt); 
        b1++;
      } 
    } 
    if (this.ad != null)
      this.ad.onPageScrollStateChanged(paramInt); 
  }
  
  private void g() {
    for (byte b1 = 0; b1 < getChildCount(); b1 = b2 + 1) {
      byte b2 = b1;
      if (!((LayoutParams)getChildAt(b1).getLayoutParams()).isDecor) {
        removeViewAt(b1);
        b2 = b1 - 1;
      } 
    } 
  }
  
  private int getClientWidth() { return getMeasuredWidth() - getPaddingLeft() - getPaddingRight(); }
  
  private void h() {
    if (this.ah != 0) {
      if (this.ai == null) {
        this.ai = new ArrayList();
      } else {
        this.ai.clear();
      } 
      int i1 = getChildCount();
      for (byte b1 = 0; b1 < i1; b1++) {
        View view = getChildAt(b1);
        this.ai.add(view);
      } 
      Collections.sort(this.ai, d);
    } 
  }
  
  private boolean i() {
    this.K = -1;
    k();
    this.S.onRelease();
    this.T.onRelease();
    return true;
  }
  
  private ItemInfo j() {
    float f2;
    float f1;
    int i1 = getClientWidth();
    if (i1 > 0) {
      f1 = getScrollX() / i1;
    } else {
      f1 = 0.0F;
    } 
    if (i1 > 0) {
      f2 = this.p / i1;
    } else {
      f2 = 0.0F;
    } 
    ItemInfo itemInfo = null;
    i1 = 0;
    boolean bool = true;
    int i2 = -1;
    float f3 = 0.0F;
    float f4 = 0.0F;
    while (i1 < this.e.size()) {
      ItemInfo itemInfo2 = (ItemInfo)this.e.get(i1);
      int i3 = i1;
      ItemInfo itemInfo1 = itemInfo2;
      if (!bool) {
        int i4 = itemInfo2.b;
        i2++;
        i3 = i1;
        itemInfo1 = itemInfo2;
        if (i4 != i2) {
          itemInfo1 = this.f;
          itemInfo1.e = f3 + f4 + f2;
          itemInfo1.b = i2;
          itemInfo1.d = this.i.getPageWidth(itemInfo1.b);
          i3 = i1 - 1;
        } 
      } 
      f3 = itemInfo1.e;
      f4 = itemInfo1.d;
      if (bool || f1 >= f3) {
        if (f1 >= f4 + f3 + f2) {
          if (i3 == this.e.size() - 1)
            return itemInfo1; 
          i2 = itemInfo1.b;
          f4 = itemInfo1.d;
          i1 = i3 + 1;
          bool = false;
          itemInfo = itemInfo1;
          continue;
        } 
        return itemInfo1;
      } 
      return itemInfo;
    } 
    return itemInfo;
  }
  
  private void k() {
    this.B = false;
    this.C = false;
    if (this.L != null) {
      this.L.recycle();
      this.L = null;
    } 
  }
  
  private void setScrollState(int paramInt) {
    if (this.aj == paramInt)
      return; 
    this.aj = paramInt;
    if (this.af != null) {
      boolean bool;
      if (paramInt != 0) {
        bool = true;
      } else {
        bool = false;
      } 
      b(bool);
    } 
    e(paramInt);
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean) {
    if (this.y != paramBoolean)
      this.y = paramBoolean; 
  }
  
  float a(float paramFloat) { return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D)); }
  
  ItemInfo a(int paramInt1, int paramInt2) {
    ItemInfo itemInfo = new ItemInfo();
    itemInfo.b = paramInt1;
    itemInfo.a = this.i.instantiateItem(this, paramInt1);
    itemInfo.d = this.i.getPageWidth(paramInt1);
    if (paramInt2 < 0 || paramInt2 >= this.e.size()) {
      this.e.add(itemInfo);
      return itemInfo;
    } 
    this.e.add(paramInt2, itemInfo);
    return itemInfo;
  }
  
  ItemInfo a(View paramView) {
    for (byte b1 = 0; b1 < this.e.size(); b1++) {
      ItemInfo itemInfo = (ItemInfo)this.e.get(b1);
      if (this.i.isViewFromObject(paramView, itemInfo.a))
        return itemInfo; 
    } 
    return null;
  }
  
  void a() {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context context = getContext();
    this.n = new Scroller(context, c);
    ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
    float f1 = (context.getResources().getDisplayMetrics()).density;
    this.F = viewConfiguration.getScaledPagingTouchSlop();
    this.M = (int)(400.0F * f1);
    this.N = viewConfiguration.getScaledMaximumFlingVelocity();
    this.S = new EdgeEffect(context);
    this.T = new EdgeEffect(context);
    this.O = (int)(25.0F * f1);
    this.P = (int)(2.0F * f1);
    this.D = (int)(f1 * 16.0F);
    setAccessibilityDelegate(new View.AccessibilityDelegate());
    if (Build.VERSION.SDK_INT < 16)
      return; 
    if (getImportantForAccessibility() == 0)
      setImportantForAccessibility(1); 
  }
  
  void a(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: getfield j : I
    //   4: iload_1
    //   5: if_icmpeq -> 49
    //   8: aload_0
    //   9: getfield j : I
    //   12: iload_1
    //   13: if_icmpge -> 23
    //   16: bipush #66
    //   18: istore #5
    //   20: goto -> 27
    //   23: bipush #17
    //   25: istore #5
    //   27: aload_0
    //   28: aload_0
    //   29: getfield j : I
    //   32: invokevirtual b : (I)Landroid/widget/PageView$ItemInfo;
    //   35: astore #15
    //   37: aload_0
    //   38: iload_1
    //   39: putfield j : I
    //   42: iload #5
    //   44: istore #8
    //   46: goto -> 55
    //   49: iconst_2
    //   50: istore #8
    //   52: aconst_null
    //   53: astore #15
    //   55: aload_0
    //   56: getfield i : Landroid/widget/BasePageAdapter;
    //   59: ifnonnull -> 67
    //   62: aload_0
    //   63: invokespecial h : ()V
    //   66: return
    //   67: aload_0
    //   68: getfield z : Z
    //   71: ifeq -> 79
    //   74: aload_0
    //   75: invokespecial h : ()V
    //   78: return
    //   79: aload_0
    //   80: invokevirtual getWindowToken : ()Landroid/os/IBinder;
    //   83: ifnonnull -> 87
    //   86: return
    //   87: aload_0
    //   88: getfield i : Landroid/widget/BasePageAdapter;
    //   91: aload_0
    //   92: invokevirtual startUpdate : (Landroid/view/ViewGroup;)V
    //   95: aload_0
    //   96: getfield A : I
    //   99: istore_1
    //   100: iconst_0
    //   101: aload_0
    //   102: getfield j : I
    //   105: iload_1
    //   106: isub
    //   107: invokestatic max : (II)I
    //   110: istore #12
    //   112: aload_0
    //   113: getfield i : Landroid/widget/BasePageAdapter;
    //   116: invokevirtual getCount : ()I
    //   119: istore #10
    //   121: iload #10
    //   123: iconst_1
    //   124: isub
    //   125: aload_0
    //   126: getfield j : I
    //   129: iload_1
    //   130: iadd
    //   131: invokestatic min : (II)I
    //   134: istore #11
    //   136: iconst_0
    //   137: istore_1
    //   138: iload_1
    //   139: aload_0
    //   140: getfield e : Ljava/util/ArrayList;
    //   143: invokevirtual size : ()I
    //   146: if_icmpge -> 196
    //   149: aload_0
    //   150: getfield e : Ljava/util/ArrayList;
    //   153: iload_1
    //   154: invokevirtual get : (I)Ljava/lang/Object;
    //   157: checkcast android/widget/PageView$ItemInfo
    //   160: astore #14
    //   162: aload #14
    //   164: getfield b : I
    //   167: aload_0
    //   168: getfield j : I
    //   171: if_icmplt -> 189
    //   174: aload #14
    //   176: getfield b : I
    //   179: aload_0
    //   180: getfield j : I
    //   183: if_icmpne -> 196
    //   186: goto -> 199
    //   189: iload_1
    //   190: iconst_1
    //   191: iadd
    //   192: istore_1
    //   193: goto -> 138
    //   196: aconst_null
    //   197: astore #14
    //   199: aload #14
    //   201: astore #16
    //   203: aload #14
    //   205: ifnonnull -> 228
    //   208: aload #14
    //   210: astore #16
    //   212: iload #10
    //   214: ifle -> 228
    //   217: aload_0
    //   218: aload_0
    //   219: getfield j : I
    //   222: iload_1
    //   223: invokevirtual a : (II)Landroid/widget/PageView$ItemInfo;
    //   226: astore #16
    //   228: aload #16
    //   230: ifnull -> 925
    //   233: iload_1
    //   234: iconst_1
    //   235: isub
    //   236: istore #5
    //   238: iload #5
    //   240: iflt -> 260
    //   243: aload_0
    //   244: getfield e : Ljava/util/ArrayList;
    //   247: iload #5
    //   249: invokevirtual get : (I)Ljava/lang/Object;
    //   252: checkcast android/widget/PageView$ItemInfo
    //   255: astore #14
    //   257: goto -> 263
    //   260: aconst_null
    //   261: astore #14
    //   263: aload_0
    //   264: invokespecial getClientWidth : ()I
    //   267: istore #13
    //   269: iload #13
    //   271: ifgt -> 280
    //   274: fconst_0
    //   275: fstore #4
    //   277: goto -> 301
    //   280: aload #16
    //   282: getfield d : F
    //   285: fstore_2
    //   286: aload_0
    //   287: invokevirtual getPaddingLeft : ()I
    //   290: i2f
    //   291: iload #13
    //   293: i2f
    //   294: fdiv
    //   295: fconst_2
    //   296: fload_2
    //   297: fsub
    //   298: fadd
    //   299: fstore #4
    //   301: aload_0
    //   302: getfield j : I
    //   305: iconst_1
    //   306: isub
    //   307: istore #9
    //   309: fconst_0
    //   310: fstore_3
    //   311: iload #9
    //   313: iflt -> 576
    //   316: fload_3
    //   317: fload #4
    //   319: fcmpl
    //   320: iflt -> 434
    //   323: iload #9
    //   325: iload #12
    //   327: if_icmpge -> 434
    //   330: aload #14
    //   332: ifnonnull -> 338
    //   335: goto -> 576
    //   338: fload_3
    //   339: fstore_2
    //   340: iload #5
    //   342: istore #7
    //   344: aload #14
    //   346: astore #17
    //   348: iload_1
    //   349: istore #6
    //   351: iload #9
    //   353: aload #14
    //   355: getfield b : I
    //   358: if_icmpne -> 554
    //   361: fload_3
    //   362: fstore_2
    //   363: iload #5
    //   365: istore #7
    //   367: aload #14
    //   369: astore #17
    //   371: iload_1
    //   372: istore #6
    //   374: aload #14
    //   376: getfield c : Z
    //   379: ifne -> 554
    //   382: aload_0
    //   383: getfield e : Ljava/util/ArrayList;
    //   386: iload #5
    //   388: invokevirtual remove : (I)Ljava/lang/Object;
    //   391: pop
    //   392: aload_0
    //   393: getfield i : Landroid/widget/BasePageAdapter;
    //   396: aload_0
    //   397: iload #9
    //   399: aload #14
    //   401: getfield a : Ljava/lang/Object;
    //   404: invokevirtual destroyItem : (Landroid/view/ViewGroup;ILjava/lang/Object;)V
    //   407: iload #5
    //   409: iconst_1
    //   410: isub
    //   411: istore #5
    //   413: iload_1
    //   414: iconst_1
    //   415: isub
    //   416: istore_1
    //   417: fload_3
    //   418: fstore_2
    //   419: iload #5
    //   421: istore #6
    //   423: iload_1
    //   424: istore #7
    //   426: iload #5
    //   428: iflt -> 533
    //   431: goto -> 514
    //   434: aload #14
    //   436: ifnull -> 480
    //   439: iload #9
    //   441: aload #14
    //   443: getfield b : I
    //   446: if_icmpne -> 480
    //   449: fload_3
    //   450: aload #14
    //   452: getfield d : F
    //   455: fadd
    //   456: fstore_3
    //   457: iload #5
    //   459: iconst_1
    //   460: isub
    //   461: istore #5
    //   463: fload_3
    //   464: fstore_2
    //   465: iload #5
    //   467: istore #6
    //   469: iload_1
    //   470: istore #7
    //   472: iload #5
    //   474: iflt -> 533
    //   477: goto -> 514
    //   480: fload_3
    //   481: aload_0
    //   482: iload #9
    //   484: iload #5
    //   486: iconst_1
    //   487: iadd
    //   488: invokevirtual a : (II)Landroid/widget/PageView$ItemInfo;
    //   491: getfield d : F
    //   494: fadd
    //   495: fstore_3
    //   496: iload_1
    //   497: iconst_1
    //   498: iadd
    //   499: istore_1
    //   500: fload_3
    //   501: fstore_2
    //   502: iload #5
    //   504: istore #6
    //   506: iload_1
    //   507: istore #7
    //   509: iload #5
    //   511: iflt -> 533
    //   514: aload_0
    //   515: getfield e : Ljava/util/ArrayList;
    //   518: iload #5
    //   520: invokevirtual get : (I)Ljava/lang/Object;
    //   523: checkcast android/widget/PageView$ItemInfo
    //   526: astore #14
    //   528: fload_3
    //   529: fstore_2
    //   530: goto -> 543
    //   533: aconst_null
    //   534: astore #14
    //   536: iload #7
    //   538: istore_1
    //   539: iload #6
    //   541: istore #5
    //   543: iload_1
    //   544: istore #6
    //   546: aload #14
    //   548: astore #17
    //   550: iload #5
    //   552: istore #7
    //   554: iload #9
    //   556: iconst_1
    //   557: isub
    //   558: istore #9
    //   560: fload_2
    //   561: fstore_3
    //   562: iload #7
    //   564: istore #5
    //   566: aload #17
    //   568: astore #14
    //   570: iload #6
    //   572: istore_1
    //   573: goto -> 311
    //   576: aload #16
    //   578: getfield d : F
    //   581: fstore_3
    //   582: iload_1
    //   583: iconst_1
    //   584: iadd
    //   585: istore #5
    //   587: fload_3
    //   588: fconst_2
    //   589: fcmpg
    //   590: ifge -> 916
    //   593: iload #5
    //   595: aload_0
    //   596: getfield e : Ljava/util/ArrayList;
    //   599: invokevirtual size : ()I
    //   602: if_icmpge -> 622
    //   605: aload_0
    //   606: getfield e : Ljava/util/ArrayList;
    //   609: iload #5
    //   611: invokevirtual get : (I)Ljava/lang/Object;
    //   614: checkcast android/widget/PageView$ItemInfo
    //   617: astore #14
    //   619: goto -> 625
    //   622: aconst_null
    //   623: astore #14
    //   625: iload #13
    //   627: ifgt -> 636
    //   630: fconst_0
    //   631: fstore #4
    //   633: goto -> 649
    //   636: aload_0
    //   637: invokevirtual getPaddingRight : ()I
    //   640: i2f
    //   641: iload #13
    //   643: i2f
    //   644: fdiv
    //   645: fconst_2
    //   646: fadd
    //   647: fstore #4
    //   649: aload_0
    //   650: getfield j : I
    //   653: istore #6
    //   655: aload #14
    //   657: astore #17
    //   659: iload #6
    //   661: iconst_1
    //   662: iadd
    //   663: istore #7
    //   665: iload #7
    //   667: iload #10
    //   669: if_icmpge -> 916
    //   672: fload_3
    //   673: fload #4
    //   675: fcmpl
    //   676: iflt -> 804
    //   679: iload #7
    //   681: iload #11
    //   683: if_icmple -> 804
    //   686: aload #17
    //   688: ifnonnull -> 694
    //   691: goto -> 916
    //   694: fload_3
    //   695: fstore_2
    //   696: iload #5
    //   698: istore #6
    //   700: aload #17
    //   702: astore #14
    //   704: iload #7
    //   706: aload #17
    //   708: getfield b : I
    //   711: if_icmpne -> 899
    //   714: fload_3
    //   715: fstore_2
    //   716: iload #5
    //   718: istore #6
    //   720: aload #17
    //   722: astore #14
    //   724: aload #17
    //   726: getfield c : Z
    //   729: ifne -> 899
    //   732: aload_0
    //   733: getfield e : Ljava/util/ArrayList;
    //   736: iload #5
    //   738: invokevirtual remove : (I)Ljava/lang/Object;
    //   741: pop
    //   742: aload_0
    //   743: getfield i : Landroid/widget/BasePageAdapter;
    //   746: aload_0
    //   747: iload #7
    //   749: aload #17
    //   751: getfield a : Ljava/lang/Object;
    //   754: invokevirtual destroyItem : (Landroid/view/ViewGroup;ILjava/lang/Object;)V
    //   757: fload_3
    //   758: fstore_2
    //   759: iload #5
    //   761: istore #6
    //   763: iload #5
    //   765: aload_0
    //   766: getfield e : Ljava/util/ArrayList;
    //   769: invokevirtual size : ()I
    //   772: if_icmpge -> 798
    //   775: aload_0
    //   776: getfield e : Ljava/util/ArrayList;
    //   779: iload #5
    //   781: invokevirtual get : (I)Ljava/lang/Object;
    //   784: checkcast android/widget/PageView$ItemInfo
    //   787: astore #14
    //   789: fload_3
    //   790: fstore_2
    //   791: iload #5
    //   793: istore #6
    //   795: goto -> 899
    //   798: aconst_null
    //   799: astore #14
    //   801: goto -> 899
    //   804: aload #17
    //   806: ifnull -> 854
    //   809: iload #7
    //   811: aload #17
    //   813: getfield b : I
    //   816: if_icmpne -> 854
    //   819: fload_3
    //   820: aload #17
    //   822: getfield d : F
    //   825: fadd
    //   826: fstore_3
    //   827: iload #5
    //   829: iconst_1
    //   830: iadd
    //   831: istore #5
    //   833: fload_3
    //   834: fstore_2
    //   835: iload #5
    //   837: istore #6
    //   839: iload #5
    //   841: aload_0
    //   842: getfield e : Ljava/util/ArrayList;
    //   845: invokevirtual size : ()I
    //   848: if_icmpge -> 798
    //   851: goto -> 775
    //   854: aload_0
    //   855: iload #7
    //   857: iload #5
    //   859: invokevirtual a : (II)Landroid/widget/PageView$ItemInfo;
    //   862: astore #14
    //   864: iload #5
    //   866: iconst_1
    //   867: iadd
    //   868: istore #5
    //   870: fload_3
    //   871: aload #14
    //   873: getfield d : F
    //   876: fadd
    //   877: fstore_3
    //   878: fload_3
    //   879: fstore_2
    //   880: iload #5
    //   882: istore #6
    //   884: iload #5
    //   886: aload_0
    //   887: getfield e : Ljava/util/ArrayList;
    //   890: invokevirtual size : ()I
    //   893: if_icmpge -> 798
    //   896: goto -> 775
    //   899: fload_2
    //   900: fstore_3
    //   901: iload #6
    //   903: istore #5
    //   905: aload #14
    //   907: astore #17
    //   909: iload #7
    //   911: istore #6
    //   913: goto -> 659
    //   916: aload_0
    //   917: aload #16
    //   919: iload_1
    //   920: aload #15
    //   922: invokespecial a : (Landroid/widget/PageView$ItemInfo;ILandroid/widget/PageView$ItemInfo;)V
    //   925: aload_0
    //   926: getfield i : Landroid/widget/BasePageAdapter;
    //   929: astore #15
    //   931: aload_0
    //   932: getfield j : I
    //   935: istore_1
    //   936: aload #16
    //   938: ifnull -> 951
    //   941: aload #16
    //   943: getfield a : Ljava/lang/Object;
    //   946: astore #14
    //   948: goto -> 954
    //   951: aconst_null
    //   952: astore #14
    //   954: aload #15
    //   956: aload_0
    //   957: iload_1
    //   958: aload #14
    //   960: invokevirtual setPrimaryItem : (Landroid/view/ViewGroup;ILjava/lang/Object;)V
    //   963: aload_0
    //   964: getfield i : Landroid/widget/BasePageAdapter;
    //   967: aload_0
    //   968: invokevirtual finishUpdate : (Landroid/view/ViewGroup;)V
    //   971: aload_0
    //   972: invokevirtual getChildCount : ()I
    //   975: istore #5
    //   977: iconst_0
    //   978: istore_1
    //   979: iload_1
    //   980: iload #5
    //   982: if_icmpge -> 1069
    //   985: aload_0
    //   986: iload_1
    //   987: invokevirtual getChildAt : (I)Landroid/view/View;
    //   990: astore #15
    //   992: aload #15
    //   994: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   997: checkcast android/widget/PageView$LayoutParams
    //   1000: astore #14
    //   1002: aload #14
    //   1004: iload_1
    //   1005: putfield d : I
    //   1008: aload #14
    //   1010: getfield isDecor : Z
    //   1013: ifne -> 1062
    //   1016: aload #14
    //   1018: getfield a : F
    //   1021: fconst_0
    //   1022: fcmpl
    //   1023: ifne -> 1062
    //   1026: aload_0
    //   1027: aload #15
    //   1029: invokevirtual a : (Landroid/view/View;)Landroid/widget/PageView$ItemInfo;
    //   1032: astore #15
    //   1034: aload #15
    //   1036: ifnull -> 1062
    //   1039: aload #14
    //   1041: aload #15
    //   1043: getfield d : F
    //   1046: putfield a : F
    //   1049: aload #14
    //   1051: aload #15
    //   1053: getfield b : I
    //   1056: putfield c : I
    //   1059: goto -> 1062
    //   1062: iload_1
    //   1063: iconst_1
    //   1064: iadd
    //   1065: istore_1
    //   1066: goto -> 979
    //   1069: aload_0
    //   1070: invokespecial h : ()V
    //   1073: aload_0
    //   1074: invokevirtual hasFocus : ()Z
    //   1077: ifeq -> 1182
    //   1080: aload_0
    //   1081: invokevirtual findFocus : ()Landroid/view/View;
    //   1084: astore #14
    //   1086: aload #14
    //   1088: ifnull -> 1102
    //   1091: aload_0
    //   1092: aload #14
    //   1094: invokevirtual b : (Landroid/view/View;)Landroid/widget/PageView$ItemInfo;
    //   1097: astore #14
    //   1099: goto -> 1105
    //   1102: aconst_null
    //   1103: astore #14
    //   1105: aload #14
    //   1107: ifnull -> 1122
    //   1110: aload #14
    //   1112: getfield b : I
    //   1115: aload_0
    //   1116: getfield j : I
    //   1119: if_icmpeq -> 1182
    //   1122: iconst_0
    //   1123: istore_1
    //   1124: iload_1
    //   1125: aload_0
    //   1126: invokevirtual getChildCount : ()I
    //   1129: if_icmpge -> 1182
    //   1132: aload_0
    //   1133: iload_1
    //   1134: invokevirtual getChildAt : (I)Landroid/view/View;
    //   1137: astore #14
    //   1139: aload_0
    //   1140: aload #14
    //   1142: invokevirtual a : (Landroid/view/View;)Landroid/widget/PageView$ItemInfo;
    //   1145: astore #15
    //   1147: aload #15
    //   1149: ifnull -> 1175
    //   1152: aload #15
    //   1154: getfield b : I
    //   1157: aload_0
    //   1158: getfield j : I
    //   1161: if_icmpne -> 1175
    //   1164: aload #14
    //   1166: iload #8
    //   1168: invokevirtual requestFocus : (I)Z
    //   1171: ifeq -> 1175
    //   1174: return
    //   1175: iload_1
    //   1176: iconst_1
    //   1177: iadd
    //   1178: istore_1
    //   1179: goto -> 1124
    //   1182: return }
  
  protected void a(int paramInt1, float paramFloat, int paramInt2) {
    int i1 = this.aa;
    int i2 = 0;
    if (i1 > 0) {
      int i4 = getScrollX();
      i1 = getPaddingLeft();
      int i3 = getPaddingRight();
      int i5 = getWidth();
      int i6 = getChildCount();
      byte b1;
      for (b1 = 0; b1 < i6; b1++) {
        View view = getChildAt(b1);
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (layoutParams.isDecor) {
          int i7 = layoutParams.gravity & 0x7;
          if (i7 != 1) {
            if (i7 != 3) {
              if (i7 != 5) {
                int i8 = i1;
                i7 = i1;
                i1 = i8;
              } else {
                i7 = i5 - i3 - view.getMeasuredWidth();
                i3 += view.getMeasuredWidth();
              } 
            } else {
              int i8 = view.getWidth() + i1;
              i7 = i1;
              i1 = i8;
            } 
          } else {
            i7 = Math.max((i5 - view.getMeasuredWidth()) / 2, i1);
          } 
          i7 = i7 + i4 - view.getLeft();
          if (i7 != 0)
            view.offsetLeftAndRight(i7); 
        } 
      } 
    } 
    b(paramInt1, paramFloat, paramInt2);
    if (this.af != null) {
      paramInt2 = getScrollX();
      i1 = getChildCount();
      for (paramInt1 = i2; paramInt1 < i1; paramInt1++) {
        View view = getChildAt(paramInt1);
        if (!((LayoutParams)view.getLayoutParams()).isDecor) {
          paramFloat = (view.getLeft() - paramInt2) / getClientWidth();
          this.af.transformPage(view, paramFloat);
        } 
      } 
    } 
    this.W = true;
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3) {
    if (getChildCount() == 0) {
      setScrollingCacheEnabled(false);
      return;
    } 
    int i1 = getScrollX();
    int i2 = getScrollY();
    int i3 = paramInt1 - i1;
    paramInt2 -= i2;
    if (i3 == 0 && paramInt2 == 0) {
      a(false);
      c();
      setScrollState(0);
      return;
    } 
    setScrollingCacheEnabled(true);
    setScrollState(2);
    paramInt1 = getClientWidth();
    int i4 = paramInt1 / 2;
    float f2 = Math.abs(i3);
    float f1 = paramInt1;
    float f3 = Math.min(1.0F, f2 * 1.0F / f1);
    f2 = i4;
    f3 = a(f3);
    paramInt1 = Math.abs(paramInt3);
    if (paramInt1 > 0) {
      paramInt1 = Math.round(Math.abs((f2 + f3 * f2) / paramInt1) * 1000.0F) * 4;
    } else {
      f2 = this.i.getPageWidth(this.j);
      paramInt1 = (int)((Math.abs(i3) / (f1 * f2 + this.p) + 1.0F) * 100.0F);
    } 
    paramInt1 = Math.min(paramInt1, 600);
    this.n.startScroll(i1, i2, i3, paramInt2, paramInt1);
    postInvalidateOnAnimation();
  }
  
  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2) { a(paramInt, paramBoolean1, paramBoolean2, 0); }
  
  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2) {
    int i1;
    if (this.i == null || this.i.getCount() <= 0) {
      setScrollingCacheEnabled(false);
      return;
    } 
    if (!paramBoolean2 && this.j == paramInt1 && this.e.size() != 0) {
      setScrollingCacheEnabled(false);
      return;
    } 
    paramBoolean2 = true;
    if (paramInt1 < 0) {
      i1 = 0;
    } else {
      i1 = paramInt1;
      if (paramInt1 >= this.i.getCount())
        i1 = this.i.getCount() - 1; 
    } 
    paramInt1 = this.A;
    if (i1 > this.j + paramInt1 || i1 < this.j - paramInt1)
      for (paramInt1 = 0; paramInt1 < this.e.size(); paramInt1++)
        ((ItemInfo)this.e.get(paramInt1)).c = true;  
    if (this.j == i1)
      paramBoolean2 = false; 
    if (this.U) {
      this.j = i1;
      if (paramBoolean2)
        d(i1); 
      requestLayout();
      return;
    } 
    a(i1);
    a(i1, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3) {
    if (paramView instanceof ViewGroup) {
      ViewGroup viewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      int i1;
      for (i1 = viewGroup.getChildCount() - 1; i1 >= 0; i1--) {
        View view = viewGroup.getChildAt(i1);
        int i4 = paramInt2 + i2;
        if (i4 >= view.getLeft() && i4 < view.getRight()) {
          int i5 = paramInt3 + i3;
          if (i5 >= view.getTop() && i5 < view.getBottom() && a(view, true, paramInt1, i4 - view.getLeft(), i5 - view.getTop()))
            return true; 
        } 
      } 
    } 
    return (paramBoolean && paramView.canScrollHorizontally(-paramInt1));
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2) {
    int i1 = paramArrayList.size();
    int i2 = getDescendantFocusability();
    if (i2 != 393216) {
      byte b1;
      for (b1 = 0; b1 < getChildCount(); b1++) {
        View view = getChildAt(b1);
        if (view.getVisibility() == 0) {
          ItemInfo itemInfo = a(view);
          if (itemInfo != null && itemInfo.b == this.j)
            view.addFocusables(paramArrayList, paramInt1, paramInt2); 
        } 
      } 
    } 
    if (i2 != 262144 || i1 == paramArrayList.size()) {
      if (!isFocusable())
        return; 
      if ((paramInt2 & true) == 1 && isInTouchMode() && !isFocusableInTouchMode())
        return; 
      if (paramArrayList != null)
        paramArrayList.add(this); 
    } 
  }
  
  public void addOnPageChangeListener(OnPageChangeListener paramOnPageChangeListener) {
    if (this.ab == null)
      this.ab = new ArrayList(); 
    this.ab.add(paramOnPageChangeListener);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList) {
    for (byte b1 = 0; b1 < getChildCount(); b1++) {
      View view = getChildAt(b1);
      if (view.getVisibility() == 0) {
        ItemInfo itemInfo = a(view);
        if (itemInfo != null && itemInfo.b == this.j)
          view.addTouchables(paramArrayList); 
      } 
    } 
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    ViewGroup.LayoutParams layoutParams = paramLayoutParams;
    if (!checkLayoutParams(paramLayoutParams))
      layoutParams = generateLayoutParams(paramLayoutParams); 
    paramLayoutParams = (LayoutParams)layoutParams;
    paramLayoutParams.isDecor |= paramView instanceof Decor;
    if (this.x) {
      if (paramLayoutParams != null && paramLayoutParams.isDecor)
        throw new IllegalStateException("Cannot add page decor view during layout"); 
      paramLayoutParams.b = true;
      addViewInLayout(paramView, paramInt, layoutParams);
      return;
    } 
    super.addView(paramView, paramInt, layoutParams);
  }
  
  public boolean arrowScroll(int paramInt) { // Byte code:
    //   0: aload_0
    //   1: invokevirtual findFocus : ()Landroid/view/View;
    //   4: astore #7
    //   6: iconst_0
    //   7: istore #4
    //   9: aconst_null
    //   10: astore #6
    //   12: aload #7
    //   14: aload_0
    //   15: if_acmpne -> 25
    //   18: aload #6
    //   20: astore #5
    //   22: goto -> 199
    //   25: aload #7
    //   27: ifnull -> 195
    //   30: aload #7
    //   32: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   35: astore #5
    //   37: aload #5
    //   39: instanceof android/view/ViewGroup
    //   42: ifeq -> 68
    //   45: aload #5
    //   47: aload_0
    //   48: if_acmpne -> 56
    //   51: iconst_1
    //   52: istore_2
    //   53: goto -> 70
    //   56: aload #5
    //   58: invokeinterface getParent : ()Landroid/view/ViewParent;
    //   63: astore #5
    //   65: goto -> 37
    //   68: iconst_0
    //   69: istore_2
    //   70: iload_2
    //   71: ifne -> 195
    //   74: new java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial <init> : ()V
    //   81: astore #8
    //   83: aload #8
    //   85: aload #7
    //   87: invokevirtual getClass : ()Ljava/lang/Class;
    //   90: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   93: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: pop
    //   97: aload #7
    //   99: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   102: astore #5
    //   104: aload #5
    //   106: instanceof android/view/ViewGroup
    //   109: ifeq -> 147
    //   112: aload #8
    //   114: ldc_w ' => '
    //   117: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: pop
    //   121: aload #8
    //   123: aload #5
    //   125: invokevirtual getClass : ()Ljava/lang/Class;
    //   128: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   131: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: pop
    //   135: aload #5
    //   137: invokeinterface getParent : ()Landroid/view/ViewParent;
    //   142: astore #5
    //   144: goto -> 104
    //   147: new java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial <init> : ()V
    //   154: astore #5
    //   156: aload #5
    //   158: ldc_w 'arrowScroll tried to find focus based on non-child current focused view '
    //   161: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: pop
    //   165: aload #5
    //   167: aload #8
    //   169: invokevirtual toString : ()Ljava/lang/String;
    //   172: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: pop
    //   176: ldc_w 'PageView'
    //   179: aload #5
    //   181: invokevirtual toString : ()Ljava/lang/String;
    //   184: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   187: pop
    //   188: aload #6
    //   190: astore #5
    //   192: goto -> 199
    //   195: aload #7
    //   197: astore #5
    //   199: invokestatic getInstance : ()Landroid/view/FocusFinder;
    //   202: aload_0
    //   203: aload #5
    //   205: iload_1
    //   206: invokevirtual findNextFocus : (Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    //   209: astore #6
    //   211: aload #6
    //   213: ifnull -> 339
    //   216: aload #6
    //   218: aload #5
    //   220: if_acmpeq -> 339
    //   223: iload_1
    //   224: bipush #17
    //   226: if_icmpne -> 286
    //   229: aload_0
    //   230: aload_0
    //   231: getfield g : Landroid/graphics/Rect;
    //   234: aload #6
    //   236: invokespecial a : (Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    //   239: getfield left : I
    //   242: istore_2
    //   243: aload_0
    //   244: aload_0
    //   245: getfield g : Landroid/graphics/Rect;
    //   248: aload #5
    //   250: invokespecial a : (Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    //   253: getfield left : I
    //   256: istore_3
    //   257: aload #5
    //   259: ifnull -> 276
    //   262: iload_2
    //   263: iload_3
    //   264: if_icmplt -> 276
    //   267: aload_0
    //   268: invokevirtual d : ()Z
    //   271: istore #4
    //   273: goto -> 283
    //   276: aload #6
    //   278: invokevirtual requestFocus : ()Z
    //   281: istore #4
    //   283: goto -> 379
    //   286: iload_1
    //   287: bipush #66
    //   289: if_icmpne -> 379
    //   292: aload_0
    //   293: aload_0
    //   294: getfield g : Landroid/graphics/Rect;
    //   297: aload #6
    //   299: invokespecial a : (Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    //   302: getfield left : I
    //   305: istore_2
    //   306: aload_0
    //   307: aload_0
    //   308: getfield g : Landroid/graphics/Rect;
    //   311: aload #5
    //   313: invokespecial a : (Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    //   316: getfield left : I
    //   319: istore_3
    //   320: aload #5
    //   322: ifnull -> 276
    //   325: iload_2
    //   326: iload_3
    //   327: if_icmpgt -> 276
    //   330: aload_0
    //   331: invokevirtual e : ()Z
    //   334: istore #4
    //   336: goto -> 283
    //   339: iload_1
    //   340: bipush #17
    //   342: if_icmpeq -> 373
    //   345: iload_1
    //   346: iconst_1
    //   347: if_icmpne -> 353
    //   350: goto -> 373
    //   353: iload_1
    //   354: bipush #66
    //   356: if_icmpeq -> 364
    //   359: iload_1
    //   360: iconst_2
    //   361: if_icmpne -> 379
    //   364: aload_0
    //   365: invokevirtual e : ()Z
    //   368: istore #4
    //   370: goto -> 379
    //   373: aload_0
    //   374: invokevirtual d : ()Z
    //   377: istore #4
    //   379: iload #4
    //   381: ifeq -> 392
    //   384: aload_0
    //   385: iload_1
    //   386: invokestatic getContantForFocusDirection : (I)I
    //   389: invokevirtual playSoundEffect : (I)V
    //   392: iload #4
    //   394: ireturn }
  
  ItemInfo b(int paramInt) {
    for (byte b1 = 0; b1 < this.e.size(); b1++) {
      ItemInfo itemInfo = (ItemInfo)this.e.get(b1);
      if (itemInfo.b == paramInt)
        return itemInfo; 
    } 
    return null;
  }
  
  ItemInfo b(View paramView) {
    while (true) {
      ViewParent viewParent = paramView.getParent();
      if (viewParent != this) {
        if (viewParent == null || !(viewParent instanceof View))
          return null; 
        paramView = (View)viewParent;
        continue;
      } 
      break;
    } 
    return a(paramView);
  }
  
  void b() { // Byte code:
    //   0: aload_0
    //   1: getfield i : Landroid/widget/BasePageAdapter;
    //   4: invokevirtual getCount : ()I
    //   7: istore #9
    //   9: aload_0
    //   10: iload #9
    //   12: putfield h : I
    //   15: aload_0
    //   16: getfield e : Ljava/util/ArrayList;
    //   19: invokevirtual size : ()I
    //   22: aload_0
    //   23: getfield A : I
    //   26: iconst_2
    //   27: imul
    //   28: iconst_1
    //   29: iadd
    //   30: if_icmpge -> 50
    //   33: aload_0
    //   34: getfield e : Ljava/util/ArrayList;
    //   37: invokevirtual size : ()I
    //   40: iload #9
    //   42: if_icmpge -> 50
    //   45: iconst_1
    //   46: istore_1
    //   47: goto -> 52
    //   50: iconst_0
    //   51: istore_1
    //   52: aload_0
    //   53: getfield j : I
    //   56: istore_2
    //   57: iload_1
    //   58: istore #6
    //   60: iload_2
    //   61: istore_1
    //   62: iconst_0
    //   63: istore_3
    //   64: iconst_0
    //   65: istore_2
    //   66: iload_3
    //   67: aload_0
    //   68: getfield e : Ljava/util/ArrayList;
    //   71: invokevirtual size : ()I
    //   74: if_icmpge -> 292
    //   77: aload_0
    //   78: getfield e : Ljava/util/ArrayList;
    //   81: iload_3
    //   82: invokevirtual get : (I)Ljava/lang/Object;
    //   85: checkcast android/widget/PageView$ItemInfo
    //   88: astore #10
    //   90: aload_0
    //   91: getfield i : Landroid/widget/BasePageAdapter;
    //   94: aload #10
    //   96: getfield a : Ljava/lang/Object;
    //   99: invokevirtual getItemPosition : (Ljava/lang/Object;)I
    //   102: istore #8
    //   104: iload #8
    //   106: iconst_m1
    //   107: if_icmpne -> 122
    //   110: iload_3
    //   111: istore #4
    //   113: iload_2
    //   114: istore #5
    //   116: iload_1
    //   117: istore #7
    //   119: goto -> 278
    //   122: iload #8
    //   124: bipush #-2
    //   126: if_icmpne -> 234
    //   129: aload_0
    //   130: getfield e : Ljava/util/ArrayList;
    //   133: iload_3
    //   134: invokevirtual remove : (I)Ljava/lang/Object;
    //   137: pop
    //   138: iload_3
    //   139: iconst_1
    //   140: isub
    //   141: istore #5
    //   143: iload_2
    //   144: istore #4
    //   146: iload_2
    //   147: ifne -> 161
    //   150: aload_0
    //   151: getfield i : Landroid/widget/BasePageAdapter;
    //   154: aload_0
    //   155: invokevirtual startUpdate : (Landroid/view/ViewGroup;)V
    //   158: iconst_1
    //   159: istore #4
    //   161: aload_0
    //   162: getfield i : Landroid/widget/BasePageAdapter;
    //   165: aload_0
    //   166: aload #10
    //   168: getfield b : I
    //   171: aload #10
    //   173: getfield a : Ljava/lang/Object;
    //   176: invokevirtual destroyItem : (Landroid/view/ViewGroup;ILjava/lang/Object;)V
    //   179: iload #5
    //   181: istore_3
    //   182: iload #4
    //   184: istore_2
    //   185: aload_0
    //   186: getfield j : I
    //   189: aload #10
    //   191: getfield b : I
    //   194: if_icmpne -> 219
    //   197: iconst_0
    //   198: aload_0
    //   199: getfield j : I
    //   202: iload #9
    //   204: iconst_1
    //   205: isub
    //   206: invokestatic min : (II)I
    //   209: invokestatic max : (II)I
    //   212: istore_1
    //   213: iload #4
    //   215: istore_2
    //   216: iload #5
    //   218: istore_3
    //   219: iconst_1
    //   220: istore #6
    //   222: iload_3
    //   223: istore #4
    //   225: iload_2
    //   226: istore #5
    //   228: iload_1
    //   229: istore #7
    //   231: goto -> 278
    //   234: iload_3
    //   235: istore #4
    //   237: iload_2
    //   238: istore #5
    //   240: iload_1
    //   241: istore #7
    //   243: aload #10
    //   245: getfield b : I
    //   248: iload #8
    //   250: if_icmpeq -> 278
    //   253: aload #10
    //   255: getfield b : I
    //   258: aload_0
    //   259: getfield j : I
    //   262: if_icmpne -> 268
    //   265: iload #8
    //   267: istore_1
    //   268: aload #10
    //   270: iload #8
    //   272: putfield b : I
    //   275: goto -> 219
    //   278: iload #4
    //   280: iconst_1
    //   281: iadd
    //   282: istore_3
    //   283: iload #5
    //   285: istore_2
    //   286: iload #7
    //   288: istore_1
    //   289: goto -> 66
    //   292: iload_2
    //   293: ifeq -> 304
    //   296: aload_0
    //   297: getfield i : Landroid/widget/BasePageAdapter;
    //   300: aload_0
    //   301: invokevirtual finishUpdate : (Landroid/view/ViewGroup;)V
    //   304: aload_0
    //   305: getfield e : Ljava/util/ArrayList;
    //   308: getstatic android/widget/PageView.b : Ljava/util/Comparator;
    //   311: invokestatic sort : (Ljava/util/List;Ljava/util/Comparator;)V
    //   314: iload #6
    //   316: ifeq -> 376
    //   319: aload_0
    //   320: invokevirtual getChildCount : ()I
    //   323: istore_3
    //   324: iconst_0
    //   325: istore_2
    //   326: iload_2
    //   327: iload_3
    //   328: if_icmpge -> 365
    //   331: aload_0
    //   332: iload_2
    //   333: invokevirtual getChildAt : (I)Landroid/view/View;
    //   336: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   339: checkcast android/widget/PageView$LayoutParams
    //   342: astore #10
    //   344: aload #10
    //   346: getfield isDecor : Z
    //   349: ifne -> 358
    //   352: aload #10
    //   354: fconst_0
    //   355: putfield a : F
    //   358: iload_2
    //   359: iconst_1
    //   360: iadd
    //   361: istore_2
    //   362: goto -> 326
    //   365: aload_0
    //   366: iload_1
    //   367: iconst_0
    //   368: iconst_1
    //   369: invokevirtual a : (IZZ)V
    //   372: aload_0
    //   373: invokevirtual requestLayout : ()V
    //   376: return }
  
  public boolean beginFakeDrag() {
    if (this.B)
      return false; 
    this.Q = true;
    setScrollState(1);
    this.G = 0.0F;
    this.I = 0.0F;
    if (this.L == null) {
      this.L = VelocityTracker.obtain();
    } else {
      this.L.clear();
    } 
    long l1 = SystemClock.uptimeMillis();
    MotionEvent motionEvent = MotionEvent.obtain(l1, l1, 0, 0.0F, 0.0F, 0);
    this.L.addMovement(motionEvent);
    motionEvent.recycle();
    this.R = l1;
    return true;
  }
  
  void c() { a(this.j); }
  
  public boolean canScrollHorizontally(int paramInt) {
    BasePageAdapter basePageAdapter = this.i;
    boolean bool1 = false;
    boolean bool = false;
    if (basePageAdapter == null)
      return false; 
    int i1 = getClientWidth();
    int i2 = getScrollX();
    if (paramInt < 0) {
      if (i2 > (int)(i1 * this.t))
        bool = true; 
      return bool;
    } 
    bool = bool1;
    if (paramInt > 0) {
      bool = bool1;
      if (i2 < (int)(i1 * this.u))
        bool = true; 
    } 
    return bool;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) { return (paramLayoutParams instanceof LayoutParams && super.checkLayoutParams(paramLayoutParams)); }
  
  public void clearOnPageChangeListeners() {
    if (this.ab != null)
      this.ab.clear(); 
  }
  
  public void computeScroll() {
    if (!this.n.isFinished() && this.n.computeScrollOffset()) {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.n.getCurrX();
      int i4 = this.n.getCurrY();
      if (i1 != i3 || i2 != i4) {
        scrollTo(i3, i4);
        if (!c(i3)) {
          this.n.abortAnimation();
          scrollTo(0, i4);
        } 
      } 
      postInvalidateOnAnimation();
      return;
    } 
    a(true);
  }
  
  boolean d() {
    if (this.j > 0) {
      setCurrentItem(this.j - 1, true);
      return true;
    } 
    return false;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent) { return (super.dispatchKeyEvent(paramKeyEvent) || executeKeyEvent(paramKeyEvent)); }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    if (paramAccessibilityEvent.getEventType() == 4096)
      return super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent); 
    int i1 = getChildCount();
    for (byte b1 = 0; b1 < i1; b1++) {
      View view = getChildAt(b1);
      if (view.getVisibility() == 0) {
        ItemInfo itemInfo = a(view);
        if (itemInfo != null && itemInfo.b == this.j && view.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))
          return true; 
      } 
    } 
    return false;
  }
  
  public void draw(Canvas paramCanvas) {
    super.draw(paramCanvas);
    int i2 = getOverScrollMode();
    boolean bool = false;
    int i1 = 0;
    if (i2 == 0 || (i2 == 1 && this.i != null && this.i.getCount() > 1)) {
      boolean bool1;
      if (!this.S.isFinished()) {
        bool = paramCanvas.save();
        i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        i2 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate((-i1 + getPaddingTop()), this.t * i2);
        this.S.setSize(i1, i2);
        bool1 = false | this.S.draw(paramCanvas);
        paramCanvas.restoreToCount(bool);
      } 
      boolean bool2 = bool1;
      if (!this.T.isFinished()) {
        i2 = paramCanvas.save();
        int i3 = getWidth();
        int i4 = getHeight();
        int i5 = getPaddingTop();
        int i6 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(this.u + 1.0F) * i3);
        this.T.setSize(i4 - i5 - i6, i3);
        bool = bool1 | this.T.draw(paramCanvas);
        paramCanvas.restoreToCount(i2);
      } 
    } else {
      this.S.finish();
      this.T.finish();
    } 
    if (bool)
      postInvalidateOnAnimation(); 
  }
  
  protected void drawableStateChanged() {
    super.drawableStateChanged();
    Drawable drawable = this.q;
    if (drawable != null && drawable.isStateful())
      drawable.setState(getDrawableState()); 
  }
  
  boolean e() {
    if (this.i != null && this.j < this.i.getCount() - 1) {
      setCurrentItem(this.j + 1, true);
      return true;
    } 
    return false;
  }
  
  public void endFakeDrag() {
    if (!this.Q)
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first."); 
    VelocityTracker velocityTracker = this.L;
    velocityTracker.computeCurrentVelocity(1000, this.N);
    int i1 = (int)velocityTracker.getXVelocity(this.K);
    this.z = true;
    int i2 = getClientWidth();
    int i3 = getScrollX();
    ItemInfo itemInfo = j();
    a(a(itemInfo.b, (i3 / i2 - itemInfo.e) / itemInfo.d, i1, (int)(this.G - this.I)), true, true, i1);
    k();
    this.Q = false;
  }
  
  public boolean executeKeyEvent(KeyEvent paramKeyEvent) {
    if (paramKeyEvent.getAction() == 0) {
      int i1 = paramKeyEvent.getKeyCode();
      if (i1 != 61) {
        switch (i1) {
          default:
            return false;
          case 22:
            i1 = 66;
            return arrowScroll(i1);
          case 21:
            break;
        } 
        i1 = 17;
        return arrowScroll(i1);
      } 
      if (Build.VERSION.SDK_INT >= 11) {
        if (paramKeyEvent.hasNoModifiers()) {
          i1 = 2;
          return arrowScroll(i1);
        } 
        if (paramKeyEvent.hasModifiers(1))
          return arrowScroll(1); 
      } 
    } 
  }
  
  public void fakeDragBy(float paramFloat) {
    if (!this.Q)
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first."); 
    this.G += paramFloat;
    float f2 = getScrollX() - paramFloat;
    float f3 = getClientWidth();
    paramFloat = this.t * f3;
    float f1 = this.u * f3;
    ItemInfo itemInfo1 = (ItemInfo)this.e.get(0);
    ItemInfo itemInfo2 = (ItemInfo)this.e.get(this.e.size() - 1);
    if (itemInfo1.b != 0)
      paramFloat = itemInfo1.e * f3; 
    if (itemInfo2.b != this.i.getCount() - 1)
      f1 = itemInfo2.e * f3; 
    if (f2 >= paramFloat) {
      paramFloat = f2;
      if (f2 > f1)
        paramFloat = f1; 
    } 
    f1 = this.G;
    int i1 = (int)paramFloat;
    this.G = f1 + paramFloat - i1;
    scrollTo(i1, getScrollY());
    c(i1);
    long l1 = SystemClock.uptimeMillis();
    MotionEvent motionEvent = MotionEvent.obtain(this.R, l1, 2, this.G, 0.0F, 0);
    this.L.addMovement(motionEvent);
    motionEvent.recycle();
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams() { return new LayoutParams(); }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) { return new LayoutParams(getContext(), paramAttributeSet); }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) { return generateDefaultLayoutParams(); }
  
  public BasePageAdapter getAdapter() { return this.i; }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2) {
    int i1 = paramInt2;
    if (this.ah == 2)
      i1 = paramInt1 - 1 - paramInt2; 
    return ((LayoutParams)((View)this.ai.get(i1)).getLayoutParams()).d;
  }
  
  public int getCurrentItem() { return this.j; }
  
  public int getOffscreenPageLimit() { return this.A; }
  
  public int getPageMargin() { return this.p; }
  
  public boolean isFakeDragging() { return this.Q; }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    this.U = true;
  }
  
  protected void onDetachedFromWindow() {
    removeCallbacks(this.ak);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (this.p > 0 && this.q != null && this.e.size() > 0 && this.i != null) {
      int i2 = getScrollX();
      int i3 = getWidth();
      float f1 = this.p;
      float f3 = i3;
      float f2 = f1 / f3;
      ArrayList arrayList = this.e;
      byte b1 = 0;
      ItemInfo itemInfo = (ItemInfo)arrayList.get(0);
      f1 = itemInfo.e;
      int i4 = this.e.size();
      int i1 = itemInfo.b;
      int i5 = ((ItemInfo)this.e.get(i4 - 1)).b;
      while (i1 < i5) {
        ItemInfo itemInfo1;
        float f4;
        while (i1 > itemInfo.b && b1 < i4) {
          ArrayList arrayList1 = this.e;
          itemInfo1 = (ItemInfo)arrayList1.get(++b1);
        } 
        if (i1 == itemInfo1.b) {
          f4 = itemInfo1.e;
          float f6 = itemInfo1.d;
          f1 = itemInfo1.e;
          float f5 = itemInfo1.d;
          f4 = (f4 + f6) * f3;
          f1 = f1 + f5 + f2;
        } else {
          float f5 = this.i.getPageWidth(i1);
          f4 = (f1 + f5) * f3;
          f1 += f5 + f2;
        } 
        if (this.p + f4 > i2) {
          this.q.setBounds((int)f4, this.r, (int)(this.p + f4 + 0.5F), this.s);
          this.q.draw(paramCanvas);
        } 
        if (f4 > (i2 + i3))
          return; 
        i1++;
      } 
    } 
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    if (!this.al)
      return false; 
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if (i1 == 3 || i1 == 1) {
      i();
      return false;
    } 
    if (i1 != 0) {
      if (this.B)
        return true; 
      if (this.C)
        return false; 
    } 
    if (i1 != 0) {
      if (i1 != 2) {
        if (i1 == 6)
          a(paramMotionEvent); 
      } else {
        i1 = this.K;
        if (i1 != -1) {
          i1 = paramMotionEvent.findPointerIndex(i1);
          float f2 = paramMotionEvent.getX(i1);
          float f1 = f2 - this.G;
          float f4 = Math.abs(f1);
          float f3 = paramMotionEvent.getY(i1);
          float f5 = Math.abs(f3 - this.J);
          if (f1 != 0.0F && !a(this.G, f1) && a(this, false, (int)f1, (int)f2, (int)f3)) {
            this.G = f2;
            this.H = f3;
            this.C = true;
            return false;
          } 
          if (f4 > this.F && f4 * 0.5F > f5) {
            this.B = true;
            c(true);
            setScrollState(1);
            if (f1 > 0.0F) {
              f1 = this.I + this.F;
            } else {
              f1 = this.I - this.F;
            } 
            this.G = f1;
            this.H = f3;
            setScrollingCacheEnabled(true);
          } else if (f5 > this.F) {
            this.C = true;
          } 
          if (this.B && b(f2))
            postInvalidateOnAnimation(); 
        } 
      } 
    } else {
      float f1 = paramMotionEvent.getX();
      this.I = f1;
      this.G = f1;
      f1 = paramMotionEvent.getY();
      this.J = f1;
      this.H = f1;
      this.K = paramMotionEvent.getPointerId(0);
      this.C = false;
      this.n.computeScrollOffset();
      if (this.aj == 2 && Math.abs(this.n.getFinalX() - this.n.getCurrX()) > this.P) {
        this.n.abortAnimation();
        this.z = false;
        c();
        this.B = true;
        c(true);
        setScrollState(1);
      } else {
        a(false);
        this.B = false;
      } 
    } 
    if (this.L == null)
      this.L = VelocityTracker.obtain(); 
    this.L.addMovement(paramMotionEvent);
    return this.B;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i3 = getChildCount();
    int i4 = paramInt3 - paramInt1;
    int i5 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i1 = getPaddingRight();
    paramInt4 = getPaddingBottom();
    int i6 = getScrollX();
    int i2 = 0;
    byte b1 = 0;
    while (b1 < i3) {
      View view = getChildAt(b1);
      int i7 = paramInt2;
      int i10 = i1;
      int i9 = paramInt1;
      int i8 = paramInt4;
      paramInt3 = i2;
      if (view.getVisibility() != 8) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        i7 = paramInt2;
        i10 = i1;
        i9 = paramInt1;
        i8 = paramInt4;
        paramInt3 = i2;
        if (layoutParams.isDecor) {
          paramInt3 = layoutParams.gravity & 0x7;
          i8 = layoutParams.gravity & 0x70;
          if (paramInt3 != 1) {
            if (paramInt3 != 3) {
              if (paramInt3 != 5) {
                paramInt3 = paramInt2;
                i7 = paramInt2;
              } else {
                paramInt3 = i4 - i1 - view.getMeasuredWidth();
                i1 += view.getMeasuredWidth();
                i7 = paramInt2;
              } 
            } else {
              i7 = view.getMeasuredWidth();
              paramInt3 = paramInt2;
              i7 += paramInt2;
            } 
          } else {
            paramInt3 = Math.max((i4 - view.getMeasuredWidth()) / 2, paramInt2);
            i7 = paramInt2;
          } 
          if (i8 != 16) {
            if (i8 != 48) {
              if (i8 != 80) {
                paramInt2 = paramInt1;
              } else {
                paramInt2 = i5 - paramInt4 - view.getMeasuredHeight();
                paramInt4 += view.getMeasuredHeight();
              } 
            } else {
              i8 = view.getMeasuredHeight();
              paramInt2 = paramInt1;
              paramInt1 = i8 + paramInt1;
            } 
          } else {
            paramInt2 = Math.max((i5 - view.getMeasuredHeight()) / 2, paramInt1);
          } 
          paramInt3 += i6;
          view.layout(paramInt3, paramInt2, view.getMeasuredWidth() + paramInt3, paramInt2 + view.getMeasuredHeight());
          paramInt3 = i2 + 1;
          i8 = paramInt4;
          i9 = paramInt1;
          i10 = i1;
        } 
      } 
      b1++;
      paramInt2 = i7;
      i1 = i10;
      paramInt1 = i9;
      paramInt4 = i8;
      i2 = paramInt3;
    } 
    for (paramInt3 = 0; paramInt3 < i3; paramInt3++) {
      View view = getChildAt(paramInt3);
      if (view.getVisibility() != 8) {
        LayoutParams layoutParams = (LayoutParams)view.getLayoutParams();
        if (!layoutParams.isDecor) {
          ItemInfo itemInfo = a(view);
          if (itemInfo != null) {
            float f1 = (i4 - paramInt2 - i1);
            int i7 = (int)(itemInfo.e * f1) + paramInt2;
            if (layoutParams.b) {
              layoutParams.b = false;
              view.measure(View.MeasureSpec.makeMeasureSpec((int)(f1 * layoutParams.a), 1073741824), View.MeasureSpec.makeMeasureSpec(i5 - paramInt1 - paramInt4, 1073741824));
            } 
            view.layout(i7, paramInt1, view.getMeasuredWidth() + i7, view.getMeasuredHeight() + paramInt1);
          } 
        } 
      } 
    } 
    this.r = paramInt1;
    this.s = i5 - paramInt4;
    this.aa = i2;
    if (this.U)
      a(this.j, false, 0, true); 
    this.U = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) { // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: iload_1
    //   3: invokestatic getDefaultSize : (II)I
    //   6: iconst_0
    //   7: iload_2
    //   8: invokestatic getDefaultSize : (II)I
    //   11: invokevirtual setMeasuredDimension : (II)V
    //   14: aload_0
    //   15: invokevirtual getMeasuredWidth : ()I
    //   18: istore_1
    //   19: aload_0
    //   20: iload_1
    //   21: bipush #10
    //   23: idiv
    //   24: aload_0
    //   25: getfield D : I
    //   28: invokestatic min : (II)I
    //   31: putfield E : I
    //   34: aload_0
    //   35: invokevirtual getPaddingLeft : ()I
    //   38: istore_3
    //   39: aload_0
    //   40: invokevirtual getPaddingRight : ()I
    //   43: istore #4
    //   45: aload_0
    //   46: invokevirtual getMeasuredHeight : ()I
    //   49: istore_2
    //   50: aload_0
    //   51: invokevirtual getPaddingTop : ()I
    //   54: istore #5
    //   56: aload_0
    //   57: invokevirtual getPaddingBottom : ()I
    //   60: istore #6
    //   62: aload_0
    //   63: invokevirtual getChildCount : ()I
    //   66: istore #11
    //   68: iload_2
    //   69: iload #5
    //   71: isub
    //   72: iload #6
    //   74: isub
    //   75: istore_2
    //   76: iload_1
    //   77: iload_3
    //   78: isub
    //   79: iload #4
    //   81: isub
    //   82: istore_1
    //   83: iconst_0
    //   84: istore #5
    //   86: iconst_1
    //   87: istore #8
    //   89: ldc_w 1073741824
    //   92: istore #10
    //   94: iload #5
    //   96: iload #11
    //   98: if_icmpge -> 430
    //   101: aload_0
    //   102: iload #5
    //   104: invokevirtual getChildAt : (I)Landroid/view/View;
    //   107: astore #12
    //   109: iload_1
    //   110: istore_3
    //   111: iload_2
    //   112: istore #4
    //   114: aload #12
    //   116: invokevirtual getVisibility : ()I
    //   119: bipush #8
    //   121: if_icmpeq -> 416
    //   124: aload #12
    //   126: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   129: checkcast android/widget/PageView$LayoutParams
    //   132: astore #13
    //   134: iload_1
    //   135: istore_3
    //   136: iload_2
    //   137: istore #4
    //   139: aload #13
    //   141: ifnull -> 416
    //   144: iload_1
    //   145: istore_3
    //   146: iload_2
    //   147: istore #4
    //   149: aload #13
    //   151: getfield isDecor : Z
    //   154: ifeq -> 416
    //   157: aload #13
    //   159: getfield gravity : I
    //   162: bipush #7
    //   164: iand
    //   165: istore_3
    //   166: aload #13
    //   168: getfield gravity : I
    //   171: bipush #112
    //   173: iand
    //   174: istore #4
    //   176: iload #4
    //   178: bipush #48
    //   180: if_icmpeq -> 199
    //   183: iload #4
    //   185: bipush #80
    //   187: if_icmpne -> 193
    //   190: goto -> 199
    //   193: iconst_0
    //   194: istore #7
    //   196: goto -> 202
    //   199: iconst_1
    //   200: istore #7
    //   202: iload #8
    //   204: istore #6
    //   206: iload_3
    //   207: iconst_3
    //   208: if_icmpeq -> 226
    //   211: iload_3
    //   212: iconst_5
    //   213: if_icmpne -> 223
    //   216: iload #8
    //   218: istore #6
    //   220: goto -> 226
    //   223: iconst_0
    //   224: istore #6
    //   226: ldc_w -2147483648
    //   229: istore #8
    //   231: iload #7
    //   233: ifeq -> 248
    //   236: ldc_w 1073741824
    //   239: istore #4
    //   241: ldc_w -2147483648
    //   244: istore_3
    //   245: goto -> 265
    //   248: iload #8
    //   250: istore #4
    //   252: iload #6
    //   254: ifeq -> 241
    //   257: ldc_w 1073741824
    //   260: istore_3
    //   261: iload #8
    //   263: istore #4
    //   265: aload #13
    //   267: getfield width : I
    //   270: bipush #-2
    //   272: if_icmpeq -> 309
    //   275: aload #13
    //   277: getfield width : I
    //   280: iconst_m1
    //   281: if_icmpeq -> 294
    //   284: aload #13
    //   286: getfield width : I
    //   289: istore #4
    //   291: goto -> 297
    //   294: iload_1
    //   295: istore #4
    //   297: ldc_w 1073741824
    //   300: istore #8
    //   302: iload #4
    //   304: istore #9
    //   306: goto -> 316
    //   309: iload_1
    //   310: istore #9
    //   312: iload #4
    //   314: istore #8
    //   316: aload #13
    //   318: getfield height : I
    //   321: bipush #-2
    //   323: if_icmpeq -> 349
    //   326: aload #13
    //   328: getfield height : I
    //   331: iconst_m1
    //   332: if_icmpeq -> 344
    //   335: aload #13
    //   337: getfield height : I
    //   340: istore_3
    //   341: goto -> 358
    //   344: iload_2
    //   345: istore_3
    //   346: goto -> 358
    //   349: iload_2
    //   350: istore #4
    //   352: iload_3
    //   353: istore #10
    //   355: iload #4
    //   357: istore_3
    //   358: aload #12
    //   360: iload #9
    //   362: iload #8
    //   364: invokestatic makeMeasureSpec : (II)I
    //   367: iload_3
    //   368: iload #10
    //   370: invokestatic makeMeasureSpec : (II)I
    //   373: invokevirtual measure : (II)V
    //   376: iload #7
    //   378: ifeq -> 395
    //   381: iload_2
    //   382: aload #12
    //   384: invokevirtual getMeasuredHeight : ()I
    //   387: isub
    //   388: istore #4
    //   390: iload_1
    //   391: istore_3
    //   392: goto -> 416
    //   395: iload_1
    //   396: istore_3
    //   397: iload_2
    //   398: istore #4
    //   400: iload #6
    //   402: ifeq -> 416
    //   405: iload_1
    //   406: aload #12
    //   408: invokevirtual getMeasuredWidth : ()I
    //   411: isub
    //   412: istore_3
    //   413: iload_2
    //   414: istore #4
    //   416: iload #5
    //   418: iconst_1
    //   419: iadd
    //   420: istore #5
    //   422: iload_3
    //   423: istore_1
    //   424: iload #4
    //   426: istore_2
    //   427: goto -> 86
    //   430: aload_0
    //   431: iload_1
    //   432: ldc_w 1073741824
    //   435: invokestatic makeMeasureSpec : (II)I
    //   438: putfield v : I
    //   441: aload_0
    //   442: iload_2
    //   443: ldc_w 1073741824
    //   446: invokestatic makeMeasureSpec : (II)I
    //   449: putfield w : I
    //   452: aload_0
    //   453: iconst_1
    //   454: putfield x : Z
    //   457: aload_0
    //   458: invokevirtual c : ()V
    //   461: iconst_0
    //   462: istore_2
    //   463: aload_0
    //   464: iconst_0
    //   465: putfield x : Z
    //   468: aload_0
    //   469: invokevirtual getChildCount : ()I
    //   472: istore_3
    //   473: iload_2
    //   474: iload_3
    //   475: if_icmpge -> 549
    //   478: aload_0
    //   479: iload_2
    //   480: invokevirtual getChildAt : (I)Landroid/view/View;
    //   483: astore #12
    //   485: aload #12
    //   487: invokevirtual getVisibility : ()I
    //   490: bipush #8
    //   492: if_icmpeq -> 542
    //   495: aload #12
    //   497: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   500: checkcast android/widget/PageView$LayoutParams
    //   503: astore #13
    //   505: aload #13
    //   507: ifnull -> 518
    //   510: aload #13
    //   512: getfield isDecor : Z
    //   515: ifne -> 542
    //   518: aload #12
    //   520: iload_1
    //   521: i2f
    //   522: aload #13
    //   524: getfield a : F
    //   527: fmul
    //   528: f2i
    //   529: ldc_w 1073741824
    //   532: invokestatic makeMeasureSpec : (II)I
    //   535: aload_0
    //   536: getfield w : I
    //   539: invokevirtual measure : (II)V
    //   542: iload_2
    //   543: iconst_1
    //   544: iadd
    //   545: istore_2
    //   546: goto -> 473
    //   549: return }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect) {
    int i2;
    int i1 = getChildCount();
    int i3 = -1;
    if ((paramInt & 0x2) != 0) {
      i3 = i1;
      i1 = 0;
      i2 = 1;
    } else {
      i1--;
      i2 = -1;
    } 
    while (i1 != i3) {
      View view = getChildAt(i1);
      if (view.getVisibility() == 0) {
        ItemInfo itemInfo = a(view);
        if (itemInfo != null && itemInfo.b == this.j && view.requestFocus(paramInt, paramRect))
          return true; 
      } 
      i1 += i2;
    } 
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    SavedState savedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(savedState.getSuperState());
    if (this.i != null) {
      this.i.restoreState(savedState.b, savedState.c);
      a(savedState.a, false, true);
      return;
    } 
    this.k = savedState.a;
    this.l = savedState.b;
    this.m = savedState.c;
  }
  
  public Parcelable onSaveInstanceState() {
    SavedState savedState = new SavedState(super.onSaveInstanceState());
    savedState.a = this.j;
    if (this.i != null)
      savedState.b = this.i.saveState(); 
    return savedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      a(paramInt1, paramInt3, this.p, this.p); 
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) { // Byte code:
    //   0: aload_0
    //   1: getfield Q : Z
    //   4: ifeq -> 9
    //   7: iconst_1
    //   8: ireturn
    //   9: aload_1
    //   10: invokevirtual getAction : ()I
    //   13: istore #6
    //   15: iconst_0
    //   16: istore #9
    //   18: iload #6
    //   20: ifne -> 32
    //   23: aload_1
    //   24: invokevirtual getEdgeFlags : ()I
    //   27: ifeq -> 32
    //   30: iconst_0
    //   31: ireturn
    //   32: aload_0
    //   33: getfield i : Landroid/widget/BasePageAdapter;
    //   36: ifnull -> 591
    //   39: aload_0
    //   40: getfield i : Landroid/widget/BasePageAdapter;
    //   43: invokevirtual getCount : ()I
    //   46: ifne -> 51
    //   49: iconst_0
    //   50: ireturn
    //   51: aload_0
    //   52: getfield L : Landroid/view/VelocityTracker;
    //   55: ifnonnull -> 65
    //   58: aload_0
    //   59: invokestatic obtain : ()Landroid/view/VelocityTracker;
    //   62: putfield L : Landroid/view/VelocityTracker;
    //   65: aload_0
    //   66: getfield L : Landroid/view/VelocityTracker;
    //   69: aload_1
    //   70: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   73: aload_1
    //   74: invokevirtual getAction : ()I
    //   77: sipush #255
    //   80: iand
    //   81: tableswitch default -> 124, 0 -> 521, 1 -> 395, 2 -> 199, 3 -> 178, 4 -> 124, 5 -> 151, 6 -> 127
    //   124: goto -> 580
    //   127: aload_0
    //   128: aload_1
    //   129: invokespecial a : (Landroid/view/MotionEvent;)V
    //   132: aload_0
    //   133: aload_1
    //   134: aload_1
    //   135: aload_0
    //   136: getfield K : I
    //   139: invokevirtual findPointerIndex : (I)I
    //   142: invokevirtual getX : (I)F
    //   145: putfield G : F
    //   148: goto -> 580
    //   151: aload_1
    //   152: invokevirtual getActionIndex : ()I
    //   155: istore #6
    //   157: aload_0
    //   158: aload_1
    //   159: iload #6
    //   161: invokevirtual getX : (I)F
    //   164: putfield G : F
    //   167: aload_1
    //   168: iload #6
    //   170: invokevirtual getPointerId : (I)I
    //   173: istore #6
    //   175: goto -> 574
    //   178: aload_0
    //   179: getfield B : Z
    //   182: ifeq -> 580
    //   185: aload_0
    //   186: aload_0
    //   187: getfield j : I
    //   190: iconst_1
    //   191: iconst_0
    //   192: iconst_0
    //   193: invokespecial a : (IZIZ)V
    //   196: goto -> 512
    //   199: aload_0
    //   200: getfield B : Z
    //   203: ifne -> 365
    //   206: aload_1
    //   207: aload_0
    //   208: getfield K : I
    //   211: invokevirtual findPointerIndex : (I)I
    //   214: istore #6
    //   216: iload #6
    //   218: iconst_m1
    //   219: if_icmpne -> 225
    //   222: goto -> 512
    //   225: aload_1
    //   226: iload #6
    //   228: invokevirtual getX : (I)F
    //   231: fstore_2
    //   232: fload_2
    //   233: aload_0
    //   234: getfield G : F
    //   237: fsub
    //   238: invokestatic abs : (F)F
    //   241: fstore #4
    //   243: aload_1
    //   244: iload #6
    //   246: invokevirtual getY : (I)F
    //   249: fstore_3
    //   250: fload_3
    //   251: aload_0
    //   252: getfield H : F
    //   255: fsub
    //   256: invokestatic abs : (F)F
    //   259: fstore #5
    //   261: fload #4
    //   263: aload_0
    //   264: getfield F : I
    //   267: i2f
    //   268: fcmpl
    //   269: ifle -> 365
    //   272: fload #4
    //   274: fload #5
    //   276: fcmpl
    //   277: ifle -> 365
    //   280: aload_0
    //   281: iconst_1
    //   282: putfield B : Z
    //   285: aload_0
    //   286: iconst_1
    //   287: invokespecial c : (Z)V
    //   290: fload_2
    //   291: aload_0
    //   292: getfield I : F
    //   295: fsub
    //   296: fconst_0
    //   297: fcmpl
    //   298: ifle -> 315
    //   301: aload_0
    //   302: getfield I : F
    //   305: aload_0
    //   306: getfield F : I
    //   309: i2f
    //   310: fadd
    //   311: fstore_2
    //   312: goto -> 326
    //   315: aload_0
    //   316: getfield I : F
    //   319: aload_0
    //   320: getfield F : I
    //   323: i2f
    //   324: fsub
    //   325: fstore_2
    //   326: aload_0
    //   327: fload_2
    //   328: putfield G : F
    //   331: aload_0
    //   332: fload_3
    //   333: putfield H : F
    //   336: aload_0
    //   337: iconst_1
    //   338: invokespecial setScrollState : (I)V
    //   341: aload_0
    //   342: iconst_1
    //   343: invokespecial setScrollingCacheEnabled : (Z)V
    //   346: aload_0
    //   347: invokevirtual getParent : ()Landroid/view/ViewParent;
    //   350: astore #10
    //   352: aload #10
    //   354: ifnull -> 365
    //   357: aload #10
    //   359: iconst_1
    //   360: invokeinterface requestDisallowInterceptTouchEvent : (Z)V
    //   365: aload_0
    //   366: getfield B : Z
    //   369: ifeq -> 580
    //   372: iconst_0
    //   373: aload_0
    //   374: aload_1
    //   375: aload_1
    //   376: aload_0
    //   377: getfield K : I
    //   380: invokevirtual findPointerIndex : (I)I
    //   383: invokevirtual getX : (I)F
    //   386: invokespecial b : (F)Z
    //   389: ior
    //   390: istore #9
    //   392: goto -> 580
    //   395: aload_0
    //   396: getfield B : Z
    //   399: ifeq -> 580
    //   402: aload_0
    //   403: getfield L : Landroid/view/VelocityTracker;
    //   406: astore #10
    //   408: aload #10
    //   410: sipush #1000
    //   413: aload_0
    //   414: getfield N : I
    //   417: i2f
    //   418: invokevirtual computeCurrentVelocity : (IF)V
    //   421: aload #10
    //   423: aload_0
    //   424: getfield K : I
    //   427: invokevirtual getXVelocity : (I)F
    //   430: f2i
    //   431: istore #6
    //   433: aload_0
    //   434: iconst_1
    //   435: putfield z : Z
    //   438: aload_0
    //   439: invokespecial getClientWidth : ()I
    //   442: istore #7
    //   444: aload_0
    //   445: invokevirtual getScrollX : ()I
    //   448: istore #8
    //   450: aload_0
    //   451: invokespecial j : ()Landroid/widget/PageView$ItemInfo;
    //   454: astore #10
    //   456: aload_0
    //   457: aload_0
    //   458: aload #10
    //   460: getfield b : I
    //   463: iload #8
    //   465: i2f
    //   466: iload #7
    //   468: i2f
    //   469: fdiv
    //   470: aload #10
    //   472: getfield e : F
    //   475: fsub
    //   476: aload #10
    //   478: getfield d : F
    //   481: fdiv
    //   482: iload #6
    //   484: aload_1
    //   485: aload_1
    //   486: aload_0
    //   487: getfield K : I
    //   490: invokevirtual findPointerIndex : (I)I
    //   493: invokevirtual getX : (I)F
    //   496: aload_0
    //   497: getfield I : F
    //   500: fsub
    //   501: f2i
    //   502: invokespecial a : (IFII)I
    //   505: iconst_1
    //   506: iconst_1
    //   507: iload #6
    //   509: invokevirtual a : (IZZI)V
    //   512: aload_0
    //   513: invokespecial i : ()Z
    //   516: istore #9
    //   518: goto -> 580
    //   521: aload_0
    //   522: getfield n : Landroid/widget/Scroller;
    //   525: invokevirtual abortAnimation : ()V
    //   528: aload_0
    //   529: iconst_0
    //   530: putfield z : Z
    //   533: aload_0
    //   534: invokevirtual c : ()V
    //   537: aload_1
    //   538: invokevirtual getX : ()F
    //   541: fstore_2
    //   542: aload_0
    //   543: fload_2
    //   544: putfield I : F
    //   547: aload_0
    //   548: fload_2
    //   549: putfield G : F
    //   552: aload_1
    //   553: invokevirtual getY : ()F
    //   556: fstore_2
    //   557: aload_0
    //   558: fload_2
    //   559: putfield J : F
    //   562: aload_0
    //   563: fload_2
    //   564: putfield H : F
    //   567: aload_1
    //   568: iconst_0
    //   569: invokevirtual getPointerId : (I)I
    //   572: istore #6
    //   574: aload_0
    //   575: iload #6
    //   577: putfield K : I
    //   580: iload #9
    //   582: ifeq -> 589
    //   585: aload_0
    //   586: invokevirtual postInvalidateOnAnimation : ()V
    //   589: iconst_1
    //   590: ireturn
    //   591: iconst_0
    //   592: ireturn }
  
  public void removeOnPageChangeListener(OnPageChangeListener paramOnPageChangeListener) {
    if (this.ab != null)
      this.ab.remove(paramOnPageChangeListener); 
  }
  
  public void removeView(View paramView) {
    if (this.x) {
      removeViewInLayout(paramView);
      return;
    } 
    super.removeView(paramView);
  }
  
  public void setAdapter(BasePageAdapter paramBasePageAdapter) {
    if (this.i != null) {
      this.i.unregisterDataSetObserver(this.o);
      this.i.startUpdate(this);
      for (byte b1 = 0; b1 < this.e.size(); b1++) {
        ItemInfo itemInfo = (ItemInfo)this.e.get(b1);
        this.i.destroyItem(this, itemInfo.b, itemInfo.a);
      } 
      this.i.finishUpdate(this);
      this.e.clear();
      g();
      this.j = 0;
      scrollTo(0, 0);
    } 
    BasePageAdapter basePageAdapter = this.i;
    this.i = paramBasePageAdapter;
    this.h = 0;
    if (this.i != null) {
      if (this.o == null)
        this.o = new PageObserver(this, null); 
      this.i.registerDataSetObserver(this.o);
      this.z = false;
      boolean bool = this.U;
      this.U = true;
      this.h = this.i.getCount();
      if (this.k >= 0) {
        this.i.restoreState(this.l, this.m);
        a(this.k, false, true);
        this.k = -1;
        this.l = null;
        this.m = null;
      } else if (!bool) {
        c();
      } else {
        requestLayout();
      } 
    } 
    if (this.ae != null && basePageAdapter != paramBasePageAdapter)
      this.ae.onAdapterChanged(basePageAdapter, paramBasePageAdapter); 
  }
  
  void setChildrenDrawingOrderEnabledCompat(boolean paramBoolean) {
    if (Build.VERSION.SDK_INT >= 7) {
      if (this.ag == null)
        try {
          this.ag = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { boolean.class });
        } catch (NoSuchMethodException noSuchMethodException) {
          Log.e("PageView", "Can't find setChildrenDrawingOrderEnabled", noSuchMethodException);
        }  
      try {
        this.ag.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      } catch (Exception exception) {
        Log.e("PageView", "Error changing children drawing order", exception);
      } 
    } 
  }
  
  public void setCurrentItem(int paramInt) {
    this.z = false;
    a(paramInt, this.U ^ true, false);
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean) {
    this.z = false;
    a(paramInt, paramBoolean, false);
  }
  
  public void setOffscreenPageLimit(int paramInt) {
    int i1 = paramInt;
    if (paramInt < 1) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Requested offscreen page limit ");
      stringBuilder.append(paramInt);
      stringBuilder.append(" too small; defaulting to ");
      stringBuilder.append(1);
      Log.w("PageView", stringBuilder.toString());
      i1 = 1;
    } 
    if (i1 != this.A) {
      this.A = i1;
      c();
    } 
  }
  
  void setOnAdapterChangeListener(OnAdapterChangeListener paramOnAdapterChangeListener) { this.ae = paramOnAdapterChangeListener; }
  
  public void setOnPageChangeListener(OnPageChangeListener paramOnPageChangeListener) { this.ac = paramOnPageChangeListener; }
  
  public void setPageMargin(int paramInt) {
    int i1 = this.p;
    this.p = paramInt;
    int i2 = getWidth();
    a(i2, i2, paramInt, i1);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt) { setPageMarginDrawable(getContext().getResources().getDrawable(paramInt)); }
  
  public void setPageMarginDrawable(Drawable paramDrawable) {
    boolean bool;
    this.q = paramDrawable;
    if (paramDrawable != null)
      refreshDrawableState(); 
    if (paramDrawable == null) {
      bool = true;
    } else {
      bool = false;
    } 
    setWillNotDraw(bool);
    invalidate();
  }
  
  public void setPageTransformer(boolean paramBoolean, PageTransformer paramPageTransformer) {
    if (Build.VERSION.SDK_INT >= 11) {
      boolean bool2;
      boolean bool;
      boolean bool1;
      byte b1 = 1;
      if (paramPageTransformer != null) {
        bool = true;
      } else {
        bool = false;
      } 
      if (this.af != null) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      if (bool != bool2) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      this.af = paramPageTransformer;
      setChildrenDrawingOrderEnabledCompat(bool);
      if (bool) {
        if (paramBoolean)
          b1 = 2; 
        this.ah = b1;
      } else {
        this.ah = 0;
      } 
      if (bool1)
        c(); 
    } 
  }
  
  public void setScrollEnabled(boolean paramBoolean) { this.al = paramBoolean; }
  
  public void setTouchEnabled(boolean paramBoolean) { this.al = paramBoolean; }
  
  public void showPage(int paramInt) { setCurrentItem(paramInt, true); }
  
  protected boolean verifyDrawable(Drawable paramDrawable) { return (super.verifyDrawable(paramDrawable) || paramDrawable == this.q); }
  
  static interface Decor {}
  
  static class ItemInfo {
    Object a;
    
    int b;
    
    boolean c;
    
    float d;
    
    float e;
  }
  
  public static class LayoutParams extends ViewGroup.LayoutParams {
    float a = 0.0F;
    
    boolean b;
    
    int c;
    
    int d;
    
    public int gravity;
    
    public boolean isDecor;
    
    public LayoutParams() { super(-1, -1); }
    
    public LayoutParams(Context param1Context, AttributeSet param1AttributeSet) {
      super(param1Context, param1AttributeSet);
      TypedArray typedArray = param1Context.obtainStyledAttributes(param1AttributeSet, PageView.f());
      this.gravity = typedArray.getInteger(0, 48);
      typedArray.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams param1LayoutParams) { super(-1, -1); }
  }
  
  static interface OnAdapterChangeListener {
    void onAdapterChanged(BasePageAdapter param1BasePageAdapter1, BasePageAdapter param1BasePageAdapter2);
  }
  
  public static interface OnPageChangeListener {
    void onPageChange(View param1View, int param1Int);
    
    void onPageScrollStateChanged(int param1Int);
    
    void onPageScrolled(int param1Int1, float param1Float, int param1Int2);
    
    void onPageSelected(int param1Int);
  }
  
  private class PageObserver extends DataSetObserver {
    private PageObserver(PageView this$0) {}
    
    public void onChanged() { this.a.b(); }
    
    public void onInvalidated() { this.a.b(); }
  }
  
  public static interface PageTransformer {
    void transformPage(View param1View, float param1Float);
  }
  
  public static class SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
        public PageView.SavedState createFromParcel(Parcel param2Parcel) { return new PageView.SavedState(param2Parcel); }
        
        public PageView.SavedState[] newArray(int param2Int) { return new PageView.SavedState[param2Int]; }
      };
    
    int a;
    
    Parcelable b;
    
    ClassLoader c;
    
    SavedState(Parcel param1Parcel) {
      super(param1Parcel);
      ClassLoader classLoader = getClass().getClassLoader();
      this.a = param1Parcel.readInt();
      this.b = param1Parcel.readParcelable(classLoader);
      this.c = classLoader;
    }
    
    public SavedState(Parcelable param1Parcelable) { super(param1Parcelable); }
    
    public String toString() {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("FragmentPage.SavedState{");
      stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      stringBuilder.append(" position=");
      stringBuilder.append(this.a);
      stringBuilder.append("}");
      return stringBuilder.toString();
    }
    
    public void writeToParcel(Parcel param1Parcel, int param1Int) {
      super.writeToParcel(param1Parcel, param1Int);
      param1Parcel.writeInt(this.a);
      param1Parcel.writeParcelable(this.b, param1Int);
    }
  }
  
  static final class null extends Object implements Parcelable.Creator<SavedState> {
    public PageView.SavedState createFromParcel(Parcel param1Parcel) { return new PageView.SavedState(param1Parcel); }
    
    public PageView.SavedState[] newArray(int param1Int) { return new PageView.SavedState[param1Int]; }
  }
  
  public static class SimpleOnPageChangeListener implements OnPageChangeListener {
    public void onPageChange(View param1View, int param1Int) {}
    
    public void onPageScrollStateChanged(int param1Int) {}
    
    public void onPageScrolled(int param1Int1, float param1Float, int param1Int2) {}
    
    public void onPageSelected(int param1Int) {}
  }
  
  static class ViewPositionComparator extends Object implements Comparator<View> {
    public int compare(View param1View1, View param1View2) {
      PageView.LayoutParams layoutParams1 = (PageView.LayoutParams)param1View1.getLayoutParams();
      PageView.LayoutParams layoutParams2 = (PageView.LayoutParams)param1View2.getLayoutParams();
      return (layoutParams1.isDecor != layoutParams2.isDecor) ? (layoutParams1.isDecor ? 1 : -1) : (layoutParams1.c - layoutParams2.c);
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\PageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package android.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public class ViewDragHelper {
  public static final int DIRECTION_ALL = 3;
  
  public static final int DIRECTION_HORIZONTAL = 1;
  
  public static final int DIRECTION_VERTICAL = 2;
  
  public static final int EDGE_ALL = 15;
  
  public static final int EDGE_BOTTOM = 8;
  
  public static final int EDGE_LEFT = 1;
  
  public static final int EDGE_RIGHT = 2;
  
  public static final int EDGE_TOP = 4;
  
  public static final int INVALID_POINTER = -1;
  
  public static final int STATE_DRAGGING = 1;
  
  public static final int STATE_IDLE = 0;
  
  public static final int STATE_SETTLING = 2;
  
  private static final Interpolator v = new Interpolator() {
      public float getInterpolation(float param1Float) {
        param1Float--;
        return param1Float * param1Float * param1Float * param1Float * param1Float + 1.0F;
      }
    };
  
  private int a;
  
  private int b;
  
  private int c = -1;
  
  private float[] d;
  
  private float[] e;
  
  private float[] f;
  
  private float[] g;
  
  private int[] h;
  
  private int[] i;
  
  private int[] j;
  
  private int k;
  
  private VelocityTracker l;
  
  private float m;
  
  private float n;
  
  private int o;
  
  private int p;
  
  private Scroller q;
  
  private final Callback r;
  
  private View s;
  
  private boolean t;
  
  private final ViewGroup u;
  
  private final Runnable w = new Runnable(this) {
      public void run() { this.a.a(0); }
    };
  
  private ViewDragHelper(Context paramContext, ViewGroup paramViewGroup, Callback paramCallback) {
    if (paramViewGroup == null)
      throw new IllegalArgumentException("Parent view may not be null"); 
    if (paramCallback == null)
      throw new IllegalArgumentException("Callback may not be null"); 
    this.u = paramViewGroup;
    this.r = paramCallback;
    ViewConfiguration viewConfiguration = ViewConfiguration.get(paramContext);
    this.o = (int)((paramContext.getResources().getDisplayMetrics()).density * 20.0F + 0.5F);
    this.b = viewConfiguration.getScaledTouchSlop();
    this.m = viewConfiguration.getScaledMaximumFlingVelocity();
    this.n = viewConfiguration.getScaledMinimumFlingVelocity();
    this.q = new Scroller(paramContext, v);
  }
  
  private float a(float paramFloat) { return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D)); }
  
  private float a(float paramFloat1, float paramFloat2, float paramFloat3) {
    float f1 = Math.abs(paramFloat1);
    return (f1 < paramFloat2) ? 0.0F : ((f1 > paramFloat3) ? ((paramFloat1 > 0.0F) ? paramFloat3 : -paramFloat3) : paramFloat1);
  }
  
  private int a(int paramInt1, int paramInt2) {
    if (paramInt1 < this.u.getLeft() + this.o) {
      i1 = 1;
    } else {
      i1 = 0;
    } 
    byte b1 = i1;
    if (paramInt2 < this.u.getTop() + this.o)
      b1 = i1 | 0x4; 
    int i1 = b1;
    if (paramInt1 > this.u.getRight() - this.o)
      i1 = b1 | 0x2; 
    paramInt1 = i1;
    if (paramInt2 > this.u.getBottom() - this.o)
      paramInt1 = i1 | 0x8; 
    return paramInt1;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt1 == 0)
      return 0; 
    int i1 = this.u.getWidth();
    int i2 = i1 / 2;
    float f2 = Math.min(1.0F, Math.abs(paramInt1) / i1);
    float f1 = i2;
    f2 = a(f2);
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {
      paramInt1 = Math.round(Math.abs((f1 + f2 * f1) / paramInt2) * 1000.0F) * 4;
    } else {
      paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F);
    } 
    return Math.min(paramInt1, 600);
  }
  
  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    float f2;
    float f1;
    paramInt3 = b(paramInt3, (int)this.n, (int)this.m);
    paramInt4 = b(paramInt4, (int)this.n, (int)this.m);
    int i1 = Math.abs(paramInt1);
    int i2 = Math.abs(paramInt2);
    int i3 = Math.abs(paramInt3);
    int i4 = Math.abs(paramInt4);
    int i5 = i3 + i4;
    int i6 = i1 + i2;
    if (paramInt3 != 0) {
      f1 = i3;
      f2 = i5;
    } else {
      f1 = i1;
      f2 = i6;
    } 
    float f3 = f1 / f2;
    if (paramInt4 != 0) {
      f1 = i4;
      f2 = i5;
    } else {
      f1 = i2;
      f2 = i6;
    } 
    f1 /= f2;
    paramInt1 = a(paramInt1, paramInt3, this.r.getViewHorizontalDragRange(paramView));
    paramInt2 = a(paramInt2, paramInt4, this.r.getViewVerticalDragRange(paramView));
    return (int)(paramInt1 * f3 + paramInt2 * f1);
  }
  
  private void a() {
    if (this.d == null)
      return; 
    Arrays.fill(this.d, 0.0F);
    Arrays.fill(this.e, 0.0F);
    Arrays.fill(this.f, 0.0F);
    Arrays.fill(this.g, 0.0F);
    Arrays.fill(this.h, 0);
    Arrays.fill(this.i, 0);
    Arrays.fill(this.j, 0);
    this.k = 0;
  }
  
  private void a(float paramFloat1, float paramFloat2) {
    this.t = true;
    this.r.onViewReleased(this.s, paramFloat1, paramFloat2);
    this.t = false;
    if (this.a == 1)
      a(0); 
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt) {
    c(paramInt);
    float[] arrayOfFloat = this.d;
    this.f[paramInt] = paramFloat1;
    arrayOfFloat[paramInt] = paramFloat1;
    arrayOfFloat = this.e;
    this.g[paramInt] = paramFloat2;
    arrayOfFloat[paramInt] = paramFloat2;
    this.h[paramInt] = a((int)paramFloat1, (int)paramFloat2);
    this.k |= 1 << paramInt;
  }
  
  private void a(MotionEvent paramMotionEvent) {
    int i1 = paramMotionEvent.getPointerCount();
    byte b1;
    for (b1 = 0; b1 < i1; b1++) {
      int i2 = paramMotionEvent.getPointerId(b1);
      float f1 = paramMotionEvent.getX(b1);
      float f2 = paramMotionEvent.getY(b1);
      this.f[i2] = f1;
      this.g[i2] = f2;
    } 
  }
  
  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2) {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    int i1 = this.h[paramInt1];
    byte b1 = 0;
    int i2 = b1;
    if ((i1 & paramInt2) == paramInt2) {
      i2 = b1;
      if ((this.p & paramInt2) != 0) {
        i2 = b1;
        if ((this.j[paramInt1] & paramInt2) != paramInt2) {
          i2 = b1;
          if ((this.i[paramInt1] & paramInt2) != paramInt2) {
            if (paramFloat1 <= this.b && paramFloat2 <= this.b)
              return false; 
            if (paramFloat1 < paramFloat2 * 0.5F && this.r.onEdgeLock(paramInt2)) {
              int[] arrayOfInt = this.j;
              arrayOfInt[paramInt1] = arrayOfInt[paramInt1] | paramInt2;
              return false;
            } 
            i2 = b1;
            if ((this.i[paramInt1] & paramInt2) == 0) {
              i2 = b1;
              if (paramFloat1 > this.b)
                i2 = 1; 
            } 
          } 
        } 
      } 
    } 
    return i2;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i1 = this.s.getLeft();
    int i2 = this.s.getTop();
    paramInt1 -= i1;
    paramInt2 -= i2;
    if (paramInt1 == 0 && paramInt2 == 0) {
      this.q.abortAnimation();
      a(0);
      return false;
    } 
    paramInt3 = a(this.s, paramInt1, paramInt2, paramInt3, paramInt4);
    this.q.startScroll(i1, i2, paramInt1, paramInt2, paramInt3);
    a(2);
    return true;
  }
  
  private boolean a(View paramView, float paramFloat1, float paramFloat2) {
    boolean bool2;
    boolean bool1;
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool = false;
    if (paramView == null)
      return false; 
    if (this.r.getViewHorizontalDragRange(paramView) > 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.r.getViewVerticalDragRange(paramView) > 0) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (bool1 && bool2) {
      if (paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2 > (this.b * this.b))
        bool = true; 
      return bool;
    } 
    if (bool1) {
      bool = bool4;
      if (Math.abs(paramFloat1) > this.b)
        bool = true; 
      return bool;
    } 
    bool = bool3;
    if (bool2) {
      bool = bool3;
      if (Math.abs(paramFloat2) > this.b)
        bool = true; 
    } 
    return bool;
  }
  
  private int b(int paramInt1, int paramInt2, int paramInt3) {
    int i1 = Math.abs(paramInt1);
    return (i1 < paramInt2) ? 0 : ((i1 > paramInt3) ? ((paramInt1 > 0) ? paramInt3 : -paramInt3) : paramInt1);
  }
  
  private void b() {
    this.l.computeCurrentVelocity(1000, this.m);
    a(a(this.l.getXVelocity(this.c), this.n, this.m), a(this.l.getYVelocity(this.c), this.n, this.m));
  }
  
  private void b(float paramFloat1, float paramFloat2, int paramInt) {
    byte b1 = 1;
    if (!a(paramFloat1, paramFloat2, paramInt, 1))
      b1 = 0; 
    int i1 = b1;
    if (a(paramFloat2, paramFloat1, paramInt, 4))
      i1 = b1 | 0x4; 
    b1 = i1;
    if (a(paramFloat1, paramFloat2, paramInt, 2))
      b1 = i1 | 0x2; 
    i1 = b1;
    if (a(paramFloat2, paramFloat1, paramInt, 8))
      i1 = b1 | 0x8; 
    if (i1 != 0) {
      int[] arrayOfInt = this.i;
      arrayOfInt[paramInt] = arrayOfInt[paramInt] | i1;
      this.r.onEdgeDragStarted(i1, paramInt);
    } 
  }
  
  private void b(int paramInt) {
    if (this.d == null)
      return; 
    this.d[paramInt] = 0.0F;
    this.e[paramInt] = 0.0F;
    this.f[paramInt] = 0.0F;
    this.g[paramInt] = 0.0F;
    this.h[paramInt] = 0;
    this.i[paramInt] = 0;
    this.j[paramInt] = 0;
    this.k = (1 << paramInt ^ 0xFFFFFFFF) & this.k;
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i2 = this.s.getLeft();
    int i3 = this.s.getTop();
    int i1 = paramInt1;
    if (paramInt3 != 0) {
      i1 = this.r.clampViewPositionHorizontal(this.s, paramInt1, paramInt3);
      this.s.offsetLeftAndRight(i1 - i2);
    } 
    paramInt1 = paramInt2;
    if (paramInt4 != 0) {
      paramInt1 = this.r.clampViewPositionVertical(this.s, paramInt2, paramInt4);
      this.s.offsetTopAndBottom(paramInt1 - i3);
    } 
    if (paramInt3 != 0 || paramInt4 != 0)
      this.r.onViewPositionChanged(this.s, i1, paramInt1, i1 - i2, paramInt1 - i3); 
  }
  
  private void c(int paramInt) {
    if (this.d == null || this.d.length <= paramInt) {
      float[] arrayOfFloat1 = new float[++paramInt];
      float[] arrayOfFloat2 = new float[paramInt];
      float[] arrayOfFloat3 = new float[paramInt];
      float[] arrayOfFloat4 = new float[paramInt];
      int[] arrayOfInt1 = new int[paramInt];
      int[] arrayOfInt2 = new int[paramInt];
      int[] arrayOfInt3 = new int[paramInt];
      if (this.d != null) {
        System.arraycopy(this.d, 0, arrayOfFloat1, 0, this.d.length);
        System.arraycopy(this.e, 0, arrayOfFloat2, 0, this.e.length);
        System.arraycopy(this.f, 0, arrayOfFloat3, 0, this.f.length);
        System.arraycopy(this.g, 0, arrayOfFloat4, 0, this.g.length);
        System.arraycopy(this.h, 0, arrayOfInt1, 0, this.h.length);
        System.arraycopy(this.i, 0, arrayOfInt2, 0, this.i.length);
        System.arraycopy(this.j, 0, arrayOfInt3, 0, this.j.length);
      } 
      this.d = arrayOfFloat1;
      this.e = arrayOfFloat2;
      this.f = arrayOfFloat3;
      this.g = arrayOfFloat4;
      this.h = arrayOfInt1;
      this.i = arrayOfInt2;
      this.j = arrayOfInt3;
    } 
  }
  
  public static ViewDragHelper create(ViewGroup paramViewGroup, float paramFloat, Callback paramCallback) {
    ViewDragHelper viewDragHelper = create(paramViewGroup, paramCallback);
    viewDragHelper.b = (int)(viewDragHelper.b * 1.0F / paramFloat);
    return viewDragHelper;
  }
  
  public static ViewDragHelper create(ViewGroup paramViewGroup, Callback paramCallback) { return new ViewDragHelper(paramViewGroup.getContext(), paramViewGroup, paramCallback); }
  
  void a(int paramInt) {
    this.u.removeCallbacks(this.w);
    if (this.a != paramInt) {
      this.a = paramInt;
      this.r.onViewDragStateChanged(paramInt);
      if (this.a == 0)
        this.s = null; 
    } 
  }
  
  boolean a(View paramView, int paramInt) {
    if (paramView == this.s && this.c == paramInt)
      return true; 
    if (paramView != null && this.r.tryCaptureView(paramView, paramInt)) {
      this.c = paramInt;
      captureChildView(paramView, paramInt);
      return true;
    } 
    return false;
  }
  
  public void abort() {
    cancel();
    if (this.a == 2) {
      int i1 = this.q.getCurrX();
      int i2 = this.q.getCurrY();
      this.q.abortAnimation();
      int i3 = this.q.getCurrX();
      int i4 = this.q.getCurrY();
      this.r.onViewPositionChanged(this.s, i3, i4, i3 - i1, i4 - i2);
    } 
    a(0);
  }
  
  public void cancel() {
    this.c = -1;
    a();
    if (this.l != null) {
      this.l.recycle();
      this.l = null;
    } 
  }
  
  public void captureChildView(View paramView, int paramInt) {
    StringBuilder stringBuilder;
    if (paramView.getParent() != this.u) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
      stringBuilder.append(this.u);
      stringBuilder.append(")");
      throw new IllegalArgumentException(stringBuilder.toString());
    } 
    this.s = stringBuilder;
    this.c = paramInt;
    this.r.onViewCaptured(stringBuilder, paramInt);
    a(1);
  }
  
  public boolean checkTouchSlop(int paramInt) {
    int i1 = this.d.length;
    for (byte b1 = 0; b1 < i1; b1++) {
      if (checkTouchSlop(paramInt, b1))
        return true; 
    } 
    return false;
  }
  
  public boolean checkTouchSlop(int paramInt1, int paramInt2) {
    boolean bool1;
    boolean bool5 = isPointerDown(paramInt2);
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool2 = false;
    if (!bool5)
      return false; 
    if ((paramInt1 & true) == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if ((paramInt1 & 0x2) == 2) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    float f1 = this.f[paramInt2] - this.d[paramInt2];
    float f2 = this.g[paramInt2] - this.e[paramInt2];
    if (bool1 && paramInt1 != 0) {
      if (f1 * f1 + f2 * f2 > (this.b * this.b))
        bool2 = true; 
      return bool2;
    } 
    if (bool1) {
      bool2 = bool4;
      if (Math.abs(f1) > this.b)
        bool2 = true; 
      return bool2;
    } 
    bool2 = bool3;
    if (paramInt1 != 0) {
      bool2 = bool3;
      if (Math.abs(f2) > this.b)
        bool2 = true; 
    } 
    return bool2;
  }
  
  public boolean continueSettling(boolean paramBoolean) {
    int i1 = this.a;
    boolean bool = false;
    if (i1 == 2) {
      boolean bool2 = this.q.computeScrollOffset();
      i1 = this.q.getCurrX();
      int i2 = this.q.getCurrY();
      int i3 = i1 - this.s.getLeft();
      int i4 = i2 - this.s.getTop();
      if (i3 != 0)
        this.s.offsetLeftAndRight(i3); 
      if (i4 != 0)
        this.s.offsetTopAndBottom(i4); 
      if (i3 != 0 || i4 != 0)
        this.r.onViewPositionChanged(this.s, i1, i2, i3, i4); 
      boolean bool1 = bool2;
      if (bool2) {
        bool1 = bool2;
        if (i1 == this.q.getFinalX()) {
          bool1 = bool2;
          if (i2 == this.q.getFinalY()) {
            this.q.abortAnimation();
            bool1 = false;
          } 
        } 
      } 
      if (!bool1)
        if (paramBoolean) {
          this.u.post(this.w);
        } else {
          a(0);
        }  
    } 
    paramBoolean = bool;
    if (this.a == 2)
      paramBoolean = true; 
    return paramBoolean;
  }
  
  public View findTopChildUnder(int paramInt1, int paramInt2) {
    for (int i1 = this.u.getChildCount() - 1; i1 >= 0; i1--) {
      View view = this.u.getChildAt(this.r.getOrderedChildIndex(i1));
      if (paramInt1 >= view.getLeft() && paramInt1 < view.getRight() && paramInt2 >= view.getTop() && paramInt2 < view.getBottom())
        return view; 
    } 
    return null;
  }
  
  public void flingCapturedView(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!this.t)
      throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased"); 
    this.q.fling(this.s.getLeft(), this.s.getTop(), (int)this.l.getXVelocity(this.c), (int)this.l.getYVelocity(this.c), paramInt1, paramInt3, paramInt2, paramInt4);
    a(2);
  }
  
  public int getActivePointerId() { return this.c; }
  
  public View getCapturedView() { return this.s; }
  
  public int getEdgeSize() { return this.o; }
  
  public float getMinVelocity() { return this.n; }
  
  public int getTouchSlop() { return this.b; }
  
  public int getViewDragState() { return this.a; }
  
  public boolean isCapturedViewUnder(int paramInt1, int paramInt2) { return isViewUnder(this.s, paramInt1, paramInt2); }
  
  public boolean isEdgeTouched(int paramInt) {
    int i1 = this.h.length;
    for (byte b1 = 0; b1 < i1; b1++) {
      if (isEdgeTouched(paramInt, b1))
        return true; 
    } 
    return false;
  }
  
  public boolean isEdgeTouched(int paramInt1, int paramInt2) { return (isPointerDown(paramInt2) && (paramInt1 & this.h[paramInt2]) != 0); }
  
  public boolean isPointerDown(int paramInt) { return ((1 << paramInt & this.k) != 0); }
  
  public boolean isViewUnder(View paramView, int paramInt1, int paramInt2) {
    byte b1 = 0;
    if (paramView == null)
      return false; 
    int i1 = b1;
    if (paramInt1 >= paramView.getLeft()) {
      i1 = b1;
      if (paramInt1 < paramView.getRight()) {
        i1 = b1;
        if (paramInt2 >= paramView.getTop()) {
          i1 = b1;
          if (paramInt2 < paramView.getBottom())
            i1 = 1; 
        } 
      } 
    } 
    return i1;
  }
  
  public void processTouchEvent(MotionEvent paramMotionEvent) {
    int i4 = paramMotionEvent.getActionMasked();
    int i3 = paramMotionEvent.getActionIndex();
    if (i4 == 0)
      cancel(); 
    if (this.l == null)
      this.l = VelocityTracker.obtain(); 
    this.l.addMovement(paramMotionEvent);
    int i2 = 0;
    int i1 = 0;
    switch (i4) {
      default:
        return;
      case 6:
        i2 = paramMotionEvent.getPointerId(i3);
        if (this.a == 1 && i2 == this.c) {
          i3 = paramMotionEvent.getPointerCount();
          while (true) {
            if (i1 < i3) {
              i4 = paramMotionEvent.getPointerId(i1);
              if (i4 != this.c) {
                float f3 = paramMotionEvent.getX(i1);
                float f4 = paramMotionEvent.getY(i1);
                if (findTopChildUnder((int)f3, (int)f4) == this.s && a(this.s, i4)) {
                  i1 = this.c;
                  break;
                } 
              } 
              i1++;
              continue;
            } 
            i1 = -1;
            break;
          } 
          if (i1 == -1)
            b(); 
        } 
        b(i2);
        return;
      case 5:
        i1 = paramMotionEvent.getPointerId(i3);
        f1 = paramMotionEvent.getX(i3);
        f2 = paramMotionEvent.getY(i3);
        a(f1, f2, i1);
        if (this.a == 0) {
          a(findTopChildUnder((int)f1, (int)f2), i1);
          i2 = this.h[i1];
          if ((this.p & i2) != 0) {
            this.r.onEdgeTouched(i2 & this.p, i1);
            return;
          } 
        } else if (isCapturedViewUnder((int)f1, (int)f2)) {
          a(this.s, i1);
          return;
        } 
        return;
      case 3:
        if (this.a == 1)
          a(0.0F, 0.0F); 
        cancel();
        return;
      case 2:
        if (this.a == 1) {
          i1 = paramMotionEvent.findPointerIndex(this.c);
          f1 = paramMotionEvent.getX(i1);
          f2 = paramMotionEvent.getY(i1);
          i1 = (int)(f1 - this.f[this.c]);
          i2 = (int)(f2 - this.g[this.c]);
          b(this.s.getLeft() + i1, this.s.getTop() + i2, i1, i2);
        } else {
          i3 = paramMotionEvent.getPointerCount();
          i1 = i2;
          while (true) {
            if (i1 < i3) {
              i2 = paramMotionEvent.getPointerId(i1);
              f1 = paramMotionEvent.getX(i1);
              f2 = paramMotionEvent.getY(i1);
              float f3 = f1 - this.d[i2];
              float f4 = f2 - this.e[i2];
              b(f3, f4, i2);
              if (this.a != 1) {
                View view1 = findTopChildUnder((int)f1, (int)f2);
                if (!a(view1, f3, f4) || !a(view1, i2)) {
                  i1++;
                  continue;
                } 
              } 
            } 
            a(paramMotionEvent);
            return;
          } 
        } 
        a(paramMotionEvent);
        return;
      case 1:
        if (this.a == 1)
          b(); 
        cancel();
        return;
      case 0:
        break;
    } 
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    i1 = paramMotionEvent.getPointerId(0);
    View view = findTopChildUnder((int)f1, (int)f2);
    a(f1, f2, i1);
    a(view, i1);
    i2 = this.h[i1];
    if ((this.p & i2) != 0)
      this.r.onEdgeTouched(i2 & this.p, i1); 
  }
  
  public void setEdgeTrackingEnabled(int paramInt) { this.p = paramInt; }
  
  public void setMinVelocity(float paramFloat) { this.n = paramFloat; }
  
  public boolean settleCapturedViewAt(int paramInt1, int paramInt2) {
    if (!this.t)
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"); 
    return a(paramInt1, paramInt2, (int)this.l.getXVelocity(this.c), (int)this.l.getYVelocity(this.c));
  }
  
  public boolean shouldInterceptTouchEvent(MotionEvent paramMotionEvent) {
    int i3;
    float f2;
    float f1;
    View view;
    int i2 = paramMotionEvent.getActionMasked();
    int i1 = paramMotionEvent.getActionIndex();
    if (i2 == 0)
      cancel(); 
    if (this.l == null)
      this.l = VelocityTracker.obtain(); 
    this.l.addMovement(paramMotionEvent);
    switch (i2) {
      case 6:
        b(paramMotionEvent.getPointerId(i1));
        break;
      case 5:
        i2 = paramMotionEvent.getPointerId(i1);
        f1 = paramMotionEvent.getX(i1);
        f2 = paramMotionEvent.getY(i1);
        a(f1, f2, i2);
        if (this.a == 0) {
          i1 = this.h[i2];
          if ((this.p & i1) != 0)
            this.r.onEdgeTouched(i1 & this.p, i2); 
          break;
        } 
        if (this.a == 2) {
          view = findTopChildUnder((int)f1, (int)f2);
          if (view == this.s)
            a(view, i2); 
        } 
        break;
      case 2:
        if (this.d == null || this.e == null)
          break; 
        i3 = view.getPointerCount();
        for (i1 = 0; i1 < i3; i1++) {
          int i4 = view.getPointerId(i1);
          f1 = view.getX(i1);
          f2 = view.getY(i1);
          float f3 = f1 - this.d[i4];
          float f4 = f2 - this.e[i4];
          View view1 = findTopChildUnder((int)f1, (int)f2);
          if (view1 != null && a(view1, f3, f4)) {
            i2 = 1;
          } else {
            i2 = 0;
          } 
          if (i2 != 0) {
            int i5 = view1.getLeft();
            int i6 = (int)f3;
            i6 = this.r.clampViewPositionHorizontal(view1, i5 + i6, i6);
            int i7 = view1.getTop();
            int i8 = (int)f4;
            i8 = this.r.clampViewPositionVertical(view1, i7 + i8, i8);
            int i9 = this.r.getViewHorizontalDragRange(view1);
            int i10 = this.r.getViewVerticalDragRange(view1);
            if ((i9 == 0 || (i9 > 0 && i6 == i5)) && (i10 == 0 || (i10 > 0 && i8 == i7)))
              break; 
          } 
          b(f3, f4, i4);
          if (this.a == 1 || (i2 != 0 && a(view1, i4)))
            break; 
        } 
        a(view);
        break;
      case 1:
      case 3:
        cancel();
        break;
      case 0:
        f1 = view.getX();
        f2 = view.getY();
        i1 = view.getPointerId(0);
        a(f1, f2, i1);
        view = findTopChildUnder((int)f1, (int)f2);
        if (view == this.s && this.a == 2)
          a(view, i1); 
        i2 = this.h[i1];
        if ((this.p & i2) != 0)
          this.r.onEdgeTouched(i2 & this.p, i1); 
        break;
    } 
    boolean bool = false;
    if (this.a == 1)
      bool = true; 
    return bool;
  }
  
  public boolean smoothSlideViewTo(View paramView, int paramInt1, int paramInt2) {
    this.s = paramView;
    this.c = -1;
    boolean bool = a(paramInt1, paramInt2, 0, 0);
    if (!bool && this.a == 0 && this.s != null)
      this.s = null; 
    return bool;
  }
  
  public static abstract class Callback {
    public int clampViewPositionHorizontal(View param1View, int param1Int1, int param1Int2) { return 0; }
    
    public int clampViewPositionVertical(View param1View, int param1Int1, int param1Int2) { return 0; }
    
    public int getOrderedChildIndex(int param1Int) { return param1Int; }
    
    public int getViewHorizontalDragRange(View param1View) { return 0; }
    
    public int getViewVerticalDragRange(View param1View) { return 0; }
    
    public void onEdgeDragStarted(int param1Int1, int param1Int2) {}
    
    public boolean onEdgeLock(int param1Int) { return false; }
    
    public void onEdgeTouched(int param1Int1, int param1Int2) {}
    
    public void onViewCaptured(View param1View, int param1Int) {}
    
    public void onViewDragStateChanged(int param1Int) {}
    
    public void onViewPositionChanged(View param1View, int param1Int1, int param1Int2, int param1Int3, int param1Int4) {}
    
    public void onViewReleased(View param1View, float param1Float1, float param1Float2) {}
    
    public abstract boolean tryCaptureView(View param1View, int param1Int);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\ViewDragHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
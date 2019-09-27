package com.b.a.a;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.b.a.b.b;
import com.b.a.b.f;

public class g extends GestureDetector.SimpleOnGestureListener {
  protected static int a = 10;
  
  protected static int b = 12;
  
  private static final Rect e = new Rect(0, 0, 0, 0);
  
  protected c c;
  
  protected boolean d = false;
  
  private GestureDetector f;
  
  private float g;
  
  private float h;
  
  private float i;
  
  private float j;
  
  private int k;
  
  private g() {}
  
  public g(c paramc) {
    this.c = paramc;
    this.f = new GestureDetector(paramc.getContext(), this);
    this.f.setIsLongpressEnabled(true);
  }
  
  private void a(float paramFloat1, float paramFloat2) {
    int n = (int)paramFloat1 + this.c.getScrollX();
    int i1 = (int)paramFloat2 + this.c.getScrollY();
    int m = Math.max(this.c.getMaxScrollX(), this.c.getScrollX());
    if (n <= m) {
      m = n;
      if (n < 0)
        m = 0; 
    } 
    n = Math.max(this.c.getMaxScrollY(), this.c.getScrollY());
    if (i1 <= n) {
      n = i1;
      if (i1 < 0)
        n = 0; 
    } 
    this.c.smoothScrollTo(m, n);
  }
  
  private final boolean b() { return false; }
  
  private void c(MotionEvent paramMotionEvent) { // Byte code:
    //   0: aload_0
    //   1: getfield c : Lcom/b/a/a/c;
    //   4: invokevirtual isSelectText : ()Z
    //   7: istore #6
    //   9: iconst_1
    //   10: istore_2
    //   11: iload #6
    //   13: ifne -> 31
    //   16: aload_0
    //   17: invokespecial b : ()Z
    //   20: ifeq -> 31
    //   23: aload_0
    //   24: getfield c : Lcom/b/a/a/c;
    //   27: iconst_1
    //   28: invokevirtual selectText : (Z)V
    //   31: aload_1
    //   32: invokevirtual getX : ()F
    //   35: f2i
    //   36: aload_0
    //   37: getfield c : Lcom/b/a/a/c;
    //   40: invokevirtual getPaddingLeft : ()I
    //   43: isub
    //   44: istore_3
    //   45: aload_1
    //   46: invokevirtual getY : ()F
    //   49: f2i
    //   50: aload_0
    //   51: getfield c : Lcom/b/a/a/c;
    //   54: invokevirtual getPaddingTop : ()I
    //   57: isub
    //   58: istore #4
    //   60: getstatic com/b/a/a/g.a : I
    //   63: istore #5
    //   65: iconst_0
    //   66: istore #6
    //   68: iload_3
    //   69: iload #5
    //   71: if_icmpge -> 93
    //   74: aload_0
    //   75: getfield c : Lcom/b/a/a/c;
    //   78: astore #7
    //   80: iconst_2
    //   81: istore_2
    //   82: aload #7
    //   84: iload_2
    //   85: invokevirtual d : (I)Z
    //   88: istore #6
    //   90: goto -> 165
    //   93: iload_3
    //   94: aload_0
    //   95: getfield c : Lcom/b/a/a/c;
    //   98: invokevirtual getContentWidth : ()I
    //   101: getstatic com/b/a/a/g.a : I
    //   104: isub
    //   105: if_icmplt -> 119
    //   108: aload_0
    //   109: getfield c : Lcom/b/a/a/c;
    //   112: astore #7
    //   114: iconst_3
    //   115: istore_2
    //   116: goto -> 82
    //   119: iload #4
    //   121: getstatic com/b/a/a/g.a : I
    //   124: if_icmpge -> 140
    //   127: aload_0
    //   128: getfield c : Lcom/b/a/a/c;
    //   131: iconst_0
    //   132: invokevirtual d : (I)Z
    //   135: istore #6
    //   137: goto -> 165
    //   140: iload #4
    //   142: aload_0
    //   143: getfield c : Lcom/b/a/a/c;
    //   146: invokevirtual getContentHeight : ()I
    //   149: getstatic com/b/a/a/g.a : I
    //   152: isub
    //   153: if_icmplt -> 165
    //   156: aload_0
    //   157: getfield c : Lcom/b/a/a/c;
    //   160: astore #7
    //   162: goto -> 82
    //   165: iload #6
    //   167: ifne -> 215
    //   170: aload_0
    //   171: getfield c : Lcom/b/a/a/c;
    //   174: invokevirtual b : ()V
    //   177: aload_0
    //   178: getfield c : Lcom/b/a/a/c;
    //   181: aload_0
    //   182: aload_1
    //   183: invokevirtual getX : ()F
    //   186: f2i
    //   187: invokevirtual a : (I)I
    //   190: aload_0
    //   191: aload_1
    //   192: invokevirtual getY : ()F
    //   195: f2i
    //   196: invokevirtual b : (I)I
    //   199: invokevirtual a : (II)I
    //   202: istore_2
    //   203: iload_2
    //   204: iflt -> 215
    //   207: aload_0
    //   208: getfield c : Lcom/b/a/a/c;
    //   211: iload_2
    //   212: invokevirtual moveCaret : (I)V
    //   215: return }
  
  private float d(MotionEvent paramMotionEvent) {
    float f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
    return (float)Math.sqrt((f1 * f1 + f2 * f2));
  }
  
  private boolean e(MotionEvent paramMotionEvent) {
    if (paramMotionEvent.getAction() == 2 && paramMotionEvent.getPointerCount() == 2) {
      if (this.g == 0.0F) {
        float f2 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
        float f3 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
        this.g = (float)Math.sqrt((f2 * f2 + f3 * f3));
        this.h = (paramMotionEvent.getX(0) + paramMotionEvent.getX(1)) / 2.0F;
        this.i = (paramMotionEvent.getY(0) + paramMotionEvent.getY(1)) / 2.0F;
        this.j = this.c.getTextSize();
      } 
      float f1 = d(paramMotionEvent);
      if (this.g != 0.0F)
        this.c.setTextSize((int)(this.j * f1 / this.g)); 
      return true;
    } 
    this.g = 0.0F;
    return false;
  }
  
  protected final int a(int paramInt) { return paramInt - this.c.getPaddingLeft() + this.c.getScrollX(); }
  
  public Rect a() { return e; }
  
  public void a(Canvas paramCanvas) {}
  
  public void a(b paramb) {}
  
  public void a(boolean paramBoolean) {}
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3) {
    Rect rect = this.c.c(paramInt3);
    return (paramInt2 >= rect.top - b && paramInt2 < rect.bottom + b && paramInt1 >= rect.left - b && paramInt1 < rect.right + b);
  }
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent) { return false; }
  
  public boolean a(MotionEvent paramMotionEvent) {
    this.c.b();
    this.d = false;
    this.g = 0.0F;
    this.k = 0;
    return true;
  }
  
  protected final int b(int paramInt) { return paramInt - this.c.getPaddingTop() + this.c.getScrollY(); }
  
  public boolean b(int paramInt, KeyEvent paramKeyEvent) { return false; }
  
  public boolean b(MotionEvent paramMotionEvent) {
    e(paramMotionEvent);
    boolean bool2 = this.f.onTouchEvent(paramMotionEvent);
    boolean bool1 = bool2;
    if (!bool2) {
      bool1 = bool2;
      if ((paramMotionEvent.getAction() & 0xFF) == 1)
        bool1 = a(paramMotionEvent); 
    } 
    return bool1;
  }
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent) {
    this.d = true;
    int m = a((int)paramMotionEvent.getX());
    int n = b((int)paramMotionEvent.getY());
    int i1 = this.c.a(m, n);
    if (this.c.isSelectText() && this.c.inSelectionRange(i1)) {
      f f1 = this.c.createDocumentProvider();
      m = f1.c(i1);
      n = f1.e(m);
      m = f1.e(m + 1) - 1;
      this.c.setSelectionRange(n, m - n);
      return true;
    } 
    if (i1 >= 0) {
      this.c.moveCaret(i1);
      f f1 = this.c.createDocumentProvider();
      int i2;
      for (i2 = i1; i2 >= 0 && Character.isJavaIdentifierPart(f1.charAt(i2)); i2--);
      n = i2;
      m = i1;
      if (i2 != i1) {
        n = i2 + 1;
        m = i1;
      } 
      while (m >= 0 && Character.isJavaIdentifierPart(f1.charAt(m)))
        m++; 
      this.c.selectText(true);
      this.c.setSelectionRange(n, m - n);
      return true;
    } 
    return true;
  }
  
  public boolean onDown(MotionEvent paramMotionEvent) { // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual getX : ()F
    //   5: f2i
    //   6: invokevirtual a : (I)I
    //   9: istore_2
    //   10: aload_0
    //   11: aload_1
    //   12: invokevirtual getY : ()F
    //   15: f2i
    //   16: invokevirtual b : (I)I
    //   19: istore_3
    //   20: aload_0
    //   21: aload_0
    //   22: iload_2
    //   23: iload_3
    //   24: aload_0
    //   25: getfield c : Lcom/b/a/a/c;
    //   28: invokevirtual getCaretPosition : ()I
    //   31: invokevirtual a : (III)Z
    //   34: putfield d : Z
    //   37: aload_0
    //   38: getfield c : Lcom/b/a/a/c;
    //   41: invokevirtual isFlingScrolling : ()Z
    //   44: ifeq -> 57
    //   47: aload_0
    //   48: getfield c : Lcom/b/a/a/c;
    //   51: invokevirtual stopFlingScrolling : ()V
    //   54: goto -> 133
    //   57: aload_0
    //   58: getfield c : Lcom/b/a/a/c;
    //   61: invokevirtual isSelectText : ()Z
    //   64: ifeq -> 133
    //   67: aload_0
    //   68: iload_2
    //   69: iload_3
    //   70: aload_0
    //   71: getfield c : Lcom/b/a/a/c;
    //   74: invokevirtual getSelectionStart : ()I
    //   77: invokevirtual a : (III)Z
    //   80: ifeq -> 107
    //   83: aload_0
    //   84: getfield c : Lcom/b/a/a/c;
    //   87: invokevirtual focusSelectionStart : ()V
    //   90: aload_0
    //   91: getfield c : Lcom/b/a/a/c;
    //   94: iconst_0
    //   95: invokevirtual performHapticFeedback : (I)Z
    //   98: pop
    //   99: aload_0
    //   100: iconst_1
    //   101: putfield d : Z
    //   104: goto -> 133
    //   107: aload_0
    //   108: iload_2
    //   109: iload_3
    //   110: aload_0
    //   111: getfield c : Lcom/b/a/a/c;
    //   114: invokevirtual getSelectionEnd : ()I
    //   117: invokevirtual a : (III)Z
    //   120: ifeq -> 133
    //   123: aload_0
    //   124: getfield c : Lcom/b/a/a/c;
    //   127: invokevirtual focusSelectionEnd : ()V
    //   130: goto -> 90
    //   133: aload_0
    //   134: getfield d : Z
    //   137: ifeq -> 149
    //   140: aload_0
    //   141: getfield c : Lcom/b/a/a/c;
    //   144: iconst_0
    //   145: invokevirtual performHapticFeedback : (I)Z
    //   148: pop
    //   149: iconst_1
    //   150: ireturn }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2) {
    if (!this.d) {
      float f1;
      if (this.k == 1) {
        f1 = 0.0F;
      } else {
        f1 = paramFloat2;
        if (this.k == -1) {
          paramFloat1 = 0.0F;
          f1 = paramFloat2;
        } 
      } 
      this.c.c((int)-paramFloat1 * 2, (int)-f1 * 2);
    } 
    a(paramMotionEvent2);
    return true;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) { onDoubleTap(paramMotionEvent); }
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2) {
    if (this.d) {
      c(paramMotionEvent2);
    } else if (paramMotionEvent2.getPointerCount() == 1) {
      float f1;
      if (this.k == 0)
        if (Math.abs(paramFloat1) > Math.abs(paramFloat2)) {
          this.k = 1;
        } else {
          this.k = -1;
        }  
      if (this.k == 1) {
        f1 = 0.0F;
      } else {
        f1 = paramFloat2;
        if (this.k == -1) {
          paramFloat1 = 0.0F;
          f1 = paramFloat2;
        } 
      } 
      a(paramFloat1, f1);
    } 
    if ((paramMotionEvent2.getAction() & 0xFF) == 1)
      a(paramMotionEvent2); 
    return true;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent) {
    if (this.c.isAccessibilityEnabled()) {
      this.c.a(true);
      return true;
    } 
    int m = a((int)paramMotionEvent.getX());
    int n = b((int)paramMotionEvent.getY());
    int i1 = this.c.a(m, n);
    if (this.c.isSelectText()) {
      int i2 = this.c.b(m, n);
      if (!this.c.inSelectionRange(i2) && !a(m, n, this.c.getSelectionStart()) && !a(m, n, this.c.getSelectionEnd())) {
        this.c.selectText(false);
        if (i2 >= 0) {
          this.c.moveCaret(i1);
          this.c.a(true);
          return true;
        } 
      } 
    } else if (i1 >= 0) {
      this.c.moveCaret(i1);
      this.c.a(true);
      return true;
    } 
    this.c.a(true);
    return true;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
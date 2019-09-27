package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.webkit.WebView;
import com.a.a.a.a.a.a.a;
import java.util.Timer;
import java.util.TimerTask;

public class PullingLayout extends RelativeLayout {
  public static final int DONE = 5;
  
  public static final int FAIL = 1;
  
  public static final int INIT = 0;
  
  public static final int LOADING = 4;
  
  public static final int NOTHING = 2;
  
  public static final int REFRESHING = 2;
  
  public static final int RELEASE_TO_LOAD = 3;
  
  public static final int RELEASE_TO_REFRESH = 1;
  
  public static final int SUCCEED = 0;
  
  public static final String TAG = "PullToRefreshLayout";
  
  private View A;
  
  private int B;
  
  private boolean C = true;
  
  private boolean D = true;
  
  private Context E;
  
  private boolean F;
  
  private boolean G;
  
  private LayoutInflater H;
  
  private OnLoadMoreListener I;
  
  private OnPullUpListener J;
  
  private OnPullDownListener K;
  
  private DisplayMetrics L;
  
  private int M;
  
  public float MOVE_SPEED = 8.0F;
  
  private int N;
  
  private String O = "刷新成功";
  
  private String P = "暂无更新";
  
  private String Q = "刷新失败";
  
  private String R = "加载成功";
  
  private String S = "没有更多内容";
  
  private String T = "加载失败";
  
  private String U = "上拉加载更多";
  
  private String V = "释放立即刷新";
  
  private String W = "正在刷新...";
  
  Handler a = new Handler(this) {
      public void handleMessage(Message param1Message) { // Byte code:
        //   0: aload_0
        //   1: getfield a : Landroid/widget/PullingLayout;
        //   4: ldc2_w 1.5707963267948966
        //   7: aload_0
        //   8: getfield a : Landroid/widget/PullingLayout;
        //   11: invokevirtual getMeasuredHeight : ()I
        //   14: i2d
        //   15: ddiv
        //   16: aload_0
        //   17: getfield a : Landroid/widget/PullingLayout;
        //   20: getfield pullDownY : F
        //   23: aload_0
        //   24: getfield a : Landroid/widget/PullingLayout;
        //   27: invokestatic a : (Landroid/widget/PullingLayout;)F
        //   30: invokestatic abs : (F)F
        //   33: fadd
        //   34: f2d
        //   35: dmul
        //   36: invokestatic tan : (D)D
        //   39: ldc2_w 5.0
        //   42: dmul
        //   43: ldc2_w 8.0
        //   46: dadd
        //   47: d2f
        //   48: putfield MOVE_SPEED : F
        //   51: aload_0
        //   52: getfield a : Landroid/widget/PullingLayout;
        //   55: invokestatic b : (Landroid/widget/PullingLayout;)Z
        //   58: ifne -> 166
        //   61: aload_0
        //   62: getfield a : Landroid/widget/PullingLayout;
        //   65: invokestatic c : (Landroid/widget/PullingLayout;)I
        //   68: iconst_2
        //   69: if_icmpne -> 117
        //   72: aload_0
        //   73: getfield a : Landroid/widget/PullingLayout;
        //   76: getfield pullDownY : F
        //   79: aload_0
        //   80: getfield a : Landroid/widget/PullingLayout;
        //   83: invokestatic d : (Landroid/widget/PullingLayout;)F
        //   86: fcmpg
        //   87: ifgt -> 117
        //   90: aload_0
        //   91: getfield a : Landroid/widget/PullingLayout;
        //   94: aload_0
        //   95: getfield a : Landroid/widget/PullingLayout;
        //   98: invokestatic d : (Landroid/widget/PullingLayout;)F
        //   101: putfield pullDownY : F
        //   104: aload_0
        //   105: getfield a : Landroid/widget/PullingLayout;
        //   108: invokestatic e : (Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;
        //   111: invokevirtual cancel : ()V
        //   114: goto -> 166
        //   117: aload_0
        //   118: getfield a : Landroid/widget/PullingLayout;
        //   121: invokestatic c : (Landroid/widget/PullingLayout;)I
        //   124: iconst_4
        //   125: if_icmpne -> 166
        //   128: aload_0
        //   129: getfield a : Landroid/widget/PullingLayout;
        //   132: invokestatic a : (Landroid/widget/PullingLayout;)F
        //   135: fneg
        //   136: aload_0
        //   137: getfield a : Landroid/widget/PullingLayout;
        //   140: invokestatic f : (Landroid/widget/PullingLayout;)F
        //   143: fcmpg
        //   144: ifgt -> 166
        //   147: aload_0
        //   148: getfield a : Landroid/widget/PullingLayout;
        //   151: aload_0
        //   152: getfield a : Landroid/widget/PullingLayout;
        //   155: invokestatic f : (Landroid/widget/PullingLayout;)F
        //   158: fneg
        //   159: invokestatic a : (Landroid/widget/PullingLayout;F)F
        //   162: pop
        //   163: goto -> 104
        //   166: aload_0
        //   167: getfield a : Landroid/widget/PullingLayout;
        //   170: getfield pullDownY : F
        //   173: fconst_0
        //   174: fcmpl
        //   175: ifle -> 202
        //   178: aload_0
        //   179: getfield a : Landroid/widget/PullingLayout;
        //   182: astore_1
        //   183: aload_1
        //   184: aload_1
        //   185: getfield pullDownY : F
        //   188: aload_0
        //   189: getfield a : Landroid/widget/PullingLayout;
        //   192: getfield MOVE_SPEED : F
        //   195: fsub
        //   196: putfield pullDownY : F
        //   199: goto -> 237
        //   202: aload_0
        //   203: getfield a : Landroid/widget/PullingLayout;
        //   206: invokestatic a : (Landroid/widget/PullingLayout;)F
        //   209: fconst_0
        //   210: fcmpg
        //   211: ifge -> 237
        //   214: aload_0
        //   215: getfield a : Landroid/widget/PullingLayout;
        //   218: aload_0
        //   219: getfield a : Landroid/widget/PullingLayout;
        //   222: invokestatic a : (Landroid/widget/PullingLayout;)F
        //   225: aload_0
        //   226: getfield a : Landroid/widget/PullingLayout;
        //   229: getfield MOVE_SPEED : F
        //   232: fadd
        //   233: invokestatic a : (Landroid/widget/PullingLayout;F)F
        //   236: pop
        //   237: aload_0
        //   238: getfield a : Landroid/widget/PullingLayout;
        //   241: getfield pullDownY : F
        //   244: fconst_0
        //   245: fcmpg
        //   246: ifge -> 314
        //   249: aload_0
        //   250: getfield a : Landroid/widget/PullingLayout;
        //   253: fconst_0
        //   254: putfield pullDownY : F
        //   257: aload_0
        //   258: getfield a : Landroid/widget/PullingLayout;
        //   261: invokestatic g : (Landroid/widget/PullingLayout;)Landroid/view/View;
        //   264: invokevirtual clearAnimation : ()V
        //   267: aload_0
        //   268: getfield a : Landroid/widget/PullingLayout;
        //   271: invokestatic c : (Landroid/widget/PullingLayout;)I
        //   274: iconst_2
        //   275: if_icmpeq -> 297
        //   278: aload_0
        //   279: getfield a : Landroid/widget/PullingLayout;
        //   282: invokestatic c : (Landroid/widget/PullingLayout;)I
        //   285: iconst_4
        //   286: if_icmpeq -> 297
        //   289: aload_0
        //   290: getfield a : Landroid/widget/PullingLayout;
        //   293: iconst_0
        //   294: invokestatic a : (Landroid/widget/PullingLayout;I)V
        //   297: aload_0
        //   298: getfield a : Landroid/widget/PullingLayout;
        //   301: invokestatic e : (Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;
        //   304: invokevirtual cancel : ()V
        //   307: aload_0
        //   308: getfield a : Landroid/widget/PullingLayout;
        //   311: invokevirtual requestLayout : ()V
        //   314: aload_0
        //   315: getfield a : Landroid/widget/PullingLayout;
        //   318: invokestatic a : (Landroid/widget/PullingLayout;)F
        //   321: fconst_0
        //   322: fcmpl
        //   323: ifle -> 392
        //   326: aload_0
        //   327: getfield a : Landroid/widget/PullingLayout;
        //   330: fconst_0
        //   331: invokestatic a : (Landroid/widget/PullingLayout;F)F
        //   334: pop
        //   335: aload_0
        //   336: getfield a : Landroid/widget/PullingLayout;
        //   339: invokestatic h : (Landroid/widget/PullingLayout;)Landroid/view/View;
        //   342: invokevirtual clearAnimation : ()V
        //   345: aload_0
        //   346: getfield a : Landroid/widget/PullingLayout;
        //   349: invokestatic c : (Landroid/widget/PullingLayout;)I
        //   352: iconst_2
        //   353: if_icmpeq -> 375
        //   356: aload_0
        //   357: getfield a : Landroid/widget/PullingLayout;
        //   360: invokestatic c : (Landroid/widget/PullingLayout;)I
        //   363: iconst_4
        //   364: if_icmpeq -> 375
        //   367: aload_0
        //   368: getfield a : Landroid/widget/PullingLayout;
        //   371: iconst_0
        //   372: invokestatic a : (Landroid/widget/PullingLayout;I)V
        //   375: aload_0
        //   376: getfield a : Landroid/widget/PullingLayout;
        //   379: invokestatic e : (Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;
        //   382: invokevirtual cancel : ()V
        //   385: aload_0
        //   386: getfield a : Landroid/widget/PullingLayout;
        //   389: invokevirtual requestLayout : ()V
        //   392: aload_0
        //   393: getfield a : Landroid/widget/PullingLayout;
        //   396: invokevirtual requestLayout : ()V
        //   399: aload_0
        //   400: getfield a : Landroid/widget/PullingLayout;
        //   403: getfield pullDownY : F
        //   406: aload_0
        //   407: getfield a : Landroid/widget/PullingLayout;
        //   410: invokestatic a : (Landroid/widget/PullingLayout;)F
        //   413: invokestatic abs : (F)F
        //   416: fadd
        //   417: fconst_0
        //   418: fcmpl
        //   419: ifne -> 432
        //   422: aload_0
        //   423: getfield a : Landroid/widget/PullingLayout;
        //   426: invokestatic e : (Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;
        //   429: invokevirtual cancel : ()V
        //   432: return }
    };
  
  private String aa = "释放立即加载";
  
  private String ab = "下拉刷新";
  
  private String ac = "正在加载...";
  
  private int ad = 0;
  
  private int ae = 0;
  
  private int af = 0;
  
  private int ag = 0;
  
  private int ah = 6;
  
  private int ai = 2;
  
  private int b = 0;
  
  private OnRefreshListener c;
  
  private float d;
  
  private float e;
  
  private float f = 0.0F;
  
  private float g = 200.0F;
  
  private float h = 200.0F;
  
  private MyTimer i;
  
  private boolean j = false;
  
  private boolean k = false;
  
  private float l = 2.0F;
  
  private RotateAnimation m;
  
  private RotateAnimation n;
  
  private HeadView o;
  
  private View p;
  
  public float pullDownY = 0.0F;
  
  private View q;
  
  private ImageView r;
  
  private TextView s;
  
  private FootView t;
  
  private View u;
  
  private View v;
  
  private ImageView w;
  
  private TextView x;
  
  private int y;
  
  private FrameLayout z;
  
  public PullingLayout(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  public PullingLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public PullingLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private int a(float paramFloat) { return (int)TypedValue.applyDimension(1, paramFloat, this.L); }
  
  private void a() { this.i.schedule(5L); }
  
  private void a(int paramInt) {
    TextView textView;
    String str1;
    String str2;
    View view2;
    View view1;
    this.b = paramInt;
    switch (this.b) {
      default:
        return;
      case 4:
        this.u.clearAnimation();
        this.v.setVisibility(0);
        this.u.setVisibility(4);
        textView = this.x;
        str2 = this.ac;
        textView.setText(str2);
        return;
      case 3:
        this.x.setText(this.aa);
        view2 = this.u;
        view2.startAnimation(this.m);
        return;
      case 2:
        this.p.clearAnimation();
        this.q.setVisibility(0);
        this.p.setVisibility(4);
        textView = this.s;
        str1 = this.W;
        textView.setText(str1);
        return;
      case 1:
        this.s.setText(this.V);
        view1 = this.p;
        view1.startAnimation(this.m);
        return;
      case 0:
        break;
    } 
    this.r.setVisibility(8);
    this.s.setText(this.ab);
    this.p.clearAnimation();
    this.p.setVisibility(0);
    this.w.setVisibility(8);
    this.x.setText(this.U);
    this.u.clearAnimation();
    this.u.setVisibility(0);
  }
  
  private void a(Context paramContext) {
    this.L = paramContext.getResources().getDisplayMetrics();
    this.E = paramContext;
    TypedArray typedArray = this.E.getTheme().obtainStyledAttributes(new int[] { 16842800, 16842801 });
    this.M = typedArray.getColor(0, -1);
    this.N = typedArray.getColor(1, -16777216);
    typedArray.recycle();
    setStateColor(this.M);
    this.H = (LayoutInflater)paramContext.getSystemService("layout_inflater");
    this.o = new HeadView(this, this.E);
    super.addView(this.o, new RelativeLayout.LayoutParams(-1, -1));
    this.z = new FrameLayout(this.E);
    super.addView(this.z, new RelativeLayout.LayoutParams(-1, -1));
    this.t = new FootView(this, this.E);
    super.addView(this.t, new RelativeLayout.LayoutParams(-1, -1));
    this.z = (FrameLayout)getChildAt(1);
    e();
    this.i = new MyTimer(this, this.a);
    this.m = new RotateAnimation(0.0F, 180.0F, 1, 0.5F, 1, 0.5F);
    this.m.setDuration(100L);
    this.m.setRepeatCount(0);
    this.m.setFillAfter(true);
    this.n = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    this.n.setDuration(1500L);
    this.n.setRepeatCount(-1);
    this.n.setFillAfter(true);
    LinearInterpolator linearInterpolator = new LinearInterpolator();
    this.m.setInterpolator(linearInterpolator);
    this.n.setInterpolator(linearInterpolator);
  }
  
  private boolean a(View paramView) { return (paramView.getScrollY() == 0); }
  
  private boolean a(WebView paramWebView) { return (paramWebView.getScrollY() >= paramWebView.getContentHeight() * paramWebView.getScale() - paramWebView.getMeasuredHeight()); }
  
  private boolean a(AbsListView paramAbsListView) { return (paramAbsListView.getCount() == 0) ? true : ((paramAbsListView.getFirstVisiblePosition() == 0 && paramAbsListView.getChildAt(0).getTop() >= 0)); }
  
  private boolean a(ExpandableListView paramExpandableListView) { return (paramExpandableListView.getCount() == 0) ? true : ((paramExpandableListView.getLastVisiblePosition() == paramExpandableListView.getCount() - 1 && paramExpandableListView.getChildAt(paramExpandableListView.getLastVisiblePosition() - paramExpandableListView.getFirstVisiblePosition()) != null && paramExpandableListView.getChildAt(paramExpandableListView.getLastVisiblePosition() - paramExpandableListView.getFirstVisiblePosition()).getBottom() <= paramExpandableListView.getMeasuredHeight())); }
  
  private boolean a(GridView paramGridView) { return (paramGridView.getCount() == 0) ? true : ((paramGridView.getLastVisiblePosition() == paramGridView.getCount() - 1 && paramGridView.getChildAt(paramGridView.getLastVisiblePosition() - paramGridView.getFirstVisiblePosition()) != null && paramGridView.getChildAt(paramGridView.getLastVisiblePosition() - paramGridView.getFirstVisiblePosition()).getBottom() <= paramGridView.getMeasuredHeight())); }
  
  private boolean a(ListView paramListView) { return (paramListView.getCount() == 0) ? true : ((paramListView.getLastVisiblePosition() == paramListView.getCount() - 1 && paramListView.getChildAt(paramListView.getLastVisiblePosition() - paramListView.getFirstVisiblePosition()) != null && paramListView.getChildAt(paramListView.getLastVisiblePosition() - paramListView.getFirstVisiblePosition()).getBottom() <= paramListView.getMeasuredHeight())); }
  
  private boolean a(ScrollView paramScrollView) { return (paramScrollView.getScrollY() >= paramScrollView.getChildAt(0).getHeight() - paramScrollView.getMeasuredHeight()); }
  
  private void b() {
    this.C = true;
    this.D = true;
  }
  
  private boolean c() { return (!this.F || this.A == null) ? false : ((this.J != null) ? this.J.onPullUp(this.A) : ((this.A instanceof ListView) ? a((ListView)this.A) : ((this.A instanceof GridView) ? a((GridView)this.A) : ((this.A instanceof ExpandableListView) ? a((ExpandableListView)this.A) : ((this.A instanceof ScrollView) ? a((ScrollView)this.A) : ((this.A instanceof WebView) ? a((WebView)this.A) : 1)))))); }
  
  private boolean d() { return (!this.G || this.A == null) ? false : ((this.K != null) ? this.K.onPullDown(this.A) : ((this.A instanceof AbsListView) ? a((AbsListView)this.A) : ((this.A instanceof ScrollView) ? a((ScrollView)this.A) : ((this.A instanceof WebView) ? a((WebView)this.A) : 1)))); }
  
  private void e() {
    this.p = this.o.getPullView();
    this.s = this.o.getStateText();
    this.q = this.o.getLoadingView();
    this.r = this.o.getStateView();
    this.u = this.t.getPullView();
    this.x = this.t.getStateText();
    this.v = this.t.getLoadingView();
    this.w = this.t.getStateView();
  }
  
  public void addView(View paramView) {
    this.A = paramView;
    this.z.addView(paramView);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    paramView.setLayoutParams(new FrameLayout.LayoutParams(paramLayoutParams.width, paramLayoutParams.height));
    this.A = paramView;
    this.z.addView(paramView);
  }
  
  public void autoLoad() {
    this.f = -this.h;
    requestLayout();
    a(4);
    if (this.I != null)
      this.I.onLoadMore(this); 
  }
  
  public void autoRefresh() { (new AutoRefreshAndLoadTask(this, null)).execute(new Integer[] { Integer.valueOf(20) }); }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent) { // Byte code:
    //   0: aload_1
    //   1: invokevirtual getActionMasked : ()I
    //   4: tableswitch default -> 48, 0 -> 645, 1 -> 545, 2 -> 59, 3 -> 48, 4 -> 48, 5 -> 51, 6 -> 51
    //   48: goto -> 677
    //   51: aload_0
    //   52: iconst_m1
    //   53: putfield B : I
    //   56: goto -> 677
    //   59: aload_0
    //   60: getfield B : I
    //   63: ifne -> 308
    //   66: aload_0
    //   67: getfield pullDownY : F
    //   70: fconst_0
    //   71: fcmpl
    //   72: ifgt -> 223
    //   75: aload_0
    //   76: invokespecial d : ()Z
    //   79: ifeq -> 100
    //   82: aload_0
    //   83: getfield C : Z
    //   86: ifeq -> 100
    //   89: aload_0
    //   90: getfield b : I
    //   93: iconst_4
    //   94: if_icmpeq -> 100
    //   97: goto -> 223
    //   100: aload_0
    //   101: getfield f : F
    //   104: fconst_0
    //   105: fcmpg
    //   106: iflt -> 141
    //   109: aload_0
    //   110: invokespecial c : ()Z
    //   113: ifeq -> 134
    //   116: aload_0
    //   117: getfield D : Z
    //   120: ifeq -> 134
    //   123: aload_0
    //   124: getfield b : I
    //   127: iconst_2
    //   128: if_icmpeq -> 134
    //   131: goto -> 141
    //   134: aload_0
    //   135: invokespecial b : ()V
    //   138: goto -> 313
    //   141: aload_0
    //   142: aload_0
    //   143: getfield f : F
    //   146: aload_1
    //   147: invokevirtual getY : ()F
    //   150: aload_0
    //   151: getfield e : F
    //   154: fsub
    //   155: aload_0
    //   156: getfield l : F
    //   159: fdiv
    //   160: fadd
    //   161: putfield f : F
    //   164: aload_0
    //   165: getfield f : F
    //   168: fconst_0
    //   169: fcmpl
    //   170: ifle -> 188
    //   173: aload_0
    //   174: fconst_0
    //   175: putfield f : F
    //   178: aload_0
    //   179: iconst_1
    //   180: putfield C : Z
    //   183: aload_0
    //   184: iconst_0
    //   185: putfield D : Z
    //   188: aload_0
    //   189: getfield f : F
    //   192: aload_0
    //   193: invokevirtual getMeasuredHeight : ()I
    //   196: ineg
    //   197: i2f
    //   198: fcmpg
    //   199: ifge -> 212
    //   202: aload_0
    //   203: aload_0
    //   204: invokevirtual getMeasuredHeight : ()I
    //   207: ineg
    //   208: i2f
    //   209: putfield f : F
    //   212: aload_0
    //   213: getfield b : I
    //   216: iconst_4
    //   217: if_icmpne -> 313
    //   220: goto -> 300
    //   223: aload_0
    //   224: aload_0
    //   225: getfield pullDownY : F
    //   228: aload_1
    //   229: invokevirtual getY : ()F
    //   232: aload_0
    //   233: getfield e : F
    //   236: fsub
    //   237: aload_0
    //   238: getfield l : F
    //   241: fdiv
    //   242: fadd
    //   243: putfield pullDownY : F
    //   246: aload_0
    //   247: getfield pullDownY : F
    //   250: fconst_0
    //   251: fcmpg
    //   252: ifge -> 270
    //   255: aload_0
    //   256: fconst_0
    //   257: putfield pullDownY : F
    //   260: aload_0
    //   261: iconst_0
    //   262: putfield C : Z
    //   265: aload_0
    //   266: iconst_1
    //   267: putfield D : Z
    //   270: aload_0
    //   271: getfield pullDownY : F
    //   274: aload_0
    //   275: invokevirtual getMeasuredHeight : ()I
    //   278: i2f
    //   279: fcmpl
    //   280: ifle -> 292
    //   283: aload_0
    //   284: aload_0
    //   285: invokevirtual getMeasuredHeight : ()I
    //   288: i2f
    //   289: putfield pullDownY : F
    //   292: aload_0
    //   293: getfield b : I
    //   296: iconst_2
    //   297: if_icmpne -> 313
    //   300: aload_0
    //   301: iconst_1
    //   302: putfield k : Z
    //   305: goto -> 313
    //   308: aload_0
    //   309: iconst_0
    //   310: putfield B : I
    //   313: aload_0
    //   314: aload_1
    //   315: invokevirtual getY : ()F
    //   318: putfield e : F
    //   321: aload_0
    //   322: ldc2_w 1.5707963267948966
    //   325: aload_0
    //   326: invokevirtual getMeasuredHeight : ()I
    //   329: i2d
    //   330: ddiv
    //   331: aload_0
    //   332: getfield pullDownY : F
    //   335: aload_0
    //   336: getfield f : F
    //   339: invokestatic abs : (F)F
    //   342: fadd
    //   343: f2d
    //   344: dmul
    //   345: invokestatic tan : (D)D
    //   348: ldc2_w 2.0
    //   351: dmul
    //   352: ldc2_w 2.0
    //   355: dadd
    //   356: d2f
    //   357: putfield l : F
    //   360: aload_0
    //   361: getfield pullDownY : F
    //   364: fconst_0
    //   365: fcmpl
    //   366: ifgt -> 378
    //   369: aload_0
    //   370: getfield f : F
    //   373: fconst_0
    //   374: fcmpg
    //   375: ifge -> 382
    //   378: aload_0
    //   379: invokevirtual requestLayout : ()V
    //   382: aload_0
    //   383: getfield pullDownY : F
    //   386: fconst_0
    //   387: fcmpl
    //   388: ifle -> 451
    //   391: aload_0
    //   392: getfield pullDownY : F
    //   395: aload_0
    //   396: getfield g : F
    //   399: fcmpg
    //   400: ifgt -> 424
    //   403: aload_0
    //   404: getfield b : I
    //   407: iconst_1
    //   408: if_icmpeq -> 419
    //   411: aload_0
    //   412: getfield b : I
    //   415: iconst_5
    //   416: if_icmpne -> 424
    //   419: aload_0
    //   420: iconst_0
    //   421: invokespecial a : (I)V
    //   424: aload_0
    //   425: getfield pullDownY : F
    //   428: aload_0
    //   429: getfield g : F
    //   432: fcmpl
    //   433: iflt -> 519
    //   436: aload_0
    //   437: getfield b : I
    //   440: ifne -> 519
    //   443: aload_0
    //   444: iconst_1
    //   445: invokespecial a : (I)V
    //   448: goto -> 519
    //   451: aload_0
    //   452: getfield f : F
    //   455: fconst_0
    //   456: fcmpg
    //   457: ifge -> 519
    //   460: aload_0
    //   461: getfield f : F
    //   464: fneg
    //   465: aload_0
    //   466: getfield h : F
    //   469: fcmpg
    //   470: ifgt -> 494
    //   473: aload_0
    //   474: getfield b : I
    //   477: iconst_3
    //   478: if_icmpeq -> 489
    //   481: aload_0
    //   482: getfield b : I
    //   485: iconst_5
    //   486: if_icmpne -> 494
    //   489: aload_0
    //   490: iconst_0
    //   491: invokespecial a : (I)V
    //   494: aload_0
    //   495: getfield f : F
    //   498: fneg
    //   499: aload_0
    //   500: getfield h : F
    //   503: fcmpl
    //   504: iflt -> 519
    //   507: aload_0
    //   508: getfield b : I
    //   511: ifne -> 519
    //   514: aload_0
    //   515: iconst_3
    //   516: invokespecial a : (I)V
    //   519: aload_0
    //   520: getfield pullDownY : F
    //   523: aload_0
    //   524: getfield f : F
    //   527: invokestatic abs : (F)F
    //   530: fadd
    //   531: ldc 8.0
    //   533: fcmpl
    //   534: ifle -> 677
    //   537: aload_1
    //   538: iconst_3
    //   539: invokevirtual setAction : (I)V
    //   542: goto -> 677
    //   545: aload_0
    //   546: getfield pullDownY : F
    //   549: aload_0
    //   550: getfield g : F
    //   553: fcmpl
    //   554: ifgt -> 570
    //   557: aload_0
    //   558: getfield f : F
    //   561: fneg
    //   562: aload_0
    //   563: getfield h : F
    //   566: fcmpl
    //   567: ifle -> 575
    //   570: aload_0
    //   571: iconst_0
    //   572: putfield k : Z
    //   575: aload_0
    //   576: getfield b : I
    //   579: iconst_1
    //   580: if_icmpne -> 608
    //   583: aload_0
    //   584: iconst_2
    //   585: invokespecial a : (I)V
    //   588: aload_0
    //   589: getfield c : Landroid/widget/PullingLayout$OnRefreshListener;
    //   592: ifnull -> 638
    //   595: aload_0
    //   596: getfield c : Landroid/widget/PullingLayout$OnRefreshListener;
    //   599: aload_0
    //   600: invokeinterface onRefresh : (Landroid/widget/PullingLayout;)V
    //   605: goto -> 638
    //   608: aload_0
    //   609: getfield b : I
    //   612: iconst_3
    //   613: if_icmpne -> 638
    //   616: aload_0
    //   617: iconst_4
    //   618: invokespecial a : (I)V
    //   621: aload_0
    //   622: getfield I : Landroid/widget/PullingLayout$OnLoadMoreListener;
    //   625: ifnull -> 638
    //   628: aload_0
    //   629: getfield I : Landroid/widget/PullingLayout$OnLoadMoreListener;
    //   632: aload_0
    //   633: invokeinterface onLoadMore : (Landroid/widget/PullingLayout;)V
    //   638: aload_0
    //   639: invokespecial a : ()V
    //   642: goto -> 677
    //   645: aload_0
    //   646: aload_1
    //   647: invokevirtual getY : ()F
    //   650: putfield d : F
    //   653: aload_0
    //   654: aload_0
    //   655: getfield d : F
    //   658: putfield e : F
    //   661: aload_0
    //   662: getfield i : Landroid/widget/PullingLayout$MyTimer;
    //   665: invokevirtual cancel : ()V
    //   668: aload_0
    //   669: iconst_0
    //   670: putfield B : I
    //   673: aload_0
    //   674: invokespecial b : ()V
    //   677: aload_0
    //   678: aload_1
    //   679: invokespecial dispatchTouchEvent : (Landroid/view/MotionEvent;)Z
    //   682: pop
    //   683: iconst_1
    //   684: ireturn }
  
  public String getLoadFail() { return this.T; }
  
  public String getLoadNothing() { return this.S; }
  
  public String getLoadSucceed() { return this.R; }
  
  public String getLoading() { return this.ac; }
  
  public String getPulldownToRefresh() { return this.ab; }
  
  public String getPullupToLoad() { return this.U; }
  
  public String getRefreshFail() { return this.Q; }
  
  public String getRefreshNothing() { return this.P; }
  
  public String getRefreshSucceed() { return this.O; }
  
  public String getRefreshing() { return this.W; }
  
  public String getReleaseToLoad() { return this.aa; }
  
  public String getReleaseToRefresh() { return this.V; }
  
  public void loadmoreFinish(int paramInt) {
    ImageView imageView;
    SucceedDrawable succeedDrawable;
    if (this.b != 4)
      return; 
    this.v.clearAnimation();
    this.v.setVisibility(8);
    if (paramInt != 0) {
      if (paramInt != 2) {
        this.w.setVisibility(0);
        this.x.setText(this.T);
        imageView = this.w;
        succeedDrawable = new FailDrawable(this);
      } else {
        this.w.setVisibility(0);
        this.x.setText(this.S);
        imageView = this.w;
        succeedDrawable = new FailDrawable(this);
      } 
    } else {
      this.w.setVisibility(0);
      this.x.setText(this.R);
      imageView = this.w;
      succeedDrawable = new SucceedDrawable(this);
    } 
    imageView.setBackgroundDrawable(succeedDrawable);
    if (this.f < 0.0F) {
      (new Handler(this) {
          public void handleMessage(Message param1Message) {
            PullingLayout.a(this.a, 5);
            PullingLayout.i(this.a);
          }
        }).sendEmptyMessageDelayed(0, 1000L);
      return;
    } 
    a(5);
    a();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    if (!this.j) {
      this.j = true;
      this.g = this.o.getChildAt(0).getMeasuredHeight();
      this.h = this.t.getChildAt(0).getMeasuredHeight();
      this.x.setTextColor(this.y);
      this.s.setTextColor(this.y);
    } 
    this.o.layout(0, (int)(this.pullDownY + this.f) - this.o.getMeasuredHeight(), this.o.getMeasuredWidth(), (int)(this.pullDownY + this.f));
    this.z.layout(0, (int)(this.pullDownY + this.f), this.z.getMeasuredWidth(), (int)(this.pullDownY + this.f) + this.z.getMeasuredHeight());
    this.t.layout(0, (int)(this.pullDownY + this.f) + this.z.getMeasuredHeight(), this.t.getMeasuredWidth(), (int)(this.pullDownY + this.f) + this.z.getMeasuredHeight() + this.t.getMeasuredHeight());
  }
  
  public void refreshFinish(int paramInt) {
    ImageView imageView;
    SucceedDrawable succeedDrawable;
    if (this.b != 2)
      return; 
    this.q.clearAnimation();
    this.q.setVisibility(8);
    if (paramInt != 0) {
      if (paramInt != 2) {
        this.r.setVisibility(0);
        this.s.setText(this.Q);
        imageView = this.r;
        succeedDrawable = new FailDrawable(this);
      } else {
        this.r.setVisibility(0);
        this.s.setText(this.P);
        imageView = this.r;
        succeedDrawable = new FailDrawable(this);
      } 
    } else {
      this.r.setVisibility(0);
      this.s.setText(this.O);
      imageView = this.r;
      succeedDrawable = new SucceedDrawable(this);
    } 
    imageView.setBackgroundDrawable(succeedDrawable);
    if (this.pullDownY > 0.0F) {
      (new Handler(this) {
          public void handleMessage(Message param1Message) {
            PullingLayout.a(this.a, 5);
            PullingLayout.i(this.a);
          }
        }).sendEmptyMessageDelayed(0, 1000L);
      return;
    } 
    a(5);
    a();
  }
  
  public void setLoadFail(String paramString) { this.T = paramString; }
  
  public void setLoadNothing(String paramString) { this.S = paramString; }
  
  public void setLoadSucceed(String paramString) { this.R = paramString; }
  
  public void setLoading(String paramString) { this.ac = paramString; }
  
  public void setOnLoadMoreListener(OnLoadMoreListener paramOnLoadMoreListener) { this.I = paramOnLoadMoreListener; }
  
  public void setOnPullDownListener(OnPullDownListener paramOnPullDownListener) { this.K = paramOnPullDownListener; }
  
  public void setOnPullUpListener(OnPullUpListener paramOnPullUpListener) { this.J = paramOnPullUpListener; }
  
  public void setOnRefreshListener(OnRefreshListener paramOnRefreshListener) { this.c = paramOnRefreshListener; }
  
  public void setPullDownEnabled(boolean paramBoolean) { this.G = paramBoolean; }
  
  public void setPullUpEnabled(boolean paramBoolean) { this.F = paramBoolean; }
  
  public void setPulldownToRefresh(String paramString) { this.ab = paramString; }
  
  public void setPullupToLoad(String paramString) { this.U = paramString; }
  
  public void setRefreshFail(String paramString) { this.Q = paramString; }
  
  public void setRefreshNothing(String paramString) { this.P = paramString; }
  
  public void setRefreshSucceed(String paramString) { this.O = paramString; }
  
  public void setRefreshing(String paramString) { this.W = paramString; }
  
  public void setReleaseToLoad(String paramString) { this.aa = paramString; }
  
  public void setReleaseToRefresh(String paramString) { this.V = paramString; }
  
  public void setStateColor(int paramInt) { this.y = paramInt; }
  
  private class AutoRefreshAndLoadTask extends AsyncTask<Integer, Float, String> {
    private AutoRefreshAndLoadTask(PullingLayout this$0) {}
    
    protected String a(Integer... param1VarArgs) {
      while (this.a.pullDownY < PullingLayout.d(this.a) * 1.0F) {
        pullingLayout = this.a;
        pullingLayout.pullDownY += this.a.MOVE_SPEED;
        publishProgress(new Float[] { Float.valueOf(this.a.pullDownY) });
        try {
          Thread.sleep(param1VarArgs[0].intValue());
        } catch (InterruptedException pullingLayout) {
          a.a(pullingLayout);
        } 
      } 
      return null;
    }
    
    protected void a(String param1String) {
      PullingLayout.a(this.a, 2);
      if (PullingLayout.j(this.a) != null)
        PullingLayout.j(this.a).onRefresh(this.a); 
      PullingLayout.i(this.a);
    }
    
    protected void a(Float... param1VarArgs) {
      if (this.a.pullDownY > PullingLayout.d(this.a))
        PullingLayout.a(this.a, 1); 
      this.a.requestLayout();
    }
  }
  
  private class FailDrawable extends LoadingDrawable {
    FailDrawable(PullingLayout this$0) {
      super(this$0);
      b();
    }
  }
  
  private class FailDrawable2 extends Drawable {
    private Paint b;
    
    public void draw(Canvas param1Canvas) {
      this.b.setColor(PullingLayout.m(this.a));
      Rect rect = getBounds();
      int i = (int)(Math.min(rect.right, rect.bottom) * 0.35D);
      param1Canvas.drawCircle((rect.right / 2), (rect.bottom / 2), i, this.b);
      param1Canvas.drawLine((rect.right / 2), rect.bottom * 0.25F, (rect.right / 2), rect.bottom * 0.65F, this.b);
      param1Canvas.drawLine((rect.right / 2), rect.bottom * 0.7F, (rect.right / 2), rect.bottom * 0.75F, this.b);
    }
    
    public int getOpacity() { return 0; }
    
    public void setAlpha(int param1Int) { this.b.setAlpha(param1Int); }
    
    public void setColorFilter(ColorFilter param1ColorFilter) { this.b.setColorFilter(param1ColorFilter); }
  }
  
  public class FootView extends RelativeLayout {
    private ImageView b;
    
    private TextView c;
    
    private ImageView d;
    
    private ImageView e;
    
    public FootView(PullingLayout this$0, Context param1Context) {
      super(param1Context);
      a(param1Context);
    }
    
    public FootView(PullingLayout this$0, Context param1Context, AttributeSet param1AttributeSet) {
      super(param1Context, param1AttributeSet);
      a(param1Context);
    }
    
    public FootView(PullingLayout this$0, Context param1Context, AttributeSet param1AttributeSet, int param1Int) {
      super(param1Context, param1AttributeSet, param1Int);
      a(param1Context);
    }
    
    private void a(Context param1Context) {
      int i = PullingLayout.b(this.a, 30.0F);
      RelativeLayout relativeLayout2 = new RelativeLayout(param1Context);
      relativeLayout2.setPadding(0, PullingLayout.b(this.a, 20.0F), 0, PullingLayout.b(this.a, 20.0F));
      RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
      layoutParams2.addRule(10);
      addView(relativeLayout2, layoutParams2);
      RelativeLayout relativeLayout1 = new RelativeLayout(param1Context);
      RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
      layoutParams4.addRule(13);
      relativeLayout2.addView(relativeLayout1, layoutParams4);
      this.e = new ImageView(param1Context);
      this.e.setBackgroundDrawable(new PullingLayout.PullUpDrawable(this.a));
      RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i, i);
      layoutParams3.setMargins(PullingLayout.b(this.a, 60.0F), 0, 0, 0);
      layoutParams3.addRule(15);
      relativeLayout1.addView(this.e, layoutParams3);
      this.b = new ImageView(param1Context);
      this.b.setVisibility(8);
      this.b.setBackgroundDrawable(new PullingLayout.LoadingDrawable(this.a));
      layoutParams3 = new RelativeLayout.LayoutParams(i, i);
      layoutParams3.setMargins(PullingLayout.b(this.a, 60.0F), 0, 0, 0);
      layoutParams3.addRule(15);
      relativeLayout1.addView(this.b, layoutParams3);
      this.c = new TextView(param1Context);
      this.c.setText(PullingLayout.l(this.a));
      this.c.setTextSize(16.0F);
      layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
      layoutParams3.addRule(13);
      relativeLayout1.addView(this.c, layoutParams3);
      this.d = new ImageView(param1Context);
      this.d.setVisibility(8);
      RelativeLayout.LayoutParams layoutParams1 = new RelativeLayout.LayoutParams(i, i);
      layoutParams1.setMargins(PullingLayout.b(this.a, 60.0F), 0, 0, 0);
      layoutParams1.addRule(15);
      relativeLayout1.addView(this.d, layoutParams1);
    }
    
    public ImageView getLoadingView() { return this.b; }
    
    public ImageView getPullView() { return this.e; }
    
    public TextView getStateText() { return this.c; }
    
    public ImageView getStateView() { return this.d; }
  }
  
  public class HeadView extends RelativeLayout {
    private ImageView b;
    
    private TextView c;
    
    private ImageView d;
    
    private ImageView e;
    
    public HeadView(PullingLayout this$0, Context param1Context) {
      super(param1Context);
      a(param1Context);
    }
    
    public HeadView(PullingLayout this$0, Context param1Context, AttributeSet param1AttributeSet) {
      super(param1Context, param1AttributeSet);
      a(param1Context);
    }
    
    public HeadView(PullingLayout this$0, Context param1Context, AttributeSet param1AttributeSet, int param1Int) {
      super(param1Context, param1AttributeSet, param1Int);
      a(param1Context);
    }
    
    private void a(Context param1Context) {
      int i = PullingLayout.b(this.a, 30.0F);
      RelativeLayout relativeLayout2 = new RelativeLayout(param1Context);
      relativeLayout2.setPadding(0, PullingLayout.b(this.a, 20.0F), 0, PullingLayout.b(this.a, 20.0F));
      RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
      layoutParams2.addRule(12);
      addView(relativeLayout2, layoutParams2);
      RelativeLayout relativeLayout1 = new RelativeLayout(param1Context);
      RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
      layoutParams4.addRule(13);
      relativeLayout2.addView(relativeLayout1, layoutParams4);
      this.e = new ImageView(param1Context);
      this.e.setBackgroundDrawable(new PullingLayout.PullDownDrawable(this.a));
      RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i, i);
      layoutParams3.setMargins(PullingLayout.b(this.a, 60.0F), 0, 0, 0);
      layoutParams3.addRule(15);
      relativeLayout1.addView(this.e, layoutParams3);
      this.b = new ImageView(param1Context);
      this.b.setVisibility(8);
      this.b.setBackgroundDrawable(new PullingLayout.LoadingDrawable(this.a));
      layoutParams3 = new RelativeLayout.LayoutParams(i, i);
      layoutParams3.setMargins(PullingLayout.b(this.a, 60.0F), 0, 0, 0);
      layoutParams3.addRule(15);
      relativeLayout1.addView(this.b, layoutParams3);
      this.c = new TextView(param1Context);
      this.c.setText(PullingLayout.k(this.a));
      this.c.setTextSize(16.0F);
      layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
      layoutParams3.addRule(13);
      relativeLayout1.addView(this.c, layoutParams3);
      this.d = new ImageView(param1Context);
      this.d.setVisibility(8);
      RelativeLayout.LayoutParams layoutParams1 = new RelativeLayout.LayoutParams(i, i);
      layoutParams1.setMargins(PullingLayout.b(this.a, 60.0F), 0, 0, 0);
      layoutParams1.addRule(15);
      relativeLayout1.addView(this.d, layoutParams1);
    }
    
    public ImageView getLoadingView() { return this.b; }
    
    public ImageView getPullView() { return this.e; }
    
    public TextView getStateText() { return this.c; }
    
    public ImageView getStateView() { return this.d; }
  }
  
  private class LoadingDrawable extends Drawable {
    private Paint a = new Paint();
    
    private int c;
    
    LoadingDrawable(PullingLayout this$0) {
      this.a.setStyle(Paint.Style.STROKE);
      this.a.setAntiAlias(true);
      this.a.setStrokeWidth(PullingLayout.b(this$0, 2.0F));
    }
    
    void a() { this.c = 1; }
    
    void b() { this.c = -1; }
    
    public void draw(Canvas param1Canvas) {
      this.a.setColor(PullingLayout.m(this.b));
      Rect rect = getBounds();
      float f2 = (int)Math.min(rect.right, rect.bottom);
      float f1 = 0.15F * f2;
      f2 *= 0.85F;
      RectF rectF = new RectF(f1, f1, f2, f2);
      if (PullingLayout.n(this.b) >= 360 && this.c == 0) {
        PullingLayout.c(this.b, 8);
        PullingLayout.b(this.b, -6);
      } else if (PullingLayout.n(this.b) <= 6) {
        PullingLayout.b(this.b, 6);
        PullingLayout.c(this.b, 2);
      } 
      if (PullingLayout.n(this.b) < 360 || this.c == 0) {
        PullingLayout pullingLayout;
        int j;
        int i;
        if (this.c == 0) {
          PullingLayout.d(this.b, PullingLayout.n(this.b) + PullingLayout.o(this.b));
          i = (pullingLayout = this.b).p(this.b);
          j = PullingLayout.q(this.b);
        } else {
          PullingLayout.d(this.b, PullingLayout.n(this.b) + PullingLayout.o(this.b) * 2);
          i = (pullingLayout = this.b).p(this.b);
          j = PullingLayout.q(this.b) * 2;
        } 
        PullingLayout.e(pullingLayout, i + j);
        PullingLayout.e(this.b, PullingLayout.p(this.b) % 360);
      } 
      param1Canvas.drawArc(rectF, PullingLayout.p(this.b), PullingLayout.n(this.b), false, this.a);
      if (PullingLayout.n(this.b) >= 360) {
        PullingLayout.b(this.b, -6);
        PullingLayout.c(this.b, 8);
        if (this.c == 1) {
          Path path = new Path();
          path.moveTo(rect.right * 0.3F, rect.bottom * 0.5F);
          path.lineTo(rect.right * 0.45F, rect.bottom * 0.7F);
          path.lineTo(rect.right * 0.75F, rect.bottom * 0.4F);
          param1Canvas.drawPath(path, this.a);
        } else if (this.c == -1) {
          param1Canvas.drawLine((rect.right / 2), rect.bottom * 0.25F, (rect.right / 2), rect.bottom * 0.65F, this.a);
          param1Canvas.drawLine((rect.right / 2), rect.bottom * 0.7F, (rect.right / 2), rect.bottom * 0.75F, this.a);
        } 
      } 
      invalidateSelf();
    }
    
    public int getOpacity() { return 0; }
    
    public void setAlpha(int param1Int) { this.a.setAlpha(param1Int); }
    
    public void setColorFilter(ColorFilter param1ColorFilter) { this.a.setColorFilter(param1ColorFilter); }
  }
  
  private class LoadingDrawable2 extends Drawable {
    private Paint b;
    
    private int c;
    
    private int d;
    
    private int e;
    
    private int f;
    
    public void draw(Canvas param1Canvas) {
      this.b.setColor(PullingLayout.m(this.a));
      Rect rect = getBounds();
      int i = (int)(Math.min(rect.right, rect.bottom) * 0.35D);
      float f1 = (i / 2);
      float f2 = i * 2.5F;
      RectF rectF = new RectF(f1, f1, f2, f2);
      if (this.c > 360) {
        this.f += this.e;
        this.e = 0 - this.e;
      } else if (this.c < 6) {
        this.e = 6;
        this.f = 2;
      } 
      this.c += this.e;
      this.d += this.f;
      param1Canvas.drawArc(rectF, (this.d % 360), this.c, false, this.b);
      invalidateSelf();
    }
    
    public int getOpacity() { return 0; }
    
    public void setAlpha(int param1Int) { this.b.setAlpha(param1Int); }
    
    public void setColorFilter(ColorFilter param1ColorFilter) { this.b.setColorFilter(param1ColorFilter); }
  }
  
  class MyTimer {
    private Handler b;
    
    private Timer c;
    
    private MyTask d;
    
    public MyTimer(PullingLayout this$0, Handler param1Handler) {
      this.b = param1Handler;
      this.c = new Timer();
    }
    
    public void cancel() {
      if (this.d != null) {
        this.d.cancel();
        this.d = null;
      } 
    }
    
    public void schedule(long param1Long) {
      if (this.d != null) {
        this.d.cancel();
        this.d = null;
      } 
      this.d = new MyTask(this, this.b);
      this.c.schedule(this.d, 0L, param1Long);
    }
    
    class MyTask extends TimerTask {
      private Handler b;
      
      public MyTask(PullingLayout.MyTimer this$0, Handler param2Handler) { this.b = param2Handler; }
      
      public void run() { this.b.obtainMessage().sendToTarget(); }
    }
  }
  
  class MyTask extends TimerTask {
    private Handler b;
    
    public MyTask(PullingLayout this$0, Handler param1Handler) { this.b = param1Handler; }
    
    public void run() { this.b.obtainMessage().sendToTarget(); }
  }
  
  public static interface OnLoadMoreListener {
    void onLoadMore(PullingLayout param1PullingLayout);
  }
  
  public static interface OnPullDownListener {
    boolean onPullDown(View param1View);
  }
  
  public static interface OnPullUpListener {
    boolean onPullUp(View param1View);
  }
  
  public static interface OnRefreshListener {
    void onRefresh(PullingLayout param1PullingLayout);
  }
  
  private class PullDownDrawable extends Drawable {
    private Paint b = new Paint();
    
    PullDownDrawable(PullingLayout this$0) {
      this.b.setStyle(Paint.Style.STROKE);
      this.b.setAntiAlias(true);
      this.b.setStrokeWidth(PullingLayout.b(this$0, 2.0F));
    }
    
    public void draw(Canvas param1Canvas) {
      this.b.setColor(PullingLayout.m(this.a));
      Rect rect = getBounds();
      int i = (int)(Math.min(rect.right, rect.bottom) * 0.35D);
      param1Canvas.drawCircle((rect.right / 2), (rect.bottom / 2), i, this.b);
      Path path = new Path();
      path.moveTo(rect.right * 0.5F, rect.bottom * 0.25F);
      path.lineTo(rect.right * 0.5F, rect.bottom * 0.75F);
      path.moveTo(rect.right * 0.25F, rect.bottom * 0.5F);
      path.lineTo(rect.right * 0.5F, rect.bottom * 0.75F);
      path.lineTo(rect.right * 0.75F, rect.bottom * 0.5F);
      param1Canvas.drawPath(path, this.b);
    }
    
    public int getOpacity() { return 0; }
    
    public void setAlpha(int param1Int) { this.b.setAlpha(param1Int); }
    
    public void setColorFilter(ColorFilter param1ColorFilter) { this.b.setColorFilter(param1ColorFilter); }
  }
  
  private class PullUpDrawable extends Drawable {
    private Paint b = new Paint();
    
    PullUpDrawable(PullingLayout this$0) {
      this.b.setStyle(Paint.Style.STROKE);
      this.b.setAntiAlias(true);
      this.b.setStrokeWidth(PullingLayout.b(this$0, 2.0F));
    }
    
    public void draw(Canvas param1Canvas) {
      this.b.setColor(PullingLayout.m(this.a));
      Rect rect = getBounds();
      int i = (int)(Math.min(rect.right, rect.bottom) * 0.35D);
      param1Canvas.drawCircle((rect.right / 2), (rect.bottom / 2), i, this.b);
      Path path = new Path();
      path.moveTo(rect.right * 0.5F, rect.bottom * 0.25F);
      path.lineTo(rect.right * 0.5F, rect.bottom * 0.75F);
      path.moveTo(rect.right * 0.25F, rect.bottom * 0.5F);
      path.lineTo(rect.right * 0.5F, rect.bottom * 0.25F);
      path.lineTo(rect.right * 0.75F, rect.bottom * 0.5F);
      param1Canvas.drawPath(path, this.b);
    }
    
    public int getOpacity() { return 0; }
    
    public void setAlpha(int param1Int) { this.b.setAlpha(param1Int); }
    
    public void setColorFilter(ColorFilter param1ColorFilter) { this.b.setColorFilter(param1ColorFilter); }
  }
  
  private class SucceedDrawable extends LoadingDrawable {
    SucceedDrawable(PullingLayout this$0) {
      super(this$0);
      a();
    }
  }
  
  private class SucceedDrawable2 extends Drawable {
    private Paint b;
    
    public void draw(Canvas param1Canvas) {
      this.b.setColor(PullingLayout.m(this.a));
      Rect rect = getBounds();
      int i = (int)(Math.min(rect.right, rect.bottom) * 0.35D);
      param1Canvas.drawCircle((rect.right / 2), (rect.bottom / 2), i, this.b);
      Path path = new Path();
      path.moveTo(rect.right * 0.3F, rect.bottom * 0.5F);
      path.lineTo(rect.right * 0.45F, rect.bottom * 0.7F);
      path.lineTo(rect.right * 0.75F, rect.bottom * 0.4F);
      param1Canvas.drawPath(path, this.b);
    }
    
    public int getOpacity() { return 0; }
    
    public void setAlpha(int param1Int) { this.b.setAlpha(param1Int); }
    
    public void setColorFilter(ColorFilter param1ColorFilter) { this.b.setColorFilter(param1ColorFilter); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\PullingLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
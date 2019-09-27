package android.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

public class ToolBar extends LinearLayout {
  private TextView a;
  
  private TextView b;
  
  private ImageView c;
  
  private ImageView d;
  
  private ImageView e;
  
  private LinearLayout f;
  
  private PopupMenu g;
  
  private OnLogoClickListener h;
  
  private OnNaviClickListener i;
  
  private OnMenuItemClickListener j;
  
  private DisplayMetrics k;
  
  private int l;
  
  public ToolBar(Context paramContext) {
    super(paramContext);
    a(paramContext);
  }
  
  private int a(float paramFloat) { return (int)TypedValue.applyDimension(1, paramFloat, this.k); }
  
  private void a(Context paramContext) {
    this.k = paramContext.getResources().getDisplayMetrics();
    this.l = a(48.0F);
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.l, this.l);
    setMinimumHeight(this.l);
    this.c = new ImageView(paramContext);
    this.c.setScaleType(ImageView.ScaleType.FIT_CENTER);
    this.c.setVisibility(8);
    super.addView(this.c, layoutParams);
    this.d = new ImageView(paramContext);
    this.d.setScaleType(ImageView.ScaleType.FIT_CENTER);
    this.d.setImageResource(2130771968);
    this.d.setVisibility(8);
    super.addView(this.d, layoutParams);
    LinearLayout linearLayout = new LinearLayout(paramContext);
    int m = a(1.0F);
    linearLayout.setPadding(m * 4, m, m, m);
    linearLayout.setOrientation(1);
    linearLayout.setGravity(17);
    super.addView(linearLayout, new LinearLayout.LayoutParams(-1, this.l, 1.0F));
    this.a = new TextView(paramContext);
    this.a.setTextSize(1, 20.0F);
    this.a.setSingleLine(true);
    this.a.setTypeface(Typeface.DEFAULT_BOLD);
    linearLayout.addView(this.a, new LinearLayout.LayoutParams(-1, a(26.0F)));
    this.b = new TextView(paramContext);
    this.b.setTextSize(1, 14.0F);
    this.b.setSingleLine(true);
    this.b.setVisibility(8);
    linearLayout.addView(this.b, new LinearLayout.LayoutParams(-1, a(20.0F)));
    this.f = new LinearLayout(paramContext);
    super.addView(this.f, new LinearLayout.LayoutParams(-2, this.l));
    this.e = new ImageView(paramContext);
    this.e.setScaleType(ImageView.ScaleType.FIT_CENTER);
    this.e.setVisibility(8);
    super.addView(this.e, layoutParams);
    new RippleHelper(this.c);
    new RippleHelper(this.e);
    Paint paint = new Paint();
    paint.setColor(-7829368);
    Bitmap bitmap = Bitmap.createBitmap(this.l, this.l, Bitmap.Config.ARGB_4444);
    Canvas canvas = new Canvas(bitmap);
    double d1 = this.l;
    double d2 = d1 / 4.0D;
    float f1 = (int)d2;
    double d3 = d1 / 32.0D;
    float f2 = (int)(10.0D * d3);
    float f3 = (int)(d2 * 3.0D);
    canvas.drawRect(f1, f2, f3, (int)(12.0D * d3), paint);
    canvas.drawRect(f1, (int)(15.0D * d3), f3, (int)(17.0D * d3), paint);
    canvas.drawRect(f1, (int)(20.0D * d3), f3, (int)(d3 * 22.0D), paint);
    this.c.setImageBitmap(bitmap);
    bitmap = Bitmap.createBitmap(this.l, this.l, Bitmap.Config.ARGB_4444);
    canvas = new Canvas(bitmap);
    f1 = (int)(d1 / 2.0D);
    d2 = d1 / 3.0D;
    f2 = (int)d2;
    f3 = (int)(d1 / 16.0D);
    canvas.drawCircle(f1, f2, f3, paint);
    canvas.drawCircle(f1, f1, f3, paint);
    canvas.drawCircle(f1, (int)(d2 * 2.0D), f3, paint);
    this.e.setImageBitmap(bitmap);
    this.c.setOnClickListener(new View.OnClickListener(this) {
          public void onClick(View param1View) {
            if (ToolBar.a(this.a) != null)
              ToolBar.a(this.a).onNaviClick(param1View); 
          }
        });
    this.d.setOnClickListener(new View.OnClickListener(this) {
          public void onClick(View param1View) {
            if (ToolBar.b(this.a) != null)
              ToolBar.b(this.a).onLogoClick(param1View); 
          }
        });
    this.e.setOnClickListener(new View.OnClickListener(this) {
          public void onClick(View param1View) {
            if (ToolBar.c(this.a) != null)
              ToolBar.c(this.a).show(); 
          }
        });
    this.g = new PopupMenu(getContext(), this.e);
    this.g.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener(this) {
          public boolean onMenuItemClick(MenuItem param1MenuItem) { return (ToolBar.d(this.a) != null) ? ToolBar.d(this.a).onMenuItemClick(param1MenuItem) : 0; }
        });
  }
  
  public void addView(View paramView) { this.f.addView(paramView); }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams) { this.f.addView(paramView, paramLayoutParams); }
  
  public Menu getMenu() {
    setMenuEnabled(true);
    return this.g.getMenu();
  }
  
  public void setLogo(Drawable paramDrawable) { this.d.setImageDrawable(paramDrawable); }
  
  public void setLogoEnabled(boolean paramBoolean) {
    byte b1;
    ImageView imageView = this.d;
    if (paramBoolean) {
      b1 = 0;
    } else {
      b1 = 8;
    } 
    imageView.setVisibility(b1);
  }
  
  public void setMenuEnabled(boolean paramBoolean) {
    byte b1;
    ImageView imageView = this.e;
    if (paramBoolean) {
      b1 = 0;
    } else {
      b1 = 8;
    } 
    imageView.setVisibility(b1);
  }
  
  public void setNaviEnabled(boolean paramBoolean) {
    byte b1;
    ImageView imageView = this.c;
    if (paramBoolean) {
      b1 = 0;
    } else {
      b1 = 8;
    } 
    imageView.setVisibility(b1);
  }
  
  public void setNaviIcon(Drawable paramDrawable) { this.c.setImageDrawable(paramDrawable); }
  
  public void setOnLogoClickListener(OnLogoClickListener paramOnLogoClickListener) { this.h = paramOnLogoClickListener; }
  
  public void setOnMenuItemClickListener(OnMenuItemClickListener paramOnMenuItemClickListener) { this.j = paramOnMenuItemClickListener; }
  
  public void setOnNaviClickListener(OnNaviClickListener paramOnNaviClickListener) { this.i = paramOnNaviClickListener; }
  
  public void setSubtitle(CharSequence paramCharSequence) {
    TextView textView;
    byte b1;
    if (paramCharSequence == null || paramCharSequence.length() == 0) {
      textView = this.b;
      b1 = 8;
    } else {
      textView = this.b;
      b1 = 0;
    } 
    textView.setVisibility(b1);
    this.b.setText(paramCharSequence);
  }
  
  public void setSubtitleColor(int paramInt) { this.b.setTextColor(paramInt); }
  
  public void setTitle(CharSequence paramCharSequence) { this.a.setText(paramCharSequence); }
  
  public void setTitleColor(int paramInt) { this.a.setTextColor(paramInt); }
  
  public static interface OnLogoClickListener {
    void onLogoClick(View param1View);
  }
  
  public static interface OnMenuItemClickListener {
    boolean onMenuItemClick(MenuItem param1MenuItem);
  }
  
  public static interface OnNaviClickListener {
    void onNaviClick(View param1View);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\ToolBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
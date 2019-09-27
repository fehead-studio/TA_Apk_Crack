package android.widget;

import android.view.View;

public class PageAdapter extends BasePageAdapter {
  private final Adapter a;
  
  private View[] b;
  
  public PageAdapter(Adapter paramAdapter) {
    this.a = paramAdapter;
    this.b = new View[paramAdapter.getViewTypeCount()];
  }
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) {
    paramObject = (View)paramObject;
    ((PageView)paramView).removeView(paramObject);
    this.b[this.a.getItemViewType(paramInt)] = paramObject;
  }
  
  public int getCount() { return this.a.getCount(); }
  
  public Object instantiateItem(View paramView, int paramInt) {
    int i = this.a.getItemViewType(paramInt);
    if (this.b[i] != null)
      ((PageView)paramView).removeView(this.b[i]); 
    Adapter adapter = this.a;
    View view2 = this.b[i];
    PageView pageView = (PageView)paramView;
    View view1 = adapter.getView(paramInt, view2, pageView);
    pageView.addView(view1, 0);
    this.b[i] = null;
    return view1;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) { return (paramView == paramObject); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\PageAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
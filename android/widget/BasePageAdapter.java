package android.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class BasePageAdapter {
  public static final int POSITION_NONE = -2;
  
  public static final int POSITION_UNCHANGED = -1;
  
  private DataSetObservable a = new DataSetObservable();
  
  public void destroyItem(View paramView, int paramInt, Object paramObject) { throw new UnsupportedOperationException("Required method destroyItem was not overridden"); }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) { destroyItem(paramViewGroup, paramInt, paramObject); }
  
  public void finishUpdate(View paramView) {}
  
  public void finishUpdate(ViewGroup paramViewGroup) { finishUpdate(paramViewGroup); }
  
  public abstract int getCount();
  
  public int getItemPosition(Object paramObject) { return -1; }
  
  public CharSequence getPageTitle(int paramInt) { return null; }
  
  public float getPageWidth(int paramInt) { return 1.0F; }
  
  public Object instantiateItem(View paramView, int paramInt) { throw new UnsupportedOperationException("Required method instantiateItem was not overridden"); }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt) { return instantiateItem(paramViewGroup, paramInt); }
  
  public abstract boolean isViewFromObject(View paramView, Object paramObject);
  
  public void notifyDataSetChanged() { this.a.notifyChanged(); }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) { this.a.registerObserver(paramDataSetObserver); }
  
  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public Parcelable saveState() { return null; }
  
  public void setPrimaryItem(View paramView, int paramInt, Object paramObject) {}
  
  public void setPrimaryItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) { setPrimaryItem(paramViewGroup, paramInt, paramObject); }
  
  public void startUpdate(View paramView) {}
  
  public void startUpdate(ViewGroup paramViewGroup) { startUpdate(paramViewGroup); }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver) { this.a.unregisterObserver(paramDataSetObserver); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\BasePageAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
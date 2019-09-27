package android.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ArrayExpandableListAdapter extends BaseExpandableListAdapter {
  private Context a;
  
  private List<List<String>> b;
  
  private List<String> c;
  
  private int d;
  
  private int e;
  
  private LayoutInflater f;
  
  private boolean g = true;
  
  public ArrayExpandableListAdapter(Context paramContext) { this(paramContext, new ArrayList(), 17367046, new ArrayList(), 17367046); }
  
  public ArrayExpandableListAdapter(Context paramContext, List<String> paramList1, int paramInt1, List<List<String>> paramList2, int paramInt2) {
    this.a = paramContext;
    this.c = paramList1;
    this.d = paramInt1;
    this.b = paramList2;
    this.e = paramInt2;
    this.f = (LayoutInflater)paramContext.getSystemService("layout_inflater");
  }
  
  public ArrayExpandableListAdapter(Context paramContext, List<String> paramList1, List<List<String>> paramList2) { this(paramContext, paramList1, 17367046, paramList2, 17367046); }
  
  public void add(String paramString, List<String> paramList) {
    this.c.add(paramString);
    this.b.add(paramList);
    if (this.g)
      notifyDataSetChanged(); 
  }
  
  public void add(String paramString, String[] paramArrayOfString) {
    this.c.add(paramString);
    this.b.add(Arrays.asList(paramArrayOfString));
    if (this.g)
      notifyDataSetChanged(); 
  }
  
  public Object getChild(int paramInt1, int paramInt2) { return ((List)this.b.get(paramInt1)).get(paramInt2); }
  
  public long getChildId(int paramInt1, int paramInt2) { return 0L; }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    View view = paramView;
    if (paramView == null)
      view = this.f.inflate(this.e, paramViewGroup, false); 
    ((TextView)view).setText((CharSequence)((List)this.b.get(paramInt1)).get(paramInt2));
    return view;
  }
  
  public int getChildrenCount(int paramInt) { return ((List)this.b.get(paramInt)).size(); }
  
  public Object getGroup(int paramInt) { return this.c.get(paramInt); }
  
  public int getGroupCount() { return this.c.size(); }
  
  public long getGroupId(int paramInt) { return paramInt; }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) {
    View view = paramView;
    if (paramView == null)
      view = this.f.inflate(this.d, paramViewGroup, false); 
    ((TextView)view).setText((CharSequence)this.c.get(paramInt));
    return view;
  }
  
  public boolean hasStableIds() { return false; }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) { return true; }
  
  public void setNotifyOnChange(boolean paramBoolean) { this.g = paramBoolean; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\ArrayExpandableListAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
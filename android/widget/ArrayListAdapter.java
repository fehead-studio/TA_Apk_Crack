package android.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.a.a.a.a.a.a.a;
import com.luajava.LuaException;
import com.luajava.LuaFunction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ArrayListAdapter<T> extends BaseAdapter implements Filterable {
  private ArrayList<T> a;
  
  private final Object b = new Object();
  
  private int c;
  
  private int d;
  
  private int e = 0;
  
  private boolean f = true;
  
  private Context g;
  
  private ArrayList<T> h;
  
  private ArrayFilter i;
  
  private LayoutInflater j;
  
  private LuaFunction k;
  
  public ArrayListAdapter(Context paramContext) { a(paramContext, 17367043, 0, new ArrayList()); }
  
  public ArrayListAdapter(Context paramContext, int paramInt) { a(paramContext, paramInt, 0, new ArrayList()); }
  
  public ArrayListAdapter(Context paramContext, int paramInt1, int paramInt2) { a(paramContext, paramInt1, paramInt2, new ArrayList()); }
  
  public ArrayListAdapter(Context paramContext, int paramInt1, int paramInt2, List<T> paramList) { a(paramContext, paramInt1, paramInt2, paramList); }
  
  public ArrayListAdapter(Context paramContext, int paramInt1, int paramInt2, T[] paramArrayOfT) { a(paramContext, paramInt1, paramInt2, Arrays.asList(paramArrayOfT)); }
  
  public ArrayListAdapter(Context paramContext, int paramInt, List<T> paramList) { a(paramContext, paramInt, 0, paramList); }
  
  public ArrayListAdapter(Context paramContext, int paramInt, T[] paramArrayOfT) { a(paramContext, paramInt, 0, Arrays.asList(paramArrayOfT)); }
  
  public ArrayListAdapter(Context paramContext, List<T> paramList) { a(paramContext, 17367043, 0, paramList); }
  
  public ArrayListAdapter(Context paramContext, T[] paramArrayOfT) { a(paramContext, 17367043, 0, Arrays.asList(paramArrayOfT)); }
  
  private View a(int paramInt1, View paramView, ViewGroup paramViewGroup, int paramInt2) {
    View view = paramView;
    if (paramView == null)
      view = this.j.inflate(paramInt2, paramViewGroup, false); 
    try {
      TextView textView;
      if (this.e == 0) {
        textView = (TextView)view;
      } else {
        textView = (TextView)view.findViewById(this.e);
      } 
      Object object = getItem(paramInt1);
      if (object instanceof CharSequence) {
        object = (CharSequence)object;
        textView.setText(object);
        return view;
      } 
      object = object.toString();
      textView.setText(object);
      return view;
    } catch (ClassCastException paramView) {
      Log.e("ArrayAdapter", "You must supply a resource ID for a TextView");
      throw new IllegalStateException("ArrayAdapter requires the resource ID to be a TextView", paramView);
    } 
  }
  
  private void a(Context paramContext, int paramInt1, int paramInt2, List<T> paramList) {
    this.g = paramContext;
    this.j = (LayoutInflater)paramContext.getSystemService("layout_inflater");
    this.d = paramInt1;
    this.c = paramInt1;
    this.a = new ArrayList(paramList);
    this.e = paramInt2;
  }
  
  public static ArrayListAdapter<CharSequence> createFromResource(Context paramContext, int paramInt1, int paramInt2) { return new ArrayListAdapter(paramContext, paramInt2, paramContext.getResources().getTextArray(paramInt1)); }
  
  public void add(T paramT) {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      arrayList.add(paramT);
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  public void addAll(Collection<? extends T> paramCollection) {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      arrayList.addAll(paramCollection);
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  public void addAll(T... paramVarArgs) {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      Collections.addAll(arrayList, paramVarArgs);
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  public void clear() {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      arrayList.clear();
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  public void filter(CharSequence paramCharSequence) { getFilter().filter(paramCharSequence); }
  
  public Context getContext() { return this.g; }
  
  public int getCount() { return this.a.size(); }
  
  public Object getData() { return this.a; }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup) { return a(paramInt, paramView, paramViewGroup, this.d); }
  
  public Filter getFilter() {
    if (this.i == null)
      this.i = new ArrayFilter(this, null); 
    return this.i;
  }
  
  public T getItem(int paramInt) { return (T)this.a.get(paramInt); }
  
  public long getItemId(int paramInt) { return (paramInt + 1); }
  
  public int getPosition(T paramT) { return this.a.indexOf(paramT); }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) { return a(paramInt, paramView, paramViewGroup, this.c); }
  
  public void insert(int paramInt, T paramT) {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      arrayList.add(paramInt, paramT);
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  public void notifyDataSetChanged() {
    super.notifyDataSetChanged();
    this.f = true;
  }
  
  public void remove(int paramInt) {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      arrayList.remove(paramInt);
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  public void remove(T paramT) {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      arrayList.remove(paramT);
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  public void setDropDownViewResource(int paramInt) { this.d = paramInt; }
  
  public void setFilter(LuaFunction paramLuaFunction) { this.k = paramLuaFunction; }
  
  public void setNotifyOnChange(boolean paramBoolean) { this.f = paramBoolean; }
  
  public void sort(Comparator<? super T> paramComparator) {
    synchronized (this.b) {
      ArrayList arrayList;
      if (this.h != null) {
        arrayList = this.h;
      } else {
        arrayList = this.a;
      } 
      Collections.sort(arrayList, paramComparator);
      if (this.f)
        notifyDataSetChanged(); 
      return;
    } 
  }
  
  private class ArrayFilter extends Filter {
    private ArrayFilter(ArrayListAdapter this$0) {}
    
    protected Filter.FilterResults performFiltering(CharSequence param1CharSequence) {
      Filter.FilterResults filterResults = new Filter.FilterResults();
      if (ArrayListAdapter.a(this.a) == null) {
        synchronized (ArrayListAdapter.b(this.a)) {
          ArrayListAdapter.a(this.a, new ArrayList(ArrayListAdapter.c(this.a)));
        } 
      } else if (TextUtils.isEmpty(param1CharSequence)) {
        filterResults.values = new ArrayList(ArrayListAdapter.a(this.a));
        filterResults.count = ArrayListAdapter.a(this.a).size();
        ArrayListAdapter.a(this.a, null);
        return filterResults;
      } 
      LuaFunction luaFunction = ArrayListAdapter.d(this.a);
      int i = 0;
      if (luaFunction != null) {
        ArrayList arrayList = new ArrayList();
        try {
          ArrayListAdapter.d(this.a).call(new Object[] { new ArrayList(ArrayListAdapter.a(this.a)), arrayList, param1CharSequence });
        } catch (LuaException param1CharSequence) {
          a.a(param1CharSequence);
        } 
        filterResults.values = arrayList;
        filterResults.count = arrayList.size();
        return filterResults;
      } 
      if (param1CharSequence == null || param1CharSequence.length() == 0)
        synchronized (ArrayListAdapter.b(this.a)) {
          ArrayList arrayList = new ArrayList(ArrayListAdapter.a(this.a));
          filterResults.values = arrayList;
          i = arrayList.size();
          filterResults.count = i;
          return filterResults;
        }  
      param1CharSequence = param1CharSequence.toString().toLowerCase();
      synchronized (ArrayListAdapter.b(this.a)) {
        ArrayList arrayList = new ArrayList(ArrayListAdapter.a(this.a));
        int j = arrayList.size();
        null = new ArrayList();
        while (i < j) {
          Object object = arrayList.get(i);
          if (object.toString().toLowerCase().contains(param1CharSequence))
            null.add(object); 
          i++;
        } 
        filterResults.values = null;
        i = null.size();
      } 
      filterResults.count = i;
      return filterResults;
    }
    
    protected void publishResults(CharSequence param1CharSequence, Filter.FilterResults param1FilterResults) {
      ArrayListAdapter.b(this.a, (ArrayList)param1FilterResults.values);
      if (param1FilterResults.count > 0) {
        this.a.notifyDataSetChanged();
        return;
      } 
      this.a.notifyDataSetInvalidated();
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\android\widget\ArrayListAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;

class bf {
  private static final bf b = new bf();
  
  private HashSet<String> a = new HashSet();
  
  private boolean c;
  
  private boolean d;
  
  private View.AccessibilityDelegate a(View paramView) {
    try {
      return (View.AccessibilityDelegate)paramView.getClass().getMethod("getAccessibilityDelegate", new Class[0]).invoke(paramView, new Object[0]);
    } catch (NoSuchMethodException|IllegalAccessException paramView) {
    
    } catch (InvocationTargetException paramView) {
      cz.b("getAccessibilityDelegate threw an exception when called.", paramView);
    } 
    return null;
  }
  
  public static bf a() { return b; }
  
  private String a(View paramView, Activity paramActivity) {
    String str3 = "";
    if (paramView == null)
      return ""; 
    try {
      ViewGroup viewGroup = (ViewGroup)((ViewGroup)paramActivity.getWindow().getDecorView().findViewById(16908290)).getChildAt(0);
    } catch (Exception paramActivity) {
      paramActivity = null;
    } 
    ArrayList arrayList = new ArrayList();
    while (true) {
      arrayList.add(paramView.getClass().getName());
      if (paramView != null && paramView != paramActivity) {
        paramView = (View)paramView.getParent();
        continue;
      } 
      break;
    } 
    int i = arrayList.size() - 1;
    String str1 = str3;
    while (i >= 0) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str1);
      stringBuilder.append((String)arrayList.get(i));
      stringBuilder.append("/");
      str1 = stringBuilder.toString();
      i--;
    } 
    String str2 = str1;
    if (str1.endsWith("/"))
      str2 = str1.substring(0, str1.length() - 1); 
    return str2;
  }
  
  private void a(Activity paramActivity) {
    Window window = paramActivity.getWindow();
    if (window == null)
      return; 
    view = window.getDecorView();
    if (view == null)
      return; 
    try {
      ViewGroup viewGroup = (ViewGroup)((ViewGroup)view.findViewById(16908290)).getChildAt(0);
    } catch (Exception view) {
      view = null;
    } 
    if (view != null)
      a(paramActivity, view); 
  }
  
  private void a(Activity paramActivity, View paramView) {
    if (paramView instanceof Button) {
      String str = ((Button)paramView).getText().toString();
      if (TextUtils.isEmpty(str))
        return; 
      a(paramActivity, paramView, str);
    } 
  }
  
  private void a(Activity paramActivity, View paramView, String paramString) { paramView.setAccessibilityDelegate(new bh(this, paramActivity, paramView, paramString, a(paramView))); }
  
  private void a(Activity paramActivity, ViewGroup paramViewGroup) {
    for (int i = paramViewGroup.getChildCount() - 1; i >= 0; i--) {
      View view = paramViewGroup.getChildAt(i);
      if (view instanceof ViewGroup)
        a(paramActivity, (ViewGroup)view); 
      a(paramActivity, view);
    } 
  }
  
  private void a(Activity paramActivity, boolean paramBoolean) {
    if (paramActivity instanceof IIgnoreAutoTrace)
      return; 
    if (paramBoolean)
      bv.a().a(paramActivity); 
    if (paramBoolean) {
      ch.a().a(paramActivity, System.currentTimeMillis(), true);
      return;
    } 
    ch.a().a(paramActivity, System.currentTimeMillis(), true, null);
  }
  
  @TargetApi(14)
  private void a(Context paramContext, boolean paramBoolean) {
    if (this.d)
      return; 
    if (Build.VERSION.SDK_INT < 14) {
      if (paramBoolean)
        cz.a("module autotrace only support android os version bigger than 4.0"); 
      return;
    } 
    b(paramContext);
    this.d = true;
  }
  
  private void b(Activity paramActivity, View paramView, String paramString) {
    bv.a().a(paramActivity);
    String str1 = paramActivity.getClass().getName();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str1);
    stringBuilder.append("_");
    stringBuilder.append(paramView.hashCode());
    String str2 = stringBuilder.toString();
    synchronized (this.a) {
      if (this.a.contains(str2))
        return; 
      String str = a(paramView, paramActivity);
      int i = Config$EventViewType.BUTTON.getValue();
      bm.a().a(paramActivity.getApplicationContext(), paramString, "", 1, System.currentTimeMillis(), str, str1, i, true);
      return;
    } 
  }
  
  private void b(Context paramContext) {
    bg bg = new bg(this);
    try {
      ((Application)paramContext.getApplicationContext()).registerActivityLifecycleCallbacks(bg);
      return;
    } catch (Exception paramContext) {
      cz.a("registerActivityLifecycleCallbacks encounter exception");
      return;
    } 
  }
  
  public void a(Context paramContext) { a(paramContext, false); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
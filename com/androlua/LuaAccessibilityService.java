package com.androlua;

import android.accessibilityservice.AccessibilityService;
import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.hardware.display.VirtualDisplay;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.a.a.a.a.a.a.a;
import com.androlua.util.ClickRunnable;
import com.androlua.util.GlobalActionAutomator;
import com.luajava.LuaException;
import com.luajava.LuaFunction;
import com.luajava.LuaTable;
import com.nirenr.Point;
import com.nirenr.screencapture.ScreenCaptureListener;
import com.nirenr.screencapture.ScreenShot;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressLint({"NewApi"})
public class LuaAccessibilityService extends AccessibilityService {
  private static AccessibilityServiceCallbacks a;
  
  private static LuaAccessibilityService d;
  
  public static LuaFunction onAccessibilityEvent;
  
  private LuaApplication b;
  
  private Map c;
  
  private HashMap<String, ComponentName> e = new HashMap();
  
  private boolean f;
  
  private Handler g;
  
  private GlobalActionAutomator h;
  
  private ScreenShot i;
  
  private int j;
  
  private int k;
  
  private int l;
  
  private AccessibilityNodeInfo a(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo == null)
      return null; 
    if (isListView2(paramAccessibilityNodeInfo))
      return paramAccessibilityNodeInfo; 
    int m = paramAccessibilityNodeInfo.getChildCount();
    for (byte b1 = 0; b1 < m; b1++) {
      AccessibilityNodeInfo accessibilityNodeInfo = a(paramAccessibilityNodeInfo.getChild(b1));
      if (accessibilityNodeInfo != null)
        return accessibilityNodeInfo; 
    } 
    return null;
  }
  
  private void a() {
    WindowManager windowManager = (WindowManager)getSystemService("window");
    DisplayMetrics displayMetrics = new DisplayMetrics();
    if (windowManager == null)
      return; 
    windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
    this.j = displayMetrics.densityDpi;
    this.k = displayMetrics.widthPixels;
    this.l = displayMetrics.heightPixels;
  }
  
  private void a(AccessibilityNodeInfo paramAccessibilityNodeInfo, ArrayList<String> paramArrayList) {
    if (paramAccessibilityNodeInfo == null)
      return; 
    getNodeInfoText(paramAccessibilityNodeInfo);
    int m = paramAccessibilityNodeInfo.getChildCount();
    if (m > 0)
      for (byte b1 = 0; b1 < m; b1++)
        a(paramAccessibilityNodeInfo.getChild(b1), paramArrayList);  
  }
  
  private void a(AccessibilityNodeInfo paramAccessibilityNodeInfo1, ArrayList<String> paramArrayList, AccessibilityNodeInfo paramAccessibilityNodeInfo2) {
    if (paramAccessibilityNodeInfo1 == null)
      return; 
    if (!this.f)
      this.f = paramAccessibilityNodeInfo1.equals(paramAccessibilityNodeInfo2); 
    String str = getNodeInfoText(paramAccessibilityNodeInfo1);
    if (this.f && str != null)
      paramArrayList.add(str.toString()); 
    int m = paramAccessibilityNodeInfo1.getChildCount();
    if (m > 0) {
      byte b1;
      for (b1 = 0; b1 < m; b1++) {
        AccessibilityNodeInfo accessibilityNodeInfo = paramAccessibilityNodeInfo1.getChild(b1);
        if (accessibilityNodeInfo != null) {
          if (!this.f)
            this.f = accessibilityNodeInfo.equals(paramAccessibilityNodeInfo2); 
          a(accessibilityNodeInfo, paramArrayList, paramAccessibilityNodeInfo2);
        } 
      } 
    } 
  }
  
  private void a(String paramString, LuaException paramLuaException) {}
  
  private void a(List<AccessibilityNodeInfo> paramList, AccessibilityNodeInfo paramAccessibilityNodeInfo, String paramString) { // Byte code:
    //   0: aload_2
    //   1: ifnonnull -> 5
    //   4: return
    //   5: iconst_2
    //   6: anewarray java/lang/CharSequence
    //   9: astore #13
    //   11: aload_3
    //   12: ldc '\|'
    //   14: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   17: astore #14
    //   19: aload_2
    //   20: invokevirtual getContentDescription : ()Ljava/lang/CharSequence;
    //   23: astore #11
    //   25: iconst_0
    //   26: istore #6
    //   28: aload #13
    //   30: iconst_0
    //   31: aload #11
    //   33: aastore
    //   34: aload #13
    //   36: iconst_1
    //   37: aload_2
    //   38: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   41: aastore
    //   42: aload #14
    //   44: arraylength
    //   45: istore #7
    //   47: iconst_0
    //   48: istore #4
    //   50: iload #4
    //   52: iload #7
    //   54: if_icmpge -> 267
    //   57: aload #14
    //   59: iload #4
    //   61: aaload
    //   62: astore #12
    //   64: aload #12
    //   66: ldc '*'
    //   68: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   71: iconst_1
    //   72: ixor
    //   73: istore #8
    //   75: aload #12
    //   77: ldc '*'
    //   79: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   82: iconst_1
    //   83: ixor
    //   84: istore #9
    //   86: aload #12
    //   88: astore #11
    //   90: iload #8
    //   92: ifne -> 103
    //   95: aload #12
    //   97: iconst_1
    //   98: invokevirtual substring : (I)Ljava/lang/String;
    //   101: astore #11
    //   103: aload #11
    //   105: astore #12
    //   107: iload #9
    //   109: ifne -> 127
    //   112: aload #11
    //   114: iconst_0
    //   115: aload #11
    //   117: invokevirtual length : ()I
    //   120: iconst_1
    //   121: isub
    //   122: invokevirtual substring : (II)Ljava/lang/String;
    //   125: astore #12
    //   127: aload #13
    //   129: arraylength
    //   130: istore #10
    //   132: iconst_0
    //   133: istore #5
    //   135: iload #5
    //   137: iload #10
    //   139: if_icmpge -> 258
    //   142: aload #13
    //   144: iload #5
    //   146: aaload
    //   147: astore #11
    //   149: aload #11
    //   151: ifnonnull -> 157
    //   154: goto -> 249
    //   157: aload #11
    //   159: invokeinterface toString : ()Ljava/lang/String;
    //   164: invokevirtual trim : ()Ljava/lang/String;
    //   167: astore #11
    //   169: iload #8
    //   171: ifeq -> 200
    //   174: iload #9
    //   176: ifeq -> 200
    //   179: aload #12
    //   181: aload #11
    //   183: invokevirtual equals : (Ljava/lang/Object;)Z
    //   186: ifeq -> 249
    //   189: aload_1
    //   190: aload_2
    //   191: invokeinterface add : (Ljava/lang/Object;)Z
    //   196: pop
    //   197: goto -> 258
    //   200: iload #8
    //   202: ifeq -> 218
    //   205: aload #11
    //   207: aload #12
    //   209: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   212: ifeq -> 249
    //   215: goto -> 189
    //   218: iload #9
    //   220: ifeq -> 236
    //   223: aload #11
    //   225: aload #12
    //   227: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   230: ifeq -> 249
    //   233: goto -> 189
    //   236: aload #11
    //   238: aload #12
    //   240: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   243: ifeq -> 249
    //   246: goto -> 189
    //   249: iload #5
    //   251: iconst_1
    //   252: iadd
    //   253: istore #5
    //   255: goto -> 135
    //   258: iload #4
    //   260: iconst_1
    //   261: iadd
    //   262: istore #4
    //   264: goto -> 50
    //   267: aload_2
    //   268: invokevirtual getChildCount : ()I
    //   271: istore #5
    //   273: iload #6
    //   275: istore #4
    //   277: iload #4
    //   279: iload #5
    //   281: if_icmpge -> 305
    //   284: aload_0
    //   285: aload_1
    //   286: aload_2
    //   287: iload #4
    //   289: invokevirtual getChild : (I)Landroid/view/accessibility/AccessibilityNodeInfo;
    //   292: aload_3
    //   293: invokespecial a : (Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    //   296: iload #4
    //   298: iconst_1
    //   299: iadd
    //   300: istore #4
    //   302: goto -> 277
    //   305: return }
  
  private AccessibilityNodeInfo b(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    accessibilityNodeInfo = paramAccessibilityNodeInfo;
    while (accessibilityNodeInfo != null) {
      try {
        if (isClickable(accessibilityNodeInfo))
          return accessibilityNodeInfo; 
        accessibilityNodeInfo = accessibilityNodeInfo.getParent();
      } catch (Exception accessibilityNodeInfo) {
        a.a(accessibilityNodeInfo);
        break;
      } 
    } 
    return paramAccessibilityNodeInfo;
  }
  
  private void b() { (new AsyncTask<String, String, HashMap<String, ComponentName>>(this) {
        protected HashMap<String, ComponentName> a(String... param1VarArgs) {
          HashMap hashMap = new HashMap();
          PackageManager packageManager = this.a.getPackageManager();
          Intent intent2 = new Intent("android.intent.action.MAIN", null);
          intent2.addCategory("android.intent.category.DEFAULT");
          byte b2 = 0;
          List list2 = packageManager.queryIntentActivities(intent2, 0);
          Collections.sort(list2, new ResolveInfo.DisplayNameComparator(packageManager));
          int i = list2.size();
          byte b1;
          for (b1 = 0; b1 < i; b1++) {
            ResolveInfo resolveInfo = (ResolveInfo)list2.get(b1);
            CharSequence charSequence = resolveInfo.loadLabel(packageManager);
            ComponentName componentName = new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name);
            hashMap.put(charSequence.toString().toLowerCase(), componentName);
          } 
          Intent intent1 = new Intent("android.intent.action.MAIN", null);
          intent1.addCategory("android.intent.category.LAUNCHER");
          List list1 = packageManager.queryIntentActivities(intent1, 0);
          Collections.sort(list1, new ResolveInfo.DisplayNameComparator(packageManager));
          i = list1.size();
          for (b1 = b2; b1 < i; b1++) {
            ResolveInfo resolveInfo = (ResolveInfo)list1.get(b1);
            CharSequence charSequence = resolveInfo.loadLabel(packageManager);
            ComponentName componentName = new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name);
            hashMap.put(charSequence.toString().toLowerCase(), componentName);
          } 
          return hashMap;
        }
        
        protected void a(HashMap<String, ComponentName> param1HashMap) {
          super.onPostExecute(param1HashMap);
          if (param1HashMap != null && !param1HashMap.isEmpty())
            LuaAccessibilityService.a(this.a, param1HashMap); 
        }
      }).execute(new String[] { "" }); }
  
  private void c() {
    PackageManager packageManager = getPackageManager();
    Intent intent = new Intent("android.intent.action.MAIN", null);
    intent.addCategory("android.intent.category.LAUNCHER");
    byte b1 = 0;
    List list = packageManager.queryIntentActivities(intent, 0);
    Collections.sort(list, new ResolveInfo.DisplayNameComparator(packageManager));
    if (list != null) {
      int m = list.size();
      while (b1 < m) {
        ResolveInfo resolveInfo = (ResolveInfo)list.get(b1);
        CharSequence charSequence = resolveInfo.loadLabel(packageManager);
        ComponentName componentName = new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name);
        this.e.put(charSequence.toString().toLowerCase(), componentName);
        b1++;
      } 
    } 
  }
  
  public static LuaAccessibilityService getInstance() { return d; }
  
  public static void setCallback(AccessibilityServiceCallbacks paramAccessibilityServiceCallbacks) { a = paramAccessibilityServiceCallbacks; }
  
  public boolean appendCopy() { return appendCopy(getText(getFocusView())); }
  
  public boolean appendCopy(CharSequence paramCharSequence) {
    if (paramCharSequence == null)
      return false; 
    ClipboardManager clipboardManager = (ClipboardManager)getSystemService("clipboard");
    CharSequence charSequence = clipboardManager.getText();
    String str = "";
    if (charSequence != null)
      str = charSequence.toString(); 
    charSequence = str;
    if (str.length() > 1) {
      charSequence = new StringBuilder();
      charSequence.append(str);
      charSequence.append("\n");
      charSequence = charSequence.toString();
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(charSequence);
    stringBuilder.append(paramCharSequence);
    clipboardManager.setPrimaryClip(ClipData.newPlainText("label", stringBuilder.toString()));
    return true;
  }
  
  public boolean click(int paramInt1, int paramInt2) { return (this.h != null) ? this.h.click(paramInt1, paramInt2) : 0; }
  
  public boolean click(LuaTable paramLuaTable) { return (new ClickRunnable(this, paramLuaTable)).canClick(); }
  
  public boolean click(LuaTable paramLuaTable, LuaFunction paramLuaFunction) { return (new ClickRunnable(this, paramLuaTable)).canClick(new ClickRunnable.ClickCallback(this, paramLuaFunction) {
          public void onDone(boolean param1Boolean, LuaTable param1LuaTable, String param1String, int param1Int) {
            try {
              this.a.call(new Object[] { Boolean.valueOf(param1Boolean), param1LuaTable, param1String, Integer.valueOf(param1Int) });
              return;
            } catch (LuaException param1LuaTable) {
              a.a(param1LuaTable);
              LuaAccessibilityService.a(this.b, "click", param1LuaTable);
              return;
            } 
          }
        }); }
  
  public boolean click(Point paramPoint) { return click(paramPoint.x, paramPoint.y); }
  
  public boolean click(String paramString1, String paramString2, int[] paramArrayOfInt) {
    if (paramString1 != null) {
      if (paramString2 == null)
        return false; 
      if (!paramString1.equals(getAppName(getFocusView())))
        return false; 
      AccessibilityNodeInfo accessibilityNodeInfo = getRootInActiveWindow();
      if (accessibilityNodeInfo == null)
        return false; 
      if (accessibilityNodeInfo.findAccessibilityNodeInfosByText(paramString2).isEmpty())
        return false; 
      int m = paramArrayOfInt.length;
      byte b1;
      for (b1 = 0; b1 < m; b1++) {
        int n = paramArrayOfInt[b1];
        if (accessibilityNodeInfo.getChildCount() <= n)
          return false; 
        accessibilityNodeInfo = accessibilityNodeInfo.getChild(n);
        if (accessibilityNodeInfo == null)
          return false; 
      } 
      return toClick(accessibilityNodeInfo);
    } 
    return false;
  }
  
  public boolean copy() { return copy(getText(getFocusView())); }
  
  public boolean copy(CharSequence paramCharSequence) {
    if (paramCharSequence == null)
      return false; 
    paramCharSequence = paramCharSequence.toString();
    ((ClipboardManager)getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", paramCharSequence));
    return true;
  }
  
  public boolean deleteApp(String paramString) {
    this.e.clear();
    c();
    paramString = paramString.toLowerCase();
    ComponentName componentName = (ComponentName)this.e.get(paramString);
    if (componentName == null)
      return false; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("package:");
    stringBuilder.append(componentName.getPackageName());
    Intent intent = new Intent("android.intent.action.DELETE", Uri.parse(stringBuilder.toString()));
    intent.setFlags(270532608);
    startActivity(intent);
    return true;
  }
  
  public boolean execute(String paramString, AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    byte b1;
    switch (paramString.hashCode()) {
      default:
        b1 = -1;
        break;
      case 1119180876:
        if (paramString.equals("追加复制")) {
          b1 = 8;
          break;
        } 
      case 821558167:
        if (paramString.equals("最近任务")) {
          b1 = 5;
          break;
        } 
      case 697331565:
        if (paramString.equals("增加进度")) {
          b1 = 3;
          break;
        } 
      case 661386612:
        if (paramString.equals("向下翻页")) {
          b1 = 1;
          break;
        } 
      case 661385651:
        if (paramString.equals("向上翻页")) {
          b1 = 0;
          break;
        } 
      case 647728589:
        if (paramString.equals("减少进度")) {
          b1 = 2;
          break;
        } 
      case 36429412:
        if (paramString.equals("通知栏")) {
          b1 = 13;
          break;
        } 
      case 20002657:
        if (paramString.equals("主屏幕")) {
          b1 = 9;
          break;
        } 
      case 1211754:
        if (paramString.equals("长按")) {
          b1 = 12;
          break;
        } 
      case 1163658:
        if (paramString.equals("返回")) {
          b1 = 10;
          break;
        } 
      case 1024924:
        if (paramString.equals("粘贴")) {
          b1 = 4;
          break;
        } 
      case 915554:
        if (paramString.equals("点击")) {
          b1 = 11;
          break;
        } 
      case 904469:
        if (paramString.equals("清空")) {
          b1 = 6;
          break;
        } 
      case 727753:
        if (paramString.equals("复制")) {
          b1 = 7;
          break;
        } 
      case -1762910153:
        if (paramString.equals("打开通知栏")) {
          b1 = 14;
          break;
        } 
    } 
    switch (b1) {
      default:
        return false;
      case 13:
      case 14:
        toNotifications();
        return true;
      case 12:
        toLongClick(paramAccessibilityNodeInfo);
        return true;
      case 11:
        toClick(paramAccessibilityNodeInfo);
        return true;
      case 10:
        toBack();
        return true;
      case 9:
        toHome();
        return true;
      case 8:
        appendCopy(getText(paramAccessibilityNodeInfo));
        return true;
      case 7:
        copy(getText(paramAccessibilityNodeInfo));
        return true;
      case 6:
        return (Build.VERSION.SDK_INT >= 21) ? paramAccessibilityNodeInfo.performAction(2097152) : 0;
      case 5:
        toRecents();
        return true;
      case 4:
        paste(paramAccessibilityNodeInfo);
        return true;
      case 3:
        return scrollForward(paramAccessibilityNodeInfo);
      case 2:
        return scrollBackward(paramAccessibilityNodeInfo);
      case 1:
        accessibilityNodeInfo = a(getRootInActiveWindow());
        return (accessibilityNodeInfo == null) ? false : scrollForward(accessibilityNodeInfo);
      case 0:
        break;
    } 
    AccessibilityNodeInfo accessibilityNodeInfo = a(getRootInActiveWindow());
    return (accessibilityNodeInfo == null) ? false : scrollBackward(accessibilityNodeInfo);
  }
  
  public AccessibilityNodeInfo findAccessibilityNodeInfo(String paramString) {
    int m = paramString.lastIndexOf("@");
    String str = paramString;
    if (m > 0) {
      if (!paramString.substring(m + 1).equals(getAppName(getFocusView())))
        return null; 
      str = paramString.substring(0, m);
    } 
    int i1 = str.lastIndexOf("#");
    m = -1;
    int n = m;
    paramString = str;
    if (i1 > 0) {
      try {
        n = Integer.valueOf(str.substring(i1 + 1)).intValue();
        m = n;
      } catch (Exception paramString) {}
      paramString = str.substring(0, i1);
      n = m;
    } 
    m = paramString.charAt(0);
    if (m != 62) {
      if (m != 64) {
        switch (m) {
          default:
            return findAccessibilityNodeInfoByText(paramString, n);
          case 37:
            return execute(paramString.substring(1), getFocusView()) ? AccessibilityNodeInfo.obtain() : null;
          case 36:
            break;
        } 
        return findAccessibilityNodeInfoByIndex(paramString.substring(1));
      } 
      return findAccessibilityNodeInfoById(paramString.substring(1), n);
    } 
    return startApp(paramString.substring(1)) ? AccessibilityNodeInfo.obtain() : null;
  }
  
  public AccessibilityNodeInfo findAccessibilityNodeInfoById(String paramString, int paramInt) {
    List list = findAccessibilityNodeInfoById(paramString);
    if (list.isEmpty())
      return null; 
    int m = list.size();
    if (paramInt + 1 <= m) {
      if (0 - paramInt > m)
        return null; 
      if (paramInt < 0) {
        object = list.get(list.size() + paramInt);
        return (AccessibilityNodeInfo)object;
      } 
      Object object = object.get(paramInt);
      return (AccessibilityNodeInfo)object;
    } 
    return null;
  }
  
  public List<AccessibilityNodeInfo> findAccessibilityNodeInfoById(String paramString) {
    AccessibilityNodeInfo accessibilityNodeInfo = getRootInActiveWindow();
    return (accessibilityNodeInfo == null) ? new ArrayList() : accessibilityNodeInfo.findAccessibilityNodeInfosByText(paramString);
  }
  
  public AccessibilityNodeInfo findAccessibilityNodeInfoByIndex(String paramString) {
    AccessibilityNodeInfo accessibilityNodeInfo2 = getRootInActiveWindow();
    if (accessibilityNodeInfo2 == null)
      return null; 
    String[] arrayOfString = paramString.split("-");
    int m = arrayOfString.length;
    byte b1 = 0;
    accessibilityNodeInfo1 = accessibilityNodeInfo2;
    while (b1 < m) {
      String str = arrayOfString[b1];
      try {
        int n = Integer.valueOf(str).intValue();
        if (accessibilityNodeInfo1.getChildCount() <= n)
          return null; 
        accessibilityNodeInfo1 = accessibilityNodeInfo1.getChild(n);
        if (accessibilityNodeInfo1 == null)
          return null; 
        b1++;
      } catch (Exception accessibilityNodeInfo1) {
        a.a(accessibilityNodeInfo1);
        return null;
      } 
    } 
    return accessibilityNodeInfo1;
  }
  
  public AccessibilityNodeInfo findAccessibilityNodeInfoByText(String paramString, int paramInt) {
    List list = findAccessibilityNodeInfoByText(paramString);
    if (list.isEmpty())
      return null; 
    int m = list.size();
    if (paramInt + 1 <= m) {
      if (0 - paramInt > m)
        return null; 
      if (paramInt < 0) {
        object = list.get(list.size() + paramInt);
        return (AccessibilityNodeInfo)object;
      } 
      Object object = object.get(paramInt);
      return (AccessibilityNodeInfo)object;
    } 
    return null;
  }
  
  public List<AccessibilityNodeInfo> findAccessibilityNodeInfoByText(String paramString) { // Byte code:
    //   0: aload_0
    //   1: invokevirtual getRootInActiveWindow : ()Landroid/view/accessibility/AccessibilityNodeInfo;
    //   4: astore #8
    //   6: new java/util/ArrayList
    //   9: dup
    //   10: invokespecial <init> : ()V
    //   13: astore #9
    //   15: aload #8
    //   17: ifnonnull -> 23
    //   20: aload #9
    //   22: areturn
    //   23: aload_1
    //   24: ldc '\|'
    //   26: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   29: astore #10
    //   31: aload #10
    //   33: arraylength
    //   34: istore_3
    //   35: iconst_0
    //   36: istore_2
    //   37: iload_2
    //   38: iload_3
    //   39: if_icmpge -> 439
    //   42: aload #10
    //   44: iload_2
    //   45: aaload
    //   46: astore #7
    //   48: aload #7
    //   50: invokevirtual isEmpty : ()Z
    //   53: ifeq -> 59
    //   56: goto -> 414
    //   59: aload #7
    //   61: iconst_0
    //   62: invokevirtual charAt : (I)C
    //   65: bipush #37
    //   67: if_icmpeq -> 421
    //   70: aload #7
    //   72: bipush #38
    //   74: invokevirtual lastIndexOf : (I)I
    //   77: istore #4
    //   79: aload #7
    //   81: astore #6
    //   83: iload #4
    //   85: ifle -> 117
    //   88: aload_0
    //   89: aload #7
    //   91: iload #4
    //   93: iconst_1
    //   94: iadd
    //   95: invokevirtual substring : (I)Ljava/lang/String;
    //   98: invokevirtual findAccessibilityNodeInfo : (Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    //   101: ifnonnull -> 107
    //   104: goto -> 414
    //   107: aload #7
    //   109: iconst_0
    //   110: iload #4
    //   112: invokevirtual substring : (II)Ljava/lang/String;
    //   115: astore #6
    //   117: aload #6
    //   119: ldc '*'
    //   121: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   124: iconst_1
    //   125: ixor
    //   126: istore #4
    //   128: aload #6
    //   130: ldc '*'
    //   132: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   135: iconst_1
    //   136: ixor
    //   137: istore #5
    //   139: aload #6
    //   141: astore #7
    //   143: iload #4
    //   145: ifne -> 156
    //   148: aload #6
    //   150: iconst_1
    //   151: invokevirtual substring : (I)Ljava/lang/String;
    //   154: astore #7
    //   156: aload #7
    //   158: astore #6
    //   160: iload #5
    //   162: ifne -> 180
    //   165: aload #7
    //   167: iconst_0
    //   168: aload #7
    //   170: invokevirtual length : ()I
    //   173: iconst_1
    //   174: isub
    //   175: invokevirtual substring : (II)Ljava/lang/String;
    //   178: astore #6
    //   180: aload #8
    //   182: aload #6
    //   184: invokevirtual findAccessibilityNodeInfosByText : (Ljava/lang/String;)Ljava/util/List;
    //   187: invokeinterface iterator : ()Ljava/util/Iterator;
    //   192: astore #7
    //   194: aload #7
    //   196: invokeinterface hasNext : ()Z
    //   201: ifeq -> 414
    //   204: aload #7
    //   206: invokeinterface next : ()Ljava/lang/Object;
    //   211: checkcast android/view/accessibility/AccessibilityNodeInfo
    //   214: astore #11
    //   216: new java/lang/StringBuilder
    //   219: dup
    //   220: invokespecial <init> : ()V
    //   223: astore #12
    //   225: aload #12
    //   227: aload #11
    //   229: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   232: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   235: pop
    //   236: aload #12
    //   238: ldc ''
    //   240: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: pop
    //   244: aload #12
    //   246: invokevirtual toString : ()Ljava/lang/String;
    //   249: invokevirtual trim : ()Ljava/lang/String;
    //   252: astore #12
    //   254: new java/lang/StringBuilder
    //   257: dup
    //   258: invokespecial <init> : ()V
    //   261: astore #13
    //   263: aload #13
    //   265: aload #11
    //   267: invokevirtual getContentDescription : ()Ljava/lang/CharSequence;
    //   270: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   273: pop
    //   274: aload #13
    //   276: ldc ''
    //   278: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: pop
    //   282: aload #13
    //   284: invokevirtual toString : ()Ljava/lang/String;
    //   287: invokevirtual trim : ()Ljava/lang/String;
    //   290: astore #13
    //   292: iload #4
    //   294: ifeq -> 335
    //   297: iload #5
    //   299: ifeq -> 335
    //   302: aload #6
    //   304: aload #12
    //   306: invokevirtual equals : (Ljava/lang/Object;)Z
    //   309: ifne -> 322
    //   312: aload #6
    //   314: aload #13
    //   316: invokevirtual equals : (Ljava/lang/Object;)Z
    //   319: ifeq -> 194
    //   322: aload #9
    //   324: aload #11
    //   326: invokeinterface add : (Ljava/lang/Object;)Z
    //   331: pop
    //   332: goto -> 194
    //   335: iload #4
    //   337: ifeq -> 363
    //   340: aload #12
    //   342: aload #6
    //   344: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   347: ifne -> 322
    //   350: aload #13
    //   352: aload #6
    //   354: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   357: ifeq -> 194
    //   360: goto -> 322
    //   363: iload #5
    //   365: ifeq -> 391
    //   368: aload #12
    //   370: aload #6
    //   372: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   375: ifne -> 322
    //   378: aload #13
    //   380: aload #6
    //   382: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   385: ifeq -> 194
    //   388: goto -> 322
    //   391: aload #12
    //   393: aload #6
    //   395: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   398: ifne -> 322
    //   401: aload #13
    //   403: aload #6
    //   405: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   408: ifeq -> 194
    //   411: goto -> 322
    //   414: iload_2
    //   415: iconst_1
    //   416: iadd
    //   417: istore_2
    //   418: goto -> 37
    //   421: aload_0
    //   422: aload #7
    //   424: iconst_1
    //   425: invokevirtual substring : (I)Ljava/lang/String;
    //   428: aload_0
    //   429: invokevirtual getFocusView : ()Landroid/view/accessibility/AccessibilityNodeInfo;
    //   432: invokevirtual execute : (Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    //   435: pop
    //   436: aload #9
    //   438: areturn
    //   439: aload #9
    //   441: invokeinterface isEmpty : ()Z
    //   446: ifeq -> 458
    //   449: aload_0
    //   450: aload #9
    //   452: aload #8
    //   454: aload_1
    //   455: invokespecial a : (Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    //   458: aload #9
    //   460: areturn }
  
  public boolean findClick(String[] paramArrayOfString) {
    int m = paramArrayOfString.length;
    for (byte b1 = 0; b1 < m; b1++) {
      AccessibilityNodeInfo accessibilityNodeInfo = findAccessibilityNodeInfoByText(paramArrayOfString[b1], 0);
      if (accessibilityNodeInfo != null && b(accessibilityNodeInfo).performAction(16))
        return true; 
    } 
    return false;
  }
  
  public ArrayList<AccessibilityNodeInfo> getAllEditTextList() {
    ArrayList arrayList = new ArrayList();
    getEditText(getRootInActiveWindow(), arrayList);
    return arrayList;
  }
  
  public String getAllText(int paramInt) {
    ArrayList arrayList = getAllTextList();
    StringBuilder stringBuilder = new StringBuilder();
    for (String str : arrayList) {
      if (str.length() > paramInt) {
        stringBuilder.append(str);
        stringBuilder.append("\n");
      } 
    } 
    return stringBuilder.toString();
  }
  
  public ArrayList<String> getAllTextList() {
    ArrayList arrayList = new ArrayList();
    a(getRootInActiveWindow(), arrayList);
    return arrayList;
  }
  
  public ArrayList<String> getAllTextList(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    ArrayList arrayList = new ArrayList();
    AccessibilityNodeInfo accessibilityNodeInfo = getRootInActiveWindow();
    this.f = paramAccessibilityNodeInfo.isVisibleToUser() ^ true;
    a(accessibilityNodeInfo, arrayList, paramAccessibilityNodeInfo);
    return arrayList;
  }
  
  public String getAppName(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo == null)
      return ""; 
    charSequence = paramAccessibilityNodeInfo.getPackageName();
    if (charSequence == null)
      return ""; 
    charSequence = charSequence.toString();
    PackageManager packageManager = getPackageManager();
    try {
      return packageManager.getApplicationLabel(packageManager.getApplicationInfo(charSequence, 0)).toString();
    } catch (android.content.pm.PackageManager.NameNotFoundException charSequence) {
      a.a(charSequence);
      return "";
    } 
  }
  
  public int getDensity() {
    if (this.j == 0)
      a(); 
    return this.j;
  }
  
  public AccessibilityNodeInfo getEditText() {
    ArrayList arrayList = getAllEditTextList();
    if (arrayList.isEmpty())
      return null; 
    AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo)arrayList.get(0);
    if (accessibilityNodeInfo != null)
      accessibilityNodeInfo.performAction(64); 
    return accessibilityNodeInfo;
  }
  
  public void getEditText(AccessibilityNodeInfo paramAccessibilityNodeInfo, ArrayList<AccessibilityNodeInfo> paramArrayList) {
    if (paramAccessibilityNodeInfo == null)
      return; 
    if (paramAccessibilityNodeInfo.isEditable())
      paramArrayList.add(paramAccessibilityNodeInfo); 
    int m = paramAccessibilityNodeInfo.getChildCount();
    if (m > 0)
      for (byte b1 = 0; b1 < m; b1++)
        getEditText(paramAccessibilityNodeInfo.getChild(b1), paramArrayList);  
  }
  
  public AccessibilityNodeInfo getFocusView() { return getRootInActiveWindow(); }
  
  public Handler getHandler() { return this.g; }
  
  public int getHeight() {
    if (this.l == 0)
      a(); 
    return this.l;
  }
  
  public String getNodeInfoText(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo == null)
      return null; 
    CharSequence charSequence1 = paramAccessibilityNodeInfo.getContentDescription();
    CharSequence charSequence2 = paramAccessibilityNodeInfo.getText();
    if (charSequence1 != null) {
      charSequence1 = charSequence1.toString();
    } else {
      charSequence1 = null;
    } 
    return (charSequence1 != null && charSequence1.trim().length() > 0 && (!paramAccessibilityNodeInfo.isEditable() || charSequence2 == null)) ? charSequence1 : ((charSequence2 != null && charSequence2.length() > 0) ? charSequence2.toString() : null);
  }
  
  public Bitmap getScreenshot() { return (this.i != null) ? this.i.getScreenShot() : null; }
  
  public void getScreenshot(LuaFunction paramLuaFunction) { ScreenShot.getScreenCaptureBitmap(this, new ScreenCaptureListener(this, paramLuaFunction) {
          public void onScreenCaptureDone(Bitmap param1Bitmap) {
            try {
              this.a.call(new Object[] { param1Bitmap });
              return;
            } catch (LuaException param1Bitmap) {
              a.a(param1Bitmap);
              return;
            } 
          }
          
          public void onScreenCaptureError(String param1String) {
            try {
              this.a.call(new Object[] { null, param1String });
              return;
            } catch (LuaException param1String) {
              a.a(param1String);
              return;
            } 
          }
        }); }
  
  public String getText(AccessibilityNodeInfo paramAccessibilityNodeInfo) { return getNodeInfoText(paramAccessibilityNodeInfo); }
  
  public int getWidth() {
    if (this.k == 0)
      a(); 
    return this.k;
  }
  
  public boolean insert(AccessibilityNodeInfo paramAccessibilityNodeInfo, CharSequence paramCharSequence) {
    if (paramAccessibilityNodeInfo == null)
      return false; 
    if (paramCharSequence == null)
      return false; 
    if (paramAccessibilityNodeInfo.isEditable()) {
      if (!paramAccessibilityNodeInfo.isFocused())
        paramAccessibilityNodeInfo.performAction(1); 
      ClipboardManager clipboardManager = (ClipboardManager)getSystemService("clipboard");
      clipboardManager.setPrimaryClip(ClipData.newPlainText("label", paramCharSequence));
      clipboardManager.setText(paramCharSequence);
      if (paramAccessibilityNodeInfo.performAction(32768))
        return true; 
    } 
    return false;
  }
  
  public boolean installApp(String paramString) {
    if (paramString == null)
      return false; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("market://search?q=");
    stringBuilder.append(paramString);
    intent = new Intent("android.intent.action.VIEW", Uri.parse(stringBuilder.toString()));
    intent.setFlags(270532608);
    try {
      startActivity(intent);
      return true;
    } catch (Exception intent) {
      return false;
    } 
  }
  
  public boolean isClickable(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo == null)
      return false; 
    if (paramAccessibilityNodeInfo.isClickable())
      return true; 
    if (paramAccessibilityNodeInfo.isCheckable())
      return true; 
    if (Build.VERSION.SDK_INT >= 21) {
      if (paramAccessibilityNodeInfo.getActionList().contains(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK))
        return true; 
    } else if ((paramAccessibilityNodeInfo.getActions() & 0x10) != 0) {
      return true;
    } 
    return false;
  }
  
  public boolean isListView2(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo == null)
      return false; 
    CharSequence charSequence = paramAccessibilityNodeInfo.getClassName();
    if (charSequence != null) {
      switch (charSequence.toString()) {
        default:
          if (charSequence.endsWith("ScrollView"))
            return true; 
          break;
        case "android.widget.AdapterView":
        case "android.widget.ListView":
        case "android.widget.GridView":
        case "android.widget.AbsListView":
        case "android.widget.ExpandableListView":
        case "android.support.v7.widget.RecyclerView":
        case "flyme.support.v7.widget.RecyclerView":
        case "android.widget.ScrollView":
        case "android.widget.HorizontalScrollView":
        case "com.tencent.widget.GridView":
          return true;
      } 
      if (charSequence.endsWith("GridView"))
        return true; 
      if (charSequence.endsWith("RecyclerView"))
        return true; 
      if (charSequence.endsWith("ListView"))
        return true; 
    } 
    return false;
  }
  
  public boolean longClick(int paramInt1, int paramInt2) { return (this.h != null) ? this.h.longClick(paramInt1, paramInt2) : 0; }
  
  public boolean longClick(Point paramPoint) { return longClick(paramPoint.x, paramPoint.y); }
  
  public ClickRunnable loopClick(LuaTable paramLuaTable) {
    ClickRunnable clickRunnable = new ClickRunnable(this, paramLuaTable);
    clickRunnable.canClick(new ClickRunnable.ClickCallback(this, paramLuaTable) {
          public void onDone(boolean param1Boolean, LuaTable param1LuaTable, String param1String, int param1Int) { this.b.loopClick(this.a); }
        });
    return clickRunnable;
  }
  
  public void onAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent) {
    if (a != null)
      a.onAccessibilityEvent(this, paramAccessibilityEvent); 
    if (onAccessibilityEvent != null)
      try {
        onAccessibilityEvent.call(new Object[] { paramAccessibilityEvent });
        return;
      } catch (LuaException paramAccessibilityEvent) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("onAccessibilityEvent: ");
        stringBuilder.append(paramAccessibilityEvent.toString());
        Log.i("lua", stringBuilder.toString());
        return;
      }  
    if (!this.c.containsKey("LuaAccessibilityService"))
      return; 
    LuaTable luaTable = (LuaTable)this.c.get("LuaAccessibilityService");
    if (luaTable == null)
      return; 
    try {
      ((LuaFunction)luaTable.get("onAccessibilityEvent")).call(new Object[] { paramAccessibilityEvent });
      return;
    } catch (LuaException paramAccessibilityEvent) {
      luaFunction = (LuaFunction)luaTable.get("onError");
      if (luaFunction == null) {
        Log.i("onAccessibilityEvent", paramAccessibilityEvent.getMessage());
        return;
      } 
      try {
        luaFunction.call(new Object[] { paramAccessibilityEvent });
        return;
      } catch (LuaException luaFunction) {
        Log.i("onAccessibilityEvent", paramAccessibilityEvent.getMessage());
        return;
      } 
    } 
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    if (a != null)
      a.onConfigurationChanged(this, paramConfiguration); 
  }
  
  public void onCreate() {
    Log.i("lua", "onCreate");
    super.onCreate();
    this.g = new Handler();
    d = this;
    if (Build.VERSION.SDK_INT >= 24) {
      this.h = new GlobalActionAutomator(this, new Handler());
      this.h.setService(this);
    } 
    if (a != null)
      a.onCreate(this); 
    b();
    this.b = (LuaApplication)getApplication();
    this.c = this.b.getGlobalData();
    if (!this.c.containsKey("LuaAccessibilityService"))
      return; 
    LuaTable luaTable = (LuaTable)this.c.get("LuaAccessibilityService");
    if (luaTable == null)
      return; 
    try {
      ((LuaFunction)luaTable.get("onCreate")).call(new Object[] { this });
      return;
    } catch (LuaException luaException) {
      luaFunction = (LuaFunction)luaTable.get("onError");
      if (luaFunction == null) {
        Log.i("onCreate", luaException.getMessage());
        return;
      } 
      try {
        luaFunction.call(new Object[] { luaException });
        return;
      } catch (LuaException luaFunction) {
        Log.i("onCreate", luaException.getMessage());
        return;
      } 
    } 
  }
  
  public void onDestroy() {
    if (a != null)
      a.onDestroy(this); 
    stopScreenshot();
    super.onDestroy();
  }
  
  public void onInterrupt() {
    if (a != null)
      a.onInterrupt(this); 
  }
  
  protected boolean onKeyEvent(KeyEvent paramKeyEvent) { return (a != null && a.onKeyEvent(this, paramKeyEvent)) ? true : super.onKeyEvent(paramKeyEvent); }
  
  protected void onServiceConnected() {
    Log.i("lua", "onServiceConnected");
    super.onServiceConnected();
    if (a != null)
      a.onServiceConnected(this); 
    if (!this.c.containsKey("LuaAccessibilityService"))
      return; 
    LuaTable luaTable = (LuaTable)this.c.get("LuaAccessibilityService");
    if (luaTable == null)
      return; 
    try {
      ((LuaFunction)luaTable.get("onServiceConnected")).call(new Object[] { this });
      return;
    } catch (LuaException luaException) {
      luaFunction = (LuaFunction)luaTable.get("onError");
      if (luaFunction == null) {
        Log.i("onServiceConnected", luaException.getMessage());
        return;
      } 
      try {
        luaFunction.call(new Object[] { luaException });
        return;
      } catch (LuaException luaFunction) {
        Log.i("onServiceConnected", luaException.getMessage());
        return;
      } 
    } 
  }
  
  public boolean paste() {
    ClipboardManager clipboardManager = (ClipboardManager)getSystemService("clipboard");
    return paste(getFocusView(), clipboardManager.getText());
  }
  
  public boolean paste(AccessibilityNodeInfo paramAccessibilityNodeInfo) { return paste(paramAccessibilityNodeInfo, ((ClipboardManager)getSystemService("clipboard")).getText()); }
  
  public boolean paste(AccessibilityNodeInfo paramAccessibilityNodeInfo, CharSequence paramCharSequence) {
    if (paramAccessibilityNodeInfo == null)
      return false; 
    if (paramCharSequence == null)
      return false; 
    if (paramAccessibilityNodeInfo.isEditable()) {
      if (!paramAccessibilityNodeInfo.isFocused())
        paramAccessibilityNodeInfo.performAction(1); 
      ClipboardManager clipboardManager = (ClipboardManager)getSystemService("clipboard");
      clipboardManager.setPrimaryClip(ClipData.newPlainText("label", paramCharSequence));
      clipboardManager.setText(paramCharSequence);
      if (paramAccessibilityNodeInfo.performAction(32768))
        return true; 
    } 
    return paste(paramCharSequence);
  }
  
  public boolean paste(CharSequence paramCharSequence) {
    if (paramCharSequence == null)
      return false; 
    AccessibilityNodeInfo accessibilityNodeInfo = getEditText();
    if (accessibilityNodeInfo == null)
      return false; 
    CharSequence charSequence = paramCharSequence;
    if (getFocusView().isEditable()) {
      charSequence = paramCharSequence;
      if (getFocusView().getText() != null) {
        charSequence = new StringBuilder();
        charSequence.append(getFocusView().getText().toString());
        charSequence.append(paramCharSequence);
        charSequence = charSequence.toString();
      } 
    } 
    if (Build.VERSION.SDK_INT >= 21) {
      Bundle bundle = new Bundle();
      bundle.putCharSequence("ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE", charSequence);
      return accessibilityNodeInfo.performAction(2097152, bundle);
    } 
    return false;
  }
  
  public void postClick(long paramLong, LuaTable paramLuaTable) { this.g.postDelayed(new Runnable(this, paramLuaTable) {
          public void run() { this.b.click(this.a); }
        }paramLong); }
  
  public void postClick(long paramLong, LuaTable paramLuaTable, LuaFunction paramLuaFunction) { this.g.postDelayed(new Runnable(this, paramLuaTable, paramLuaFunction) {
          public void run() { this.c.click(this.a, this.b); }
        }paramLong); }
  
  public void postExecute(long paramLong, String paramString, AccessibilityNodeInfo paramAccessibilityNodeInfo) { this.g.postDelayed(new Runnable(this, paramString, paramAccessibilityNodeInfo) {
          public void run() { this.c.execute(this.a, this.b); }
        }paramLong); }
  
  public void postExecute(long paramLong, String paramString, AccessibilityNodeInfo paramAccessibilityNodeInfo, LuaFunction paramLuaFunction) { this.g.postDelayed(new Runnable(this, paramLuaFunction, paramString, paramAccessibilityNodeInfo) {
          public void run() {
            try {
              this.a.call(new Object[] { Boolean.valueOf(this.d.execute(this.b, this.c)), this.b, this.c });
              return;
            } catch (LuaException luaException) {
              a.a(luaException);
              LuaAccessibilityService.a(this.d, "postExecute", luaException);
              return;
            } 
          }
        }paramLong); }
  
  public boolean press(int paramInt1, int paramInt2, int paramInt3) { return (this.h != null) ? this.h.press(paramInt1, paramInt2, paramInt3) : 0; }
  
  public boolean press(Point paramPoint, int paramInt) { return press(paramPoint.x, paramPoint.y, paramInt); }
  
  public boolean scrollBackward(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo == null)
      return false; 
    if (Build.VERSION.SDK_INT < 21) {
      if ((paramAccessibilityNodeInfo.getActions() & 0x2000) == 0)
        return false; 
    } else if (!paramAccessibilityNodeInfo.getActionList().contains(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD)) {
      return false;
    } 
    return paramAccessibilityNodeInfo.performAction(8192);
  }
  
  public boolean scrollForward(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo == null)
      return false; 
    if (Build.VERSION.SDK_INT < 21) {
      if ((paramAccessibilityNodeInfo.getActions() & 0x1000) == 0)
        return false; 
    } else if (!paramAccessibilityNodeInfo.getActionList().contains(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD)) {
      return false;
    } 
    return paramAccessibilityNodeInfo.performAction(4096);
  }
  
  public boolean setText(AccessibilityNodeInfo paramAccessibilityNodeInfo, String paramString) {
    if (paramAccessibilityNodeInfo == null || !paramAccessibilityNodeInfo.isEditable())
      return false; 
    if (Build.VERSION.SDK_INT >= 21) {
      Bundle bundle = new Bundle();
      bundle.putCharSequence("ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE", paramString);
      return paramAccessibilityNodeInfo.performAction(2097152, bundle);
    } 
    return paste(paramAccessibilityNodeInfo, paramString);
  }
  
  public boolean setText(String paramString) { return setText(getEditText(), paramString); }
  
  public boolean startApp(String paramString) {
    b();
    paramString = paramString.toLowerCase();
    componentName = (ComponentName)this.e.get(paramString);
    if (componentName == null)
      return false; 
    Intent intent = new Intent("android.intent.action.MAIN");
    intent.addCategory("android.intent.category.DEFAULT");
    intent.setComponent(componentName);
    intent.setFlags(270532608);
    try {
      startActivity(intent);
      return true;
    } catch (Exception componentName) {
      a.a(componentName);
      return false;
    } 
  }
  
  public void startScreenshot() { this.i = new ScreenShot(this, null); }
  
  public void startScreenshot(VirtualDisplay.Callback paramCallback) { this.i = new ScreenShot(this, paramCallback); }
  
  public void stopScreenshot() {
    if (this.i != null)
      this.i.release(); 
    this.i = null;
  }
  
  public boolean swipe(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) { return (this.h != null) ? this.h.swipe(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5) : 0; }
  
  public boolean swipe(Path paramPath, int paramInt) { return (this.h != null) ? this.h.gesture(0L, paramInt, paramPath) : 0; }
  
  public boolean swipe(Point paramPoint1, Point paramPoint2, int paramInt) { return swipe(paramPoint1.x, paramPoint1.y, paramPoint2.x, paramPoint2.y, paramInt); }
  
  public void toBack() { performGlobalAction(1); }
  
  public boolean toClick(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo != null)
      try {
        return paramAccessibilityNodeInfo.performAction(16);
      } catch (Exception paramAccessibilityNodeInfo) {
        a.a(paramAccessibilityNodeInfo);
      }  
    return false;
  }
  
  public void toClick2(AccessibilityNodeInfo paramAccessibilityNodeInfo) { toClick(b(paramAccessibilityNodeInfo)); }
  
  public void toHome() { performGlobalAction(2); }
  
  public boolean toLongClick(AccessibilityNodeInfo paramAccessibilityNodeInfo) {
    if (paramAccessibilityNodeInfo != null)
      try {
        return paramAccessibilityNodeInfo.performAction(32);
      } catch (Exception paramAccessibilityNodeInfo) {
        a.a(paramAccessibilityNodeInfo);
      }  
    return false;
  }
  
  public void toNotifications() { performGlobalAction(4); }
  
  public void toRecents() { performGlobalAction(3); }
  
  public static interface AccessibilityServiceCallbacks {
    void onAccessibilityEvent(LuaAccessibilityService param1LuaAccessibilityService, AccessibilityEvent param1AccessibilityEvent);
    
    void onConfigurationChanged(LuaAccessibilityService param1LuaAccessibilityService, Configuration param1Configuration);
    
    void onCreate(LuaAccessibilityService param1LuaAccessibilityService);
    
    void onDestroy(LuaAccessibilityService param1LuaAccessibilityService);
    
    void onInterrupt(LuaAccessibilityService param1LuaAccessibilityService);
    
    boolean onKeyEvent(LuaAccessibilityService param1LuaAccessibilityService, KeyEvent param1KeyEvent);
    
    void onServiceConnected(LuaAccessibilityService param1LuaAccessibilityService);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaAccessibilityService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
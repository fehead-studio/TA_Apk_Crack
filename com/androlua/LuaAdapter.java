package com.androlua;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import com.a.a.a.a.a.a.a;
import com.luajava.LuaException;
import com.luajava.LuaFunction;
import com.luajava.LuaJavaAPI;
import com.luajava.LuaState;
import com.luajava.LuaTable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class LuaAdapter extends BaseAdapter implements Filterable {
  private final LuaTable<Integer, LuaTable<String, Object>> a;
  
  private Resources b;
  
  private LuaState c;
  
  private LuaContext d;
  
  private final Object e = new Object();
  
  private LuaTable f;
  
  private LuaTable<Integer, LuaTable<String, Object>> g;
  
  private LuaTable<String, Object> h;
  
  private CharSequence i;
  
  private LuaFunction<View> j;
  
  private LuaFunction k;
  
  private LuaFunction l;
  
  private LuaFunction<Animation> m;
  
  private HashMap<View, Animation> n = new HashMap();
  
  private HashMap<View, Boolean> o = new HashMap();
  
  private boolean p = true;
  
  private boolean q;
  
  @SuppressLint({"HandlerLeak"})
  private Handler r = new Handler(this) {
      public void handleMessage(Message param1Message) {
        if (param1Message.what == 0) {
          this.a.notifyDataSetChanged();
          return;
        } 
        try {
          LuaTable luaTable = new LuaTable(LuaAdapter.a(this.a).getLuaState());
          LuaAdapter.d(this.a).call(new Object[] { LuaAdapter.b(this.a), luaTable, LuaAdapter.c(this.a) });
          LuaAdapter.a(this.a, luaTable);
          this.a.notifyDataSetChanged();
          return;
        } catch (LuaException param1Message) {
          a.a(param1Message);
          LuaAdapter.e(this.a).sendError("performFiltering", param1Message);
          return;
        } 
      }
    };
  
  private HashMap<String, Boolean> s = new HashMap();
  
  private ArrayFilter t;
  
  private LuaFunction u;
  
  public LuaAdapter(LuaContext paramLuaContext, LuaTable paramLuaTable) { this(paramLuaContext, null, paramLuaTable); }
  
  public LuaAdapter(LuaContext paramLuaContext, LuaTable<Integer, LuaTable<String, Object>> paramLuaTable1, LuaTable paramLuaTable2) {
    this.d = paramLuaContext;
    this.f = paramLuaTable2;
    this.b = this.d.getContext().getResources();
    this.c = paramLuaContext.getLuaState();
    LuaTable<Integer, LuaTable<String, Object>> luaTable = paramLuaTable1;
    if (paramLuaTable1 == null)
      luaTable = new LuaTable<Integer, LuaTable<String, Object>>(this.c); 
    this.g = luaTable;
    this.a = this.g;
    this.j = this.c.getLuaObject("loadlayout").getFunction();
    this.k = this.c.getLuaObject("table").getField("insert").getFunction();
    this.l = this.c.getLuaObject("table").getField("remove").getFunction();
    this.c.newTable();
    this.j.call(new Object[] { this.f, this.c.getLuaObject(-1), android.widget.AbsListView.class });
    this.c.pop(1);
  }
  
  private int a(Object paramObject1, String paramString, Object paramObject2) { return (paramString.length() > 2 && paramString.substring(0, 2).equals("on") && paramObject2 instanceof LuaFunction) ? b(paramObject1, paramString, paramObject2) : c(paramObject1, paramString, paramObject2); }
  
  private void a(View paramView, LuaTable<String, Object> paramLuaTable) {
    for (Map.Entry entry : paramLuaTable.entrySet()) {
      String str = (String)entry.getKey();
      Object object = entry.getValue();
      if (str.toLowerCase().equals("src")) {
        a(paramView, object);
        continue;
      } 
      a(paramView, str, object);
    } 
  }
  
  private void a(View paramView, Object paramObject) {
    try {
      TextView textView;
      if (paramObject instanceof LuaTable) {
        a(paramView, (LuaTable)paramObject);
        return;
      } 
      if (paramView instanceof TextView) {
        if (paramObject instanceof CharSequence) {
          textView = (TextView)paramView;
          paramObject = (CharSequence)paramObject;
        } else {
          textView = (TextView)textView;
          paramObject = paramObject.toString();
        } 
        textView.setText(paramObject);
        return;
      } 
      if (textView instanceof ImageView) {
        ImageView imageView;
        if (paramObject instanceof Bitmap) {
          ((ImageView)textView).setImageBitmap((Bitmap)paramObject);
          return;
        } 
        if (paramObject instanceof String) {
          imageView = (ImageView)textView;
          paramObject = (new AsyncLoader(this, null)).getBitmap(this.d, (String)paramObject);
        } else if (paramObject instanceof Drawable) {
          imageView = (ImageView)imageView;
          paramObject = (Drawable)paramObject;
        } else {
          if (paramObject instanceof Number) {
            ((ImageView)imageView).setImageResource(((Number)paramObject).intValue());
            return;
          } 
          return;
        } 
        imageView.setImageDrawable(paramObject);
        return;
      } 
    } catch (Exception paramView) {
      this.d.sendError("setHelper", paramView);
    } 
  }
  
  private int b(Object paramObject1, String paramString, Object paramObject2) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("setOn");
    stringBuilder.append(paramString.substring(2));
    stringBuilder.append("Listener");
    String str = stringBuilder.toString();
    for (Method method : LuaJavaAPI.getMethod(paramObject1.getClass(), str, false)) {
      Class[] arrayOfClass = method.getParameterTypes();
      if (arrayOfClass.length == 1 && arrayOfClass[0].isInterface()) {
        this.c.newTable();
        this.c.pushObjectValue(paramObject2);
        this.c.setField(-2, paramString);
        try {
          method.invoke(paramObject1, new Object[] { this.c.getLuaObject(-1).createProxy(arrayOfClass[0]) });
          return 1;
        } catch (Exception paramObject1) {
          throw new LuaException(paramObject1);
        } 
      } 
    } 
    return 0;
  }
  
  private int c(Object paramObject1, String paramString, Object paramObject2) {
    String str2 = paramString;
    if (Character.isLowerCase(paramString.charAt(0))) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(Character.toUpperCase(paramString.charAt(0)));
      stringBuilder.append(paramString.substring(1));
      str2 = stringBuilder.toString();
    } 
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append("set");
    stringBuilder1.append(str2);
    str1 = stringBuilder1.toString();
    Class clazz = paramObject2.getClass();
    StringBuilder stringBuilder2 = new StringBuilder();
    for (Method method : LuaJavaAPI.getMethod(paramObject1.getClass(), str1, false)) {
      Class[] arrayOfClass = method.getParameterTypes();
      if (arrayOfClass.length != 1)
        continue; 
      if (arrayOfClass[0].isPrimitive())
        try {
          if (paramObject2 instanceof Double || paramObject2 instanceof Float) {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = LuaState.convertLuaNumber(Double.valueOf(((Number)paramObject2).doubleValue()), arrayOfClass[0]);
            method.invoke(paramObject1, arrayOfObject);
            return 1;
          } 
          if (paramObject2 instanceof Long || paramObject2 instanceof Integer) {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = LuaState.convertLuaNumber(Long.valueOf(((Number)paramObject2).longValue()), arrayOfClass[0]);
            method.invoke(paramObject1, arrayOfObject);
            return 1;
          } 
          if (paramObject2 instanceof Boolean) {
            method.invoke(paramObject1, new Object[] { (Boolean)paramObject2 });
            return 1;
          } 
          continue;
        } catch (Exception str1) {
          stringBuilder2.append(str1.getMessage());
          stringBuilder2.append("\n");
          continue;
        }  
      if (!arrayOfClass[0].isAssignableFrom(clazz))
        continue; 
      method.invoke(paramObject1, new Object[] { paramObject2 });
      return 1;
    } 
    if (stringBuilder2.length() > 0) {
      paramObject1 = new StringBuilder();
      paramObject1.append("Invalid setter ");
      paramObject1.append(str2);
      paramObject1.append(". Invalid Parameters.\n");
      paramObject1.append(stringBuilder2.toString());
      paramObject1.append(clazz.toString());
      throw new LuaException(paramObject1.toString());
    } 
    paramObject1 = new StringBuilder();
    paramObject1.append("Invalid setter ");
    paramObject1.append(str2);
    paramObject1.append(" is not a method.\n");
    throw new LuaException(paramObject1.toString());
  }
  
  public void add(LuaTable<String, Object> paramLuaTable) {
    this.k.call(new Object[] { this.a, paramLuaTable });
    if (this.p)
      notifyDataSetChanged(); 
  }
  
  public void addAll(LuaTable<Integer, LuaTable<String, Object>> paramLuaTable) {
    int i1 = paramLuaTable.length();
    for (byte b1 = 1; b1 <= i1; b1++) {
      this.k.call(new Object[] { this.a, paramLuaTable.get(Integer.valueOf(b1)) });
    } 
    if (this.p)
      notifyDataSetChanged(); 
  }
  
  public void clear() {
    this.a.clear();
    if (this.p)
      notifyDataSetChanged(); 
  }
  
  public void filter(CharSequence paramCharSequence) { getFilter().filter(paramCharSequence); }
  
  public int getCount() { return this.g.length(); }
  
  public LuaTable<Integer, LuaTable<String, Object>> getData() { return this.g; }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup) { return getView(paramInt, paramView, paramViewGroup); }
  
  public Filter getFilter() {
    if (this.t == null)
      this.t = new ArrayFilter(this, null); 
    return this.t;
  }
  
  public Object getItem(int paramInt) { return this.g.get(Integer.valueOf(paramInt + 1)); }
  
  public long getItemId(int paramInt) { return (paramInt + 1); }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) { // Byte code:
    //   0: aload_2
    //   1: ifnonnull -> 86
    //   4: aload_0
    //   5: getfield c : Lcom/luajava/LuaState;
    //   8: invokevirtual newTable : ()V
    //   11: aload_0
    //   12: getfield c : Lcom/luajava/LuaState;
    //   15: iconst_m1
    //   16: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   19: astore_3
    //   20: aload_0
    //   21: getfield c : Lcom/luajava/LuaState;
    //   24: iconst_1
    //   25: invokevirtual pop : (I)V
    //   28: aload_0
    //   29: getfield j : Lcom/luajava/LuaFunction;
    //   32: iconst_3
    //   33: anewarray java/lang/Object
    //   36: dup
    //   37: iconst_0
    //   38: aload_0
    //   39: getfield f : Lcom/luajava/LuaTable;
    //   42: aastore
    //   43: dup
    //   44: iconst_1
    //   45: aload_3
    //   46: aastore
    //   47: dup
    //   48: iconst_2
    //   49: ldc android/widget/AbsListView
    //   51: aastore
    //   52: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   55: checkcast android/view/View
    //   58: astore #4
    //   60: aload #4
    //   62: aload_3
    //   63: invokevirtual setTag : (Ljava/lang/Object;)V
    //   66: goto -> 97
    //   69: new android/view/View
    //   72: dup
    //   73: aload_0
    //   74: getfield d : Lcom/androlua/LuaContext;
    //   77: invokeinterface getContext : ()Landroid/content/Context;
    //   82: invokespecial <init> : (Landroid/content/Context;)V
    //   85: areturn
    //   86: aload_2
    //   87: invokevirtual getTag : ()Ljava/lang/Object;
    //   90: checkcast com/luajava/LuaObject
    //   93: astore_3
    //   94: aload_2
    //   95: astore #4
    //   97: aload_0
    //   98: getfield g : Lcom/luajava/LuaTable;
    //   101: iload_1
    //   102: iconst_1
    //   103: iadd
    //   104: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   107: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   110: checkcast com/luajava/LuaTable
    //   113: astore #5
    //   115: aload #5
    //   117: ifnonnull -> 156
    //   120: new java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial <init> : ()V
    //   127: astore_2
    //   128: aload_2
    //   129: iload_1
    //   130: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   133: pop
    //   134: aload_2
    //   135: ldc_w ' is null'
    //   138: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: pop
    //   142: ldc_w 'lua'
    //   145: aload_2
    //   146: invokevirtual toString : ()Ljava/lang/String;
    //   149: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   152: pop
    //   153: aload #4
    //   155: areturn
    //   156: aload_0
    //   157: getfield o : Ljava/util/HashMap;
    //   160: aload #4
    //   162: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   165: ifnonnull -> 173
    //   168: iconst_1
    //   169: istore_1
    //   170: goto -> 175
    //   173: iconst_0
    //   174: istore_1
    //   175: iload_1
    //   176: ifeq -> 193
    //   179: aload_0
    //   180: getfield o : Ljava/util/HashMap;
    //   183: aload #4
    //   185: iconst_1
    //   186: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   189: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   192: pop
    //   193: aload #5
    //   195: invokevirtual entrySet : ()Ljava/util/Set;
    //   198: invokeinterface iterator : ()Ljava/util/Iterator;
    //   203: astore #5
    //   205: aload #5
    //   207: invokeinterface hasNext : ()Z
    //   212: ifeq -> 330
    //   215: aload #5
    //   217: invokeinterface next : ()Ljava/lang/Object;
    //   222: checkcast java/util/Map$Entry
    //   225: astore #7
    //   227: aload #7
    //   229: invokeinterface getKey : ()Ljava/lang/Object;
    //   234: checkcast java/lang/String
    //   237: astore #6
    //   239: aload #7
    //   241: invokeinterface getValue : ()Ljava/lang/Object;
    //   246: astore #7
    //   248: aload_3
    //   249: aload #6
    //   251: invokevirtual getField : (Ljava/lang/String;)Lcom/luajava/LuaObject;
    //   254: astore #8
    //   256: aload #8
    //   258: invokevirtual isJavaObject : ()Z
    //   261: ifeq -> 205
    //   264: aload_0
    //   265: getfield h : Lcom/luajava/LuaTable;
    //   268: ifnull -> 296
    //   271: iload_1
    //   272: ifeq -> 296
    //   275: aload_0
    //   276: aload #8
    //   278: invokevirtual getObject : ()Ljava/lang/Object;
    //   281: checkcast android/view/View
    //   284: aload_0
    //   285: getfield h : Lcom/luajava/LuaTable;
    //   288: aload #6
    //   290: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   293: invokespecial a : (Landroid/view/View;Ljava/lang/Object;)V
    //   296: aload_0
    //   297: aload #8
    //   299: invokevirtual getObject : ()Ljava/lang/Object;
    //   302: checkcast android/view/View
    //   305: aload #7
    //   307: invokespecial a : (Landroid/view/View;Ljava/lang/Object;)V
    //   310: goto -> 205
    //   313: astore #6
    //   315: ldc_w 'lua'
    //   318: aload #6
    //   320: invokevirtual getMessage : ()Ljava/lang/String;
    //   323: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   326: pop
    //   327: goto -> 205
    //   330: aload_0
    //   331: getfield q : Z
    //   334: ifeq -> 340
    //   337: aload #4
    //   339: areturn
    //   340: aload_0
    //   341: getfield m : Lcom/luajava/LuaFunction;
    //   344: ifnull -> 444
    //   347: aload_2
    //   348: ifnull -> 444
    //   351: aload_0
    //   352: getfield n : Ljava/util/HashMap;
    //   355: aload_2
    //   356: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   359: checkcast android/view/animation/Animation
    //   362: astore #5
    //   364: aload #5
    //   366: astore_3
    //   367: aload #5
    //   369: ifnonnull -> 429
    //   372: aload_0
    //   373: getfield m : Lcom/luajava/LuaFunction;
    //   376: iconst_0
    //   377: anewarray java/lang/Object
    //   380: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   383: checkcast android/view/animation/Animation
    //   386: astore_3
    //   387: aload_0
    //   388: getfield n : Ljava/util/HashMap;
    //   391: aload_2
    //   392: aload_3
    //   393: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   396: pop
    //   397: goto -> 429
    //   400: astore #5
    //   402: aload_3
    //   403: astore_2
    //   404: aload #5
    //   406: astore_3
    //   407: goto -> 414
    //   410: astore_3
    //   411: aload #5
    //   413: astore_2
    //   414: aload_0
    //   415: getfield d : Lcom/androlua/LuaContext;
    //   418: ldc_w 'setAnimation'
    //   421: aload_3
    //   422: invokeinterface sendError : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   427: aload_2
    //   428: astore_3
    //   429: aload_3
    //   430: ifnull -> 444
    //   433: aload #4
    //   435: invokevirtual clearAnimation : ()V
    //   438: aload #4
    //   440: aload_3
    //   441: invokevirtual startAnimation : (Landroid/view/animation/Animation;)V
    //   444: aload #4
    //   446: areturn
    //   447: astore_2
    //   448: goto -> 69
    // Exception table:
    //   from	to	target	type
    //   4	66	447	com/luajava/LuaException
    //   227	271	313	java/lang/Exception
    //   275	296	313	java/lang/Exception
    //   296	310	313	java/lang/Exception
    //   372	387	410	java/lang/Exception
    //   387	397	400	java/lang/Exception }
  
  public void insert(int paramInt, LuaTable<String, Object> paramLuaTable) {
    this.k.call(new Object[] { this.a, Integer.valueOf(paramInt + 1), paramLuaTable });
    if (this.p)
      notifyDataSetChanged(); 
  }
  
  public void notifyDataSetChanged() {
    super.notifyDataSetChanged();
    if (!this.q) {
      this.q = true;
      (new Handler()).postDelayed(new Runnable(this) {
            public void run() { LuaAdapter.a(this.a, false); }
          }500L);
    } 
  }
  
  public void remove(int paramInt) {
    this.l.call(new Object[] { this.a, Integer.valueOf(paramInt + 1) });
    if (this.p)
      notifyDataSetChanged(); 
  }
  
  public void setAnimation(LuaFunction<Animation> paramLuaFunction) { setAnimationUtil(paramLuaFunction); }
  
  public void setAnimationUtil(LuaFunction<Animation> paramLuaFunction) {
    this.n.clear();
    this.m = paramLuaFunction;
  }
  
  public void setFilter(LuaFunction paramLuaFunction) { this.u = paramLuaFunction; }
  
  public void setNotifyOnChange(boolean paramBoolean) {
    this.p = paramBoolean;
    if (this.p)
      notifyDataSetChanged(); 
  }
  
  public void setStyle(LuaTable<String, Object> paramLuaTable) {
    this.o.clear();
    this.h = paramLuaTable;
  }
  
  private class ArrayFilter extends Filter {
    private ArrayFilter(LuaAdapter this$0) {}
    
    protected Filter.FilterResults performFiltering(CharSequence param1CharSequence) {
      Filter.FilterResults filterResults = new Filter.FilterResults();
      LuaAdapter.a(this.a, param1CharSequence);
      if (LuaAdapter.a(this.a) == null)
        return filterResults; 
      if (LuaAdapter.d(this.a) != null) {
        LuaAdapter.h(this.a).sendEmptyMessage(1);
        return null;
      } 
      filterResults.values = LuaAdapter.a(this.a);
      filterResults.count = LuaAdapter.a(this.a).size();
      return filterResults;
    }
    
    protected void publishResults(CharSequence param1CharSequence, Filter.FilterResults param1FilterResults) {}
  }
  
  private class AsyncLoader extends Thread {
    private String b;
    
    private LuaContext c;
    
    private AsyncLoader(LuaAdapter this$0) {}
    
    public Drawable getBitmap(LuaContext param1LuaContext, String param1String) {
      this.c = param1LuaContext;
      this.b = param1String;
      if (!param1String.toLowerCase().startsWith("http://") && !param1String.toLowerCase().startsWith("https://"))
        return new BitmapDrawable(LuaAdapter.f(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (LuaBitmap.checkCache(param1LuaContext, param1String))
        return new BitmapDrawable(LuaAdapter.f(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (!LuaAdapter.g(this.a).containsKey(this.b)) {
        start();
        LuaAdapter.g(this.a).put(this.b, Boolean.valueOf(true));
      } 
      return new LoadingDrawable(this.c.getContext());
    }
    
    public void run() {
      try {
        LuaBitmap.getBitmap(this.c, this.b);
        LuaAdapter.h(this.a).sendEmptyMessage(0);
        return;
      } catch (IOException iOException) {
        this.c.sendError("AsyncLoader", iOException);
        return;
      } 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
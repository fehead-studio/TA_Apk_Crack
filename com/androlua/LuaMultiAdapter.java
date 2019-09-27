package com.androlua;

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
import android.widget.ImageView;
import android.widget.TextView;
import com.luajava.LuaException;
import com.luajava.LuaFunction;
import com.luajava.LuaJavaAPI;
import com.luajava.LuaState;
import com.luajava.LuaTable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class LuaMultiAdapter extends BaseAdapter {
  private Resources a;
  
  private LuaState b;
  
  private LuaContext c;
  
  private LuaTable<Integer, LuaTable> d;
  
  private LuaTable<Integer, LuaTable<String, Object>> e;
  
  private LuaTable<String, Object> f;
  
  private LuaFunction<View> g;
  
  private LuaFunction h;
  
  private LuaFunction i;
  
  private LuaTable<Integer, LuaFunction<Animation>> j;
  
  private HashMap<View, Animation> k = new HashMap();
  
  private HashMap<View, Boolean> l = new HashMap();
  
  private boolean m = true;
  
  private boolean n;
  
  private Handler o = new Handler(this) {
      public void handleMessage(Message param1Message) { this.a.notifyDataSetChanged(); }
    };
  
  private HashMap<String, Boolean> p = new HashMap();
  
  public LuaMultiAdapter(LuaContext paramLuaContext, LuaTable paramLuaTable) { this(paramLuaContext, null, paramLuaTable); }
  
  public LuaMultiAdapter(LuaContext paramLuaContext, LuaTable<Integer, LuaTable<String, Object>> paramLuaTable1, LuaTable<Integer, LuaTable> paramLuaTable2) {
    this.c = paramLuaContext;
    this.d = paramLuaTable2;
    this.a = this.c.getContext().getResources();
    this.b = paramLuaContext.getLuaState();
    LuaTable<Integer, LuaTable<String, Object>> luaTable = paramLuaTable1;
    if (paramLuaTable1 == null)
      luaTable = new LuaTable<Integer, LuaTable<String, Object>>(this.b); 
    this.e = luaTable;
    this.g = this.b.getLuaObject("loadlayout").getFunction();
    this.h = this.b.getLuaObject("table").getField("insert").getFunction();
    this.i = this.b.getLuaObject("table").getField("remove").getFunction();
    int i1 = this.d.length();
    byte b1;
    for (b1 = 1; b1 <= i1; b1++) {
      this.b.newTable();
      this.g.call(new Object[] { this.d.get(Integer.valueOf(b1)), this.b.getLuaObject(-1), android.widget.AbsListView.class });
      this.b.pop(1);
    } 
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
          paramObject = (new AsyncLoader(this, null)).getBitmap(this.c, (String)paramObject);
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
      this.c.sendError("setHelper", paramView);
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
        this.b.newTable();
        this.b.pushObjectValue(paramObject2);
        this.b.setField(-2, paramString);
        try {
          method.invoke(paramObject1, new Object[] { this.b.getLuaObject(-1).createProxy(arrayOfClass[0]) });
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
    this.h.call(new Object[] { this.e, paramLuaTable });
    if (this.m)
      notifyDataSetChanged(); 
  }
  
  public void addAll(LuaTable<Integer, LuaTable<String, Object>> paramLuaTable) {
    int i1 = paramLuaTable.length();
    for (byte b1 = 1; b1 <= i1; b1++) {
      this.h.call(new Object[] { this.e, paramLuaTable.get(Integer.valueOf(b1)) });
    } 
    if (this.m)
      notifyDataSetChanged(); 
  }
  
  public void clear() {
    this.e.clear();
    if (this.m)
      notifyDataSetChanged(); 
  }
  
  public int getCount() { return this.e.length(); }
  
  public LuaTable<Integer, LuaTable<String, Object>> getData() { return this.e; }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup) { return getView(paramInt, paramView, paramViewGroup); }
  
  public Object getItem(int paramInt) { return this.e.get(Integer.valueOf(paramInt + 1)); }
  
  public long getItemId(int paramInt) { return (paramInt + 1); }
  
  public int getItemViewType(int paramInt) {
    int i1 = ((Long)((LuaTable)this.e.get(Integer.valueOf(paramInt + 1))).get("__type")).intValue() - 1;
    paramInt = i1;
    if (i1 < 0)
      paramInt = 0; 
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) { // Byte code:
    //   0: aload_0
    //   1: getfield e : Lcom/luajava/LuaTable;
    //   4: astore_3
    //   5: iload_1
    //   6: iconst_1
    //   7: iadd
    //   8: istore #6
    //   10: aload_3
    //   11: iload #6
    //   13: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   16: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   19: checkcast com/luajava/LuaTable
    //   22: ldc_w '__type'
    //   25: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   28: checkcast java/lang/Long
    //   31: invokevirtual intValue : ()I
    //   34: istore #5
    //   36: iload #5
    //   38: istore #4
    //   40: iload #5
    //   42: iconst_1
    //   43: if_icmpge -> 49
    //   46: iconst_1
    //   47: istore #4
    //   49: aload_2
    //   50: ifnonnull -> 150
    //   53: aload_0
    //   54: getfield d : Lcom/luajava/LuaTable;
    //   57: iload #4
    //   59: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   62: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   65: checkcast com/luajava/LuaTable
    //   68: astore #7
    //   70: aload_0
    //   71: getfield b : Lcom/luajava/LuaState;
    //   74: invokevirtual newTable : ()V
    //   77: aload_0
    //   78: getfield b : Lcom/luajava/LuaState;
    //   81: iconst_m1
    //   82: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   85: astore_3
    //   86: aload_0
    //   87: getfield b : Lcom/luajava/LuaState;
    //   90: iconst_1
    //   91: invokevirtual pop : (I)V
    //   94: aload_0
    //   95: getfield g : Lcom/luajava/LuaFunction;
    //   98: iconst_3
    //   99: anewarray java/lang/Object
    //   102: dup
    //   103: iconst_0
    //   104: aload #7
    //   106: aastore
    //   107: dup
    //   108: iconst_1
    //   109: aload_3
    //   110: aastore
    //   111: dup
    //   112: iconst_2
    //   113: ldc android/widget/AbsListView
    //   115: aastore
    //   116: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   119: checkcast android/view/View
    //   122: astore #7
    //   124: aload #7
    //   126: aload_3
    //   127: invokevirtual setTag : (Ljava/lang/Object;)V
    //   130: goto -> 161
    //   133: new android/view/View
    //   136: dup
    //   137: aload_0
    //   138: getfield c : Lcom/androlua/LuaContext;
    //   141: invokeinterface getContext : ()Landroid/content/Context;
    //   146: invokespecial <init> : (Landroid/content/Context;)V
    //   149: areturn
    //   150: aload_2
    //   151: invokevirtual getTag : ()Ljava/lang/Object;
    //   154: checkcast com/luajava/LuaObject
    //   157: astore_3
    //   158: aload_2
    //   159: astore #7
    //   161: aload_0
    //   162: getfield e : Lcom/luajava/LuaTable;
    //   165: iload #6
    //   167: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   170: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   173: checkcast com/luajava/LuaTable
    //   176: astore #8
    //   178: aload #8
    //   180: ifnonnull -> 219
    //   183: new java/lang/StringBuilder
    //   186: dup
    //   187: invokespecial <init> : ()V
    //   190: astore_2
    //   191: aload_2
    //   192: iload_1
    //   193: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   196: pop
    //   197: aload_2
    //   198: ldc_w ' is null'
    //   201: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: pop
    //   205: ldc_w 'lua'
    //   208: aload_2
    //   209: invokevirtual toString : ()Ljava/lang/String;
    //   212: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   215: pop
    //   216: aload #7
    //   218: areturn
    //   219: aload_0
    //   220: getfield l : Ljava/util/HashMap;
    //   223: aload #7
    //   225: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   228: ifnonnull -> 236
    //   231: iconst_1
    //   232: istore_1
    //   233: goto -> 238
    //   236: iconst_0
    //   237: istore_1
    //   238: iload_1
    //   239: ifeq -> 256
    //   242: aload_0
    //   243: getfield l : Ljava/util/HashMap;
    //   246: aload #7
    //   248: iconst_1
    //   249: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   252: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   255: pop
    //   256: aload #8
    //   258: invokevirtual entrySet : ()Ljava/util/Set;
    //   261: invokeinterface iterator : ()Ljava/util/Iterator;
    //   266: astore #8
    //   268: aload #8
    //   270: invokeinterface hasNext : ()Z
    //   275: ifeq -> 407
    //   278: aload #8
    //   280: invokeinterface next : ()Ljava/lang/Object;
    //   285: checkcast java/util/Map$Entry
    //   288: astore #10
    //   290: aload #10
    //   292: invokeinterface getKey : ()Ljava/lang/Object;
    //   297: checkcast java/lang/String
    //   300: astore #9
    //   302: aload #9
    //   304: ldc_w 'type'
    //   307: invokevirtual equals : (Ljava/lang/Object;)Z
    //   310: ifeq -> 316
    //   313: goto -> 268
    //   316: aload #10
    //   318: invokeinterface getValue : ()Ljava/lang/Object;
    //   323: astore #10
    //   325: aload_3
    //   326: aload #9
    //   328: invokevirtual getField : (Ljava/lang/String;)Lcom/luajava/LuaObject;
    //   331: astore #11
    //   333: aload #11
    //   335: invokevirtual isJavaObject : ()Z
    //   338: ifeq -> 268
    //   341: aload_0
    //   342: getfield f : Lcom/luajava/LuaTable;
    //   345: ifnull -> 373
    //   348: iload_1
    //   349: ifeq -> 373
    //   352: aload_0
    //   353: aload #11
    //   355: invokevirtual getObject : ()Ljava/lang/Object;
    //   358: checkcast android/view/View
    //   361: aload_0
    //   362: getfield f : Lcom/luajava/LuaTable;
    //   365: aload #9
    //   367: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   370: invokespecial a : (Landroid/view/View;Ljava/lang/Object;)V
    //   373: aload_0
    //   374: aload #11
    //   376: invokevirtual getObject : ()Ljava/lang/Object;
    //   379: checkcast android/view/View
    //   382: aload #10
    //   384: invokespecial a : (Landroid/view/View;Ljava/lang/Object;)V
    //   387: goto -> 268
    //   390: astore #9
    //   392: ldc_w 'lua'
    //   395: aload #9
    //   397: invokevirtual getMessage : ()Ljava/lang/String;
    //   400: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   403: pop
    //   404: goto -> 268
    //   407: aload_0
    //   408: getfield n : Z
    //   411: ifeq -> 417
    //   414: aload #7
    //   416: areturn
    //   417: aload_0
    //   418: getfield j : Lcom/luajava/LuaTable;
    //   421: ifnull -> 532
    //   424: aload_2
    //   425: ifnull -> 532
    //   428: aload_0
    //   429: getfield k : Ljava/util/HashMap;
    //   432: aload_2
    //   433: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   436: checkcast android/view/animation/Animation
    //   439: astore #8
    //   441: aload #8
    //   443: astore_3
    //   444: aload #8
    //   446: ifnonnull -> 517
    //   449: aload_0
    //   450: getfield j : Lcom/luajava/LuaTable;
    //   453: iload #4
    //   455: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   458: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   461: checkcast com/luajava/LuaFunction
    //   464: iconst_0
    //   465: anewarray java/lang/Object
    //   468: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   471: checkcast android/view/animation/Animation
    //   474: astore_3
    //   475: aload_0
    //   476: getfield k : Ljava/util/HashMap;
    //   479: aload_2
    //   480: aload_3
    //   481: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   484: pop
    //   485: goto -> 517
    //   488: astore #8
    //   490: aload_3
    //   491: astore_2
    //   492: aload #8
    //   494: astore_3
    //   495: goto -> 502
    //   498: astore_3
    //   499: aload #8
    //   501: astore_2
    //   502: aload_0
    //   503: getfield c : Lcom/androlua/LuaContext;
    //   506: ldc_w 'setAnimation'
    //   509: aload_3
    //   510: invokeinterface sendError : (Ljava/lang/String;Ljava/lang/Exception;)V
    //   515: aload_2
    //   516: astore_3
    //   517: aload_3
    //   518: ifnull -> 532
    //   521: aload #7
    //   523: invokevirtual clearAnimation : ()V
    //   526: aload #7
    //   528: aload_3
    //   529: invokevirtual startAnimation : (Landroid/view/animation/Animation;)V
    //   532: aload #7
    //   534: areturn
    //   535: astore_2
    //   536: goto -> 133
    // Exception table:
    //   from	to	target	type
    //   53	130	535	com/luajava/LuaException
    //   290	313	390	java/lang/Exception
    //   316	348	390	java/lang/Exception
    //   352	373	390	java/lang/Exception
    //   373	387	390	java/lang/Exception
    //   449	475	498	java/lang/Exception
    //   475	485	488	java/lang/Exception }
  
  public int getViewTypeCount() { return this.d.length(); }
  
  public void insert(int paramInt, LuaTable<String, Object> paramLuaTable) {
    this.h.call(new Object[] { this.e, Integer.valueOf(paramInt + 1), paramLuaTable });
    if (this.m)
      notifyDataSetChanged(); 
  }
  
  public void notifyDataSetChanged() {
    super.notifyDataSetChanged();
    if (!this.n) {
      this.n = true;
      (new Handler()).postDelayed(new Runnable(this) {
            public void run() { LuaMultiAdapter.a(this.a, false); }
          }500L);
    } 
  }
  
  public void remove(int paramInt) {
    this.i.call(new Object[] { this.e, Integer.valueOf(paramInt + 1) });
    if (this.m)
      notifyDataSetChanged(); 
  }
  
  public void setAnimation(LuaTable<Integer, LuaFunction<Animation>> paramLuaTable) { setAnimationUtil(paramLuaTable); }
  
  public void setAnimationUtil(LuaTable<Integer, LuaFunction<Animation>> paramLuaTable) {
    this.k.clear();
    this.j = paramLuaTable;
  }
  
  public void setNotifyOnChange(boolean paramBoolean) {
    this.m = paramBoolean;
    if (this.m)
      notifyDataSetChanged(); 
  }
  
  public void setStyle(LuaTable<String, Object> paramLuaTable) {
    this.l.clear();
    this.f = paramLuaTable;
  }
  
  private class AsyncLoader extends Thread {
    private String b;
    
    private LuaContext c;
    
    private AsyncLoader(LuaMultiAdapter this$0) {}
    
    public Drawable getBitmap(LuaContext param1LuaContext, String param1String) {
      this.c = param1LuaContext;
      this.b = param1String;
      if (!param1String.toLowerCase().startsWith("http://") && !param1String.toLowerCase().startsWith("https://"))
        return new BitmapDrawable(LuaMultiAdapter.a(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (LuaBitmap.checkCache(param1LuaContext, param1String))
        return new BitmapDrawable(LuaMultiAdapter.a(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (!LuaMultiAdapter.b(this.a).containsKey(this.b)) {
        start();
        LuaMultiAdapter.b(this.a).put(this.b, Boolean.valueOf(true));
      } 
      return new LoadingDrawable(this.c.getContext());
    }
    
    public void run() {
      try {
        LuaBitmap.getBitmap(this.c, this.b);
        LuaMultiAdapter.c(this.a).sendEmptyMessage(0);
        return;
      } catch (IOException iOException) {
        this.c.sendError("AsyncLoader", iOException);
        return;
      } 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaMultiAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
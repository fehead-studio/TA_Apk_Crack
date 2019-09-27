package com.androlua;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.BaseExpandableListAdapter;
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

public class LuaExpandableListAdapter extends BaseExpandableListAdapter {
  private BitmapDrawable a;
  
  private Resources b;
  
  private LuaState c;
  
  private LuaContext d;
  
  private LuaTable<Integer, LuaTable<String, Object>> e;
  
  private LuaTable<Integer, LuaTable<Integer, LuaTable<String, Object>>> f;
  
  private HashMap<View, Animation> g = new HashMap();
  
  private LuaTable h;
  
  private LuaTable i;
  
  private LuaFunction<View> j;
  
  private LuaFunction<?> k;
  
  private LuaFunction<?> l;
  
  private boolean m;
  
  private LuaFunction<Animation> n;
  
  private boolean o;
  
  private Handler p = new Handler(this) {
      public void handleMessage(Message param1Message) { this.a.notifyDataSetChanged(); }
    };
  
  private HashMap<String, Boolean> q = new HashMap();
  
  public LuaExpandableListAdapter(LuaContext paramLuaContext, LuaTable paramLuaTable1, LuaTable paramLuaTable2) { this(paramLuaContext, null, null, paramLuaTable1, paramLuaTable2); }
  
  public LuaExpandableListAdapter(LuaContext paramLuaContext, LuaTable<Integer, LuaTable<String, Object>> paramLuaTable1, LuaTable<Integer, LuaTable<Integer, LuaTable<String, Object>>> paramLuaTable2, LuaTable paramLuaTable3, LuaTable paramLuaTable4) {
    this.d = paramLuaContext;
    this.c = paramLuaContext.getLuaState();
    this.b = this.d.getContext().getResources();
    this.a = new BitmapDrawable(this.b, getClass().getResourceAsStream("/res/drawable/icon.png"));
    this.a.setColorFilter(-1996488705, PorterDuff.Mode.SRC_ATOP);
    this.h = paramLuaTable3;
    this.i = paramLuaTable4;
    LuaTable<Integer, LuaTable<String, Object>> luaTable = paramLuaTable1;
    if (paramLuaTable1 == null)
      luaTable = new LuaTable<Integer, LuaTable<String, Object>>(this.c); 
    paramLuaTable1 = paramLuaTable2;
    if (paramLuaTable2 == null)
      paramLuaTable1 = new LuaTable<Integer, LuaTable<String, Object>>(this.c); 
    this.e = luaTable;
    this.f = paramLuaTable1;
    this.j = this.c.getLuaObject("loadlayout").getFunction();
    this.k = this.c.getLuaObject("table").getField("insert").getFunction();
    this.l = this.c.getLuaObject("table").getField("remove").getFunction();
    this.c.newTable();
    this.j.call(new Object[] { this.h, this.c.getLuaObject(-1), android.widget.AbsListView.class });
    this.j.call(new Object[] { this.i, this.c.getLuaObject(-1), android.widget.AbsListView.class });
    this.c.pop(1);
  }
  
  private int a(Object paramObject1, String paramString, Object paramObject2) { return (paramString.length() > 2 && paramString.substring(0, 2).equals("on") && paramObject2 instanceof LuaFunction) ? b(paramObject1, paramString, paramObject2) : c(paramObject1, paramString, paramObject2); }
  
  private void a(View paramView, LuaTable<String, Object> paramLuaTable) {
    for (Map.Entry entry : paramLuaTable.entrySet()) {
      try {
        String str = (String)entry.getKey();
        Object object = entry.getValue();
        if (str.toLowerCase().equals("src")) {
          a(paramView, object);
          continue;
        } 
        a(paramView, str, object);
      } catch (Exception exception) {
        Log.i("lua", exception.getMessage());
      } 
    } 
  }
  
  private void a(View paramView, Object paramObject) {
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
    if (textView instanceof ImageView)
      try {
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
      } catch (Exception textView) {
        Log.i("lua", textView.getMessage());
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
  
  public GroupItem add(LuaTable<String, Object> paramLuaTable) {
    this.e.put(Integer.valueOf(this.e.length() + 1), paramLuaTable);
    paramLuaTable = new LuaTable<String, Object>(this.c);
    this.f.put(Integer.valueOf(this.e.length()), paramLuaTable);
    if (this.o)
      notifyDataSetChanged(); 
    return new GroupItem(this, paramLuaTable);
  }
  
  public GroupItem add(LuaTable<String, Object> paramLuaTable1, LuaTable<Integer, LuaTable<String, Object>> paramLuaTable2) {
    this.e.put(Integer.valueOf(this.e.length() + 1), paramLuaTable1);
    this.f.put(Integer.valueOf(this.e.length()), paramLuaTable2);
    if (this.o)
      notifyDataSetChanged(); 
    return new GroupItem(this, paramLuaTable2);
  }
  
  public void clear() {
    this.e.clear();
    this.f.clear();
    if (this.o)
      notifyDataSetChanged(); 
  }
  
  public Object getChild(int paramInt1, int paramInt2) { return ((LuaTable)this.f.get(Integer.valueOf(paramInt1 + 1))).get(Integer.valueOf(paramInt2 + 1)); }
  
  public LuaTable<Integer, LuaTable<Integer, LuaTable<String, Object>>> getChildData() { return this.f; }
  
  public long getChildId(int paramInt1, int paramInt2) { return (paramInt2 + 1); }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) { // Byte code:
    //   0: aload #4
    //   2: ifnonnull -> 78
    //   5: new com/luajava/LuaTable
    //   8: dup
    //   9: aload_0
    //   10: getfield c : Lcom/luajava/LuaState;
    //   13: invokespecial <init> : (Lcom/luajava/LuaState;)V
    //   16: astore #5
    //   18: aload_0
    //   19: getfield j : Lcom/luajava/LuaFunction;
    //   22: iconst_3
    //   23: anewarray java/lang/Object
    //   26: dup
    //   27: iconst_0
    //   28: aload_0
    //   29: getfield i : Lcom/luajava/LuaTable;
    //   32: aastore
    //   33: dup
    //   34: iconst_1
    //   35: aload #5
    //   37: aastore
    //   38: dup
    //   39: iconst_2
    //   40: ldc android/widget/AbsListView
    //   42: aastore
    //   43: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   46: checkcast android/view/View
    //   49: astore #6
    //   51: aload #6
    //   53: aload #5
    //   55: invokevirtual setTag : (Ljava/lang/Object;)V
    //   58: goto -> 92
    //   61: new android/view/View
    //   64: dup
    //   65: aload_0
    //   66: getfield d : Lcom/androlua/LuaContext;
    //   69: invokeinterface getContext : ()Landroid/content/Context;
    //   74: invokespecial <init> : (Landroid/content/Context;)V
    //   77: areturn
    //   78: aload #4
    //   80: invokevirtual getTag : ()Ljava/lang/Object;
    //   83: checkcast com/luajava/LuaTable
    //   86: astore #5
    //   88: aload #4
    //   90: astore #6
    //   92: aload_0
    //   93: getfield f : Lcom/luajava/LuaTable;
    //   96: iload_1
    //   97: iconst_1
    //   98: iadd
    //   99: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   102: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   105: checkcast com/luajava/LuaTable
    //   108: iload_2
    //   109: iconst_1
    //   110: iadd
    //   111: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   114: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   117: checkcast com/luajava/LuaTable
    //   120: astore #7
    //   122: aload #7
    //   124: ifnonnull -> 166
    //   127: new java/lang/StringBuilder
    //   130: dup
    //   131: invokespecial <init> : ()V
    //   134: astore #4
    //   136: aload #4
    //   138: iload_2
    //   139: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   142: pop
    //   143: aload #4
    //   145: ldc_w ' is null'
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: pop
    //   152: ldc 'lua'
    //   154: aload #4
    //   156: invokevirtual toString : ()Ljava/lang/String;
    //   159: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   162: pop
    //   163: aload #6
    //   165: areturn
    //   166: aload #7
    //   168: invokevirtual entrySet : ()Ljava/util/Set;
    //   171: invokeinterface iterator : ()Ljava/util/Iterator;
    //   176: astore #7
    //   178: aload #7
    //   180: invokeinterface hasNext : ()Z
    //   185: ifeq -> 265
    //   188: aload #7
    //   190: invokeinterface next : ()Ljava/lang/Object;
    //   195: checkcast java/util/Map$Entry
    //   198: astore #9
    //   200: aload #9
    //   202: invokeinterface getKey : ()Ljava/lang/Object;
    //   207: checkcast java/lang/String
    //   210: astore #8
    //   212: aload #9
    //   214: invokeinterface getValue : ()Ljava/lang/Object;
    //   219: astore #9
    //   221: aload #5
    //   223: aload #8
    //   225: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   228: checkcast android/view/View
    //   231: astore #8
    //   233: aload #8
    //   235: ifnull -> 178
    //   238: aload_0
    //   239: aload #8
    //   241: aload #9
    //   243: invokespecial a : (Landroid/view/View;Ljava/lang/Object;)V
    //   246: goto -> 178
    //   249: astore #8
    //   251: ldc 'lua'
    //   253: aload #8
    //   255: invokevirtual getMessage : ()Ljava/lang/String;
    //   258: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   261: pop
    //   262: goto -> 178
    //   265: aload_0
    //   266: getfield m : Z
    //   269: ifeq -> 275
    //   272: aload #6
    //   274: areturn
    //   275: aload_0
    //   276: getfield n : Lcom/luajava/LuaFunction;
    //   279: ifnull -> 392
    //   282: aload #4
    //   284: ifnull -> 392
    //   287: aload_0
    //   288: getfield g : Ljava/util/HashMap;
    //   291: aload #4
    //   293: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   296: checkcast android/view/animation/Animation
    //   299: astore #7
    //   301: aload #7
    //   303: astore #5
    //   305: aload #7
    //   307: ifnonnull -> 375
    //   310: aload_0
    //   311: getfield n : Lcom/luajava/LuaFunction;
    //   314: iconst_0
    //   315: anewarray java/lang/Object
    //   318: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   321: checkcast android/view/animation/Animation
    //   324: astore #5
    //   326: aload_0
    //   327: getfield g : Ljava/util/HashMap;
    //   330: aload #4
    //   332: aload #5
    //   334: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   337: pop
    //   338: goto -> 375
    //   341: astore #7
    //   343: aload #5
    //   345: astore #4
    //   347: aload #7
    //   349: astore #5
    //   351: goto -> 360
    //   354: astore #5
    //   356: aload #7
    //   358: astore #4
    //   360: ldc 'lua'
    //   362: aload #5
    //   364: invokevirtual getMessage : ()Ljava/lang/String;
    //   367: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   370: pop
    //   371: aload #4
    //   373: astore #5
    //   375: aload #5
    //   377: ifnull -> 392
    //   380: aload #6
    //   382: invokevirtual clearAnimation : ()V
    //   385: aload #6
    //   387: aload #5
    //   389: invokevirtual startAnimation : (Landroid/view/animation/Animation;)V
    //   392: aload #6
    //   394: areturn
    //   395: astore #4
    //   397: goto -> 61
    // Exception table:
    //   from	to	target	type
    //   5	58	395	com/luajava/LuaException
    //   200	233	249	java/lang/Exception
    //   238	246	249	java/lang/Exception
    //   310	326	354	java/lang/Exception
    //   326	338	341	java/lang/Exception }
  
  public int getChildrenCount(int paramInt) { return ((LuaTable)this.f.get(Integer.valueOf(paramInt + 1))).length(); }
  
  public Object getGroup(int paramInt) { return this.e.get(Integer.valueOf(paramInt + 1)); }
  
  public int getGroupCount() { return this.e.length(); }
  
  public LuaTable<Integer, LuaTable<String, Object>> getGroupData() { return this.e; }
  
  public long getGroupId(int paramInt) { return (paramInt + 1); }
  
  public GroupItem getGroupItem(int paramInt) { return new GroupItem(this, (LuaTable)this.f.get(Integer.valueOf(paramInt + 1))); }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup) { // Byte code:
    //   0: aload_3
    //   1: ifnonnull -> 77
    //   4: new com/luajava/LuaTable
    //   7: dup
    //   8: aload_0
    //   9: getfield c : Lcom/luajava/LuaState;
    //   12: invokespecial <init> : (Lcom/luajava/LuaState;)V
    //   15: astore #4
    //   17: aload_0
    //   18: getfield j : Lcom/luajava/LuaFunction;
    //   21: iconst_3
    //   22: anewarray java/lang/Object
    //   25: dup
    //   26: iconst_0
    //   27: aload_0
    //   28: getfield h : Lcom/luajava/LuaTable;
    //   31: aastore
    //   32: dup
    //   33: iconst_1
    //   34: aload #4
    //   36: aastore
    //   37: dup
    //   38: iconst_2
    //   39: ldc android/widget/AbsListView
    //   41: aastore
    //   42: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   45: checkcast android/view/View
    //   48: astore #5
    //   50: aload #5
    //   52: aload #4
    //   54: invokevirtual setTag : (Ljava/lang/Object;)V
    //   57: goto -> 89
    //   60: new android/view/View
    //   63: dup
    //   64: aload_0
    //   65: getfield d : Lcom/androlua/LuaContext;
    //   68: invokeinterface getContext : ()Landroid/content/Context;
    //   73: invokespecial <init> : (Landroid/content/Context;)V
    //   76: areturn
    //   77: aload_3
    //   78: invokevirtual getTag : ()Ljava/lang/Object;
    //   81: checkcast com/luajava/LuaTable
    //   84: astore #4
    //   86: aload_3
    //   87: astore #5
    //   89: aload_0
    //   90: getfield e : Lcom/luajava/LuaTable;
    //   93: iload_1
    //   94: iconst_1
    //   95: iadd
    //   96: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   99: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   102: checkcast com/luajava/LuaTable
    //   105: astore #6
    //   107: aload #6
    //   109: ifnonnull -> 147
    //   112: new java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial <init> : ()V
    //   119: astore_3
    //   120: aload_3
    //   121: iload_1
    //   122: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   125: pop
    //   126: aload_3
    //   127: ldc_w ' is null'
    //   130: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: pop
    //   134: ldc 'lua'
    //   136: aload_3
    //   137: invokevirtual toString : ()Ljava/lang/String;
    //   140: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   143: pop
    //   144: aload #5
    //   146: areturn
    //   147: aload #6
    //   149: invokevirtual entrySet : ()Ljava/util/Set;
    //   152: invokeinterface iterator : ()Ljava/util/Iterator;
    //   157: astore #6
    //   159: aload #6
    //   161: invokeinterface hasNext : ()Z
    //   166: ifeq -> 246
    //   169: aload #6
    //   171: invokeinterface next : ()Ljava/lang/Object;
    //   176: checkcast java/util/Map$Entry
    //   179: astore #8
    //   181: aload #8
    //   183: invokeinterface getKey : ()Ljava/lang/Object;
    //   188: checkcast java/lang/String
    //   191: astore #7
    //   193: aload #8
    //   195: invokeinterface getValue : ()Ljava/lang/Object;
    //   200: astore #8
    //   202: aload #4
    //   204: aload #7
    //   206: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   209: checkcast android/view/View
    //   212: astore #7
    //   214: aload #7
    //   216: ifnull -> 159
    //   219: aload_0
    //   220: aload #7
    //   222: aload #8
    //   224: invokespecial a : (Landroid/view/View;Ljava/lang/Object;)V
    //   227: goto -> 159
    //   230: astore #7
    //   232: ldc 'lua'
    //   234: aload #7
    //   236: invokevirtual getMessage : ()Ljava/lang/String;
    //   239: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   242: pop
    //   243: goto -> 159
    //   246: aload_0
    //   247: getfield m : Z
    //   250: ifeq -> 256
    //   253: aload #5
    //   255: areturn
    //   256: aload_0
    //   257: getfield n : Lcom/luajava/LuaFunction;
    //   260: ifnull -> 367
    //   263: aload_3
    //   264: ifnull -> 367
    //   267: aload_0
    //   268: getfield g : Ljava/util/HashMap;
    //   271: aload_3
    //   272: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   275: checkcast android/view/animation/Animation
    //   278: astore #6
    //   280: aload #6
    //   282: astore #4
    //   284: aload #6
    //   286: ifnonnull -> 350
    //   289: aload_0
    //   290: getfield n : Lcom/luajava/LuaFunction;
    //   293: iconst_0
    //   294: anewarray java/lang/Object
    //   297: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   300: checkcast android/view/animation/Animation
    //   303: astore #4
    //   305: aload_0
    //   306: getfield g : Ljava/util/HashMap;
    //   309: aload_3
    //   310: aload #4
    //   312: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   315: pop
    //   316: goto -> 350
    //   319: astore #6
    //   321: aload #4
    //   323: astore_3
    //   324: aload #6
    //   326: astore #4
    //   328: goto -> 336
    //   331: astore #4
    //   333: aload #6
    //   335: astore_3
    //   336: ldc 'lua'
    //   338: aload #4
    //   340: invokevirtual getMessage : ()Ljava/lang/String;
    //   343: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   346: pop
    //   347: aload_3
    //   348: astore #4
    //   350: aload #4
    //   352: ifnull -> 367
    //   355: aload #5
    //   357: invokevirtual clearAnimation : ()V
    //   360: aload #5
    //   362: aload #4
    //   364: invokevirtual startAnimation : (Landroid/view/animation/Animation;)V
    //   367: aload #5
    //   369: areturn
    //   370: astore_3
    //   371: goto -> 60
    // Exception table:
    //   from	to	target	type
    //   4	57	370	com/luajava/LuaException
    //   181	214	230	java/lang/Exception
    //   219	227	230	java/lang/Exception
    //   289	305	331	java/lang/Exception
    //   305	316	319	java/lang/Exception }
  
  public boolean hasStableIds() { return false; }
  
  public GroupItem insert(int paramInt, LuaTable<String, Object> paramLuaTable1, LuaTable<Integer, LuaTable<String, Object>> paramLuaTable2) {
    LuaFunction luaFunction = this.k;
    LuaTable luaTable = this.e;
    paramInt++;
    luaFunction.call(new Object[] { luaTable, Integer.valueOf(paramInt), paramLuaTable1 });
    this.k.call(new Object[] { this.f, Integer.valueOf(paramInt), paramLuaTable2 });
    if (this.o)
      notifyDataSetChanged(); 
    return new GroupItem(this, paramLuaTable2);
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2) { return false; }
  
  public void remove(int paramInt) {
    this.l.call(new Object[] { this.e, Integer.valueOf(paramInt + 1) });
    if (this.o)
      notifyDataSetChanged(); 
  }
  
  public void setAnimationUtil(LuaFunction<Animation> paramLuaFunction) {
    this.g.clear();
    this.n = paramLuaFunction;
  }
  
  public void setNotifyOnChange(boolean paramBoolean) {
    this.o = paramBoolean;
    if (this.o)
      notifyDataSetChanged(); 
  }
  
  private class AsyncLoader extends Thread {
    private String b;
    
    private LuaContext c;
    
    private AsyncLoader(LuaExpandableListAdapter this$0) {}
    
    public Drawable getBitmap(LuaContext param1LuaContext, String param1String) {
      this.c = param1LuaContext;
      this.b = param1String;
      if (!param1String.toLowerCase().startsWith("http://") && !param1String.toLowerCase().startsWith("https://"))
        return new BitmapDrawable(LuaExpandableListAdapter.d(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (LuaBitmap.checkCache(param1LuaContext, param1String))
        return new BitmapDrawable(LuaExpandableListAdapter.d(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (!LuaExpandableListAdapter.e(this.a).containsKey(this.b)) {
        start();
        LuaExpandableListAdapter.e(this.a).put(this.b, Boolean.valueOf(true));
      } 
      return LuaExpandableListAdapter.f(this.a);
    }
    
    public void run() {
      try {
        LuaBitmap.getBitmap(this.c, this.b);
        LuaExpandableListAdapter.g(this.a).sendEmptyMessage(0);
        return;
      } catch (IOException iOException) {
        this.c.sendError("AsyncLoader", iOException);
        return;
      } 
    }
  }
  
  private class GroupItem {
    private LuaTable<Integer, LuaTable<String, Object>> b;
    
    public GroupItem(LuaExpandableListAdapter this$0, LuaTable<Integer, LuaTable<String, Object>> param1LuaTable) { this.b = param1LuaTable; }
    
    public void add(LuaTable<String, Object> param1LuaTable) {
      this.b.put(Integer.valueOf(this.b.length() + 1), param1LuaTable);
      if (LuaExpandableListAdapter.a(this.a))
        this.a.notifyDataSetChanged(); 
    }
    
    public void clear() {
      this.b.clear();
      if (LuaExpandableListAdapter.a(this.a))
        this.a.notifyDataSetChanged(); 
    }
    
    public LuaTable<Integer, LuaTable<String, Object>> getData() { return this.b; }
    
    public void insert(int param1Int, LuaTable<String, Object> param1LuaTable) {
      LuaExpandableListAdapter.b(this.a).call(new Object[] { this.b, Integer.valueOf(param1Int + 1), param1LuaTable });
      if (LuaExpandableListAdapter.a(this.a))
        this.a.notifyDataSetChanged(); 
    }
    
    public void remove(int param1Int) {
      LuaExpandableListAdapter.c(this.a).call(new Object[] { this.b, Integer.valueOf(param1Int + 1) });
      if (LuaExpandableListAdapter.a(this.a))
        this.a.notifyDataSetChanged(); 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaExpandableListAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.androlua;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ArrayListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.luajava.LuaObject;
import com.luajava.LuaState;
import java.io.IOException;
import java.util.HashMap;

public class LuaArrayAdapter extends ArrayListAdapter {
  private Resources a;
  
  private LuaContext b;
  
  private LuaState c;
  
  private LuaObject d;
  
  private LuaObject e;
  
  private Animation f;
  
  private Handler g = new Handler(this) {
      public void handleMessage(Message param1Message) { this.a.notifyDataSetChanged(); }
    };
  
  private HashMap<String, Boolean> h = new HashMap();
  
  public LuaArrayAdapter(LuaContext paramLuaContext, LuaObject paramLuaObject) { this(paramLuaContext, paramLuaObject, new String[0]); }
  
  public LuaArrayAdapter(LuaContext paramLuaContext, LuaObject paramLuaObject, Object[] paramArrayOfObject) {
    super(paramLuaContext.getContext(), 0, paramArrayOfObject);
    this.b = paramLuaContext;
    this.d = paramLuaObject;
    this.a = this.b.getContext().getResources();
    this.c = paramLuaContext.getLuaState();
    this.e = this.c.getLuaObject("loadlayout");
    this.c.newTable();
    this.e.call(new Object[] { this.d, this.c.getLuaObject(-1), android.widget.AbsListView.class });
    this.c.pop(1);
  }
  
  private void a(View paramView, Object paramObject) {
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
        Drawable drawable;
        ImageView imageView = (ImageView)textView;
        boolean bool = paramObject instanceof Bitmap;
        textView = null;
        if (bool) {
          drawable = new BitmapDrawable(this.a, (Bitmap)paramObject);
        } else if (paramObject instanceof String) {
          drawable = (new AsyncLoader(this, null)).getBitmap(this.b, (String)paramObject);
        } else if (paramObject instanceof Drawable) {
          drawable = (Drawable)paramObject;
        } else if (paramObject instanceof Number) {
          drawable = this.a.getDrawable(((Number)paramObject).intValue());
        } 
        imageView.setImageDrawable(drawable);
        if (drawable instanceof BitmapDrawable) {
          Bitmap bitmap = ((BitmapDrawable)drawable).getBitmap();
          int i = bitmap.getWidth();
          int j = bitmap.getHeight();
          if (imageView.getScaleType() == ImageView.ScaleType.FIT_XY) {
            i = (int)(this.b.getWidth() * j / i);
            imageView.setLayoutParams(new ViewGroup.LayoutParams(this.b.getWidth(), i));
            return;
          } 
        } 
      } catch (Exception textView) {
        Log.i("lua", textView.getMessage());
      }  
  }
  
  public Animation getAnimation() { return this.f; }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup) { return getView(paramInt, paramView, paramViewGroup); }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) { // Byte code:
    //   0: aload_2
    //   1: astore_3
    //   2: aload_2
    //   3: ifnonnull -> 81
    //   6: aload_0
    //   7: getfield c : Lcom/luajava/LuaState;
    //   10: invokevirtual newTable : ()V
    //   13: aload_0
    //   14: getfield c : Lcom/luajava/LuaState;
    //   17: iconst_m1
    //   18: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   21: astore_2
    //   22: aload_0
    //   23: getfield c : Lcom/luajava/LuaState;
    //   26: iconst_1
    //   27: invokevirtual pop : (I)V
    //   30: aload_0
    //   31: getfield e : Lcom/luajava/LuaObject;
    //   34: iconst_3
    //   35: anewarray java/lang/Object
    //   38: dup
    //   39: iconst_0
    //   40: aload_0
    //   41: getfield d : Lcom/luajava/LuaObject;
    //   44: aastore
    //   45: dup
    //   46: iconst_1
    //   47: aload_2
    //   48: aastore
    //   49: dup
    //   50: iconst_2
    //   51: ldc android/widget/AbsListView
    //   53: aastore
    //   54: invokevirtual call : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   57: checkcast android/view/View
    //   60: astore_3
    //   61: goto -> 81
    //   64: new android/view/View
    //   67: dup
    //   68: aload_0
    //   69: getfield b : Lcom/androlua/LuaContext;
    //   72: invokeinterface getContext : ()Landroid/content/Context;
    //   77: invokespecial <init> : (Landroid/content/Context;)V
    //   80: areturn
    //   81: aload_0
    //   82: aload_3
    //   83: aload_0
    //   84: iload_1
    //   85: invokevirtual getItem : (I)Ljava/lang/Object;
    //   88: invokespecial a : (Landroid/view/View;Ljava/lang/Object;)V
    //   91: aload_0
    //   92: getfield f : Landroid/view/animation/Animation;
    //   95: ifnull -> 106
    //   98: aload_3
    //   99: aload_0
    //   100: getfield f : Landroid/view/animation/Animation;
    //   103: invokevirtual startAnimation : (Landroid/view/animation/Animation;)V
    //   106: aload_3
    //   107: areturn
    //   108: astore_2
    //   109: goto -> 64
    // Exception table:
    //   from	to	target	type
    //   30	61	108	com/luajava/LuaException }
  
  public void setAnimation(Animation paramAnimation) { this.f = paramAnimation; }
  
  private class AsyncLoader extends Thread {
    private String b;
    
    private LuaContext c;
    
    private AsyncLoader(LuaArrayAdapter this$0) {}
    
    public Drawable getBitmap(LuaContext param1LuaContext, String param1String) {
      this.c = param1LuaContext;
      this.b = param1String;
      if (!param1String.toLowerCase().startsWith("http://") && !param1String.toLowerCase().startsWith("https://"))
        return new BitmapDrawable(LuaArrayAdapter.a(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (LuaBitmap.checkCache(param1LuaContext, param1String))
        return new BitmapDrawable(LuaArrayAdapter.a(this.a), LuaBitmap.getBitmap(param1LuaContext, param1String)); 
      if (!LuaArrayAdapter.b(this.a).containsKey(this.b)) {
        start();
        LuaArrayAdapter.b(this.a).put(this.b, Boolean.valueOf(true));
      } 
      return new LoadingDrawable(this.c.getContext());
    }
    
    public void run() {
      try {
        LuaBitmap.getBitmap(this.c, this.b);
        LuaArrayAdapter.c(this.a).sendEmptyMessage(0);
        return;
      } catch (IOException iOException) {
        this.c.sendError("AsyncLoader", iOException);
        return;
      } 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaArrayAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
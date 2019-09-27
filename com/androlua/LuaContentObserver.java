package com.androlua;

import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;

public class LuaContentObserver extends ContentObserver implements LuaGcable {
  private OnChangeListener a;
  
  private boolean b;
  
  private LuaContentObserver(Handler paramHandler) { super(paramHandler); }
  
  public LuaContentObserver(LuaContext paramLuaContext, Uri paramUri) {
    this(new Handler(LuaApplication.getInstance().getMainLooper()));
    paramLuaContext.regGc(this);
    LuaApplication.getInstance().getContentResolver().registerContentObserver(paramUri, true, this);
  }
  
  public LuaContentObserver(LuaContext paramLuaContext, String paramString) {
    this(new Handler(LuaApplication.getInstance().getMainLooper()));
    Uri uri = Uri.parse(paramString);
    paramLuaContext.regGc(this);
    LuaApplication.getInstance().getContentResolver().registerContentObserver(uri, true, this);
  }
  
  public void gc() {
    LuaApplication.getInstance().getContentResolver().unregisterContentObserver(this);
    this.b = true;
  }
  
  public boolean isGc() { return this.b; }
  
  public void onChange(boolean paramBoolean, Uri paramUri) {
    super.onChange(paramBoolean, paramUri);
    if (this.a != null) {
      Cursor cursor = LuaApplication.getInstance().getContentResolver().query(paramUri, null, null, null, null);
      if (cursor != null)
        cursor.moveToFirst(); 
      this.a.onChange(paramBoolean, paramUri, cursor);
      if (cursor != null)
        cursor.close(); 
    } 
  }
  
  public void setOnChangeListener(OnChangeListener paramOnChangeListener) { this.a = paramOnChangeListener; }
  
  public static interface OnChangeListener {
    void onChange(boolean param1Boolean, Uri param1Uri, Cursor param1Cursor);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaContentObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
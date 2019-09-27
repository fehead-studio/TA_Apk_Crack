package com.androlua;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.luajava.LuaException;
import com.luajava.LuaFunction;
import com.luajava.LuaObject;

public class LuaDrawable extends Drawable {
  private final LuaContext a;
  
  private LuaObject b;
  
  private Paint c;
  
  private LuaFunction d;
  
  public LuaDrawable(LuaFunction paramLuaFunction) {
    this.b = paramLuaFunction;
    this.c = new Paint();
    this.a = this.b.getLuaState().getContext();
  }
  
  public void draw(Canvas paramCanvas) {
    try {
      if (this.d == null) {
        Object object = this.b.call(new Object[] { paramCanvas, this.c, this });
        if (object != null && object instanceof LuaFunction)
          this.d = (LuaFunction)object; 
      } 
      if (this.d != null) {
        this.d.call(new Object[] { paramCanvas });
        return;
      } 
    } catch (LuaException paramCanvas) {
      this.a.sendError("onDraw", paramCanvas);
    } 
  }
  
  public int getOpacity() { return 0; }
  
  public Paint getPaint() { return this.c; }
  
  public void setAlpha(int paramInt) { this.c.setAlpha(paramInt); }
  
  public void setColorFilter(ColorFilter paramColorFilter) { this.c.setColorFilter(paramColorFilter); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
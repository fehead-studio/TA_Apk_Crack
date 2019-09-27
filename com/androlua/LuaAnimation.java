package com.androlua;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.luajava.LuaException;
import com.luajava.LuaFunction;

public class LuaAnimation extends Animation {
  private final LuaContext a;
  
  private LuaFunction b;
  
  private LuaFunction c;
  
  public LuaAnimation(LuaFunction paramLuaFunction) {
    this.b = paramLuaFunction;
    this.a = this.b.getLuaState().getContext();
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation) {
    super.applyTransformation(paramFloat, paramTransformation);
    try {
      this.b.call(new Object[] { Float.valueOf(paramFloat), paramTransformation });
      if (this.c == null) {
        Object object = this.b.call(new Object[] { Float.valueOf(paramFloat), paramTransformation, this });
        if (object != null && object instanceof LuaFunction)
          this.c = (LuaFunction)object; 
      } 
      if (this.c != null) {
        this.c.call(new Object[] { Float.valueOf(paramFloat), paramTransformation });
        return;
      } 
    } catch (LuaException paramTransformation) {
      this.a.sendError("applyTransformation", paramTransformation);
    } 
  }
  
  protected float resolveSize(int paramInt1, float paramFloat, int paramInt2, int paramInt3) { return super.resolveSize(paramInt1, paramFloat, paramInt2, paramInt3); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaAnimation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
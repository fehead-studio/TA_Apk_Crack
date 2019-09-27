package com.androlua;

import com.luajava.JavaFunction;
import com.luajava.LuaState;

public class LuaPrint extends JavaFunction {
  private LuaState a;
  
  private LuaContext c;
  
  private StringBuilder d = new StringBuilder();
  
  public LuaPrint(LuaContext paramLuaContext, LuaState paramLuaState) {
    super(paramLuaState);
    this.a = paramLuaState;
    this.c = paramLuaContext;
  }
  
  public int execute() {
    int i = this.a.getTop();
    byte b = 2;
    if (i < 2) {
      this.c.sendMsg("");
      return 0;
    } 
    while (b <= this.a.getTop()) {
      i = this.a.type(b);
      String str1 = null;
      String str2 = this.a.typeName(i);
      if (str2.equals("userdata")) {
        Object object = this.a.toJavaObject(b);
        if (object != null)
          str1 = object.toString(); 
      } else if (str2.equals("boolean")) {
        if (this.a.toBoolean(b)) {
          str1 = "true";
        } else {
          str1 = "false";
        } 
      } else {
        str1 = this.a.toString(b);
      } 
      if (str1 == null)
        str1 = str2; 
      this.d.append("\t");
      this.d.append(str1);
      this.d.append("\t");
      b++;
    } 
    this.c.sendMsg(this.d.toString().substring(1, this.d.length() - 1));
    this.d.setLength(0);
    return 0;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaPrint.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
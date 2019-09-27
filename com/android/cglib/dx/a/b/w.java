package com.android.cglib.dx.a.b;

public abstract class w extends x {
  private int a = -1;
  
  public final void a(int paramInt) {
    if (this.a != -1)
      throw new RuntimeException("index already set"); 
    this.a = paramInt;
  }
  
  public final boolean f() { return (this.a >= 0); }
  
  public final int g() {
    if (this.a < 0)
      throw new RuntimeException("index not yet set"); 
    return this.a;
  }
  
  public final String h() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append('[');
    stringBuilder.append(Integer.toHexString(this.a));
    stringBuilder.append(']');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
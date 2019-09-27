package com.nirenr;

public class Color {
  public int blue;
  
  public int green;
  
  public int red;
  
  public Color(int paramInt) {
    this.red = paramInt << 8 >>> 24;
    this.green = paramInt << 16 >>> 24;
    this.blue = paramInt << 24 >>> 24;
  }
  
  public Color(int paramInt1, int paramInt2, int paramInt3) {
    this.red = paramInt1;
    this.green = paramInt2;
    this.blue = paramInt3;
  }
  
  public int getInt() { return this.red << 16 | 0xFF000000 | this.green << 8 | this.blue; }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Color(");
    stringBuilder.append(this.red);
    stringBuilder.append(", ");
    stringBuilder.append(this.green);
    stringBuilder.append(", ");
    stringBuilder.append(this.blue);
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\nirenr\Color.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
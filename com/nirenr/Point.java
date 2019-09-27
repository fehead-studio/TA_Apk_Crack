package com.nirenr;

public class Point {
  public int t;
  
  public int x;
  
  public int y;
  
  public Point(int paramInt1, int paramInt2) {
    this.x = paramInt1;
    this.y = paramInt2;
  }
  
  public Point(int paramInt1, int paramInt2, int paramInt3) {
    this.x = paramInt1;
    this.y = paramInt2;
    this.t = paramInt3;
  }
  
  public Point(Point paramPoint) {
    this.x = paramPoint.x;
    this.y = paramPoint.y;
  }
  
  public final boolean equals(int paramInt1, int paramInt2) { return (this.x == paramInt1 && this.y == paramInt2); }
  
  public boolean equals(Object paramObject) {
    if (this == paramObject)
      return true; 
    if (paramObject != null) {
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = (Point)paramObject;
      return (this.x != paramObject.x) ? false : (!(this.y != paramObject.y));
    } 
    return false;
  }
  
  public int hashCode() { return this.x * 31 + this.y; }
  
  public final void negate() {
    this.x = -this.x;
    this.y = -this.y;
  }
  
  public final void offset(int paramInt1, int paramInt2) {
    this.x += paramInt1;
    this.y += paramInt2;
  }
  
  public void set(int paramInt1, int paramInt2) {
    this.x = paramInt1;
    this.y = paramInt2;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Point(");
    stringBuilder.append(this.x);
    stringBuilder.append(", ");
    stringBuilder.append(this.y);
    stringBuilder.append(": ");
    stringBuilder.append(this.t);
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\nirenr\Point.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
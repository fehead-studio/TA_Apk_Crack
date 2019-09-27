package com.android.cglib.dx.c.c;

public abstract class n extends p {
  private final int a;
  
  n(int paramInt) { this.a = paramInt; }
  
  protected int b(a parama) {
    int i = ((n)parama).a;
    return (this.a < i) ? -1 : ((this.a > i) ? 1 : 0);
  }
  
  public final boolean equals(Object paramObject) { return (paramObject != null && getClass() == paramObject.getClass() && this.a == ((n)paramObject).a); }
  
  public final boolean f() { return true; }
  
  public final int g() { return this.a; }
  
  public final long h() { return this.a; }
  
  public final int hashCode() { return this.a; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.d;

public class m extends h {
  private final k a;
  
  public m(int paramInt) {
    super(paramInt);
    this.a = new k(paramInt);
  }
  
  private void a(int paramInt) { this.a.a(paramInt, -1); }
  
  private void a(int paramInt1, int paramInt2) {
    int i = this.a.a();
    for (byte b = 0; b <= paramInt1 - i; b++)
      this.a.b(-1); 
    this.a.a(paramInt1, paramInt2);
  }
  
  protected void a(int paramInt, l paraml) {
    l l1 = (l)e(paramInt);
    a(paramInt, paraml);
    if (l1 != null)
      a(l1.a()); 
    if (paraml != null)
      a(paraml.a(), paramInt); 
  }
  
  public final int c(int paramInt) { return (paramInt >= this.a.a()) ? -1 : this.a.a(paramInt); }
  
  public final int d() {
    int i;
    for (i = this.a.a() - 1; i >= 0 && this.a.a(i) < 0; i--);
    this.a.c(++i);
    return i;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
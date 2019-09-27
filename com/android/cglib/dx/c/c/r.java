package com.android.cglib.dx.c.c;

public abstract class r extends x {
  private final w a;
  
  private final t b;
  
  r(w paramw, t paramt) {
    if (paramw == null)
      throw new NullPointerException("definingClass == null"); 
    if (paramt == null)
      throw new NullPointerException("nat == null"); 
    this.a = paramw;
    this.b = paramt;
  }
  
  public final String a_() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.a.a_());
    stringBuilder.append('.');
    stringBuilder.append(this.b.a_());
    return stringBuilder.toString();
  }
  
  protected int b(a parama) {
    parama = (r)parama;
    int i = this.a.a(parama.a);
    return (i != 0) ? i : this.b.b().a(parama.b.b());
  }
  
  public final boolean equals(Object paramObject) {
    byte b1 = 0;
    int i = b1;
    if (paramObject != null) {
      if (getClass() != paramObject.getClass())
        return false; 
      paramObject = (r)paramObject;
      i = b1;
      if (this.a.equals(paramObject.a)) {
        i = b1;
        if (this.b.equals(paramObject.b))
          i = 1; 
      } 
    } 
    return i;
  }
  
  public final w g() { return this.a; }
  
  public final t h() { return this.b; }
  
  public final int hashCode() { return this.a.hashCode() * 31 ^ this.b.hashCode(); }
  
  public final String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(e());
    stringBuilder.append('{');
    stringBuilder.append(a_());
    stringBuilder.append('}');
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
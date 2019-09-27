package com.android.cglib.dx;

import com.android.cglib.dx.c.b.m;

public final class Local<T> extends Object {
  final TypeId<T> a;
  
  private final Code b;
  
  private int c = -1;
  
  private m d;
  
  private Local(Code paramCode, TypeId<T> paramTypeId) {
    this.b = paramCode;
    this.a = paramTypeId;
  }
  
  static <T> Local<T> a(Code paramCode, TypeId<T> paramTypeId) { return new Local(paramCode, paramTypeId); }
  
  int a() { return this.a.b.g(); }
  
  int a(int paramInt) {
    this.c = paramInt;
    this.d = m.a(paramInt, this.a.b);
    return a();
  }
  
  m b() {
    if (this.d == null) {
      this.b.a();
      if (this.d == null)
        throw new AssertionError(); 
    } 
    return this.d;
  }
  
  public TypeId getType() { return this.a; }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("v");
    stringBuilder.append(this.c);
    stringBuilder.append("(");
    stringBuilder.append(this.a);
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\Local.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx;

import com.android.cglib.dx.c.c.s;
import com.android.cglib.dx.c.c.t;
import com.android.cglib.dx.c.c.v;
import com.android.cglib.dx.c.d.a;
import java.util.List;

public final class MethodId<D, R> extends Object {
  final TypeId<D> a;
  
  final TypeId<R> b;
  
  final String c;
  
  final TypeList d;
  
  final t e;
  
  final s f;
  
  MethodId(TypeId<D> paramTypeId1, TypeId<R> paramTypeId2, String paramString, TypeList paramTypeList) {
    if (paramTypeId1 == null || paramTypeId2 == null || paramString == null || paramTypeList == null)
      throw new NullPointerException(); 
    this.a = paramTypeId1;
    this.b = paramTypeId2;
    this.c = paramString;
    this.d = paramTypeList;
    this.e = new t(new v(paramString), new v(a(false)));
    this.f = new s(paramTypeId1.c, this.e);
  }
  
  String a(boolean paramBoolean) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("(");
    if (paramBoolean)
      stringBuilder.append(this.a.a); 
    TypeId[] arrayOfTypeId = this.d.a;
    int i = arrayOfTypeId.length;
    for (byte b1 = 0; b1 < i; b1++)
      stringBuilder.append((arrayOfTypeId[b1]).a); 
    stringBuilder.append(")");
    stringBuilder.append(this.b.a);
    return stringBuilder.toString();
  }
  
  a b(boolean paramBoolean) { return a.a(a(paramBoolean)); }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof MethodId) {
      paramObject = (MethodId)paramObject;
      if (paramObject.a.equals(this.a) && paramObject.c.equals(this.c) && paramObject.d.equals(this.d) && paramObject.b.equals(this.b))
        return true; 
    } 
    return false;
  }
  
  public TypeId<D> getDeclaringType() { return this.a; }
  
  public String getName() { return this.c; }
  
  public List<TypeId<?>> getParameters() { return this.d.asList(); }
  
  public TypeId<R> getReturnType() { return this.b; }
  
  public int hashCode() { return (((527 + this.a.hashCode()) * 31 + this.c.hashCode()) * 31 + this.d.hashCode()) * 31 + this.b.hashCode(); }
  
  public boolean isConstructor() { return this.c.equals("<init>"); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.a);
    stringBuilder.append(".");
    stringBuilder.append(this.c);
    stringBuilder.append("(");
    stringBuilder.append(this.d);
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\MethodId.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
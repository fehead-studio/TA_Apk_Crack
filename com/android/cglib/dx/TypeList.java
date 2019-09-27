package com.android.cglib.dx;

import com.android.cglib.dx.c.d.b;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

final class TypeList {
  final TypeId<?>[] a;
  
  final b b;
  
  TypeList(TypeId<?>[] paramArrayOfTypeId) {
    this.a = (TypeId[])paramArrayOfTypeId.clone();
    this.b = new b(paramArrayOfTypeId.length);
    for (byte b1 = 0; b1 < paramArrayOfTypeId.length; b1++)
      this.b.a(b1, (paramArrayOfTypeId[b1]).b); 
  }
  
  public List<TypeId<?>> asList() { return Collections.unmodifiableList(Arrays.asList(this.a)); }
  
  public boolean equals(Object paramObject) { return (paramObject instanceof TypeList && Arrays.equals(((TypeList)paramObject).a, this.a)); }
  
  public int hashCode() { return Arrays.hashCode(this.a); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    for (byte b1 = 0; b1 < this.a.length; b1++) {
      if (b1)
        stringBuilder.append(", "); 
      stringBuilder.append(this.a[b1]);
    } 
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\TypeList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
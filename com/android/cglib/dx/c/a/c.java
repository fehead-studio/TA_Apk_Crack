package com.android.cglib.dx.c.a;

import com.android.cglib.dx.c.c.w;
import com.android.cglib.dx.d.o;
import java.util.Iterator;
import java.util.TreeMap;

public final class c extends o implements Comparable<c> {
  public static final c a = new c();
  
  private final TreeMap<w, a> b = new TreeMap();
  
  static  {
    a.e();
  }
  
  public int a(c paramc) {
    Iterator iterator2 = this.b.values().iterator();
    Iterator iterator1 = paramc.b.values().iterator();
    while (iterator2.hasNext() && iterator1.hasNext()) {
      int i = ((a)iterator2.next()).a((a)iterator1.next());
      if (i != 0)
        return i; 
    } 
    return iterator2.hasNext() ? 1 : (iterator1.hasNext() ? -1 : 0);
  }
  
  public boolean equals(Object paramObject) {
    if (!(paramObject instanceof c))
      return false; 
    paramObject = (c)paramObject;
    return this.b.equals(paramObject.b);
  }
  
  public int hashCode() { return this.b.hashCode(); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("annotations{");
    Iterator iterator = this.b.values().iterator();
    boolean bool = true;
    while (iterator.hasNext()) {
      a a1 = (a)iterator.next();
      if (bool) {
        bool = false;
      } else {
        stringBuilder.append(", ");
      } 
      stringBuilder.append(a1.a_());
    } 
    stringBuilder.append("}");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.c.c;

import com.android.cglib.dx.d.r;

public abstract class a extends Object implements r, Comparable<a> {
  public final int a(a parama) {
    Class clazz1 = getClass();
    Class clazz2 = parama.getClass();
    return (clazz1 != clazz2) ? clazz1.getName().compareTo(clazz2.getName()) : b(parama);
  }
  
  protected abstract int b(a parama);
  
  public abstract String e();
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
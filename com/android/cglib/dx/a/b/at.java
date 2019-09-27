package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.i;
import java.util.Iterator;
import java.util.List;

public final class at<T extends ag> extends ag {
  private final y a;
  
  private final List<T> b;
  
  public at(y paramy, List<T> paramList) {
    super(a(paramList), b(paramList));
    if (paramy == null)
      throw new NullPointerException("itemType == null"); 
    this.b = paramList;
    this.a = paramy;
  }
  
  private static int a(List<? extends ag> paramList) {
    try {
      return Math.max(4, ((ag)paramList.get(0)).f());
    } catch (IndexOutOfBoundsException paramList) {
      throw new IllegalArgumentException("items.size() == 0");
    } catch (NullPointerException paramList) {
      throw new NullPointerException("items == null");
    } 
  }
  
  private static int b(List<? extends ag> paramList) {
    ag ag1 = (ag)paramList.get(0);
    return paramList.size() * ag1.b_() + a(paramList);
  }
  
  private int d() { return f(); }
  
  public y a() { return this.a; }
  
  protected void a(ak paramak, int paramInt) {
    int i = d();
    Iterator iterator = this.b.iterator();
    int j = -1;
    boolean bool = true;
    paramInt += i;
    for (i = -1; iterator.hasNext(); i = k) {
      int k;
      ag ag1 = (ag)iterator.next();
      int m = ag1.b_();
      if (bool) {
        k = ag1.f();
        j = m;
        bool = false;
      } else {
        if (m != j)
          throw new UnsupportedOperationException("item size mismatch"); 
        k = i;
        if (ag1.f() != i)
          throw new UnsupportedOperationException("item alignment mismatch"); 
      } 
      paramInt = ag1.b(paramak, paramInt) + m;
    } 
  }
  
  public void a(l paraml) {
    Iterator iterator = this.b.iterator();
    while (iterator.hasNext())
      ((ag)iterator.next()).a(paraml); 
  }
  
  protected void a_(l paraml, a parama) {
    int i = this.b.size();
    if (parama.a()) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(g());
      stringBuilder.append(" ");
      stringBuilder.append(i());
      parama.a(0, stringBuilder.toString());
      stringBuilder = new StringBuilder();
      stringBuilder.append("  size: ");
      stringBuilder.append(i.a(i));
      parama.a(4, stringBuilder.toString());
    } 
    parama.d(i);
    Iterator iterator = this.b.iterator();
    while (iterator.hasNext())
      ((ag)iterator.next()).a(paraml, parama); 
  }
  
  public final String b() {
    StringBuffer stringBuffer = new StringBuffer(100);
    stringBuffer.append("{");
    Iterator iterator = this.b.iterator();
    boolean bool = true;
    while (iterator.hasNext()) {
      ag ag1 = (ag)iterator.next();
      if (bool) {
        bool = false;
      } else {
        stringBuffer.append(", ");
      } 
      stringBuffer.append(ag1.b());
    } 
    stringBuffer.append("}");
    return stringBuffer.toString();
  }
  
  public final List<T> c() { return this.b; }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer(100);
    stringBuffer.append(getClass().getName());
    stringBuffer.append(this.b);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
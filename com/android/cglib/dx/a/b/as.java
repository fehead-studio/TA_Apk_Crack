package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import java.util.Collection;
import java.util.Iterator;

public abstract class as extends ak {
  public as(String paramString, l paraml, int paramInt) { super(paramString, paraml, paramInt); }
  
  public final int a(x paramx) {
    paramx = (w)paramx;
    return c(paramx.g() * paramx.b_());
  }
  
  protected final void a_(a parama) {
    l l = e();
    int i = f();
    Iterator iterator = a().iterator();
    while (iterator.hasNext()) {
      ((x)iterator.next()).a(l, parama);
      parama.h(i);
    } 
  }
  
  protected abstract void b();
  
  protected final void c() {
    l l = e();
    b();
    Iterator iterator = a().iterator();
    while (iterator.hasNext())
      ((x)iterator.next()).a(l); 
  }
  
  public final int c_() {
    Collection collection = a();
    int i = collection.size();
    return (i == 0) ? 0 : (i * ((x)collection.iterator().next()).b_());
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.f;
import java.util.Iterator;

public abstract class ab extends as {
  public ab(String paramString, l paraml) { super(paramString, paraml, 4); }
  
  protected void b() {
    if (a().size() > 65536) {
      String str;
      if (this instanceof ae) {
        str = "methods";
      } else {
        str = "fields";
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("Too many ");
      stringBuilder.append(str);
      stringBuilder.append(": ");
      stringBuilder.append(a().size());
      stringBuilder.append("; max is ");
      stringBuilder.append(65536);
      throw new f(stringBuilder.toString());
    } 
    Iterator iterator = a().iterator();
    for (byte b = 0; iterator.hasNext(); b++)
      ((aa)iterator.next()).a(b); 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
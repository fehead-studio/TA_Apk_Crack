package com.android.cglib.dx;

import com.android.cglib.dx.c.b.b;
import com.android.cglib.dx.c.b.f;
import com.android.cglib.dx.c.b.g;
import com.android.cglib.dx.d.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Label {
  final List<f> a = new ArrayList();
  
  Code b;
  
  boolean c = false;
  
  List<Label> d = Collections.emptyList();
  
  Label e;
  
  Label f;
  
  int g = -1;
  
  boolean a() { return this.a.isEmpty(); }
  
  void b() {
    for (byte b1 = 0; b1 < this.d.size(); b1++) {
      while (((Label)this.d.get(b1)).a())
        this.d.set(b1, ((Label)this.d.get(b1)).e); 
    } 
    while (this.e != null && this.e.a())
      this.e = this.e.e; 
    while (this.f != null && this.f.a())
      this.f = this.f.e; 
  }
  
  b c() {
    g g1 = new g(this.a.size());
    int i;
    for (i = 0; i < this.a.size(); i++)
      g1.a(i, (f)this.a.get(i)); 
    g1.e();
    i = -1;
    k k = new k();
    Iterator iterator = this.d.iterator();
    while (iterator.hasNext())
      k.b(((Label)iterator.next()).g); 
    if (this.e != null) {
      i = this.e.g;
      k.b(i);
    } 
    if (this.f != null)
      k.b(this.f.g); 
    k.e();
    return new b(this.g, g1, k, i);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\Label.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
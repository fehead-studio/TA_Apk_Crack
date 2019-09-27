package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import com.android.cglib.dx.d.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public final class af extends ak {
  private static final Comparator<ag> a = new Comparator<ag>() {
      public int a(ag param1ag1, ag param1ag2) { return param1ag1.a().compareTo(param1ag2.a()); }
    };
  
  private final ArrayList<ag> b = new ArrayList(100);
  
  private final HashMap<ag, ag> c = new HashMap(100);
  
  private final a d;
  
  private int e;
  
  public af(String paramString, l paraml, int paramInt, a parama) {
    super(paramString, paraml, paramInt);
    this.d = parama;
    this.e = -1;
  }
  
  public int a(x paramx) { return ((ag)paramx).e(); }
  
  public Collection<? extends x> a() { return this.b; }
  
  public void a(ag paramag) {
    j();
    try {
      if (paramag.f() > f())
        throw new IllegalArgumentException("incompatible item alignment"); 
      this.b.add(paramag);
      return;
    } catch (NullPointerException paramag) {
      throw new NullPointerException("item == null");
    } 
  }
  
  public void a(a parama, y paramy, String paramString) {
    i();
    TreeMap treeMap = new TreeMap();
    for (ag ag : this.b) {
      if (ag.a() == paramy)
        treeMap.put(ag.b(), ag); 
    } 
    if (treeMap.size() == 0)
      return; 
    parama.a(0, paramString);
    for (Map.Entry entry : treeMap.entrySet()) {
      paramString = (String)entry.getKey();
      ag ag = (ag)entry.getValue();
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(ag.g());
      stringBuilder.append(' ');
      stringBuilder.append(paramString);
      stringBuilder.append('\n');
      parama.a(0, stringBuilder.toString());
    } 
  }
  
  protected void a_(a parama) {
    boolean bool = parama.a();
    l l = e();
    Iterator iterator = this.b.iterator();
    int i = 0;
    int j;
    for (j = 1; iterator.hasNext(); j = k) {
      ag ag = (ag)iterator.next();
      int k = j;
      if (bool)
        if (j) {
          k = 0;
        } else {
          parama.a(0, "\n");
          k = j;
        }  
      j = ag.f() - 1;
      int m = (j ^ 0xFFFFFFFF) & i + j;
      j = i;
      if (i != m) {
        parama.g(m - i);
        j = m;
      } 
      ag.a(l, parama);
      i = j + ag.b_();
    } 
    if (i != this.e)
      throw new RuntimeException("output size mismatch"); 
  }
  
  public <T extends ag> T b(T paramT) {
    j();
    ag ag = (ag)this.c.get(paramT);
    if (ag != null)
      return (T)ag; 
    a(paramT);
    this.c.put(paramT, paramT);
    return paramT;
  }
  
  protected void c() {
    l l = e();
    byte b1 = 0;
    label11: while (true) {
      int i = this.b.size();
      byte b2 = b1;
      if (b1 >= i)
        return; 
      while (true) {
        b1 = b2;
        if (b2 < i) {
          ((ag)this.b.get(b2)).a(l);
          b2++;
          continue;
        } 
        continue label11;
      } 
      break;
    } 
  }
  
  public int c_() {
    i();
    return this.e;
  }
  
  public void d() {
    i();
    switch (null.a[this.d.ordinal()]) {
      case 2:
        Collections.sort(this.b, a);
        break;
      case 1:
        Collections.sort(this.b);
        break;
    } 
    int j = this.b.size();
    byte b1 = 0;
    int i = 0;
    while (b1 < j) {
      ag ag = (ag)this.b.get(b1);
      try {
        int k = ag.b(this, i);
        if (k < i) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("bogus place() result for ");
          stringBuilder.append(ag);
          throw new RuntimeException(stringBuilder.toString());
        } 
        i = ag.b_();
        i += k;
        b1++;
      } catch (RuntimeException runtimeException) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("...while placing ");
        stringBuilder.append(ag);
        throw g.a(runtimeException, stringBuilder.toString());
      } 
    } 
    this.e = i;
  }
  
  enum a {
    a, b, c;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
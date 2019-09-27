package com.android.cglib.dx.a.b;

import com.android.cglib.dx.d.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;

public final class al {
  private final HashMap<String, a> a = new HashMap(50);
  
  public void a(ak paramak) {
    Iterator iterator = paramak.a().iterator();
    while (iterator.hasNext())
      a((x)iterator.next()); 
  }
  
  public void a(x paramx) {
    String str = paramx.i();
    a a1 = (a)this.a.get(str);
    if (a1 == null) {
      this.a.put(str, new a(paramx, str));
      return;
    } 
    a1.a(paramx);
  }
  
  public final void a(a parama) {
    if (this.a.size() == 0)
      return; 
    parama.a(0, "\nstatistics:\n");
    TreeMap treeMap = new TreeMap();
    Iterator iterator2 = this.a.values().iterator();
    while (iterator2.hasNext()) {
      a a1;
      treeMap.put((a1 = (a)iterator2.next()).a(a1), a1);
    } 
    Iterator iterator1 = treeMap.values().iterator();
    while (iterator1.hasNext())
      ((a)iterator1.next()).a(parama); 
  }
  
  private static class a {
    private final String a;
    
    private int b;
    
    private int c;
    
    private int d;
    
    private int e;
    
    public a(x param1x, String param1String) {
      int i = param1x.b_();
      this.a = param1String;
      this.b = 1;
      this.c = i;
      this.d = i;
      this.e = i;
    }
    
    public String a() {
      String str;
      StringBuilder stringBuilder1 = new StringBuilder();
      StringBuilder stringBuilder2 = new StringBuilder();
      stringBuilder2.append("  ");
      stringBuilder2.append(this.a);
      stringBuilder2.append(": ");
      stringBuilder2.append(this.b);
      stringBuilder2.append(" item");
      if (this.b == 1) {
        str = "";
      } else {
        str = "s";
      } 
      stringBuilder2.append(str);
      stringBuilder2.append("; ");
      stringBuilder2.append(this.c);
      stringBuilder2.append(" bytes total\n");
      stringBuilder1.append(stringBuilder2.toString());
      if (this.e == this.d) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("    ");
        stringBuilder.append(this.e);
        stringBuilder.append(" bytes/item\n");
        String str1 = stringBuilder.toString();
      } else {
        int i = this.c / this.b;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("    ");
        stringBuilder.append(this.e);
        stringBuilder.append("..");
        stringBuilder.append(this.d);
        stringBuilder.append(" bytes/item; average ");
        stringBuilder.append(i);
        stringBuilder.append("\n");
        str = stringBuilder.toString();
      } 
      stringBuilder1.append(str);
      return stringBuilder1.toString();
    }
    
    public void a(x param1x) {
      int i = param1x.b_();
      this.b++;
      this.c += i;
      if (i > this.d)
        this.d = i; 
      if (i < this.e)
        this.e = i; 
    }
    
    public void a(a param1a) { param1a.a(a()); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\a\b\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
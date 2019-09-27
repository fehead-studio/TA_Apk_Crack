package com.b.a.b;

import java.util.HashMap;

public abstract class b {
  protected HashMap<a, Integer> a = a();
  
  private HashMap<a, Integer> a() {
    HashMap hashMap = new HashMap(a.values().length);
    hashMap.put(a.a, Integer.valueOf(-16777216));
    hashMap.put(a.b, Integer.valueOf(-32));
    hashMap.put(a.c, Integer.valueOf(-32));
    hashMap.put(a.d, Integer.valueOf(-6832092));
    hashMap.put(a.e, Integer.valueOf(-32));
    hashMap.put(a.f, Integer.valueOf(-12537601));
    hashMap.put(a.g, Integer.valueOf(-8355712));
    hashMap.put(a.h, Integer.valueOf(545818760));
    hashMap.put(a.i, Integer.valueOf(-5592406));
    hashMap.put(a.j, Integer.valueOf(-12615841));
    hashMap.put(a.k, Integer.valueOf(-3129123));
    hashMap.put(a.l, Integer.valueOf(-14008065));
    hashMap.put(a.m, Integer.valueOf(-10452737));
    hashMap.put(a.n, Integer.valueOf(-2276216));
    hashMap.put(a.o, Integer.valueOf(-8355712));
    return hashMap;
  }
  
  public int a(int paramInt) {
    if (paramInt != 10)
      if (paramInt != 30 && paramInt != 40) {
        a a2;
        switch (paramInt) {
          default:
            switch (paramInt) {
              default:
                switch (paramInt) {
                  default:
                    q.a("Invalid token type");
                  case 50:
                  case 51:
                    break;
                } 
                a2 = a.n;
                return a(a2);
              case 21:
                a2 = a.j;
                return a(a2);
              case 20:
                break;
            } 
            break;
          case 0:
            a2 = a.a;
            return a(a2);
          case 4:
            a2 = a.m;
            return a(a2);
          case 3:
            a2 = a.l;
            return a(a2);
          case 1:
            a2 = a.k;
            return a(a2);
          case 2:
            break;
        } 
      } else {
      
      }  
    a a1 = a.o;
    return a(a1);
  }
  
  public int a(a parama) {
    StringBuilder stringBuilder = (Integer)this.a.get(parama);
    if (stringBuilder == null) {
      stringBuilder = new StringBuilder();
      stringBuilder.append("Color not specified for ");
      stringBuilder.append(parama);
      q.a(stringBuilder.toString());
      return 0;
    } 
    return stringBuilder.intValue();
  }
  
  public void a(a parama, int paramInt) { this.a.put(parama, Integer.valueOf(paramInt)); }
  
  public enum a {
    a, b, c, d, e, f, g, h, i, j, k, l, m, n, o;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\b\a\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
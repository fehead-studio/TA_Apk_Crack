package bsh.org.objectweb.asm;

final class Item {
  short a;
  
  int b;
  
  int c;
  
  long d;
  
  float e;
  
  double f;
  
  String g;
  
  String h;
  
  String i;
  
  int j;
  
  Item k;
  
  Item() {}
  
  Item(short paramShort, Item paramItem) {
    this.a = paramShort;
    this.b = paramItem.b;
    this.c = paramItem.c;
    this.d = paramItem.d;
    this.e = paramItem.e;
    this.f = paramItem.f;
    this.g = paramItem.g;
    this.h = paramItem.h;
    this.i = paramItem.i;
    this.j = paramItem.j;
  }
  
  void a(double paramDouble) {
    this.b = 6;
    this.f = paramDouble;
    this.j = this.b + (int)paramDouble;
  }
  
  void a(float paramFloat) {
    this.b = 4;
    this.e = paramFloat;
    this.j = this.b + (int)paramFloat;
  }
  
  void a(int paramInt) {
    this.b = 3;
    this.c = paramInt;
    this.j = this.b + paramInt;
  }
  
  void a(int paramInt, String paramString1, String paramString2, String paramString3) {
    this.b = paramInt;
    this.g = paramString1;
    this.h = paramString2;
    this.i = paramString3;
    if (paramInt != 1)
      if (paramInt != 12) {
        int i1;
        int n;
        switch (paramInt) {
          default:
            n = paramString1.hashCode() * paramString2.hashCode();
            i1 = paramString3.hashCode();
            n *= i1;
          case 7:
          case 8:
            break;
        } 
      } else {
        int n = paramString1.hashCode();
        int i1 = paramString2.hashCode();
        n *= i1;
      }  
    int m = paramString1.hashCode();
    this.j = paramInt + m;
  }
  
  void a(long paramLong) {
    this.b = 5;
    this.d = paramLong;
    this.j = this.b + (int)paramLong;
  }
  
  boolean a(Item paramItem) {
    if (paramItem.b == this.b) {
      int m = this.b;
      if (m != 1)
        if (m != 12) {
          switch (m) {
            default:
              return (paramItem.g.equals(this.g) && paramItem.h.equals(this.h) && paramItem.i.equals(this.i));
            case 6:
              return (paramItem.f == this.f);
            case 5:
              return (paramItem.d == this.d);
            case 4:
              return (paramItem.e == this.e);
            case 3:
              return (paramItem.c == this.c);
            case 7:
            case 8:
              break;
          } 
        } else {
          return (paramItem.g.equals(this.g) && paramItem.h.equals(this.h));
        }  
      return paramItem.g.equals(this.g);
    } 
    return false;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\Item.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh.org.objectweb.asm;

public class ClassWriter implements ClassVisitor {
  static byte[] f;
  
  CodeWriter a;
  
  CodeWriter b;
  
  Item c = new Item();
  
  Item d = new Item();
  
  Item e = new Item();
  
  private short g = 1;
  
  private ByteVector h = new ByteVector();
  
  private Item[] i = new Item[64];
  
  private int j = (int)(this.i.length * 0.75D);
  
  private int k;
  
  private int l;
  
  private int m;
  
  private int n;
  
  private int[] o;
  
  private Item p;
  
  private int q;
  
  private ByteVector r;
  
  private boolean s;
  
  private int t;
  
  private ByteVector u;
  
  static  {
    byte[] arrayOfByte = new byte[220];
    for (byte b1 = 0;; b1++) {
      if (b1 >= arrayOfByte.length) {
        f = arrayOfByte;
        return;
      } 
      arrayOfByte[b1] = (byte)("AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHAFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII".charAt(b1) - 'A');
    } 
  }
  
  public ClassWriter(boolean paramBoolean) { this.s = paramBoolean; }
  
  private Item a(double paramDouble) {
    this.c.a(paramDouble);
    Item item2 = a(this.c);
    Item item1 = item2;
    if (item2 == null) {
      this.h.put1(6).put8(Double.doubleToLongBits(paramDouble));
      item1 = new Item(this.g, this.c);
      b(item1);
      this.g = (short)(this.g + 2);
    } 
    return item1;
  }
  
  private Item a(float paramFloat) {
    this.c.a(paramFloat);
    Item item2 = a(this.c);
    Item item1 = item2;
    if (item2 == null) {
      this.h.put1(4).put4(Float.floatToIntBits(paramFloat));
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.c);
      b(item1);
    } 
    return item1;
  }
  
  private Item a(int paramInt) {
    this.c.a(paramInt);
    Item item2 = a(this.c);
    Item item1 = item2;
    if (item2 == null) {
      this.h.put1(3).put4(paramInt);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.c);
      b(item1);
    } 
    return item1;
  }
  
  private Item a(long paramLong) {
    this.c.a(paramLong);
    Item item2 = a(this.c);
    Item item1 = item2;
    if (item2 == null) {
      this.h.put1(5).put8(paramLong);
      item1 = new Item(this.g, this.c);
      b(item1);
      this.g = (short)(this.g + 2);
    } 
    return item1;
  }
  
  private Item a(Item paramItem) {
    Item[] arrayOfItem = this.i;
    int i1 = paramItem.j;
    for (Item item = arrayOfItem[(0x7FFFFFFF & i1) % arrayOfItem.length];; item = item.k) {
      if (item == null)
        return null; 
      if (item.j == i1 && paramItem.a(item))
        return item; 
    } 
  }
  
  private Item a(String paramString1, String paramString2) {
    this.d.a(12, paramString1, paramString2, null);
    Item item2 = a(this.d);
    Item item1 = item2;
    if (item2 == null) {
      a(12, (a(paramString1)).a, (a(paramString2)).a);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.d);
      b(item1);
    } 
    return item1;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3) { this.h.put12(paramInt1, paramInt2).put2(paramInt3); }
  
  private void b(Item paramItem) {
    if (this.g > this.j) {
      int i2 = this.i.length;
      Item[] arrayOfItem1 = this.i;
      int i3 = i2 * 2 + 1;
      Item[] arrayOfItem2 = new Item[i3];
      this.j = (int)(i3 * 0.75D);
      this.i = arrayOfItem2;
      label16: while (true) {
        int i4 = i2 - 1;
        if (i2 <= 0)
          break; 
        for (Item item = arrayOfItem1[i4];; item = item1) {
          if (item == null) {
            i2 = i4;
            continue label16;
          } 
          Item item1 = item.k;
          i2 = (item.j & 0x7FFFFFFF) % i3;
          item.k = arrayOfItem2[i2];
          arrayOfItem2[i2] = item;
        } 
      } 
    } 
    int i1 = (paramItem.j & 0x7FFFFFFF) % this.i.length;
    paramItem.k = this.i[i1];
    this.i[i1] = paramItem;
  }
  
  private Item c(String paramString) {
    this.d.a(8, paramString, null, null);
    Item item2 = a(this.d);
    Item item1 = item2;
    if (item2 == null) {
      this.h.put12(8, (a(paramString)).a);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.d);
      b(item1);
    } 
    return item1;
  }
  
  Item a(Object paramObject) {
    if (paramObject instanceof Integer)
      return a(((Integer)paramObject).intValue()); 
    if (paramObject instanceof Float)
      return a(((Float)paramObject).floatValue()); 
    if (paramObject instanceof Long)
      return a(((Long)paramObject).longValue()); 
    if (paramObject instanceof Double)
      return a(((Double)paramObject).doubleValue()); 
    if (paramObject instanceof String)
      return c((String)paramObject); 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("value ");
    stringBuffer.append(paramObject);
    throw new IllegalArgumentException(stringBuffer.toString());
  }
  
  Item a(String paramString) {
    this.c.a(1, paramString, null, null);
    Item item2 = a(this.c);
    Item item1 = item2;
    if (item2 == null) {
      this.h.put1(1).putUTF(paramString);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.c);
      b(item1);
    } 
    return item1;
  }
  
  Item a(String paramString1, String paramString2, String paramString3) {
    this.e.a(9, paramString1, paramString2, paramString3);
    Item item2 = a(this.e);
    Item item1 = item2;
    if (item2 == null) {
      a(9, (b(paramString1)).a, (a(paramString2, paramString3)).a);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.e);
      b(item1);
    } 
    return item1;
  }
  
  Item b(String paramString) {
    this.d.a(7, paramString, null, null);
    Item item2 = a(this.d);
    Item item1 = item2;
    if (item2 == null) {
      this.h.put12(7, (a(paramString)).a);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.d);
      b(item1);
    } 
    return item1;
  }
  
  Item b(String paramString1, String paramString2, String paramString3) {
    this.e.a(10, paramString1, paramString2, paramString3);
    Item item2 = a(this.e);
    Item item1 = item2;
    if (item2 == null) {
      a(10, (b(paramString1)).a, (a(paramString2, paramString3)).a);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.e);
      b(item1);
    } 
    return item1;
  }
  
  Item c(String paramString1, String paramString2, String paramString3) {
    this.e.a(11, paramString1, paramString2, paramString3);
    Item item2 = a(this.e);
    Item item1 = item2;
    if (item2 == null) {
      a(11, (b(paramString1)).a, (a(paramString2, paramString3)).a);
      short s1 = this.g;
      this.g = (short)(s1 + 1);
      item1 = new Item(s1, this.e);
      b(item1);
    } 
    return item1;
  }
  
  public byte[] toByteArray() {
    int i2 = this.n * 2 + 24;
    int i1 = i2;
    if (this.r != null)
      i1 = i2 + this.r.b; 
    CodeWriter codeWriter = this.a;
    byte b1 = 0;
    while (true) {
      if (codeWriter == null) {
        int i3 = i1 + this.h.b;
        if (this.p != null) {
          i3 += 8;
          i4 = 1;
        } else {
          i4 = 0;
        } 
        i1 = i3;
        i2 = i4;
        if ((this.k & 0x20000) != 0) {
          i2 = i4 + 1;
          i1 = i3 + 6;
        } 
        int i4 = i1;
        i3 = i2;
        if (this.u != null) {
          i3 = i2 + 1;
          i4 = i1 + this.u.b + 8;
        } 
        ByteVector byteVector = new ByteVector(i4);
        byteVector.put4(-889275714).put2(3).put2(45);
        byteVector.put2(this.g).putByteArray(this.h.a, 0, this.h.b);
        byteVector.put2(this.k).put2(this.l).put2(this.m);
        byteVector.put2(this.n);
        for (i1 = 0;; i1++) {
          if (i1 >= this.n) {
            byteVector.put2(this.q);
            if (this.r != null)
              byteVector.putByteArray(this.r.a, 0, this.r.b); 
            byteVector.put2(b1);
            for (codeWriter = this.a;; codeWriter = codeWriter.a) {
              if (codeWriter == null) {
                byteVector.put2(i3);
                if (this.p != null)
                  byteVector.put2((a("SourceFile")).a).put4(2).put2(this.p.a); 
                if ((this.k & 0x20000) != 0)
                  byteVector.put2((a("Deprecated")).a).put4(0); 
                if (this.u != null) {
                  byteVector.put2((a("InnerClasses")).a);
                  byteVector.put4(this.u.b + 2).put2(this.t);
                  byteVector.putByteArray(this.u.a, 0, this.u.b);
                } 
                return byteVector.a;
              } 
              codeWriter.a(byteVector);
            } 
            break;
          } 
          byteVector.put2(this.o[i1]);
        } 
        break;
      } 
      b1++;
      i1 += codeWriter.a();
      codeWriter = codeWriter.a;
    } 
  }
  
  public void visit(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3) {
    short s1;
    this.k = paramInt;
    this.l = (b(paramString1)).a;
    int i1 = 0;
    if (paramString2 == null) {
      s1 = 0;
    } else {
      s1 = (b(paramString2)).a;
    } 
    this.m = s1;
    if (paramArrayOfString != null && paramArrayOfString.length > 0) {
      this.n = paramArrayOfString.length;
      this.o = new int[this.n];
      for (s1 = i1; s1 < this.n; s1++)
        this.o[s1] = (b(paramArrayOfString[s1])).a; 
    } 
    if (paramString3 != null) {
      a("SourceFile");
      this.p = a(paramString3);
    } 
    if ((paramInt & 0x20000) != 0)
      a("Deprecated"); 
  }
  
  public void visitEnd() {}
  
  public void visitField(int paramInt, String paramString1, String paramString2, Object paramObject) {
    int i1 = this.q;
    int i2 = 1;
    this.q = i1 + 1;
    if (this.r == null)
      this.r = new ByteVector(); 
    this.r.put2(paramInt).put2((a(paramString1)).a).put2((a(paramString2)).a);
    if (paramObject == null)
      i2 = 0; 
    int i3 = 0x10000 & paramInt;
    i1 = i2;
    if (i3 != 0)
      i1 = i2 + 1; 
    i2 = paramInt & 0x20000;
    paramInt = i1;
    if (i2 != 0)
      paramInt = i1 + 1; 
    this.r.put2(paramInt);
    if (paramObject != null) {
      this.r.put2((a("ConstantValue")).a);
      this.r.put4(2).put2((a(paramObject)).a);
    } 
    if (i3 != 0)
      this.r.put2((a("Synthetic")).a).put4(0); 
    if (i2 != 0)
      this.r.put2((a("Deprecated")).a).put4(0); 
  }
  
  public void visitInnerClass(String paramString1, String paramString2, String paramString3, int paramInt) {
    short s1;
    if (this.u == null) {
      a("InnerClasses");
      this.u = new ByteVector();
    } 
    this.t++;
    ByteVector byteVector2 = this.u;
    int i1 = 0;
    if (paramString1 == null) {
      s1 = 0;
    } else {
      s1 = (b(paramString1)).a;
    } 
    byteVector2.put2(s1);
    ByteVector byteVector1 = this.u;
    if (paramString2 == null) {
      s1 = 0;
    } else {
      s1 = (b(paramString2)).a;
    } 
    byteVector1.put2(s1);
    byteVector1 = this.u;
    if (paramString3 == null) {
      s1 = i1;
    } else {
      s1 = (a(paramString3)).a;
    } 
    byteVector1.put2(s1);
    this.u.put2(paramInt);
  }
  
  public CodeVisitor visitMethod(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString) {
    CodeWriter codeWriter = new CodeWriter(this, this.s);
    codeWriter.a(paramInt, paramString1, paramString2, paramArrayOfString);
    return codeWriter;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\ClassWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
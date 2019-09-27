package bsh.org.objectweb.asm;

public class CodeWriter implements CodeVisitor {
  private static final int[] w;
  
  private static Edge z;
  
  CodeWriter a;
  
  private ClassWriter b;
  
  private Item c;
  
  private Item d;
  
  private int e;
  
  private int f;
  
  private int g;
  
  private ByteVector h = new ByteVector();
  
  private int i;
  
  private ByteVector j;
  
  private int k;
  
  private int[] l;
  
  private int m;
  
  private ByteVector n;
  
  private int o;
  
  private ByteVector p;
  
  private boolean q;
  
  private final boolean r;
  
  private int s;
  
  private int t;
  
  private Label u;
  
  private Label v;
  
  private Edge x;
  
  private Edge y;
  
  static  {
    int[] arrayOfInt = new int[202];
    for (byte b1 = 0;; b1++) {
      if (b1 >= arrayOfInt.length) {
        w = arrayOfInt;
        return;
      } 
      arrayOfInt[b1] = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE".charAt(b1) - 'E';
    } 
  }
  
  protected CodeWriter(ClassWriter paramClassWriter, boolean paramBoolean) {
    if (paramClassWriter.a == null) {
      paramClassWriter.a = this;
    } else {
      paramClassWriter.b.a = this;
    } 
    paramClassWriter.b = this;
    this.b = paramClassWriter;
    this.r = paramBoolean;
    if (paramBoolean) {
      this.u = new Label();
      this.u.g = true;
      this.v = this.u;
    } 
  }
  
  private static int a(String paramString) { // Byte code:
    //   0: iconst_1
    //   1: istore #4
    //   3: iconst_1
    //   4: istore_2
    //   5: iconst_1
    //   6: istore_1
    //   7: iload_2
    //   8: iconst_1
    //   9: iadd
    //   10: istore_3
    //   11: aload_0
    //   12: iload_2
    //   13: invokevirtual charAt : (I)C
    //   16: istore_2
    //   17: iload_2
    //   18: bipush #41
    //   20: if_icmpne -> 63
    //   23: aload_0
    //   24: iload_3
    //   25: invokevirtual charAt : (I)C
    //   28: istore_3
    //   29: iload_3
    //   30: bipush #86
    //   32: if_icmpne -> 40
    //   35: iconst_0
    //   36: istore_2
    //   37: goto -> 57
    //   40: iload_3
    //   41: bipush #68
    //   43: if_icmpeq -> 55
    //   46: iload #4
    //   48: istore_2
    //   49: iload_3
    //   50: bipush #74
    //   52: if_icmpne -> 57
    //   55: iconst_2
    //   56: istore_2
    //   57: iload_1
    //   58: iconst_2
    //   59: ishl
    //   60: iload_2
    //   61: ior
    //   62: ireturn
    //   63: iload_2
    //   64: bipush #76
    //   66: if_icmpne -> 95
    //   69: iload_3
    //   70: iconst_1
    //   71: iadd
    //   72: istore_2
    //   73: aload_0
    //   74: iload_3
    //   75: invokevirtual charAt : (I)C
    //   78: bipush #59
    //   80: if_icmpne -> 90
    //   83: iload_1
    //   84: iconst_1
    //   85: iadd
    //   86: istore_1
    //   87: goto -> 7
    //   90: iload_2
    //   91: istore_3
    //   92: goto -> 69
    //   95: iload_2
    //   96: bipush #91
    //   98: if_icmpne -> 147
    //   101: aload_0
    //   102: iload_3
    //   103: invokevirtual charAt : (I)C
    //   106: istore #5
    //   108: iload #5
    //   110: bipush #91
    //   112: if_icmpeq -> 140
    //   115: iload #5
    //   117: bipush #68
    //   119: if_icmpeq -> 131
    //   122: iload_3
    //   123: istore_2
    //   124: iload #5
    //   126: bipush #74
    //   128: if_icmpne -> 7
    //   131: iload_1
    //   132: iconst_1
    //   133: isub
    //   134: istore_1
    //   135: iload_3
    //   136: istore_2
    //   137: goto -> 7
    //   140: iload_3
    //   141: iconst_1
    //   142: iadd
    //   143: istore_3
    //   144: goto -> 101
    //   147: iload_2
    //   148: bipush #68
    //   150: if_icmpeq -> 169
    //   153: iload_2
    //   154: bipush #74
    //   156: if_icmpne -> 162
    //   159: goto -> 169
    //   162: iload_1
    //   163: iconst_1
    //   164: iadd
    //   165: istore_1
    //   166: goto -> 173
    //   169: iload_1
    //   170: iconst_2
    //   171: iadd
    //   172: istore_1
    //   173: iload_3
    //   174: istore_2
    //   175: goto -> 7 }
  
  static int a(byte[] paramArrayOfByte, int paramInt) {
    byte b1 = paramArrayOfByte[paramInt];
    return paramArrayOfByte[paramInt + 1] & 0xFF | (b1 & 0xFF) << 8;
  }
  
  static int a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2) {
    int i1 = paramInt2 - paramInt1;
    byte b1 = 0;
    while (true) {
      int i2;
      if (b1 >= paramArrayOfInt1.length)
        return i1; 
      if (paramInt1 < paramArrayOfInt1[b1] && paramArrayOfInt1[b1] <= paramInt2) {
        i2 = i1 + paramArrayOfInt2[b1];
      } else {
        i2 = i1;
        if (paramInt2 < paramArrayOfInt1[b1]) {
          i2 = i1;
          if (paramArrayOfInt1[b1] <= paramInt1)
            i2 = i1 - paramArrayOfInt2[b1]; 
        } 
      } 
      b1++;
      i1 = i2;
    } 
  }
  
  private void a(int paramInt, Label paramLabel) {
    synchronized (w) {
      Edge edge;
      if (z == null) {
        edge = new Edge();
      } else {
        edge = z;
        z = z.d;
      } 
      if (this.y == null)
        this.y = edge; 
      edge.d = this.x;
      this.x = edge;
      edge.a = paramInt;
      edge.b = paramLabel;
      edge.c = this.u.e;
      this.u.e = edge;
      return;
    } 
  }
  
  static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2) {
    paramArrayOfByte[paramInt1] = (byte)(paramInt2 >>> 8);
    paramArrayOfByte[paramInt1 + 1] = (byte)paramInt2;
  }
  
  static short b(byte[] paramArrayOfByte, int paramInt) {
    byte b1 = paramArrayOfByte[paramInt];
    return (short)(paramArrayOfByte[paramInt + 1] & 0xFF | (b1 & 0xFF) << 8);
  }
  
  static int c(byte[] paramArrayOfByte, int paramInt) {
    byte b1 = paramArrayOfByte[paramInt];
    byte b2 = paramArrayOfByte[paramInt + 1];
    byte b3 = paramArrayOfByte[paramInt + 2];
    return paramArrayOfByte[paramInt + 3] & 0xFF | (b1 & 0xFF) << 24 | (b2 & 0xFF) << 16 | (b3 & 0xFF) << 8;
  }
  
  final int a() {
    if (this.q)
      a(new int[0], new int[0], 0); 
    if (this.h.b > 0) {
      this.b.a("Code");
      i1 = this.h.b + 18 + this.i * 8 + 8;
      int i3 = i1;
      if (this.n != null)
        i3 = i1 + this.n.b + 8; 
      i1 = i3;
      if (this.p != null)
        i1 = i3 + this.p.b + 8; 
    } else {
      i1 = 8;
    } 
    int i2 = i1;
    if (this.k > 0) {
      this.b.a("Exceptions");
      i2 = i1 + this.k * 2 + 8;
    } 
    int i1 = i2;
    if ((this.e & 0x10000) != 0) {
      this.b.a("Synthetic");
      i1 = i2 + 6;
    } 
    i2 = i1;
    if ((this.e & 0x20000) != 0) {
      this.b.a("Deprecated");
      i2 = i1 + 6;
    } 
    return i2;
  }
  
  protected void a(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString) {
    this.e = paramInt;
    this.c = this.b.a(paramString1);
    this.d = this.b.a(paramString2);
    if (paramArrayOfString != null && paramArrayOfString.length > 0) {
      this.k = paramArrayOfString.length;
      this.l = new int[this.k];
      byte b1;
      for (b1 = 0; b1 < this.k; b1++)
        this.l[b1] = (this.b.b(paramArrayOfString[b1])).a; 
    } 
    if (this.r) {
      int i2 = a(paramString2) >> 2;
      int i1 = i2;
      if ((paramInt & 0x8) != 0)
        i1 = i2 - 1; 
      if (i1 > this.g)
        this.g = i1; 
    } 
  }
  
  final void a(ByteVector paramByteVector) {
    paramByteVector.put2(this.e).put2(this.c.a).put2(this.d.a);
    int i1 = this.h.b;
    int i3 = 1;
    if (i1 > 0) {
      i2 = 1;
    } else {
      i2 = 0;
    } 
    i1 = i2;
    if (this.k > 0)
      i1 = i2 + 1; 
    int i2 = i1;
    if ((this.e & 0x10000) != 0)
      i2 = i1 + 1; 
    i1 = i2;
    if ((this.e & 0x20000) != 0)
      i1 = i2 + 1; 
    paramByteVector.put2(i1);
    if (this.h.b > 0) {
      i2 = this.h.b + 12 + this.i * 8;
      i1 = i2;
      if (this.n != null)
        i1 = i2 + this.n.b + 8; 
      i2 = i1;
      if (this.p != null)
        i2 = i1 + this.p.b + 8; 
      paramByteVector.put2((this.b.a("Code")).a).put4(i2);
      paramByteVector.put2(this.f).put2(this.g);
      paramByteVector.put4(this.h.b).putByteArray(this.h.a, 0, this.h.b);
      paramByteVector.put2(this.i);
      if (this.i > 0)
        paramByteVector.putByteArray(this.j.a, 0, this.j.b); 
      if (this.n != null) {
        i1 = i3;
      } else {
        i1 = 0;
      } 
      i2 = i1;
      if (this.p != null)
        i2 = i1 + 1; 
      paramByteVector.put2(i2);
      if (this.n != null) {
        paramByteVector.put2((this.b.a("LocalVariableTable")).a);
        paramByteVector.put4(this.n.b + 2).put2(this.m);
        paramByteVector.putByteArray(this.n.a, 0, this.n.b);
      } 
      if (this.p != null) {
        paramByteVector.put2((this.b.a("LineNumberTable")).a);
        paramByteVector.put4(this.p.b + 2).put2(this.o);
        paramByteVector.putByteArray(this.p.a, 0, this.p.b);
      } 
    } 
    if (this.k > 0) {
      paramByteVector.put2((this.b.a("Exceptions")).a).put4(this.k * 2 + 2);
      paramByteVector.put2(this.k);
      for (i1 = 0; i1 < this.k; i1++)
        paramByteVector.put2(this.l[i1]); 
    } 
    if ((this.e & 0x10000) != 0)
      paramByteVector.put2((this.b.a("Synthetic")).a).put4(0); 
    if ((this.e & 0x20000) != 0)
      paramByteVector.put2((this.b.a("Deprecated")).a).put4(0); 
  }
  
  protected int[] a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt) {
    byte[] arrayOfByte = this.h.a;
    int[] arrayOfInt1 = new int[paramInt];
    int[] arrayOfInt2 = new int[paramInt];
    System.arraycopy(paramArrayOfInt1, 0, arrayOfInt1, 0, paramInt);
    System.arraycopy(paramArrayOfInt2, 0, arrayOfInt2, 0, paramInt);
    boolean[] arrayOfBoolean = new boolean[this.h.b];
    int i2 = 3;
    int i1 = 3;
    label199: while (true) {
      Object object;
      int i3 = i1;
      if (i1 == i2)
        i3 = 2; 
      int[] arrayOfInt = arrayOfInt1;
      int i5 = 0;
      arrayOfInt1 = arrayOfInt2;
      arrayOfInt2 = arrayOfInt;
      int i4 = i3;
      while (true) {
        Object object1;
        int[] arrayOfInt3;
        int i6;
        i1 = arrayOfByte.length;
        i3 = 132;
        if (i5 >= i1) {
          i1 = i4;
          if (i4 < i2)
            i1 = i4 - 1; 
          if (i1 == 0) {
            ByteVector byteVector = new ByteVector(this.h.b);
            i1 = 0;
            label196: while (true) {
              byte[] arrayOfByte1;
              if (i1 >= this.h.b) {
                if (this.j != null) {
                  arrayOfByte1 = this.j.a;
                  for (paramInt = 0; paramInt < this.j.b; paramInt += 8) {
                    a(arrayOfByte1, paramInt, a(arrayOfInt2, object, 0, a(arrayOfByte1, paramInt)));
                    i1 = paramInt + 2;
                    a(arrayOfByte1, i1, a(arrayOfInt2, object, 0, a(arrayOfByte1, i1)));
                    i1 = paramInt + 4;
                    a(arrayOfByte1, i1, a(arrayOfInt2, object, 0, a(arrayOfByte1, i1)));
                  } 
                } 
                if (this.n != null) {
                  arrayOfByte1 = this.n.a;
                  for (paramInt = 0; paramInt < this.n.b; paramInt += 10) {
                    i1 = a(arrayOfByte1, paramInt);
                    i3 = a(arrayOfInt2, object, 0, i1);
                    a(arrayOfByte1, paramInt, i3);
                    a(arrayOfByte1, paramInt, a(arrayOfInt2, object, 0, i1 + a(arrayOfByte1, paramInt + 2)) - i3);
                  } 
                } 
                if (this.p != null) {
                  arrayOfByte1 = this.p.a;
                  for (paramInt = 0; paramInt < this.p.b; paramInt += 4)
                    a(arrayOfByte1, paramInt, a(arrayOfInt2, object, 0, a(arrayOfByte1, paramInt))); 
                } 
                this.h = byteVector;
                return paramArrayOfInt1;
              } 
              i4 = arrayOfInt2.length - 1;
              while (true) {
                if (i4 < 0) {
                  i5 = arrayOfByte[i1] & 0xFF;
                  switch (ClassWriter.f[i5]) {
                    default:
                      byteVector.putByteArray(arrayOfByte, i1, 4);
                      i1 += 4;
                      continue;
                    case 16:
                      if ((arrayOfByte[i1 + 1] & 0xFF) == i3) {
                        byteVector.putByteArray(arrayOfByte, i1, 6);
                        i1 += 6;
                        continue label196;
                      } 
                      byteVector.putByteArray(arrayOfByte, i1, 4);
                      i1 += 4;
                      continue label196;
                    case 14:
                      i4 = i1 + 4 - (i1 & 0x3);
                      i5 = byteVector.b;
                      byteVector.put1(171);
                      while (true) {
                        if (byteVector.b % 4 == 0) {
                          i5 = c(arrayOfByte, i4);
                          i4 += 4;
                          byteVector.put4(a(arrayOfInt2, object, i1, i5 + i1));
                          i5 = c(arrayOfByte, i4);
                          i4 += 4;
                          byteVector.put4(i5);
                          while (true) {
                            if (i5 <= 0) {
                              i1 = i4;
                              continue label196;
                            } 
                            byteVector.put4(c(arrayOfByte, i4));
                            i4 += 4;
                            i3 = c(arrayOfByte, i4);
                            i4 += 4;
                            byteVector.put4(a(arrayOfInt2, object, i1, i3 + i1));
                            i5--;
                            i3 = 132;
                          } 
                          break;
                        } 
                        byteVector.put1(0);
                        i3 = 132;
                      } 
                      break;
                    case 13:
                      i3 = i1 + 4 - (i1 & 0x3);
                      i4 = byteVector.b;
                      byteVector.put1(170);
                      while (true) {
                        if (byteVector.b % 4 == 0) {
                          i4 = c(arrayOfByte, i3);
                          i3 += 4;
                          byteVector.put4(a(arrayOfInt2, object, i1, i4 + i1));
                          i4 = c(arrayOfByte, i3);
                          i3 += 4;
                          byteVector.put4(i4);
                          i4 = c(arrayOfByte, i3) - i4 + 1;
                          i3 += 4;
                          byteVector.put4(c(arrayOfByte, i3 - 4));
                          while (true) {
                            if (i4 <= 0) {
                              i1 = i3;
                              i3 = 132;
                              continue label196;
                            } 
                            i5 = c(arrayOfByte, i3);
                            i3 += 4;
                            byteVector.put4(a(arrayOfInt2, object, i1, i5 + i1));
                            i4--;
                          } 
                          break;
                        } 
                        byteVector.put1(0);
                      } 
                      break;
                    case 9:
                      i3 = a(arrayOfInt2, object, i1, c(arrayOfByte, i1 + 1) + i1);
                      byteVector.put1(i5);
                      byteVector.put4(i3);
                      i1 += 5;
                      continue;
                    case 8:
                      if (i5 > 201) {
                        if (i5 < 218) {
                          i3 = i5 - 49;
                        } else {
                          i3 = i5 - 20;
                        } 
                        i4 = a(arrayOfByte, i1 + 1);
                      } else {
                        i4 = b(arrayOfByte, i1 + 1);
                        i3 = i5;
                      } 
                      i4 = a(arrayOfInt2, object, i1, i4 + i1);
                      if (i4 < -32768 || i4 > 32767) {
                        if (i3 == 167) {
                          byteVector.put1(200);
                          i3 = i4;
                        } else if (i3 == 168) {
                          byteVector.put1(201);
                          i3 = i4;
                        } else {
                          if (i3 <= 166) {
                            i3 = (i3 + 1 ^ true) - 1;
                          } else {
                            i3 ^= 0x1;
                          } 
                          byteVector.put1(i3);
                          byteVector.put2(8);
                          byteVector.put1(200);
                          i3 = i4 - 3;
                        } 
                        byteVector.put4(i3);
                      } else {
                        byteVector.put1(i3);
                        byteVector.put2(i4);
                      } 
                      i1 += 3;
                      continue;
                    case 7:
                      byteVector.putByteArray(arrayOfByte, i1, 5);
                      i1 += 5;
                      continue;
                    case 2:
                    case 5:
                    case 6:
                    case 11:
                    case 12:
                      byteVector.putByteArray(arrayOfByte, i1, i2);
                      i1 += 3;
                      continue;
                    case 1:
                    case 3:
                    case 10:
                      byteVector.putByteArray(arrayOfByte, i1, 2);
                      i1 += 2;
                      continue;
                    case 0:
                    case 4:
                      break;
                  } 
                  byteVector.put1(i5);
                  i1++;
                  continue;
                } 
                if (arrayOfInt2[i4] == i1 && i4 < paramInt) {
                  if (arrayOfByte1[i4] > 0) {
                    byteVector.putByteArray(null, 0, arrayOfByte1[i4]);
                  } else {
                    byteVector.b += arrayOfByte1[i4];
                  } 
                  paramArrayOfInt1[i4] = byteVector.b;
                } 
                i4--;
                i3 = 132;
              } 
              break;
            } 
            break;
          } 
          Object object3 = object;
          arrayOfInt3 = arrayOfInt2;
          object1 = object3;
          continue label199;
        } 
        i1 = arrayOfByte[i5] & 0xFF;
        switch (ClassWriter.f[i1]) {
          default:
            i1 = i5 + 4;
            i3 = 0;
            break;
          case 16:
          
          case 14:
            if (i4 == 1) {
              i3 = -(a(object1, arrayOfInt3, 0, i5) & i2);
            } else if (!arrayOfBoolean[i5]) {
              i3 = i5 & 0x3;
              arrayOfBoolean[i5] = true;
            } else {
              i3 = 0;
            } 
            i1 = i5 + 4 - (i5 & 0x3);
            i1 += c(arrayOfByte, i1 + 4) * 8 + 8;
            break;
          case 13:
            if (i4 == 1) {
              i1 = -(a(object1, arrayOfInt3, 0, i5) & i2);
            } else if (!arrayOfBoolean[i5]) {
              i1 = i5 & 0x3;
              arrayOfBoolean[i5] = true;
            } else {
              i1 = 0;
            } 
            i2 = i5 + 4 - (i5 & 0x3);
            i5 = c(arrayOfByte, i2 + 8);
            i6 = c(arrayOfByte, i2 + 4);
            i3 = i1;
            i1 = i2 + (i5 - i6 + 1) * 4 + 12;
            break;
          case 8:
            if (i1 > 201) {
              if (i1 < 218) {
                i1 -= 49;
              } else {
                i1 -= 20;
              } 
              i3 = a(arrayOfByte, i5 + 1);
            } else {
              i3 = b(arrayOfByte, i5 + 1);
            } 
            i3 = a(object1, arrayOfInt3, i5, i3 + i5);
            if ((i3 < -32768 || i3 > 32767) && !arrayOfBoolean[i5]) {
              if (i1 == 167 || i1 == 168) {
                i1 = 2;
              } else {
                i1 = 5;
              } 
              arrayOfBoolean[i5] = true;
            } else {
              i1 = 0;
            } 
            i2 = i5 + 3;
            i3 = i1;
            i1 = i2;
            break;
          case 7:
          case 9:
            i1 = i5 + 5;
            i3 = 0;
            break;
          case 2:
          case 5:
          case 6:
          case 11:
          case 12:
            i1 = i5 + 3;
            i3 = 0;
            break;
          case 1:
          case 3:
          case 10:
            i1 = i5 + 2;
            i3 = 0;
            break;
          case 0:
          case 4:
            i1 = i5 + 1;
            i3 = 0;
            break;
        } 
        i2 = i4;
        Object object2 = object1;
        int[] arrayOfInt4 = arrayOfInt3;
        if (i3 != 0) {
          arrayOfInt4 = new int[object1.length + 1];
          int[] arrayOfInt5 = new int[arrayOfInt3.length + 1];
          System.arraycopy(object1, 0, arrayOfInt4, 0, object1.length);
          System.arraycopy(arrayOfInt3, 0, arrayOfInt5, 0, arrayOfInt3.length);
          arrayOfInt4[object1.length] = i1;
          arrayOfInt5[arrayOfInt3.length] = i3;
          if (i3 > 0) {
            arrayOfInt3 = arrayOfInt5;
            i2 = 3;
            arrayOfInt5 = arrayOfInt4;
            arrayOfInt4 = arrayOfInt3;
          } else {
            arrayOfInt3 = arrayOfInt4;
            arrayOfInt4 = arrayOfInt5;
            arrayOfInt5 = arrayOfInt3;
            i2 = i4;
          } 
        } 
        continue;
        i3 = 3;
        i5 = i1;
        i4 = i2;
        i2 = i3;
        arrayOfInt2 = arrayOfInt;
        object = SYNTHETIC_LOCAL_VARIABLE_13;
      } 
      break;
    } 
  }
  
  public void visitFieldInsn(int paramInt, String paramString1, String paramString2, String paramString3) { // Byte code:
    //   0: aload_0
    //   1: getfield r : Z
    //   4: ifeq -> 238
    //   7: iconst_0
    //   8: istore #5
    //   10: aload #4
    //   12: iconst_0
    //   13: invokevirtual charAt : (I)C
    //   16: istore #9
    //   18: bipush #-2
    //   20: istore #7
    //   22: iconst_1
    //   23: istore #6
    //   25: iload_1
    //   26: tableswitch default -> 52, 178 -> 165, 179 -> 116, 180 -> 83
    //   52: aload_0
    //   53: getfield s : I
    //   56: istore #8
    //   58: iload #9
    //   60: bipush #68
    //   62: if_icmpeq -> 202
    //   65: iload #8
    //   67: istore #6
    //   69: iload #7
    //   71: istore #5
    //   73: iload #9
    //   75: bipush #74
    //   77: if_icmpne -> 210
    //   80: goto -> 202
    //   83: aload_0
    //   84: getfield s : I
    //   87: istore #6
    //   89: iload #9
    //   91: bipush #68
    //   93: if_icmpeq -> 103
    //   96: iload #9
    //   98: bipush #74
    //   100: if_icmpne -> 106
    //   103: iconst_1
    //   104: istore #5
    //   106: iload #6
    //   108: iload #5
    //   110: iadd
    //   111: istore #5
    //   113: goto -> 217
    //   116: aload_0
    //   117: getfield s : I
    //   120: istore #8
    //   122: iload #8
    //   124: istore #6
    //   126: iload #7
    //   128: istore #5
    //   130: iload #9
    //   132: bipush #68
    //   134: if_icmpeq -> 210
    //   137: iload #9
    //   139: bipush #74
    //   141: if_icmpne -> 155
    //   144: iload #8
    //   146: istore #6
    //   148: iload #7
    //   150: istore #5
    //   152: goto -> 210
    //   155: iconst_m1
    //   156: istore #5
    //   158: iload #8
    //   160: istore #6
    //   162: goto -> 210
    //   165: aload_0
    //   166: getfield s : I
    //   169: istore #7
    //   171: iload #9
    //   173: bipush #68
    //   175: if_icmpeq -> 189
    //   178: iload #6
    //   180: istore #5
    //   182: iload #9
    //   184: bipush #74
    //   186: if_icmpne -> 192
    //   189: iconst_2
    //   190: istore #5
    //   192: iload #7
    //   194: iload #5
    //   196: iadd
    //   197: istore #5
    //   199: goto -> 217
    //   202: bipush #-3
    //   204: istore #5
    //   206: iload #8
    //   208: istore #6
    //   210: iload #5
    //   212: iload #6
    //   214: iadd
    //   215: istore #5
    //   217: iload #5
    //   219: aload_0
    //   220: getfield t : I
    //   223: if_icmple -> 232
    //   226: aload_0
    //   227: iload #5
    //   229: putfield t : I
    //   232: aload_0
    //   233: iload #5
    //   235: putfield s : I
    //   238: aload_0
    //   239: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   242: iload_1
    //   243: aload_0
    //   244: getfield b : Lbsh/org/objectweb/asm/ClassWriter;
    //   247: aload_2
    //   248: aload_3
    //   249: aload #4
    //   251: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;
    //   254: getfield a : S
    //   257: invokevirtual put12 : (II)Lbsh/org/objectweb/asm/ByteVector;
    //   260: pop
    //   261: return }
  
  public void visitIincInsn(int paramInt1, int paramInt2) {
    if (this.r) {
      int i1 = paramInt1 + 1;
      if (i1 > this.g)
        this.g = i1; 
    } 
    if (paramInt1 > 255 || paramInt2 > 127 || paramInt2 < -128) {
      this.h.put1(196).put12(132, paramInt1).put2(paramInt2);
      return;
    } 
    this.h.put1(132).put11(paramInt1, paramInt2);
  }
  
  public void visitInsn(int paramInt) {
    if (this.r) {
      int i1 = this.s + w[paramInt];
      if (i1 > this.t)
        this.t = i1; 
      this.s = i1;
      if (((paramInt >= 172 && paramInt <= 177) || paramInt == 191) && this.u != null) {
        this.u.d = this.t;
        this.u = null;
      } 
    } 
    this.h.put1(paramInt);
  }
  
  public void visitIntInsn(int paramInt1, int paramInt2) {
    if (this.r && paramInt1 != 188) {
      int i1 = this.s + 1;
      if (i1 > this.t)
        this.t = i1; 
      this.s = i1;
    } 
    if (paramInt1 == 17) {
      this.h.put12(paramInt1, paramInt2);
      return;
    } 
    this.h.put11(paramInt1, paramInt2);
  }
  
  public void visitJumpInsn(int paramInt, Label paramLabel) { // Byte code:
    //   0: aload_0
    //   1: getfield r : Z
    //   4: ifeq -> 108
    //   7: iload_1
    //   8: sipush #167
    //   11: if_icmpne -> 49
    //   14: aload_0
    //   15: getfield u : Lbsh/org/objectweb/asm/Label;
    //   18: ifnull -> 108
    //   21: aload_0
    //   22: getfield u : Lbsh/org/objectweb/asm/Label;
    //   25: aload_0
    //   26: getfield t : I
    //   29: putfield d : I
    //   32: aload_0
    //   33: aload_0
    //   34: getfield s : I
    //   37: aload_2
    //   38: invokespecial a : (ILbsh/org/objectweb/asm/Label;)V
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield u : Lbsh/org/objectweb/asm/Label;
    //   46: goto -> 108
    //   49: iload_1
    //   50: sipush #168
    //   53: if_icmpne -> 79
    //   56: aload_0
    //   57: getfield u : Lbsh/org/objectweb/asm/Label;
    //   60: ifnull -> 108
    //   63: aload_0
    //   64: getfield s : I
    //   67: iconst_1
    //   68: iadd
    //   69: istore_3
    //   70: aload_0
    //   71: iload_3
    //   72: aload_2
    //   73: invokespecial a : (ILbsh/org/objectweb/asm/Label;)V
    //   76: goto -> 108
    //   79: aload_0
    //   80: aload_0
    //   81: getfield s : I
    //   84: getstatic bsh/org/objectweb/asm/CodeWriter.w : [I
    //   87: iload_1
    //   88: iaload
    //   89: iadd
    //   90: putfield s : I
    //   93: aload_0
    //   94: getfield u : Lbsh/org/objectweb/asm/Label;
    //   97: ifnull -> 108
    //   100: aload_0
    //   101: getfield s : I
    //   104: istore_3
    //   105: goto -> 70
    //   108: aload_2
    //   109: getfield a : Z
    //   112: ifeq -> 250
    //   115: aload_2
    //   116: getfield b : I
    //   119: aload_0
    //   120: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   123: getfield b : I
    //   126: isub
    //   127: sipush #-32768
    //   130: if_icmpge -> 250
    //   133: sipush #200
    //   136: istore_3
    //   137: iload_1
    //   138: sipush #167
    //   141: if_icmpne -> 162
    //   144: aload_0
    //   145: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   148: astore #4
    //   150: iload_3
    //   151: istore_1
    //   152: aload #4
    //   154: iload_1
    //   155: invokevirtual put1 : (I)Lbsh/org/objectweb/asm/ByteVector;
    //   158: pop
    //   159: goto -> 230
    //   162: iload_1
    //   163: sipush #168
    //   166: if_icmpne -> 182
    //   169: aload_0
    //   170: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   173: astore #4
    //   175: sipush #201
    //   178: istore_1
    //   179: goto -> 152
    //   182: aload_0
    //   183: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   186: astore #4
    //   188: iload_1
    //   189: sipush #166
    //   192: if_icmpgt -> 206
    //   195: iload_1
    //   196: iconst_1
    //   197: iadd
    //   198: iconst_1
    //   199: ixor
    //   200: iconst_1
    //   201: isub
    //   202: istore_1
    //   203: goto -> 210
    //   206: iload_1
    //   207: iconst_1
    //   208: ixor
    //   209: istore_1
    //   210: aload #4
    //   212: iload_1
    //   213: invokevirtual put1 : (I)Lbsh/org/objectweb/asm/ByteVector;
    //   216: pop
    //   217: aload_0
    //   218: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   221: bipush #8
    //   223: invokevirtual put2 : (I)Lbsh/org/objectweb/asm/ByteVector;
    //   226: pop
    //   227: goto -> 144
    //   230: aload_2
    //   231: aload_0
    //   232: aload_0
    //   233: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   236: aload_0
    //   237: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   240: getfield b : I
    //   243: iconst_1
    //   244: isub
    //   245: iconst_1
    //   246: invokevirtual a : (Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V
    //   249: return
    //   250: aload_0
    //   251: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   254: iload_1
    //   255: invokevirtual put1 : (I)Lbsh/org/objectweb/asm/ByteVector;
    //   258: pop
    //   259: aload_2
    //   260: aload_0
    //   261: aload_0
    //   262: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   265: aload_0
    //   266: getfield h : Lbsh/org/objectweb/asm/ByteVector;
    //   269: getfield b : I
    //   272: iconst_1
    //   273: isub
    //   274: iconst_0
    //   275: invokevirtual a : (Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V
    //   278: return }
  
  public void visitLabel(Label paramLabel) {
    if (this.r) {
      if (this.u != null) {
        this.u.d = this.t;
        a(this.s, paramLabel);
      } 
      this.u = paramLabel;
      this.s = 0;
      this.t = 0;
    } 
    boolean bool = this.q;
    this.q = paramLabel.a(this, this.h.b, this.h.a) | bool;
  }
  
  public void visitLdcInsn(Object paramObject) {
    byte b1;
    paramObject = this.b.a(paramObject);
    if (this.r) {
      if (paramObject.b == 5 || paramObject.b == 6) {
        b1 = this.s + 2;
      } else {
        b1 = this.s + 1;
      } 
      if (b1 > this.t)
        this.t = b1; 
      this.s = b1;
    } 
    short s1 = paramObject.a;
    if (paramObject.b == 5 || paramObject.b == 6) {
      paramObject = this.h;
      b1 = 20;
    } else if (s1 >= 256) {
      paramObject = this.h;
      b1 = 19;
    } else {
      this.h.put11(18, s1);
      return;
    } 
    paramObject.put12(b1, s1);
  }
  
  public void visitLineNumber(int paramInt, Label paramLabel) {
    if (this.p == null) {
      this.b.a("LineNumberTable");
      this.p = new ByteVector();
    } 
    this.o++;
    this.p.put2(paramLabel.b);
    this.p.put2(paramInt);
  }
  
  public void visitLocalVariable(String paramString1, String paramString2, Label paramLabel1, Label paramLabel2, int paramInt) {
    if (this.n == null) {
      this.b.a("LocalVariableTable");
      this.n = new ByteVector();
    } 
    this.m++;
    this.n.put2(paramLabel1.b);
    this.n.put2(paramLabel2.b - paramLabel1.b);
    this.n.put2((this.b.a(paramString1)).a);
    this.n.put2((this.b.a(paramString2)).a);
    this.n.put2(paramInt);
  }
  
  public void visitLookupSwitchInsn(Label paramLabel, int[] paramArrayOfInt, Label[] paramArrayOfLabel) {
    boolean bool1 = this.r;
    boolean bool = false;
    if (bool1) {
      this.s--;
      if (this.u != null) {
        this.u.d = this.t;
        a(this.s, paramLabel);
        byte b1;
        for (b1 = 0;; b1++) {
          if (b1 >= paramArrayOfLabel.length) {
            this.u = null;
            break;
          } 
          a(this.s, paramArrayOfLabel[b1]);
        } 
      } 
    } 
    int i1 = this.h.b;
    this.h.put1(171);
    while (true) {
      if (this.h.b % 4 == 0) {
        paramLabel.a(this, this.h, i1, true);
        this.h.put4(paramArrayOfLabel.length);
        byte b1;
        for (b1 = bool;; b1++) {
          if (b1 >= paramArrayOfLabel.length)
            return; 
          this.h.put4(paramArrayOfInt[b1]);
          paramArrayOfLabel[b1].a(this, this.h, i1, true);
        } 
        break;
      } 
      this.h.put1(0);
    } 
  }
  
  public void visitMaxs(int paramInt1, int paramInt2) {
    if (this.r) {
      paramInt1 = 0;
      Label label = this.v;
      while (true) {
        if (label == null) {
          this.f = paramInt1;
          synchronized (w) {
            if (this.y != null) {
              this.y.d = z;
              z = this.x;
            } 
            return;
          } 
        } 
        Label label1 = label.f;
        int i1 = label.c;
        paramInt2 = label.d + i1;
        if (paramInt2 > paramInt1)
          paramInt1 = paramInt2; 
        Edge edge = label.e;
        for (label = label1; edge != null; label = label1) {
          Label label2 = edge.b;
          label1 = label;
          if (!label2.g) {
            label2.c = edge.a + i1;
            label2.g = true;
            label2.f = label;
            label1 = label2;
          } 
          edge = edge.c;
        } 
      } 
    } 
    this.f = paramInt1;
    this.g = paramInt2;
  }
  
  public void visitMethodInsn(int paramInt, String paramString1, String paramString2, String paramString3) {
    Item item;
    if (paramInt == 185) {
      item = this.b.c(paramString1, paramString2, paramString3);
    } else {
      item = this.b.b(item, paramString2, paramString3);
    } 
    int i2 = item.c;
    int i1 = i2;
    if (this.r) {
      i1 = i2;
      if (i2 == 0) {
        i1 = a(paramString3);
        item.c = i1;
      } 
      if (paramInt == 184) {
        i2 = this.s - (i1 >> 2) + (i1 & 0x3) + 1;
      } else {
        i2 = this.s - (i1 >> 2) + (i1 & 0x3);
      } 
      if (i2 > this.t)
        this.t = i2; 
      this.s = i2;
    } 
    if (paramInt == 185) {
      paramInt = i1;
      if (!this.r) {
        paramInt = i1;
        if (i1 == 0) {
          paramInt = a(paramString3);
          item.c = paramInt;
        } 
      } 
      this.h.put12(185, item.a).put11(paramInt >> 2, 0);
      return;
    } 
    this.h.put12(paramInt, item.a);
  }
  
  public void visitMultiANewArrayInsn(String paramString, int paramInt) {
    if (this.r)
      this.s += 1 - paramInt; 
    Item item = this.b.b(paramString);
    this.h.put12(197, item.a).put1(paramInt);
  }
  
  public void visitTableSwitchInsn(int paramInt1, int paramInt2, Label paramLabel, Label[] paramArrayOfLabel) {
    boolean bool = this.r;
    int i2 = 0;
    if (bool) {
      this.s--;
      if (this.u != null) {
        this.u.d = this.t;
        a(this.s, paramLabel);
        byte b1;
        for (b1 = 0;; b1++) {
          if (b1 >= paramArrayOfLabel.length) {
            this.u = null;
            break;
          } 
          a(this.s, paramArrayOfLabel[b1]);
        } 
      } 
    } 
    int i1 = this.h.b;
    this.h.put1(170);
    while (true) {
      if (this.h.b % 4 == 0) {
        paramLabel.a(this, this.h, i1, true);
        this.h.put4(paramInt1).put4(paramInt2);
        for (paramInt1 = i2;; paramInt1++) {
          if (paramInt1 >= paramArrayOfLabel.length)
            return; 
          paramArrayOfLabel[paramInt1].a(this, this.h, i1, true);
        } 
        break;
      } 
      this.h.put1(0);
    } 
  }
  
  public void visitTryCatchBlock(Label paramLabel1, Label paramLabel2, Label paramLabel3, String paramString) {
    byte b1;
    if (this.r && !paramLabel3.g) {
      paramLabel3.c = 1;
      paramLabel3.g = true;
      paramLabel3.f = this.v;
      this.v = paramLabel3;
    } 
    this.i++;
    if (this.j == null)
      this.j = new ByteVector(); 
    this.j.put2(paramLabel1.b);
    this.j.put2(paramLabel2.b);
    this.j.put2(paramLabel3.b);
    ByteVector byteVector = this.j;
    if (paramString != null) {
      b1 = (this.b.b(paramString)).a;
    } else {
      b1 = 0;
    } 
    byteVector.put2(b1);
  }
  
  public void visitTypeInsn(int paramInt, String paramString) {
    if (this.r && paramInt == 187) {
      int i1 = this.s + 1;
      if (i1 > this.t)
        this.t = i1; 
      this.s = i1;
    } 
    this.h.put12(paramInt, (this.b.b(paramString)).a);
  }
  
  public void visitVarInsn(int paramInt1, int paramInt2) {
    if (this.r) {
      int i1;
      if (paramInt1 == 169) {
        if (this.u != null) {
          this.u.d = this.t;
          this.u = null;
        } 
      } else {
        i1 = this.s + w[paramInt1];
        if (i1 > this.t)
          this.t = i1; 
        this.s = i1;
      } 
      if (paramInt1 == 22 || paramInt1 == 24 || paramInt1 == 55 || paramInt1 == 57) {
        i1 = paramInt2 + 2;
      } else {
        i1 = paramInt2 + 1;
      } 
      if (i1 > this.g)
        this.g = i1; 
    } 
    if (paramInt2 < 4 && paramInt1 != 169) {
      if (paramInt1 < 54) {
        paramInt1 = (paramInt1 - 21 << 2) + 26;
      } else {
        paramInt1 = (paramInt1 - 54 << 2) + 59;
      } 
      this.h.put1(paramInt1 + paramInt2);
      return;
    } 
    if (paramInt2 >= 256) {
      this.h.put1(196).put12(paramInt1, paramInt2);
      return;
    } 
    this.h.put11(paramInt1, paramInt2);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\CodeWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
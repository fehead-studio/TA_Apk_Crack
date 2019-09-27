package bsh;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public class JavaCharStream {
  public static final boolean staticFlag = false;
  
  int a;
  
  int b;
  
  public int bufpos = -1;
  
  int c;
  
  protected int[] d;
  
  protected int[] e;
  
  protected int f = 0;
  
  protected int g = 1;
  
  protected boolean h = false;
  
  protected boolean i = false;
  
  protected Reader j;
  
  protected char[] k;
  
  protected char[] l;
  
  protected int m = 0;
  
  protected int n = -1;
  
  protected int o = 0;
  
  public JavaCharStream(InputStream paramInputStream) { this(paramInputStream, 1, 1, 4096); }
  
  public JavaCharStream(InputStream paramInputStream, int paramInt1, int paramInt2) { this(paramInputStream, paramInt1, paramInt2, 4096); }
  
  public JavaCharStream(InputStream paramInputStream, int paramInt1, int paramInt2, int paramInt3) { this(new InputStreamReader(paramInputStream), paramInt1, paramInt2, 4096); }
  
  public JavaCharStream(Reader paramReader) { this(paramReader, 1, 1, 4096); }
  
  public JavaCharStream(Reader paramReader, int paramInt1, int paramInt2) { this(paramReader, paramInt1, paramInt2, 4096); }
  
  public JavaCharStream(Reader paramReader, int paramInt1, int paramInt2, int paramInt3) {
    this.j = paramReader;
    this.g = paramInt1;
    this.f = paramInt2 - 1;
    this.a = paramInt3;
    this.b = paramInt3;
    this.l = new char[paramInt3];
    this.d = new int[paramInt3];
    this.e = new int[paramInt3];
    this.k = new char[4096];
  }
  
  static final int a(char paramChar) {
    switch (paramChar) {
      default:
        switch (paramChar) {
          default:
            switch (paramChar) {
              default:
                throw new IOException();
              case 'f':
                return 15;
              case 'e':
                return 14;
              case 'd':
                return 13;
              case 'c':
                return 12;
              case 'b':
                return 11;
              case 'a':
                break;
            } 
            break;
          case 'F':
          case 'E':
          case 'D':
          case 'C':
          case 'B':
          
          case 'A':
            break;
        } 
        return 10;
      case '9':
        return 9;
      case '8':
        return 8;
      case '7':
        return 7;
      case '6':
        return 6;
      case '5':
        return 5;
      case '4':
        return 4;
      case '3':
        return 3;
      case '2':
        return 2;
      case '1':
        return 1;
      case '0':
        break;
    } 
    return 0;
  }
  
  public char BeginToken() {
    if (this.o > 0) {
      this.o--;
      int i1 = this.bufpos + 1;
      this.bufpos = i1;
      if (i1 == this.a)
        this.bufpos = 0; 
      this.c = this.bufpos;
      return this.l[this.bufpos];
    } 
    this.c = 0;
    this.bufpos = -1;
    return readChar();
  }
  
  public void Done() {
    this.k = null;
    this.l = null;
    this.d = null;
    this.e = null;
  }
  
  public String GetImage() {
    if (this.bufpos >= this.c)
      return new String(this.l, this.c, this.bufpos - this.c + 1); 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append(new String(this.l, this.c, this.a - this.c));
    stringBuffer.append(new String(this.l, 0, this.bufpos + 1));
    return stringBuffer.toString();
  }
  
  public char[] GetSuffix(int paramInt) {
    char[] arrayOfChar = new char[paramInt];
    if (this.bufpos + 1 >= paramInt) {
      System.arraycopy(this.l, this.bufpos - paramInt + 1, arrayOfChar, 0, paramInt);
      return arrayOfChar;
    } 
    System.arraycopy(this.l, this.a - paramInt - this.bufpos - 1, arrayOfChar, 0, paramInt - this.bufpos - 1);
    System.arraycopy(this.l, 0, arrayOfChar, paramInt - this.bufpos - 1, this.bufpos + 1);
    return arrayOfChar;
  }
  
  public void ReInit(InputStream paramInputStream) { ReInit(paramInputStream, 1, 1, 4096); }
  
  public void ReInit(InputStream paramInputStream, int paramInt1, int paramInt2) { ReInit(paramInputStream, paramInt1, paramInt2, 4096); }
  
  public void ReInit(InputStream paramInputStream, int paramInt1, int paramInt2, int paramInt3) { ReInit(new InputStreamReader(paramInputStream), paramInt1, paramInt2, 4096); }
  
  public void ReInit(Reader paramReader) { ReInit(paramReader, 1, 1, 4096); }
  
  public void ReInit(Reader paramReader, int paramInt1, int paramInt2) { ReInit(paramReader, paramInt1, paramInt2, 4096); }
  
  public void ReInit(Reader paramReader, int paramInt1, int paramInt2, int paramInt3) {
    this.j = paramReader;
    this.g = paramInt1;
    this.f = paramInt2 - 1;
    if (this.l == null || paramInt3 != this.l.length) {
      this.a = paramInt3;
      this.b = paramInt3;
      this.l = new char[paramInt3];
      this.d = new int[paramInt3];
      this.e = new int[paramInt3];
      this.k = new char[4096];
    } 
    this.h = false;
    this.i = false;
    this.m = 0;
    this.o = 0;
    this.c = 0;
    this.bufpos = -1;
    this.n = -1;
  }
  
  protected void a() {
    if (this.m == 4096) {
      this.n = 0;
      this.m = 0;
    } 
    try {
      int i1 = this.j.read(this.k, this.m, 4096 - this.m);
      if (i1 == -1) {
        this.j.close();
        throw new IOException();
      } 
      this.m += i1;
      return;
    } catch (IOException iOException) {
      if (this.bufpos != 0) {
        this.bufpos--;
        backup(0);
      } else {
        this.d[this.bufpos] = this.g;
        this.e[this.bufpos] = this.f;
      } 
      throw iOException;
    } 
  }
  
  protected void a(boolean paramBoolean) {
    arrayOfChar = new char[this.a + 2048];
    int[] arrayOfInt1 = new int[this.a + 2048];
    int[] arrayOfInt2 = new int[this.a + 2048];
    if (paramBoolean)
      try {
        System.arraycopy(this.l, this.c, arrayOfChar, 0, this.a - this.c);
        System.arraycopy(this.l, 0, arrayOfChar, this.a - this.c, this.bufpos);
        this.l = arrayOfChar;
        System.arraycopy(this.d, this.c, arrayOfInt1, 0, this.a - this.c);
        System.arraycopy(this.d, 0, arrayOfInt1, this.a - this.c, this.bufpos);
        this.d = arrayOfInt1;
        System.arraycopy(this.e, this.c, arrayOfInt2, 0, this.a - this.c);
        System.arraycopy(this.e, 0, arrayOfInt2, this.a - this.c, this.bufpos);
        this.e = arrayOfInt2;
        this.bufpos += this.a - this.c;
        int i2 = this.a + 2048;
        this.a = i2;
        this.b = i2;
        this.c = 0;
        return;
      } catch (Throwable arrayOfChar) {
        throw new Error(arrayOfChar.getMessage());
      }  
    System.arraycopy(this.l, this.c, arrayOfChar, 0, this.a - this.c);
    this.l = arrayOfChar;
    System.arraycopy(this.d, this.c, arrayOfInt1, 0, this.a - this.c);
    this.d = arrayOfInt1;
    System.arraycopy(this.e, this.c, arrayOfInt2, 0, this.a - this.c);
    this.e = arrayOfInt2;
    this.bufpos -= this.c;
    int i1 = this.a + 2048;
    this.a = i1;
    this.b = i1;
    this.c = 0;
  }
  
  public void adjustBeginLineColumn(int paramInt1, int paramInt2) {
    int i4;
    int i2;
    int i3 = this.c;
    if (this.bufpos >= this.c) {
      i4 = this.bufpos - this.c + this.o + 1;
    } else {
      i4 = this.a - this.c + this.bufpos + 1 + this.o;
    } 
    byte b1 = 0;
    int i5 = 0;
    int i1 = 0;
    while (true) {
      i2 = i3;
      if (b1 < i4) {
        int[] arrayOfInt = this.d;
        i1 = i3 % this.a;
        int i6 = arrayOfInt[i1];
        arrayOfInt = this.d;
        i2 = i3 + 1;
        i3 = i2 % this.a;
        if (i6 != arrayOfInt[i3])
          break; 
        this.d[i1] = paramInt1;
        i3 = this.e[i3];
        i6 = this.e[i1];
        this.e[i1] = i5 + paramInt2;
        b1++;
        i5 = i3 + i5 - i6;
        i3 = i2;
        continue;
      } 
      break;
    } 
    i3 = i1;
    if (b1 < i4) {
      int[] arrayOfInt = this.d;
      i3 = paramInt1 + 1;
      arrayOfInt[i1] = paramInt1;
      this.e[i1] = paramInt2 + i5;
      paramInt1 = i3;
      while (true) {
        if (b1 >= i4) {
          i3 = i1;
          break;
        } 
        arrayOfInt = this.d;
        i1 = i2 % this.a;
        paramInt2 = arrayOfInt[i1];
        arrayOfInt = this.d;
        if (paramInt2 != arrayOfInt[++i2 % this.a]) {
          this.d[i1] = paramInt1;
          paramInt1++;
        } else {
          this.d[i1] = paramInt1;
        } 
        b1++;
      } 
    } 
    this.g = this.d[i3];
    this.f = this.e[i3];
  }
  
  protected char b() {
    int i1 = this.n + 1;
    this.n = i1;
    if (i1 >= this.m)
      a(); 
    return this.k[this.n];
  }
  
  protected void b(char paramChar) { // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield f : I
    //   5: iconst_1
    //   6: iadd
    //   7: putfield f : I
    //   10: aload_0
    //   11: getfield i : Z
    //   14: ifeq -> 42
    //   17: aload_0
    //   18: iconst_0
    //   19: putfield i : Z
    //   22: aload_0
    //   23: getfield g : I
    //   26: istore_2
    //   27: aload_0
    //   28: iconst_1
    //   29: putfield f : I
    //   32: aload_0
    //   33: iload_2
    //   34: iconst_1
    //   35: iadd
    //   36: putfield g : I
    //   39: goto -> 65
    //   42: aload_0
    //   43: getfield h : Z
    //   46: ifeq -> 65
    //   49: aload_0
    //   50: iconst_0
    //   51: putfield h : Z
    //   54: iload_1
    //   55: bipush #10
    //   57: if_icmpne -> 22
    //   60: aload_0
    //   61: iconst_1
    //   62: putfield i : Z
    //   65: iload_1
    //   66: bipush #13
    //   68: if_icmpeq -> 139
    //   71: iload_1
    //   72: tableswitch default -> 96, 9 -> 107, 10 -> 99
    //   96: goto -> 144
    //   99: aload_0
    //   100: iconst_1
    //   101: putfield i : Z
    //   104: goto -> 144
    //   107: aload_0
    //   108: aload_0
    //   109: getfield f : I
    //   112: iconst_1
    //   113: isub
    //   114: putfield f : I
    //   117: aload_0
    //   118: aload_0
    //   119: getfield f : I
    //   122: bipush #8
    //   124: aload_0
    //   125: getfield f : I
    //   128: bipush #7
    //   130: iand
    //   131: isub
    //   132: iadd
    //   133: putfield f : I
    //   136: goto -> 144
    //   139: aload_0
    //   140: iconst_1
    //   141: putfield h : Z
    //   144: aload_0
    //   145: getfield d : [I
    //   148: aload_0
    //   149: getfield bufpos : I
    //   152: aload_0
    //   153: getfield g : I
    //   156: iastore
    //   157: aload_0
    //   158: getfield e : [I
    //   161: aload_0
    //   162: getfield bufpos : I
    //   165: aload_0
    //   166: getfield f : I
    //   169: iastore
    //   170: return }
  
  public void backup(int paramInt) {
    this.o += paramInt;
    paramInt = this.bufpos - paramInt;
    this.bufpos = paramInt;
    if (paramInt < 0)
      this.bufpos += this.a; 
  }
  
  protected void c() {
    if (this.b == this.a) {
      if (this.c > 2048) {
        this.bufpos = 0;
      } else {
        a(false);
        return;
      } 
    } else {
      int i2;
      if (this.b > this.c) {
        i2 = this.a;
      } else {
        if (this.c - this.b < 2048) {
          a(true);
          return;
        } 
        i2 = this.c;
      } 
      this.b = i2;
      return;
    } 
    int i1 = this.c;
  }
  
  public int getBeginColumn() { return this.e[this.c]; }
  
  public int getBeginLine() { return this.d[this.c]; }
  
  public int getColumn() { return this.e[this.bufpos]; }
  
  public int getEndColumn() { return this.e[this.bufpos]; }
  
  public int getEndLine() { return this.d[this.bufpos]; }
  
  public int getLine() { return this.d[this.bufpos]; }
  
  public char readChar() { // Byte code:
    //   0: aload_0
    //   1: getfield o : I
    //   4: ifle -> 52
    //   7: aload_0
    //   8: aload_0
    //   9: getfield o : I
    //   12: iconst_1
    //   13: isub
    //   14: putfield o : I
    //   17: aload_0
    //   18: getfield bufpos : I
    //   21: iconst_1
    //   22: iadd
    //   23: istore_2
    //   24: aload_0
    //   25: iload_2
    //   26: putfield bufpos : I
    //   29: iload_2
    //   30: aload_0
    //   31: getfield a : I
    //   34: if_icmpne -> 42
    //   37: aload_0
    //   38: iconst_0
    //   39: putfield bufpos : I
    //   42: aload_0
    //   43: getfield l : [C
    //   46: aload_0
    //   47: getfield bufpos : I
    //   50: caload
    //   51: ireturn
    //   52: aload_0
    //   53: getfield bufpos : I
    //   56: iconst_1
    //   57: iadd
    //   58: istore_2
    //   59: aload_0
    //   60: iload_2
    //   61: putfield bufpos : I
    //   64: iload_2
    //   65: aload_0
    //   66: getfield b : I
    //   69: if_icmpne -> 76
    //   72: aload_0
    //   73: invokevirtual c : ()V
    //   76: aload_0
    //   77: getfield l : [C
    //   80: astore #4
    //   82: aload_0
    //   83: getfield bufpos : I
    //   86: istore_2
    //   87: aload_0
    //   88: invokevirtual b : ()C
    //   91: istore_1
    //   92: aload #4
    //   94: iload_2
    //   95: iload_1
    //   96: castore
    //   97: iload_1
    //   98: bipush #92
    //   100: if_icmpne -> 409
    //   103: aload_0
    //   104: iload_1
    //   105: invokevirtual b : (C)V
    //   108: iconst_1
    //   109: istore_2
    //   110: aload_0
    //   111: getfield bufpos : I
    //   114: iconst_1
    //   115: iadd
    //   116: istore_3
    //   117: aload_0
    //   118: iload_3
    //   119: putfield bufpos : I
    //   122: iload_3
    //   123: aload_0
    //   124: getfield b : I
    //   127: if_icmpne -> 134
    //   130: aload_0
    //   131: invokevirtual c : ()V
    //   134: aload_0
    //   135: getfield l : [C
    //   138: astore #4
    //   140: aload_0
    //   141: getfield bufpos : I
    //   144: istore_3
    //   145: aload_0
    //   146: invokevirtual b : ()C
    //   149: istore_1
    //   150: aload #4
    //   152: iload_3
    //   153: iload_1
    //   154: castore
    //   155: iload_1
    //   156: bipush #92
    //   158: if_icmpeq -> 384
    //   161: aload_0
    //   162: iload_1
    //   163: invokevirtual b : (C)V
    //   166: iload_1
    //   167: bipush #117
    //   169: if_icmpne -> 376
    //   172: iload_2
    //   173: iconst_1
    //   174: iand
    //   175: iconst_1
    //   176: if_icmpne -> 376
    //   179: aload_0
    //   180: getfield bufpos : I
    //   183: iconst_1
    //   184: isub
    //   185: istore_3
    //   186: aload_0
    //   187: iload_3
    //   188: putfield bufpos : I
    //   191: iload_3
    //   192: ifge -> 205
    //   195: aload_0
    //   196: aload_0
    //   197: getfield a : I
    //   200: iconst_1
    //   201: isub
    //   202: putfield bufpos : I
    //   205: aload_0
    //   206: invokevirtual b : ()C
    //   209: istore_1
    //   210: iload_1
    //   211: bipush #117
    //   213: if_icmpeq -> 297
    //   216: aload_0
    //   217: getfield l : [C
    //   220: astore #4
    //   222: aload_0
    //   223: getfield bufpos : I
    //   226: istore_3
    //   227: iload_1
    //   228: invokestatic a : (C)I
    //   231: bipush #12
    //   233: ishl
    //   234: aload_0
    //   235: invokevirtual b : ()C
    //   238: invokestatic a : (C)I
    //   241: bipush #8
    //   243: ishl
    //   244: ior
    //   245: aload_0
    //   246: invokevirtual b : ()C
    //   249: invokestatic a : (C)I
    //   252: iconst_4
    //   253: ishl
    //   254: ior
    //   255: aload_0
    //   256: invokevirtual b : ()C
    //   259: invokestatic a : (C)I
    //   262: ior
    //   263: i2c
    //   264: istore_1
    //   265: aload #4
    //   267: iload_3
    //   268: iload_1
    //   269: castore
    //   270: aload_0
    //   271: aload_0
    //   272: getfield f : I
    //   275: iconst_4
    //   276: iadd
    //   277: putfield f : I
    //   280: iload_2
    //   281: iconst_1
    //   282: if_icmpne -> 287
    //   285: iload_1
    //   286: ireturn
    //   287: aload_0
    //   288: iload_2
    //   289: iconst_1
    //   290: isub
    //   291: invokevirtual backup : (I)V
    //   294: bipush #92
    //   296: ireturn
    //   297: aload_0
    //   298: aload_0
    //   299: getfield f : I
    //   302: iconst_1
    //   303: iadd
    //   304: putfield f : I
    //   307: goto -> 205
    //   310: new java/lang/StringBuffer
    //   313: dup
    //   314: invokespecial <init> : ()V
    //   317: astore #4
    //   319: aload #4
    //   321: ldc 'Invalid escape character at line '
    //   323: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   326: pop
    //   327: aload #4
    //   329: aload_0
    //   330: getfield g : I
    //   333: invokevirtual append : (I)Ljava/lang/StringBuffer;
    //   336: pop
    //   337: aload #4
    //   339: ldc ' column '
    //   341: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   344: pop
    //   345: aload #4
    //   347: aload_0
    //   348: getfield f : I
    //   351: invokevirtual append : (I)Ljava/lang/StringBuffer;
    //   354: pop
    //   355: aload #4
    //   357: ldc '.'
    //   359: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   362: pop
    //   363: new java/lang/Error
    //   366: dup
    //   367: aload #4
    //   369: invokevirtual toString : ()Ljava/lang/String;
    //   372: invokespecial <init> : (Ljava/lang/String;)V
    //   375: athrow
    //   376: aload_0
    //   377: iload_2
    //   378: invokevirtual backup : (I)V
    //   381: bipush #92
    //   383: ireturn
    //   384: aload_0
    //   385: iload_1
    //   386: invokevirtual b : (C)V
    //   389: iload_2
    //   390: iconst_1
    //   391: iadd
    //   392: istore_2
    //   393: goto -> 110
    //   396: iload_2
    //   397: iconst_1
    //   398: if_icmple -> 406
    //   401: aload_0
    //   402: iload_2
    //   403: invokevirtual backup : (I)V
    //   406: bipush #92
    //   408: ireturn
    //   409: aload_0
    //   410: iload_1
    //   411: invokevirtual b : (C)V
    //   414: iload_1
    //   415: ireturn
    //   416: astore #4
    //   418: goto -> 396
    //   421: astore #4
    //   423: goto -> 310
    // Exception table:
    //   from	to	target	type
    //   134	150	416	java/io/IOException
    //   161	166	416	java/io/IOException
    //   179	191	416	java/io/IOException
    //   195	205	416	java/io/IOException
    //   205	210	421	java/io/IOException
    //   216	265	421	java/io/IOException
    //   270	280	421	java/io/IOException
    //   297	307	421	java/io/IOException
    //   376	381	416	java/io/IOException }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\JavaCharStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
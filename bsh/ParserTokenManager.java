package bsh;

import java.io.IOException;
import java.io.PrintStream;

public class ParserTokenManager implements ParserConstants {
  static final long[] a = { 0L, 0L, -1L, -1L };
  
  static final long[] b = { -2L, -1L, -1L, -1L };
  
  static final long[] c = { 2301339413881290750L, -16384L, 4294967295L, 432345564227567616L };
  
  static final long[] d = { 0L, 0L, 0L, -36028797027352577L };
  
  static final long[] e = { 0L, -1L, -1L, -1L };
  
  static final long[] f = { -1L, -1L, 65535L, 0L };
  
  static final long[] g = { -1L, -1L, 0L, 0L };
  
  static final long[] h = { 70368744177663L, 0L, 0L, 0L };
  
  static final int[] i = { 
      37, 38, 43, 44, 47, 48, 15, 56, 61, 73, 
      26, 27, 29, 17, 19, 52, 54, 9, 57, 58, 
      60, 2, 3, 5, 11, 12, 15, 26, 27, 31, 
      29, 39, 40, 15, 47, 48, 15, 63, 64, 66, 
      69, 70, 72, 13, 14, 20, 21, 23, 28, 30, 
      32, 41, 42, 45, 46, 49, 50 };
  
  static final long[] j;
  
  public static final String[] jjstrLiteralImages = { 
      "", null, null, null, null, null, null, null, null, null, 
      "abstract", "boolean", "break", "class", "byte", "case", "catch", "char", "const", "continue", 
      "default", "do", "double", "else", "enum", "extends", "false", "final", "finally", "float", 
      "for", "goto", "if", "implements", "import", "instanceof", "int", "interface", "long", "native", 
      "new", "null", "package", "private", "protected", "public", "return", "short", "static", "strictfp", 
      "switch", "synchronized", "transient", "throw", "throws", "true", "try", "void", "volatile", "while", 
      null, null, null, null, null, null, null, null, null, null, 
      null, null, "(", ")", "{", "}", "[", "]", ";", ",", 
      ".", "=", ">", "@gt", "<", "@lt", "!", "~", "?", ":", 
      "==", "<=", "@lteq", ">=", "@gteq", "!=", "||", "@or", "&&", "@and", 
      "++", "--", "+", "-", "*", "/", "&", "@bitwise_and", "|", "@bitwise_or", 
      "^", "%", "<<", "@left_shift", ">>", "@right_shift", ">>>", "@right_unsigned_shift", "+=", "-=", 
      "*=", "/=", "&=", "@and_assign", "|=", "@or_assign", "^=", "%=", "<<=", "@left_shift_assign", 
      ">>=", "@right_shift_assign", ">>>=", "@right_unsigned_shift_assign" };
  
  static final long[] k;
  
  static final long[] l;
  
  public static final String[] lexStateNames = { "DEFAULT" };
  
  public PrintStream debugStream = System.out;
  
  protected JavaCharStream m;
  
  protected char n;
  
  int o = 0;
  
  int p = 0;
  
  int q;
  
  int r;
  
  int s;
  
  int t;
  
  private final int[] u = new int[74];
  
  private final int[] v = new int[148];
  
  static  {
    j = new long[] { 2305843009213692929L, -195L, 63L };
    k = new long[] { 1022L, 0L, 0L };
    l = new long[] { 896L, 0L, 0L };
  }
  
  public ParserTokenManager(JavaCharStream paramJavaCharStream) { this.m = paramJavaCharStream; }
  
  public ParserTokenManager(JavaCharStream paramJavaCharStream, int paramInt) {
    this(paramJavaCharStream);
    SwitchTo(paramInt);
  }
  
  private final int a(int paramInt1, int paramInt2) {
    this.t = paramInt2;
    this.s = paramInt1;
    return paramInt1 + 1;
  }
  
  private final int a(int paramInt1, int paramInt2, int paramInt3) {
    this.t = paramInt2;
    this.s = paramInt1;
    try {
      this.n = this.m.readChar();
      return e(paramInt3, paramInt1 + 1);
    } catch (IOException iOException) {
      return paramInt1 + 1;
    } 
  }
  
  private final int a(int paramInt, long paramLong1, long paramLong2, long paramLong3) {
    switch (paramInt) {
      default:
        return -1;
      case 11:
        return ((paramLong1 & 0x8000000000000L) != 0L) ? 35 : -1;
      case 10:
        if ((paramLong1 & 0x8000000000000L) != 0L) {
          if (this.s != 10) {
            this.t = 69;
            this.s = 10;
          } 
          return 35;
        } 
        return -1;
      case 9:
        if ((paramLong1 & 0x8000000000000L) != 0L) {
          this.t = 69;
          paramInt = 9;
          this.s = paramInt;
          return 35;
        } 
        return ((paramLong1 & 0xA00000000L) != 0L) ? 35 : -1;
      case 8:
        if ((paramLong1 & 0x8000A00000000L) != 0L) {
          this.t = 69;
          paramInt = 8;
          this.s = paramInt;
          return 35;
        } 
        return ((paramLong1 & 0x10102000000000L) != 0L) ? 35 : -1;
      case 7:
        if ((paramLong1 & 0x402000000080400L) != 0L)
          return 35; 
        if ((paramLong1 & 0x18102A00000000L) != 0L) {
          this.t = 69;
          paramInt = 7;
          this.s = paramInt;
          return 35;
        } 
        return -1;
      case 6:
        if ((paramLong1 & 0x41A102A00080400L) != 0L) {
          this.t = 69;
          paramInt = 6;
          this.s = paramInt;
          return 35;
        } 
        return ((paramLong1 & 0xC0012100800L) != 0L) ? 35 : -1;
      case 5:
        if ((paramLong1 & 0x41A1C2A12180C00L) != 0L) {
          this.t = 69;
          paramInt = 5;
          this.s = paramInt;
          return 35;
        } 
        return ((paramLong1 & 0x45608400400000L) != 0L) ? 35 : -1;
      case 4:
        if ((paramLong1 & 0x86080003C053000L) != 0L)
          return 35; 
        if ((paramLong1 & 0x41F7CAE02580C00L) != 0L) {
          if (this.s != 4) {
            this.t = 69;
            this.s = 4;
          } 
          return 35;
        } 
        return -1;
      case 3:
        if ((paramLong1 & 0xC7FFCAE3E5D3C00L) != 0L) {
          if (this.s != 3) {
            this.t = 69;
            this.s = 3;
          } 
          return 35;
        } 
        return ((paramLong1 & 0x28002408182C000L) != 0L) ? 35 : -1;
      case 2:
        if ((paramLong1 & 0xEFFFECEBFDFFC00L) != 0L) {
          if (this.s != 2) {
            this.t = 69;
            this.s = 2;
          } 
          return 35;
        } 
        return ((paramLong1 & 0x100013040000000L) != 0L) ? 35 : -1;
      case 1:
        if ((paramLong1 & 0x100600000L) != 0L)
          return 35; 
        if ((paramLong1 & 0xFFFFFFEFF9FFC00L) != 0L) {
          if (this.s != 1) {
            this.t = 69;
            this.s = 1;
          } 
          return 35;
        } 
        return -1;
      case 0:
        break;
    } 
    if ((paramLong2 & 0x200020000000000L) != 0L)
      return 56; 
    if ((paramLong1 & 0x3EL) != 0L)
      return 0; 
    if ((paramLong2 & 0x10000L) != 0L)
      return 11; 
    if ((paramLong1 & 0xFFFFFFFFFFFFC00L) != 0L) {
      this.t = 69;
      return 35;
    } 
    return -1;
  }
  
  private final int a(long paramLong1, long paramLong2) {
    paramLong2 &= paramLong1;
    if (paramLong2 == 0L)
      return b(20, 0L, 0L, paramLong1); 
    try {
      this.n = this.m.readChar();
      return (this.n != 'a') ? b(21, 0L, 0L, paramLong2) : b(paramLong2, 32L);
    } catch (IOException iOException) {
      a(21, 0L, 0L, paramLong2);
      return 22;
    } 
  }
  
  private final int a(long paramLong1, long paramLong2, long paramLong3) {
    try {
      this.n = this.m.readChar();
      switch (this.n) {
        default:
          return b(0, paramLong1, paramLong2, paramLong3);
        case '|':
          if ((paramLong2 & 0x100000000L) != 0L)
            return a(1, 96); 
        case 'y':
          return a(paramLong1, 2251799813701632L, paramLong2, 0L, paramLong3, 0L);
        case 'x':
          return a(paramLong1, 33554432L, paramLong2, 0L, paramLong3, 0L);
        case 'w':
          return a(paramLong1, 1125899906842624L, paramLong2, 0L, paramLong3, 0L);
        case 'u':
          return a(paramLong1, 37383395344384L, paramLong2, 0L, paramLong3, 0L);
        case 't':
          return a(paramLong1, 844424930131968L, paramLong2, 0L, paramLong3, 0L);
        case 'r':
          return a(paramLong1, 112616378963333120L, paramLong2, 11258999068426240L, paramLong3, 40L);
        case 'o':
          if ((paramLong1 & 0x200000L) != 0L) {
            this.t = 21;
            this.s = 1;
          } 
          return a(paramLong1, 432345842331682816L, paramLong2, 2305843017803628544L, paramLong3, 0L);
        case 'n':
          return a(paramLong1, 240534945792L, paramLong2, 0L, paramLong3, 0L);
        case 'm':
          return a(paramLong1, 25769803776L, paramLong2, 0L, paramLong3, 0L);
        case 'l':
          return a(paramLong1, 545267712L, paramLong2, 562950223953920L, paramLong3, 2L);
        case 'i':
          return a(paramLong1, 402653184L, paramLong2, 0L, paramLong3, 0L);
        case 'h':
          return a(paramLong1, 603623087556132864L, paramLong2, 0L, paramLong3, 0L);
        case 'g':
          return a(paramLong1, 0L, paramLong2, 1074266112L, paramLong3, 0L);
        case 'f':
          if ((paramLong1 & 0x100000000L) != 0L)
            return a(1, 32, 35); 
        case 'e':
          return a(paramLong1, 71468256854016L, paramLong2, 0L, paramLong3, 0L);
        case 'b':
          return a(paramLong1, 1024L, paramLong2, 43980465111040L, paramLong3, 0L);
        case 'a':
          return a(paramLong1, 4947869532160L, paramLong2, 576460786663161856L, paramLong3, 0L);
        case '>':
          if ((paramLong2 & 0x4000000000000L) != 0L) {
            this.t = 114;
            this.s = 1;
          } 
          return a(paramLong1, 0L, paramLong2, 4503599627370496L, paramLong3, 20L);
        case '=':
          if ((paramLong2 & 0x4000000L) != 0L)
            return a(1, 90); 
          if ((paramLong2 & 0x8000000L) != 0L)
            return a(1, 91); 
          if ((paramLong2 & 0x20000000L) != 0L)
            return a(1, 93); 
          if ((paramLong2 & 0x80000000L) != 0L)
            return a(1, 95); 
          if ((paramLong2 & 0x40000000000000L) != 0L)
            return a(1, 118); 
          if ((paramLong2 & 0x80000000000000L) != 0L)
            return a(1, 119); 
          if ((paramLong2 & 0x100000000000000L) != 0L)
            return a(1, 120); 
          if ((paramLong2 & 0x200000000000000L) != 0L)
            return a(1, 121); 
          if ((paramLong2 & 0x400000000000000L) != 0L)
            return a(1, 122); 
          if ((paramLong2 & 0x1000000000000000L) != 0L)
            return a(1, 124); 
          if ((paramLong2 & 0x4000000000000000L) != 0L)
            return a(1, 126); 
          if ((paramLong2 & Float.MIN_VALUE) != 0L)
            return a(1, 127); 
        case '<':
          if ((paramLong2 & 0x1000000000000L) != 0L) {
            this.t = 112;
            this.s = 1;
          } 
          return a(paramLong1, 0L, paramLong2, 0L, paramLong3, 1L);
        case '-':
          if ((paramLong2 & 0x2000000000L) != 0L)
            return a(1, 101); 
        case '+':
          if ((paramLong2 & 0x1000000000L) != 0L)
            return a(1, 100); 
        case '&':
          break;
      } 
      if ((paramLong2 & 0x400000000L) != 0L)
        return a(1, 98); 
    } catch (IOException iOException) {
      a(0, paramLong1, paramLong2, paramLong3);
      return 1;
    } 
  }
  
  private final int a(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(11, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      return (c1 != 'a') ? ((c1 != 'e') ? ((c1 != 's') ? b(12, 0L, paramLong2, paramLong4) : b(paramLong2, 0L, paramLong4, 2L)) : b(paramLong2, 9007199254740992L, paramLong4, 32L)) : b(paramLong2, 0L, paramLong4, 8L);
    } catch (IOException iOException) {
      a(12, 0L, paramLong2, paramLong4);
      return 13;
    } 
  }
  
  private final int a(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(0, paramLong1, paramLong3, paramLong5); 
    try {
      byte b1;
      this.n = this.m.readChar();
      switch (this.n) {
        default:
          return b(1, paramLong2, paramLong4, paramLong6);
        case 'y':
          if ((paramLong2 & 0x100000000000000L) != 0L)
            return a(2, 56, 35); 
        case 'w':
          if ((paramLong2 & 0x10000000000L) != 0L)
            return a(2, 40, 35); 
        case 'u':
          return b(paramLong2, 36028797039935488L, paramLong4, 0L, paramLong6, 0L);
        case 't':
          if ((paramLong2 & 0x1000000000L) != 0L) {
            b1 = 36;
          } else if ((paramLong4 & 0x80000L) != 0L) {
            b1 = 83;
          } else if ((paramLong4 & 0x200000L) != 0L) {
            b1 = 85;
          } else {
            return b(paramLong2, 71058120065024L, paramLong4, 1342177280L, paramLong6, 0L);
          } 
          this.t = b1;
          this.s = 2;
          return b(paramLong2, 71058120065024L, paramLong4, 1342177280L, paramLong6, 0L);
        case 's':
          return b(paramLong2, 34368160768L, paramLong4, 0L, paramLong6, 0L);
        case 'r':
          if ((paramLong2 & 0x40000000L) != 0L)
            return a(2, 30, 35); 
          if ((paramLong4 & 0x200000000L) != 0L) {
            this.t = 97;
            this.s = 2;
          } 
          return b(paramLong2, 27584547717644288L, paramLong4, 2305843009213693952L, paramLong6, 0L);
        case 'p':
          return b(paramLong2, 25769803776L, paramLong4, 0L, paramLong6, 0L);
        case 'o':
          return b(paramLong2, 158330211272704L, paramLong4, 0L, paramLong6, 0L);
        case 'n':
          return b(paramLong2, 2252075095031808L, paramLong4, 576460786663161856L, paramLong6, 0L);
        case 'l':
          return b(paramLong2, 288232575242076160L, paramLong4, 0L, paramLong6, 0L);
        case 'i':
          return b(paramLong2, 721710636379144192L, paramLong4, 11302979533537280L, paramLong6, 40L);
        case 'f':
          return b(paramLong2, 1048576L, paramLong4, 0L, paramLong6, 0L);
        case 'e':
          return b(paramLong2, 4096L, paramLong4, 562949953421312L, paramLong6, 2L);
        case 'c':
          return b(paramLong2, 4398046511104L, paramLong4, 0L, paramLong6, 0L);
        case 'b':
          return b(paramLong2, 35184372088832L, paramLong4, 0L, paramLong6, 0L);
        case 'a':
          return b(paramLong2, 4785074604220416L, paramLong4, 0L, paramLong6, 0L);
        case '>':
          if ((paramLong4 & 0x10000000000000L) != 0L) {
            this.t = 116;
            this.s = 2;
          } 
          return b(paramLong2, 0L, paramLong4, 0L, paramLong6, 16L);
        case '=':
          break;
      } 
      if ((paramLong6 & 0x1L) != 0L)
        return a(2, 128); 
      if ((paramLong6 & 0x4L) != 0L)
        return a(2, 130); 
    } catch (IOException iOException) {
      a(1, paramLong2, paramLong4, paramLong6);
      return 2;
    } 
  }
  
  private final void a(int paramInt) {
    if (this.u[paramInt] != this.r) {
      int[] arrayOfInt = this.v;
      int i1 = this.q;
      this.q = i1 + 1;
      arrayOfInt[i1] = paramInt;
      this.u[paramInt] = this.r;
    } 
  }
  
  private static final boolean a(int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2) {
    boolean bool = false;
    if (paramInt1 != 0)
      return false; 
    if ((a[paramInt3] & paramLong2) != 0L)
      bool = true; 
    return bool;
  }
  
  private final int b() {
    char c1 = this.n;
    switch (c1) {
      default:
        switch (c1) {
          default:
            switch (c1) {
              default:
                switch (c1) {
                  default:
                    switch (c1) {
                      default:
                        switch (c1) {
                          default:
                            switch (c1) {
                              default:
                                switch (c1) {
                                  default:
                                    switch (c1) {
                                      default:
                                        switch (c1) {
                                          default:
                                            switch (c1) {
                                              default:
                                                switch (c1) {
                                                  default:
                                                    return e(6, 0);
                                                  case 'p':
                                                    return a(65970697666560L, 0L, 0L);
                                                  case 'n':
                                                    return a(3848290697216L, 0L, 0L);
                                                  case 'l':
                                                    return a(274877906944L, 0L, 0L);
                                                  case 'i':
                                                    return a(270582939648L, 0L, 0L);
                                                  case '[':
                                                    break;
                                                } 
                                                return a(0, 76);
                                              case '~':
                                                return a(0, 87);
                                              case '}':
                                                return a(0, 75);
                                              case '|':
                                                this.t = 108;
                                                return a(0L, 1152921508901814272L, 0L);
                                              case '{':
                                                break;
                                            } 
                                            return a(0, 74);
                                          case 'w':
                                            return a(576460752303423488L, 0L, 0L);
                                          case 'v':
                                            break;
                                        } 
                                        return a(432345564227567616L, 0L, 0L);
                                      case 't':
                                        return a(139611588448485376L, 0L, 0L);
                                      case 's':
                                        return a(4362862139015168L, 0L, 0L);
                                      case 'r':
                                        break;
                                    } 
                                    return a(70368744177664L, 0L, 0L);
                                  case 'g':
                                    return a(2147483648L, 0L, 0L);
                                  case 'f':
                                    return a(2080374784L, 0L, 0L);
                                  case 'e':
                                    return a(58720256L, 0L, 0L);
                                  case 'd':
                                    return a(7340032L, 0L, 0L);
                                  case 'c':
                                    return a(1024000L, 0L, 0L);
                                  case 'b':
                                    return a(22528L, 0L, 0L);
                                  case 'a':
                                    break;
                                } 
                                return a(1024L, 0L, 0L);
                              case '^':
                                this.t = 110;
                                return a(0L, 4611686018427387904L, 0L);
                              case ']':
                                break;
                            } 
                            return a(0, 77);
                          case '@':
                            return a(0L, 2894169735298547712L, 42L);
                          case '?':
                            return a(0, 88);
                          case '>':
                            this.t = 82;
                            return a(0L, 5629500071084032L, 20L);
                          case '=':
                            this.t = 81;
                            return a(0L, 67108864L, 0L);
                          case '<':
                            this.t = 84;
                            return a(0L, 281475110928384L, 1L);
                          case ';':
                            return a(0, 78);
                          case ':':
                            break;
                        } 
                        return a(0, 89);
                      case '/':
                        this.t = 105;
                        return a(0L, 144115188075855872L, 0L);
                      case '.':
                        return a(0, 80, 11);
                      case '-':
                        this.t = 103;
                        return a(0L, 36028934457917440L, 0L);
                      case ',':
                        return a(0, 79);
                      case '+':
                        this.t = 102;
                        return a(0L, 18014467228958720L, 0L);
                      case '*':
                        this.t = 104;
                        return a(0L, 72057594037927936L, 0L);
                      case ')':
                        return a(0, 73);
                      case '(':
                        break;
                    } 
                    return a(0, 72);
                  case '&':
                    this.t = 106;
                    return a(0L, 288230393331580928L, 0L);
                  case '%':
                    break;
                } 
                this.t = 111;
                return a(0L, Float.MIN_VALUE, 0L);
              case '!':
                this.t = 86;
                return a(0L, 2147483648L, 0L);
              case ' ':
                break;
            } 
            return a(0, 1, 0);
          case '\r':
            return a(0, 3, 0);
          case '\f':
            break;
        } 
        return a(0, 4, 0);
      case '\n':
        return a(0, 5, 0);
      case '\t':
        break;
    } 
    return a(0, 2, 0);
  }
  
  private final int b(int paramInt, long paramLong1, long paramLong2, long paramLong3) { return e(a(paramInt, paramLong1, paramLong2, paramLong3), paramInt + 1); }
  
  private final int b(long paramLong1, long paramLong2) {
    paramLong2 &= paramLong1;
    if (paramLong2 == 0L)
      return b(21, 0L, 0L, paramLong1); 
    try {
      this.n = this.m.readChar();
      return (this.n != 's') ? b(22, 0L, 0L, paramLong2) : c(paramLong2, 32L);
    } catch (IOException iOException) {
      a(22, 0L, 0L, paramLong2);
      return 23;
    } 
  }
  
  private final int b(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(12, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      return (c1 != 'd') ? ((c1 != 's') ? b(13, 0L, paramLong2, paramLong4) : c(paramLong2, 0L, paramLong4, 10L)) : c(paramLong2, 9007199254740992L, paramLong4, 32L);
    } catch (IOException iOException) {
      a(13, 0L, paramLong2, paramLong4);
      return 14;
    } 
  }
  
  private final int b(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(1, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      if (c1 != '=') {
        if (c1 != '_') {
          if (c1 != 'i') {
            switch (c1) {
              default:
                switch (c1) {
                  default:
                    switch (c1) {
                      default:
                        return b(2, paramLong2, paramLong4, paramLong6);
                      case 'v':
                        return c(paramLong2, 8796093022208L, paramLong4, 0L, paramLong6, 0L);
                      case 'u':
                        return c(paramLong2, 70368744177664L, paramLong4, 0L, paramLong6, 0L);
                      case 't':
                        return c(paramLong2, 1425001429861376L, paramLong4, 43980465111040L, paramLong6, 0L);
                      case 's':
                        return c(paramLong2, 67379200L, paramLong4, 0L, paramLong6, 0L);
                      case 'r':
                        break;
                    } 
                    return ((paramLong2 & 0x20000L) != 0L) ? a(3, 17, 35) : c(paramLong2, 140737488355328L, paramLong4, 0L, paramLong6, 0L);
                  case 'o':
                    return ((paramLong2 & 0x80000000L) != 0L) ? a(3, 31, 35) : c(paramLong2, 27021614944092160L, paramLong4, 0L, paramLong6, 0L);
                  case 'n':
                    return c(paramLong2, 4503599627370496L, paramLong4, 0L, paramLong6, 0L);
                  case 'm':
                    if ((paramLong2 & 0x1000000L) != 0L)
                      return a(3, 24, 35); 
                  case 'l':
                    return ((paramLong2 & 0x20000000000L) != 0L) ? a(3, 41, 35) : c(paramLong2, 576495945265448960L, paramLong4, 0L, paramLong6, 0L);
                  case 'k':
                    break;
                } 
                return c(paramLong2, 4398046511104L, paramLong4, 0L, paramLong6, 0L);
              case 'g':
                return ((paramLong2 & 0x4000000000L) != 0L) ? a(3, 38, 35) : c(paramLong2, 0L, paramLong4, 11258999068426240L, paramLong6, 40L);
              case 'f':
                return c(paramLong2, 0L, paramLong4, 562949953421312L, paramLong6, 2L);
              case 'e':
                return ((paramLong2 & 0x4000L) != 0L) ? a(3, 14, 35) : (((paramLong2 & 0x8000L) != 0L) ? a(3, 15, 35) : (((paramLong2 & 0x800000L) != 0L) ? a(3, 23, 35) : (((paramLong2 & 0x80000000000000L) != 0L) ? a(3, 55, 35) : c(paramLong2, 137472507904L, paramLong4, 1342177280L, paramLong6, 0L))));
              case 'd':
                if ((paramLong2 & 0x200000000000000L) != 0L)
                  return a(3, 57, 35); 
                if ((paramLong4 & 0x800000000L) != 0L) {
                  this.t = 99;
                  this.s = 3;
                } 
                return c(paramLong2, 0L, paramLong4, 576460752303423488L, paramLong6, 0L);
              case 'c':
                return c(paramLong2, 2251799813750784L, paramLong4, 0L, paramLong6, 0L);
              case 'b':
                return c(paramLong2, 4194304L, paramLong4, 0L, paramLong6, 0L);
              case 'a':
                break;
            } 
            return c(paramLong2, 288230377092288512L, paramLong4, 0L, paramLong6, 0L);
          } 
          return c(paramLong2, 563499709235200L, paramLong4, 0L, paramLong6, 0L);
        } 
        return c(paramLong2, 0L, paramLong4, 2305843009213693952L, paramLong6, 0L);
      } 
      if ((paramLong6 & 0x10L) != 0L)
        return a(3, 132); 
    } catch (IOException iOException) {
      a(2, paramLong2, paramLong4, paramLong6);
      return 3;
    } 
  }
  
  private final void b(int paramInt1, int paramInt2) {
    while (true) {
      int[] arrayOfInt = this.v;
      int i1 = this.q;
      this.q = i1 + 1;
      arrayOfInt[i1] = i[paramInt1];
      if (paramInt1 == paramInt2)
        return; 
      paramInt1++;
    } 
  }
  
  private static final boolean b(int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2) {
    boolean bool = false;
    if (paramInt1 != 0)
      return ((b[paramInt2] & paramLong1) != 0L); 
    if ((a[paramInt3] & paramLong2) != 0L)
      bool = true; 
    return bool;
  }
  
  private final int c(long paramLong1, long paramLong2) {
    paramLong2 &= paramLong1;
    if (paramLong2 == 0L)
      return b(22, 0L, 0L, paramLong1); 
    try {
      this.n = this.m.readChar();
      return (this.n != 's') ? b(23, 0L, 0L, paramLong2) : d(paramLong2, 32L);
    } catch (IOException iOException) {
      a(23, 0L, 0L, paramLong2);
      return 24;
    } 
  }
  
  private final int c(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(13, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      return (c1 != '_') ? ((c1 != 'i') ? ((c1 != 's') ? b(14, 0L, paramLong2, paramLong4) : d(paramLong2, 0L, paramLong4, 8L)) : d(paramLong2, 0L, paramLong4, 2L)) : d(paramLong2, 9007199254740992L, paramLong4, 32L);
    } catch (IOException iOException) {
      a(14, 0L, paramLong2, paramLong4);
      return 15;
    } 
  }
  
  private final int c(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(2, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      switch (this.n) {
        default:
          return b(3, paramLong2, paramLong4, paramLong6);
        case 'w':
          if ((paramLong2 & 0x20000000000000L) != 0L) {
            this.t = 53;
            this.s = 4;
          } 
          return d(paramLong2, 18014398509481984L, paramLong4, 43980465111040L, paramLong6, 0L);
        case 'v':
          return d(paramLong2, 549755813888L, paramLong4, 0L, paramLong6, 0L);
        case 'u':
          return d(paramLong2, 1048576L, paramLong4, 0L, paramLong6, 0L);
        case 't':
          return ((paramLong2 & 0x40000L) != 0L) ? a(4, 18, 35) : (((paramLong2 & 0x20000000L) != 0L) ? a(4, 29, 35) : (((paramLong2 & 0x800000000000L) != 0L) ? a(4, 47, 35) : d(paramLong2, 288230376151711744L, paramLong4, 562949953421312L, paramLong6, 2L)));
        case 's':
          return ((paramLong2 & 0x2000L) != 0L) ? a(4, 13, 35) : d(paramLong2, 4503599627370496L, paramLong4, 0L, paramLong6, 0L);
        case 'r':
          return d(paramLong2, 70523363001344L, paramLong4, 0L, paramLong6, 0L);
        case 'q':
          if ((paramLong4 & 0x10000000L) != 0L)
            return a(4, 92); 
          if ((paramLong4 & 0x40000000L) != 0L)
            return a(4, 94); 
        case 'n':
          return d(paramLong2, 33554432L, paramLong4, 0L, paramLong6, 0L);
        case 'l':
          if ((paramLong2 & 0x8000000L) != 0L) {
            this.t = 27;
            this.s = 4;
          } 
          return d(paramLong2, 272629760L, paramLong4, 0L, paramLong6, 0L);
        case 'k':
          if ((paramLong2 & 0x1000L) != 0L)
            return a(4, 12, 35); 
        case 'i':
          return d(paramLong2, 316659349323776L, paramLong4, 0L, paramLong6, 0L);
        case 'h':
          return ((paramLong2 & 0x10000L) != 0L) ? a(4, 16, 35) : d(paramLong2, 2251799813685248L, paramLong4, 11258999068426240L, paramLong6, 40L);
        case 'e':
          return ((paramLong2 & 0x4000000L) != 0L) ? a(4, 26, 35) : (((paramLong2 & 0x800000000000000L) != 0L) ? a(4, 59, 35) : d(paramLong2, 17600775981056L, paramLong4, 0L, paramLong6, 0L));
        case 'c':
          return d(paramLong2, 1688849860263936L, paramLong4, 0L, paramLong6, 0L);
        case 'a':
          return d(paramLong2, 13228499271680L, paramLong4, 2305843009213693952L, paramLong6, 0L);
        case '_':
          break;
      } 
      return d(paramLong2, 0L, paramLong4, 576460752303423488L, paramLong6, 0L);
    } catch (IOException iOException) {
      a(3, paramLong2, paramLong4, paramLong6);
      return 4;
    } 
  }
  
  private final void c() {
    this.r = -2147483647;
    for (byte b1 = 74;; b1 = b2) {
      byte b2 = b1 - 1;
      if (b1 <= 0)
        return; 
      this.u[b2] = Integer.MIN_VALUE;
    } 
  }
  
  private final void c(int paramInt1, int paramInt2) {
    a(paramInt1);
    a(paramInt2);
  }
  
  private static final boolean c(int paramInt1, int paramInt2, int paramInt3, long paramLong1, long paramLong2) {
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool = false;
    if (paramInt1 != 0) {
      if (paramInt1 != 51) {
        if (paramInt1 != 61) {
          switch (paramInt1) {
            default:
              return ((c[paramInt2] & paramLong1) != 0L);
            case 49:
              if ((f[paramInt3] & paramLong2) != 0L)
                bool = true; 
              return bool;
            case 48:
              break;
          } 
          bool = bool1;
          if ((e[paramInt3] & paramLong2) != 0L)
            bool = true; 
          return bool;
        } 
        bool = bool2;
        if ((h[paramInt3] & paramLong2) != 0L)
          bool = true; 
        return bool;
      } 
      bool = bool3;
      if ((g[paramInt3] & paramLong2) != 0L)
        bool = true; 
      return bool;
    } 
    bool = bool4;
    if ((d[paramInt3] & paramLong2) != 0L)
      bool = true; 
    return bool;
  }
  
  private final int d(long paramLong1, long paramLong2) {
    paramLong2 &= paramLong1;
    if (paramLong2 == 0L)
      return b(23, 0L, 0L, paramLong1); 
    try {
      this.n = this.m.readChar();
      return (this.n != 'i') ? b(24, 0L, 0L, paramLong2) : e(paramLong2, 32L);
    } catch (IOException iOException) {
      a(24, 0L, 0L, paramLong2);
      return 25;
    } 
  }
  
  private final int d(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(14, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      return (c1 != 'g') ? ((c1 != 'i') ? ((c1 != 's') ? b(15, 0L, paramLong2, paramLong4) : e(paramLong2, 9007199254740992L, paramLong4, 32L)) : e(paramLong2, 0L, paramLong4, 8L)) : e(paramLong2, 0L, paramLong4, 2L);
    } catch (IOException iOException) {
      a(15, 0L, paramLong2, paramLong4);
      return 16;
    } 
  }
  
  private final int d(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(3, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      switch (this.n) {
        default:
          return b(4, paramLong2, paramLong4, paramLong6);
        case 't':
          return ((paramLong2 & 0x400000000L) != 0L) ? a(5, 34, 35) : e(paramLong2, 571746046443520L, paramLong4, 11258999068426240L, paramLong6, 40L);
        case 's':
          return ((paramLong2 & 0x40000000000000L) != 0L) ? a(5, 54, 35) : e(paramLong2, 0L, paramLong4, 2305843009213693952L, paramLong6, 0L);
        case 'r':
          return e(paramLong2, 2251799813685248L, paramLong4, 0L, paramLong6, 0L);
        case 'n':
          return ((paramLong2 & 0x400000000000L) != 0L) ? a(5, 46, 35) : e(paramLong2, 34360262656L, paramLong4, 0L, paramLong6, 0L);
        case 'm':
          return e(paramLong2, 8589934592L, paramLong4, 0L, paramLong6, 0L);
        case 'l':
          return e(paramLong2, 269484032L, paramLong4, 0L, paramLong6, 0L);
        case 'i':
          return e(paramLong2, 292733975779082240L, paramLong4, 43980465111040L, paramLong6, 0L);
        case 'h':
          if ((paramLong2 & 0x4000000000000L) != 0L)
            return a(5, 50, 35); 
        case 'g':
          return e(paramLong2, 4398046511104L, paramLong4, 0L, paramLong6, 0L);
        case 'f':
          return e(paramLong2, 137438953472L, paramLong4, 0L, paramLong6, 0L);
        case 'e':
          if ((paramLong2 & 0x400000L) != 0L)
            return a(5, 22, 35); 
          if ((paramLong2 & 0x8000000000L) != 0L)
            return a(5, 39, 35); 
        case 'd':
          return e(paramLong2, 33554432L, paramLong4, 0L, paramLong6, 0L);
        case 'c':
          return ((paramLong2 & 0x200000000000L) != 0L) ? a(5, 45, 35) : (((paramLong2 & 0x1000000000000L) != 0L) ? a(5, 48, 35) : e(paramLong2, 17592186044416L, paramLong4, 0L, paramLong6, 0L));
        case 'a':
          return e(paramLong2, 3072L, paramLong4, 576460752303423488L, paramLong6, 0L);
        case '_':
          break;
      } 
      return e(paramLong2, 0L, paramLong4, 562949953421312L, paramLong6, 2L);
    } catch (IOException iOException) {
      a(4, paramLong2, paramLong4, paramLong6);
      return 5;
    } 
  }
  
  private final void d(int paramInt1, int paramInt2) {
    while (true) {
      a(i[paramInt1]);
      if (paramInt1 == paramInt2)
        return; 
      paramInt1++;
    } 
  }
  
  private final int e(int paramInt1, int paramInt2) { // Byte code:
    //   0: aload_0
    //   1: bipush #74
    //   3: putfield q : I
    //   6: aload_0
    //   7: getfield v : [I
    //   10: iconst_0
    //   11: iload_1
    //   12: iastore
    //   13: iconst_1
    //   14: istore_3
    //   15: ldc_w 2147483647
    //   18: istore_1
    //   19: iconst_0
    //   20: istore #5
    //   22: iload_2
    //   23: istore #6
    //   25: iload_3
    //   26: istore_2
    //   27: aload_0
    //   28: getfield r : I
    //   31: iconst_1
    //   32: iadd
    //   33: istore_3
    //   34: aload_0
    //   35: iload_3
    //   36: putfield r : I
    //   39: iload_3
    //   40: ldc_w 2147483647
    //   43: if_icmpne -> 50
    //   46: aload_0
    //   47: invokespecial c : ()V
    //   50: aload_0
    //   51: getfield n : C
    //   54: bipush #64
    //   56: if_icmpge -> 2454
    //   59: lconst_1
    //   60: aload_0
    //   61: getfield n : C
    //   64: lshl
    //   65: lstore #10
    //   67: iload_2
    //   68: istore_3
    //   69: aload_0
    //   70: getfield v : [I
    //   73: astore #14
    //   75: iload_3
    //   76: iconst_1
    //   77: isub
    //   78: istore #7
    //   80: aload #14
    //   82: iload #7
    //   84: iaload
    //   85: istore_2
    //   86: bipush #42
    //   88: istore #4
    //   90: iload_2
    //   91: tableswitch default -> 400, 0 -> 2397, 1 -> 2377, 2 -> 2361, 3 -> 2334, 4 -> 2312, 5 -> 2273, 6 -> 1988, 7 -> 1948, 8 -> 1921, 9 -> 400, 10 -> 1904, 11 -> 1860, 12 -> 400, 13 -> 1841, 14 -> 1793, 15 -> 400, 16 -> 1769, 17 -> 1745, 18 -> 1720, 19 -> 400, 20 -> 1704, 21 -> 1678, 22 -> 1662, 23 -> 1620, 24 -> 1601, 25 -> 1577, 26 -> 1561, 27 -> 400, 28 -> 1545, 29 -> 1520, 30 -> 1492, 31 -> 1476, 32 -> 1434, 33 -> 1415, 34 -> 1373, 35 -> 1346, 36 -> 1315, 37 -> 1292, 38 -> 1258, 39 -> 1231, 40 -> 400, 41 -> 1212, 42 -> 1176, 43 -> 1153, 44 -> 400, 45 -> 1134, 46 -> 1101, 47 -> 1073, 48 -> 400, 49 -> 1054, 50 -> 1033, 51 -> 999, 52 -> 400, 53 -> 966, 54 -> 933, 55 -> 909, 56 -> 822, 57 -> 784, 58 -> 757, 59 -> 735, 60 -> 695, 61 -> 678, 62 -> 650, 63 -> 624, 64 -> 605, 65 -> 589, 66 -> 564, 67 -> 538, 68 -> 522, 69 -> 505, 70 -> 486, 71 -> 470, 72 -> 445, 73 -> 405
    //   400: iload_1
    //   401: istore_2
    //   402: goto -> 1985
    //   405: iload_1
    //   406: istore_2
    //   407: aload_0
    //   408: getfield n : C
    //   411: bipush #42
    //   413: if_icmpne -> 1985
    //   416: aload_0
    //   417: getfield v : [I
    //   420: astore #14
    //   422: aload_0
    //   423: getfield q : I
    //   426: istore_2
    //   427: aload_0
    //   428: iload_2
    //   429: iconst_1
    //   430: iadd
    //   431: putfield q : I
    //   434: aload #14
    //   436: iload_2
    //   437: bipush #67
    //   439: iastore
    //   440: iload_1
    //   441: istore_2
    //   442: goto -> 1985
    //   445: iload_1
    //   446: istore_2
    //   447: aload_0
    //   448: getfield n : C
    //   451: bipush #47
    //   453: if_icmpne -> 1985
    //   456: iload_1
    //   457: istore_2
    //   458: iload_1
    //   459: bipush #68
    //   461: if_icmple -> 1985
    //   464: bipush #68
    //   466: istore_2
    //   467: goto -> 1985
    //   470: iload_1
    //   471: istore_2
    //   472: lload #10
    //   474: ldc2_w -4398046511105
    //   477: land
    //   478: lconst_0
    //   479: lcmp
    //   480: ifeq -> 1985
    //   483: goto -> 499
    //   486: iload_1
    //   487: istore_2
    //   488: lload #10
    //   490: ldc2_w -145135534866433
    //   493: land
    //   494: lconst_0
    //   495: lcmp
    //   496: ifeq -> 1985
    //   499: bipush #71
    //   501: istore_2
    //   502: goto -> 552
    //   505: iload_1
    //   506: istore_2
    //   507: aload_0
    //   508: getfield n : C
    //   511: bipush #42
    //   513: if_icmpne -> 1985
    //   516: bipush #40
    //   518: istore_2
    //   519: goto -> 1334
    //   522: iload_1
    //   523: istore_2
    //   524: lload #10
    //   526: ldc2_w -4398046511105
    //   529: land
    //   530: lconst_0
    //   531: lcmp
    //   532: ifeq -> 1985
    //   535: goto -> 549
    //   538: iload_1
    //   539: istore_2
    //   540: aload_0
    //   541: getfield n : C
    //   544: bipush #42
    //   546: if_icmpne -> 1985
    //   549: bipush #68
    //   551: istore_2
    //   552: aload_0
    //   553: iload_2
    //   554: bipush #69
    //   556: invokespecial c : (II)V
    //   559: iload_1
    //   560: istore_2
    //   561: goto -> 1985
    //   564: iload_1
    //   565: istore_2
    //   566: aload_0
    //   567: getfield n : C
    //   570: bipush #47
    //   572: if_icmpne -> 1985
    //   575: iload_1
    //   576: istore_2
    //   577: iload_1
    //   578: bipush #9
    //   580: if_icmple -> 1985
    //   583: bipush #9
    //   585: istore_2
    //   586: goto -> 1985
    //   589: iload_1
    //   590: istore_2
    //   591: lload #10
    //   593: ldc2_w -4398046511105
    //   596: land
    //   597: lconst_0
    //   598: lcmp
    //   599: ifeq -> 1985
    //   602: goto -> 618
    //   605: iload_1
    //   606: istore_2
    //   607: lload #10
    //   609: ldc2_w -145135534866433
    //   612: land
    //   613: lconst_0
    //   614: lcmp
    //   615: ifeq -> 1985
    //   618: bipush #65
    //   620: istore_2
    //   621: goto -> 666
    //   624: iload_1
    //   625: istore_2
    //   626: aload_0
    //   627: getfield n : C
    //   630: bipush #42
    //   632: if_icmpne -> 1985
    //   635: bipush #37
    //   637: istore_2
    //   638: bipush #39
    //   640: istore #4
    //   642: iload_1
    //   643: istore_3
    //   644: iload #4
    //   646: istore_1
    //   647: goto -> 1893
    //   650: iload_1
    //   651: istore_2
    //   652: lload #10
    //   654: ldc2_w -4398046511105
    //   657: land
    //   658: lconst_0
    //   659: lcmp
    //   660: ifeq -> 1985
    //   663: bipush #62
    //   665: istore_2
    //   666: aload_0
    //   667: iload_2
    //   668: bipush #63
    //   670: invokespecial c : (II)V
    //   673: iload_1
    //   674: istore_2
    //   675: goto -> 1985
    //   678: iload_1
    //   679: istore_2
    //   680: aload_0
    //   681: getfield n : C
    //   684: bipush #42
    //   686: if_icmpne -> 1985
    //   689: bipush #62
    //   691: istore_2
    //   692: goto -> 1405
    //   695: iload_1
    //   696: istore_2
    //   697: aload_0
    //   698: getfield n : C
    //   701: bipush #13
    //   703: if_icmpne -> 1985
    //   706: aload_0
    //   707: getfield v : [I
    //   710: astore #14
    //   712: aload_0
    //   713: getfield q : I
    //   716: istore_2
    //   717: aload_0
    //   718: iload_2
    //   719: iconst_1
    //   720: iadd
    //   721: putfield q : I
    //   724: aload #14
    //   726: iload_2
    //   727: bipush #59
    //   729: iastore
    //   730: iload_1
    //   731: istore_2
    //   732: goto -> 1985
    //   735: iload_1
    //   736: istore_2
    //   737: aload_0
    //   738: getfield n : C
    //   741: bipush #10
    //   743: if_icmpne -> 1985
    //   746: iload_1
    //   747: istore_2
    //   748: iload_1
    //   749: bipush #7
    //   751: if_icmple -> 1985
    //   754: goto -> 778
    //   757: iload_1
    //   758: istore_2
    //   759: lload #10
    //   761: ldc2_w 9216
    //   764: land
    //   765: lconst_0
    //   766: lcmp
    //   767: ifeq -> 1985
    //   770: iload_1
    //   771: istore_2
    //   772: iload_1
    //   773: bipush #7
    //   775: if_icmple -> 1985
    //   778: bipush #7
    //   780: istore_2
    //   781: goto -> 1985
    //   784: lload #10
    //   786: ldc2_w -9217
    //   789: land
    //   790: lconst_0
    //   791: lcmp
    //   792: ifne -> 800
    //   795: iload_1
    //   796: istore_2
    //   797: goto -> 1985
    //   800: iload_1
    //   801: istore_2
    //   802: iload_1
    //   803: bipush #7
    //   805: if_icmple -> 811
    //   808: bipush #7
    //   810: istore_2
    //   811: aload_0
    //   812: bipush #18
    //   814: bipush #20
    //   816: invokespecial d : (II)V
    //   819: goto -> 1985
    //   822: aload_0
    //   823: getfield n : C
    //   826: bipush #42
    //   828: if_icmpne -> 860
    //   831: aload_0
    //   832: getfield v : [I
    //   835: astore #14
    //   837: aload_0
    //   838: getfield q : I
    //   841: istore_2
    //   842: aload_0
    //   843: iload_2
    //   844: iconst_1
    //   845: iadd
    //   846: putfield q : I
    //   849: aload #14
    //   851: iload_2
    //   852: bipush #67
    //   854: iastore
    //   855: iload_1
    //   856: istore_3
    //   857: goto -> 890
    //   860: iload_1
    //   861: istore_3
    //   862: aload_0
    //   863: getfield n : C
    //   866: bipush #47
    //   868: if_icmpne -> 890
    //   871: iload_1
    //   872: istore_3
    //   873: iload_1
    //   874: bipush #7
    //   876: if_icmple -> 882
    //   879: bipush #7
    //   881: istore_3
    //   882: aload_0
    //   883: bipush #18
    //   885: bipush #20
    //   887: invokespecial d : (II)V
    //   890: iload_3
    //   891: istore_2
    //   892: aload_0
    //   893: getfield n : C
    //   896: bipush #42
    //   898: if_icmpne -> 1985
    //   901: bipush #62
    //   903: istore_2
    //   904: iload_3
    //   905: istore_1
    //   906: goto -> 1405
    //   909: iload_1
    //   910: istore_2
    //   911: aload_0
    //   912: getfield n : C
    //   915: bipush #47
    //   917: if_icmpne -> 1985
    //   920: aload_0
    //   921: bipush #7
    //   923: bipush #9
    //   925: invokespecial b : (II)V
    //   928: iload_1
    //   929: istore_2
    //   930: goto -> 1985
    //   933: lload #10
    //   935: ldc2_w 71776119061217280
    //   938: land
    //   939: lconst_0
    //   940: lcmp
    //   941: ifne -> 949
    //   944: iload_1
    //   945: istore_2
    //   946: goto -> 1985
    //   949: iload_1
    //   950: istore_2
    //   951: iload_1
    //   952: bipush #60
    //   954: if_icmple -> 960
    //   957: bipush #60
    //   959: istore_2
    //   960: bipush #54
    //   962: istore_1
    //   963: goto -> 1978
    //   966: lload #10
    //   968: ldc2_w 287948901175001088
    //   971: land
    //   972: lconst_0
    //   973: lcmp
    //   974: ifne -> 982
    //   977: iload_1
    //   978: istore_2
    //   979: goto -> 1985
    //   982: iload_1
    //   983: istore_2
    //   984: iload_1
    //   985: bipush #60
    //   987: if_icmple -> 993
    //   990: bipush #60
    //   992: istore_2
    //   993: bipush #53
    //   995: istore_1
    //   996: goto -> 1978
    //   999: aload_0
    //   1000: getfield n : C
    //   1003: bipush #48
    //   1005: if_icmpeq -> 1013
    //   1008: iload_1
    //   1009: istore_2
    //   1010: goto -> 1985
    //   1013: iload_1
    //   1014: istore_3
    //   1015: iload_1
    //   1016: bipush #60
    //   1018: if_icmple -> 1024
    //   1021: bipush #60
    //   1023: istore_3
    //   1024: bipush #15
    //   1026: istore_2
    //   1027: bipush #17
    //   1029: istore_1
    //   1030: goto -> 1893
    //   1033: iload_1
    //   1034: istore_2
    //   1035: lload #10
    //   1037: ldc2_w 287948901175001088
    //   1040: land
    //   1041: lconst_0
    //   1042: lcmp
    //   1043: ifeq -> 1985
    //   1046: bipush #50
    //   1048: istore_2
    //   1049: iload_1
    //   1050: istore_3
    //   1051: goto -> 1823
    //   1054: iload_1
    //   1055: istore_2
    //   1056: lload #10
    //   1058: ldc2_w 43980465111040
    //   1061: land
    //   1062: lconst_0
    //   1063: lcmp
    //   1064: ifeq -> 1985
    //   1067: bipush #50
    //   1069: istore_2
    //   1070: goto -> 1405
    //   1073: iload_1
    //   1074: istore_2
    //   1075: lload #10
    //   1077: ldc2_w 287948901175001088
    //   1080: land
    //   1081: lconst_0
    //   1082: lcmp
    //   1083: ifeq -> 1985
    //   1086: bipush #34
    //   1088: istore_2
    //   1089: bipush #36
    //   1091: istore #4
    //   1093: iload_1
    //   1094: istore_3
    //   1095: iload #4
    //   1097: istore_1
    //   1098: goto -> 1893
    //   1101: lload #10
    //   1103: ldc2_w 287948901175001088
    //   1106: land
    //   1107: lconst_0
    //   1108: lcmp
    //   1109: ifne -> 1117
    //   1112: iload_1
    //   1113: istore_2
    //   1114: goto -> 1985
    //   1117: iload_1
    //   1118: istore_3
    //   1119: iload_1
    //   1120: bipush #64
    //   1122: if_icmple -> 1128
    //   1125: bipush #64
    //   1127: istore_3
    //   1128: bipush #46
    //   1130: istore_2
    //   1131: goto -> 1823
    //   1134: iload_1
    //   1135: istore_2
    //   1136: lload #10
    //   1138: ldc2_w 43980465111040
    //   1141: land
    //   1142: lconst_0
    //   1143: lcmp
    //   1144: ifeq -> 1985
    //   1147: bipush #46
    //   1149: istore_2
    //   1150: goto -> 1405
    //   1153: iload_1
    //   1154: istore_2
    //   1155: lload #10
    //   1157: ldc2_w 287948901175001088
    //   1160: land
    //   1161: lconst_0
    //   1162: lcmp
    //   1163: ifeq -> 1985
    //   1166: bipush #43
    //   1168: istore_2
    //   1169: bipush #44
    //   1171: istore #4
    //   1173: goto -> 1829
    //   1176: lload #10
    //   1178: ldc2_w 287948901175001088
    //   1181: land
    //   1182: lconst_0
    //   1183: lcmp
    //   1184: ifne -> 1192
    //   1187: iload_1
    //   1188: istore_2
    //   1189: goto -> 1985
    //   1192: iload #4
    //   1194: istore_2
    //   1195: iload_1
    //   1196: istore_3
    //   1197: iload_1
    //   1198: bipush #64
    //   1200: if_icmple -> 1823
    //   1203: bipush #64
    //   1205: istore_3
    //   1206: iload #4
    //   1208: istore_2
    //   1209: goto -> 1823
    //   1212: iload_1
    //   1213: istore_2
    //   1214: lload #10
    //   1216: ldc2_w 43980465111040
    //   1219: land
    //   1220: lconst_0
    //   1221: lcmp
    //   1222: ifeq -> 1985
    //   1225: iload #4
    //   1227: istore_2
    //   1228: goto -> 1405
    //   1231: lload #10
    //   1233: ldc2_w 287948901175001088
    //   1236: land
    //   1237: lconst_0
    //   1238: lcmp
    //   1239: ifne -> 1247
    //   1242: iload_1
    //   1243: istore_2
    //   1244: goto -> 1985
    //   1247: iload_1
    //   1248: istore_3
    //   1249: iload_1
    //   1250: bipush #64
    //   1252: if_icmple -> 1283
    //   1255: goto -> 1280
    //   1258: aload_0
    //   1259: getfield n : C
    //   1262: bipush #46
    //   1264: if_icmpeq -> 1272
    //   1267: iload_1
    //   1268: istore_2
    //   1269: goto -> 1985
    //   1272: iload_1
    //   1273: istore_3
    //   1274: iload_1
    //   1275: bipush #64
    //   1277: if_icmple -> 1283
    //   1280: bipush #64
    //   1282: istore_3
    //   1283: bipush #31
    //   1285: istore_2
    //   1286: bipush #33
    //   1288: istore_1
    //   1289: goto -> 1893
    //   1292: iload_1
    //   1293: istore_2
    //   1294: lload #10
    //   1296: ldc2_w 287948901175001088
    //   1299: land
    //   1300: lconst_0
    //   1301: lcmp
    //   1302: ifeq -> 1985
    //   1305: bipush #37
    //   1307: istore_2
    //   1308: bipush #38
    //   1310: istore #4
    //   1312: goto -> 1829
    //   1315: iload_1
    //   1316: istore_2
    //   1317: lload #10
    //   1319: ldc2_w 287948901175001088
    //   1322: land
    //   1323: lconst_0
    //   1324: lcmp
    //   1325: ifeq -> 1985
    //   1328: bipush #6
    //   1330: istore #4
    //   1332: iconst_0
    //   1333: istore_2
    //   1334: aload_0
    //   1335: iload_2
    //   1336: iload #4
    //   1338: invokespecial d : (II)V
    //   1341: iload_1
    //   1342: istore_2
    //   1343: goto -> 1985
    //   1346: lload #10
    //   1348: ldc2_w 287948969894477824
    //   1351: land
    //   1352: lconst_0
    //   1353: lcmp
    //   1354: ifne -> 1362
    //   1357: iload_1
    //   1358: istore_2
    //   1359: goto -> 1985
    //   1362: iload_1
    //   1363: istore_2
    //   1364: iload_1
    //   1365: bipush #69
    //   1367: if_icmple -> 1398
    //   1370: goto -> 1395
    //   1373: aload_0
    //   1374: getfield n : C
    //   1377: bipush #36
    //   1379: if_icmpeq -> 1387
    //   1382: iload_1
    //   1383: istore_2
    //   1384: goto -> 1985
    //   1387: iload_1
    //   1388: istore_2
    //   1389: iload_1
    //   1390: bipush #69
    //   1392: if_icmple -> 1398
    //   1395: bipush #69
    //   1397: istore_2
    //   1398: bipush #35
    //   1400: istore_3
    //   1401: iload_2
    //   1402: istore_1
    //   1403: iload_3
    //   1404: istore_2
    //   1405: aload_0
    //   1406: iload_2
    //   1407: invokespecial a : (I)V
    //   1410: iload_1
    //   1411: istore_2
    //   1412: goto -> 1985
    //   1415: iload_1
    //   1416: istore_2
    //   1417: lload #10
    //   1419: ldc2_w 71776119061217280
    //   1422: land
    //   1423: lconst_0
    //   1424: lcmp
    //   1425: ifeq -> 1985
    //   1428: bipush #31
    //   1430: istore_2
    //   1431: goto -> 1405
    //   1434: iload_1
    //   1435: istore_2
    //   1436: lload #10
    //   1438: ldc2_w 4222124650659840
    //   1441: land
    //   1442: lconst_0
    //   1443: lcmp
    //   1444: ifeq -> 1985
    //   1447: aload_0
    //   1448: getfield v : [I
    //   1451: astore #14
    //   1453: aload_0
    //   1454: getfield q : I
    //   1457: istore_2
    //   1458: aload_0
    //   1459: iload_2
    //   1460: iconst_1
    //   1461: iadd
    //   1462: putfield q : I
    //   1465: aload #14
    //   1467: iload_2
    //   1468: bipush #33
    //   1470: iastore
    //   1471: iload_1
    //   1472: istore_2
    //   1473: goto -> 1985
    //   1476: iload_1
    //   1477: istore_2
    //   1478: lload #10
    //   1480: ldc2_w 71776119061217280
    //   1483: land
    //   1484: lconst_0
    //   1485: lcmp
    //   1486: ifeq -> 1985
    //   1489: goto -> 1558
    //   1492: iload_1
    //   1493: istore_2
    //   1494: lload #10
    //   1496: ldc2_w 71776119061217280
    //   1499: land
    //   1500: lconst_0
    //   1501: lcmp
    //   1502: ifeq -> 1985
    //   1505: bipush #27
    //   1507: istore_2
    //   1508: bipush #30
    //   1510: istore #4
    //   1512: iload_1
    //   1513: istore_3
    //   1514: iload #4
    //   1516: istore_1
    //   1517: goto -> 1893
    //   1520: iload_1
    //   1521: istore_2
    //   1522: aload_0
    //   1523: getfield n : C
    //   1526: bipush #34
    //   1528: if_icmpne -> 1985
    //   1531: iload_1
    //   1532: istore_2
    //   1533: iload_1
    //   1534: bipush #67
    //   1536: if_icmple -> 1985
    //   1539: bipush #67
    //   1541: istore_2
    //   1542: goto -> 1985
    //   1545: iload_1
    //   1546: istore_2
    //   1547: lload #10
    //   1549: ldc2_w 566935683072
    //   1552: land
    //   1553: lconst_0
    //   1554: lcmp
    //   1555: ifeq -> 1985
    //   1558: goto -> 1588
    //   1561: iload_1
    //   1562: istore_2
    //   1563: lload #10
    //   1565: ldc2_w -17179878401
    //   1568: land
    //   1569: lconst_0
    //   1570: lcmp
    //   1571: ifeq -> 1985
    //   1574: goto -> 1588
    //   1577: iload_1
    //   1578: istore_2
    //   1579: aload_0
    //   1580: getfield n : C
    //   1583: bipush #34
    //   1585: if_icmpne -> 1985
    //   1588: aload_0
    //   1589: bipush #10
    //   1591: bipush #12
    //   1593: invokespecial d : (II)V
    //   1596: iload_1
    //   1597: istore_2
    //   1598: goto -> 1985
    //   1601: iload_1
    //   1602: istore_2
    //   1603: lload #10
    //   1605: ldc2_w 71776119061217280
    //   1608: land
    //   1609: lconst_0
    //   1610: lcmp
    //   1611: ifeq -> 1985
    //   1614: bipush #22
    //   1616: istore_2
    //   1617: goto -> 1405
    //   1620: iload_1
    //   1621: istore_2
    //   1622: lload #10
    //   1624: ldc2_w 4222124650659840
    //   1627: land
    //   1628: lconst_0
    //   1629: lcmp
    //   1630: ifeq -> 1985
    //   1633: aload_0
    //   1634: getfield v : [I
    //   1637: astore #14
    //   1639: aload_0
    //   1640: getfield q : I
    //   1643: istore_2
    //   1644: aload_0
    //   1645: iload_2
    //   1646: iconst_1
    //   1647: iadd
    //   1648: putfield q : I
    //   1651: aload #14
    //   1653: iload_2
    //   1654: bipush #24
    //   1656: iastore
    //   1657: iload_1
    //   1658: istore_2
    //   1659: goto -> 1985
    //   1662: iload_1
    //   1663: istore_2
    //   1664: lload #10
    //   1666: ldc2_w 71776119061217280
    //   1669: land
    //   1670: lconst_0
    //   1671: lcmp
    //   1672: ifeq -> 1985
    //   1675: goto -> 1758
    //   1678: iload_1
    //   1679: istore_2
    //   1680: lload #10
    //   1682: ldc2_w 71776119061217280
    //   1685: land
    //   1686: lconst_0
    //   1687: lcmp
    //   1688: ifeq -> 1985
    //   1691: aload_0
    //   1692: bipush #22
    //   1694: bipush #18
    //   1696: invokespecial c : (II)V
    //   1699: iload_1
    //   1700: istore_2
    //   1701: goto -> 1985
    //   1704: iload_1
    //   1705: istore_2
    //   1706: lload #10
    //   1708: ldc2_w 566935683072
    //   1711: land
    //   1712: lconst_0
    //   1713: lcmp
    //   1714: ifeq -> 1985
    //   1717: goto -> 1758
    //   1720: iload_1
    //   1721: istore_2
    //   1722: aload_0
    //   1723: getfield n : C
    //   1726: bipush #39
    //   1728: if_icmpne -> 1985
    //   1731: iload_1
    //   1732: istore_2
    //   1733: iload_1
    //   1734: bipush #66
    //   1736: if_icmple -> 1985
    //   1739: bipush #66
    //   1741: istore_2
    //   1742: goto -> 1985
    //   1745: iload_1
    //   1746: istore_2
    //   1747: lload #10
    //   1749: ldc2_w -549755823105
    //   1752: land
    //   1753: lconst_0
    //   1754: lcmp
    //   1755: ifeq -> 1985
    //   1758: aload_0
    //   1759: bipush #18
    //   1761: invokespecial a : (I)V
    //   1764: iload_1
    //   1765: istore_2
    //   1766: goto -> 1985
    //   1769: iload_1
    //   1770: istore_2
    //   1771: aload_0
    //   1772: getfield n : C
    //   1775: bipush #39
    //   1777: if_icmpne -> 1985
    //   1780: aload_0
    //   1781: bipush #13
    //   1783: bipush #14
    //   1785: invokespecial b : (II)V
    //   1788: iload_1
    //   1789: istore_2
    //   1790: goto -> 1985
    //   1793: lload #10
    //   1795: ldc2_w 287948901175001088
    //   1798: land
    //   1799: lconst_0
    //   1800: lcmp
    //   1801: ifne -> 1809
    //   1804: iload_1
    //   1805: istore_2
    //   1806: goto -> 1985
    //   1809: iload_1
    //   1810: istore_3
    //   1811: iload_1
    //   1812: bipush #64
    //   1814: if_icmple -> 1820
    //   1817: bipush #64
    //   1819: istore_3
    //   1820: bipush #14
    //   1822: istore_2
    //   1823: bipush #15
    //   1825: istore #4
    //   1827: iload_3
    //   1828: istore_1
    //   1829: aload_0
    //   1830: iload_2
    //   1831: iload #4
    //   1833: invokespecial c : (II)V
    //   1836: iload_1
    //   1837: istore_2
    //   1838: goto -> 1985
    //   1841: iload_1
    //   1842: istore_2
    //   1843: lload #10
    //   1845: ldc2_w 43980465111040
    //   1848: land
    //   1849: lconst_0
    //   1850: lcmp
    //   1851: ifeq -> 1985
    //   1854: bipush #14
    //   1856: istore_2
    //   1857: goto -> 1405
    //   1860: lload #10
    //   1862: ldc2_w 287948901175001088
    //   1865: land
    //   1866: lconst_0
    //   1867: lcmp
    //   1868: ifne -> 1876
    //   1871: iload_1
    //   1872: istore_2
    //   1873: goto -> 1985
    //   1876: iload_1
    //   1877: istore_3
    //   1878: iload_1
    //   1879: bipush #64
    //   1881: if_icmple -> 1887
    //   1884: bipush #64
    //   1886: istore_3
    //   1887: bipush #24
    //   1889: istore_2
    //   1890: bipush #26
    //   1892: istore_1
    //   1893: aload_0
    //   1894: iload_2
    //   1895: iload_1
    //   1896: invokespecial d : (II)V
    //   1899: iload_3
    //   1900: istore_2
    //   1901: goto -> 1985
    //   1904: iload_1
    //   1905: istore_2
    //   1906: aload_0
    //   1907: getfield n : C
    //   1910: bipush #46
    //   1912: if_icmpne -> 1985
    //   1915: bipush #11
    //   1917: istore_2
    //   1918: goto -> 1405
    //   1921: lload #10
    //   1923: ldc2_w 287948901175001088
    //   1926: land
    //   1927: lconst_0
    //   1928: lcmp
    //   1929: ifne -> 1937
    //   1932: iload_1
    //   1933: istore_2
    //   1934: goto -> 1985
    //   1937: iload_1
    //   1938: istore_2
    //   1939: iload_1
    //   1940: bipush #60
    //   1942: if_icmple -> 1975
    //   1945: goto -> 1972
    //   1948: lload #10
    //   1950: ldc2_w 287667426198290432
    //   1953: land
    //   1954: lconst_0
    //   1955: lcmp
    //   1956: ifne -> 1964
    //   1959: iload_1
    //   1960: istore_2
    //   1961: goto -> 1985
    //   1964: iload_1
    //   1965: istore_2
    //   1966: iload_1
    //   1967: bipush #60
    //   1969: if_icmple -> 1975
    //   1972: bipush #60
    //   1974: istore_2
    //   1975: bipush #8
    //   1977: istore_1
    //   1978: aload_0
    //   1979: iload_1
    //   1980: bipush #9
    //   1982: invokespecial c : (II)V
    //   1985: goto -> 2432
    //   1988: lload #10
    //   1990: ldc2_w 8589934591
    //   1993: land
    //   1994: lconst_0
    //   1995: lcmp
    //   1996: ifeq -> 2020
    //   1999: iload_1
    //   2000: istore_2
    //   2001: iload_1
    //   2002: bipush #6
    //   2004: if_icmple -> 2010
    //   2007: bipush #6
    //   2009: istore_2
    //   2010: aload_0
    //   2011: iconst_0
    //   2012: invokespecial a : (I)V
    //   2015: iload_2
    //   2016: istore_1
    //   2017: goto -> 2195
    //   2020: lload #10
    //   2022: ldc2_w 287948901175001088
    //   2025: land
    //   2026: lconst_0
    //   2027: lcmp
    //   2028: ifeq -> 2043
    //   2031: aload_0
    //   2032: iconst_0
    //   2033: bipush #6
    //   2035: invokespecial d : (II)V
    //   2038: iload_1
    //   2039: istore_2
    //   2040: goto -> 2015
    //   2043: aload_0
    //   2044: getfield n : C
    //   2047: bipush #47
    //   2049: if_icmpne -> 2065
    //   2052: aload_0
    //   2053: bipush #7
    //   2055: bipush #9
    //   2057: invokespecial b : (II)V
    //   2060: iload_1
    //   2061: istore_2
    //   2062: goto -> 2015
    //   2065: aload_0
    //   2066: getfield n : C
    //   2069: bipush #36
    //   2071: if_icmpne -> 2102
    //   2074: iload_1
    //   2075: istore_2
    //   2076: iload_1
    //   2077: bipush #69
    //   2079: if_icmple -> 2085
    //   2082: bipush #69
    //   2084: istore_2
    //   2085: bipush #35
    //   2087: istore_3
    //   2088: iload_2
    //   2089: istore_1
    //   2090: iload_3
    //   2091: istore_2
    //   2092: aload_0
    //   2093: iload_2
    //   2094: invokespecial a : (I)V
    //   2097: iload_1
    //   2098: istore_2
    //   2099: goto -> 2015
    //   2102: aload_0
    //   2103: getfield n : C
    //   2106: bipush #34
    //   2108: if_icmpne -> 2124
    //   2111: aload_0
    //   2112: bipush #10
    //   2114: bipush #12
    //   2116: invokespecial d : (II)V
    //   2119: iload_1
    //   2120: istore_2
    //   2121: goto -> 2015
    //   2124: aload_0
    //   2125: getfield n : C
    //   2128: bipush #39
    //   2130: if_icmpne -> 2146
    //   2133: aload_0
    //   2134: bipush #13
    //   2136: bipush #14
    //   2138: invokespecial b : (II)V
    //   2141: iload_1
    //   2142: istore_2
    //   2143: goto -> 2015
    //   2146: aload_0
    //   2147: getfield n : C
    //   2150: bipush #46
    //   2152: if_icmpne -> 2161
    //   2155: bipush #11
    //   2157: istore_2
    //   2158: goto -> 2092
    //   2161: iload_1
    //   2162: istore_2
    //   2163: aload_0
    //   2164: getfield n : C
    //   2167: bipush #35
    //   2169: if_icmpne -> 2015
    //   2172: aload_0
    //   2173: getfield v : [I
    //   2176: astore #14
    //   2178: aload_0
    //   2179: getfield q : I
    //   2182: istore_2
    //   2183: aload_0
    //   2184: iload_2
    //   2185: iconst_1
    //   2186: iadd
    //   2187: putfield q : I
    //   2190: aload #14
    //   2192: iload_2
    //   2193: iconst_1
    //   2194: iastore
    //   2195: lload #10
    //   2197: ldc2_w 287667426198290432
    //   2200: land
    //   2201: lconst_0
    //   2202: lcmp
    //   2203: ifeq -> 2228
    //   2206: iload_1
    //   2207: istore_2
    //   2208: iload_1
    //   2209: bipush #60
    //   2211: if_icmple -> 2217
    //   2214: bipush #60
    //   2216: istore_2
    //   2217: aload_0
    //   2218: bipush #8
    //   2220: bipush #9
    //   2222: invokespecial c : (II)V
    //   2225: goto -> 2432
    //   2228: iload_1
    //   2229: istore_2
    //   2230: aload_0
    //   2231: getfield n : C
    //   2234: bipush #48
    //   2236: if_icmpne -> 2432
    //   2239: iload_1
    //   2240: istore_2
    //   2241: iload_1
    //   2242: bipush #60
    //   2244: if_icmple -> 2250
    //   2247: bipush #60
    //   2249: istore_2
    //   2250: bipush #15
    //   2252: istore #4
    //   2254: bipush #17
    //   2256: istore_3
    //   2257: iload_2
    //   2258: istore_1
    //   2259: iload #4
    //   2261: istore_2
    //   2262: aload_0
    //   2263: iload_2
    //   2264: iload_3
    //   2265: invokespecial d : (II)V
    //   2268: iload_1
    //   2269: istore_2
    //   2270: goto -> 2432
    //   2273: iload_1
    //   2274: istore_2
    //   2275: aload_0
    //   2276: getfield n : C
    //   2279: bipush #13
    //   2281: if_icmpne -> 2432
    //   2284: aload_0
    //   2285: getfield v : [I
    //   2288: astore #14
    //   2290: aload_0
    //   2291: getfield q : I
    //   2294: istore_2
    //   2295: aload_0
    //   2296: iload_2
    //   2297: iconst_1
    //   2298: iadd
    //   2299: putfield q : I
    //   2302: aload #14
    //   2304: iload_2
    //   2305: iconst_4
    //   2306: iastore
    //   2307: iload_1
    //   2308: istore_2
    //   2309: goto -> 2432
    //   2312: iload_1
    //   2313: istore_2
    //   2314: aload_0
    //   2315: getfield n : C
    //   2318: bipush #10
    //   2320: if_icmpne -> 2432
    //   2323: iload_1
    //   2324: istore_2
    //   2325: iload_1
    //   2326: bipush #8
    //   2328: if_icmple -> 2432
    //   2331: goto -> 2355
    //   2334: iload_1
    //   2335: istore_2
    //   2336: lload #10
    //   2338: ldc2_w 9216
    //   2341: land
    //   2342: lconst_0
    //   2343: lcmp
    //   2344: ifeq -> 2432
    //   2347: iload_1
    //   2348: istore_2
    //   2349: iload_1
    //   2350: bipush #8
    //   2352: if_icmple -> 2432
    //   2355: bipush #8
    //   2357: istore_2
    //   2358: goto -> 2432
    //   2361: iload_1
    //   2362: istore_2
    //   2363: lload #10
    //   2365: ldc2_w -9217
    //   2368: land
    //   2369: lconst_0
    //   2370: lcmp
    //   2371: ifeq -> 2432
    //   2374: goto -> 2388
    //   2377: iload_1
    //   2378: istore_2
    //   2379: aload_0
    //   2380: getfield n : C
    //   2383: bipush #33
    //   2385: if_icmpne -> 2432
    //   2388: bipush #21
    //   2390: istore_2
    //   2391: bipush #23
    //   2393: istore_3
    //   2394: goto -> 2262
    //   2397: lload #10
    //   2399: ldc2_w 8589934591
    //   2402: land
    //   2403: lconst_0
    //   2404: lcmp
    //   2405: ifne -> 2413
    //   2408: iload_1
    //   2409: istore_2
    //   2410: goto -> 2432
    //   2413: iload_1
    //   2414: bipush #6
    //   2416: if_icmple -> 2425
    //   2419: bipush #6
    //   2421: istore_1
    //   2422: goto -> 2425
    //   2425: aload_0
    //   2426: iconst_0
    //   2427: invokespecial a : (I)V
    //   2430: iload_1
    //   2431: istore_2
    //   2432: iload #7
    //   2434: iload #5
    //   2436: if_icmpne -> 2446
    //   2439: iload_2
    //   2440: istore_1
    //   2441: iload_1
    //   2442: istore_2
    //   2443: goto -> 3769
    //   2446: iload #7
    //   2448: istore_3
    //   2449: iload_2
    //   2450: istore_1
    //   2451: goto -> 69
    //   2454: aload_0
    //   2455: getfield n : C
    //   2458: sipush #128
    //   2461: if_icmpge -> 3155
    //   2464: lconst_1
    //   2465: aload_0
    //   2466: getfield n : C
    //   2469: bipush #63
    //   2471: iand
    //   2472: lshl
    //   2473: lstore #10
    //   2475: iload_1
    //   2476: istore_3
    //   2477: aload_0
    //   2478: getfield v : [I
    //   2481: astore #14
    //   2483: iload_2
    //   2484: iconst_1
    //   2485: isub
    //   2486: istore #4
    //   2488: aload #14
    //   2490: iload #4
    //   2492: iaload
    //   2493: lookupswitch default -> 2696, 2 -> 3126, 6 -> 3088, 9 -> 3061, 12 -> 3039, 15 -> 3012, 17 -> 2988, 19 -> 2968, 20 -> 2952, 26 -> 2926, 27 -> 2906, 28 -> 2890, 35 -> 3088, 40 -> 2868, 44 -> 2846, 48 -> 2824, 52 -> 2803, 53 -> 2765, 57 -> 2743, 62 -> 2728, 64 -> 2722, 65 -> 2722, 68 -> 2707, 70 -> 2701, 71 -> 2701
    //   2696: iload_3
    //   2697: istore_1
    //   2698: goto -> 3140
    //   2701: bipush #71
    //   2703: istore_1
    //   2704: goto -> 2710
    //   2707: bipush #68
    //   2709: istore_1
    //   2710: aload_0
    //   2711: iload_1
    //   2712: bipush #69
    //   2714: invokespecial c : (II)V
    //   2717: iload_3
    //   2718: istore_1
    //   2719: goto -> 3140
    //   2722: bipush #65
    //   2724: istore_1
    //   2725: goto -> 2731
    //   2728: bipush #62
    //   2730: istore_1
    //   2731: aload_0
    //   2732: iload_1
    //   2733: bipush #63
    //   2735: invokespecial c : (II)V
    //   2738: iload_3
    //   2739: istore_1
    //   2740: goto -> 3140
    //   2743: iload_3
    //   2744: istore_1
    //   2745: iload_3
    //   2746: bipush #7
    //   2748: if_icmple -> 2754
    //   2751: bipush #7
    //   2753: istore_1
    //   2754: aload_0
    //   2755: bipush #18
    //   2757: bipush #20
    //   2759: invokespecial b : (II)V
    //   2762: goto -> 3140
    //   2765: lload #10
    //   2767: ldc2_w 541165879422
    //   2770: land
    //   2771: lconst_0
    //   2772: lcmp
    //   2773: ifne -> 2781
    //   2776: iload_3
    //   2777: istore_1
    //   2778: goto -> 3140
    //   2781: iload_3
    //   2782: istore_1
    //   2783: iload_3
    //   2784: bipush #60
    //   2786: if_icmple -> 2792
    //   2789: bipush #60
    //   2791: istore_1
    //   2792: aload_0
    //   2793: bipush #53
    //   2795: bipush #9
    //   2797: invokespecial c : (II)V
    //   2800: goto -> 3140
    //   2803: iload_3
    //   2804: istore_1
    //   2805: lload #10
    //   2807: ldc2_w 72057594054705152
    //   2810: land
    //   2811: lconst_0
    //   2812: lcmp
    //   2813: ifeq -> 3140
    //   2816: bipush #53
    //   2818: istore_2
    //   2819: iload_3
    //   2820: istore_1
    //   2821: goto -> 3118
    //   2824: iload_3
    //   2825: istore_1
    //   2826: lload #10
    //   2828: ldc2_w 137438953504
    //   2831: land
    //   2832: lconst_0
    //   2833: lcmp
    //   2834: ifeq -> 3140
    //   2837: bipush #55
    //   2839: istore_1
    //   2840: bipush #56
    //   2842: istore_2
    //   2843: goto -> 3132
    //   2846: iload_3
    //   2847: istore_1
    //   2848: lload #10
    //   2850: ldc2_w 137438953504
    //   2853: land
    //   2854: lconst_0
    //   2855: lcmp
    //   2856: ifeq -> 3140
    //   2859: bipush #53
    //   2861: istore_1
    //   2862: bipush #54
    //   2864: istore_2
    //   2865: goto -> 3132
    //   2868: iload_3
    //   2869: istore_1
    //   2870: lload #10
    //   2872: ldc2_w 137438953504
    //   2875: land
    //   2876: lconst_0
    //   2877: lcmp
    //   2878: ifeq -> 3140
    //   2881: bipush #51
    //   2883: istore_1
    //   2884: bipush #52
    //   2886: istore_2
    //   2887: goto -> 3132
    //   2890: iload_3
    //   2891: istore_1
    //   2892: lload #10
    //   2894: ldc2_w 5700160604602368
    //   2897: land
    //   2898: lconst_0
    //   2899: lcmp
    //   2900: ifeq -> 3140
    //   2903: goto -> 2939
    //   2906: iload_3
    //   2907: istore_1
    //   2908: aload_0
    //   2909: getfield n : C
    //   2912: bipush #92
    //   2914: if_icmpne -> 3140
    //   2917: bipush #48
    //   2919: istore_1
    //   2920: bipush #50
    //   2922: istore_2
    //   2923: goto -> 3132
    //   2926: iload_3
    //   2927: istore_1
    //   2928: lload #10
    //   2930: ldc2_w -268435457
    //   2933: land
    //   2934: lconst_0
    //   2935: lcmp
    //   2936: ifeq -> 3140
    //   2939: aload_0
    //   2940: bipush #10
    //   2942: bipush #12
    //   2944: invokespecial d : (II)V
    //   2947: iload_3
    //   2948: istore_1
    //   2949: goto -> 3140
    //   2952: iload_3
    //   2953: istore_1
    //   2954: lload #10
    //   2956: ldc2_w 5700160604602368
    //   2959: land
    //   2960: lconst_0
    //   2961: lcmp
    //   2962: ifeq -> 3140
    //   2965: goto -> 3001
    //   2968: iload_3
    //   2969: istore_1
    //   2970: aload_0
    //   2971: getfield n : C
    //   2974: bipush #92
    //   2976: if_icmpne -> 3140
    //   2979: bipush #45
    //   2981: istore_1
    //   2982: bipush #47
    //   2984: istore_2
    //   2985: goto -> 3132
    //   2988: iload_3
    //   2989: istore_1
    //   2990: lload #10
    //   2992: ldc2_w -268435457
    //   2995: land
    //   2996: lconst_0
    //   2997: lcmp
    //   2998: ifeq -> 3140
    //   3001: aload_0
    //   3002: bipush #18
    //   3004: invokespecial a : (I)V
    //   3007: iload_3
    //   3008: istore_1
    //   3009: goto -> 3140
    //   3012: iload_3
    //   3013: istore_1
    //   3014: lload #10
    //   3016: ldc2_w 343597383760
    //   3019: land
    //   3020: lconst_0
    //   3021: lcmp
    //   3022: ifeq -> 3140
    //   3025: iload_3
    //   3026: istore_1
    //   3027: iload_3
    //   3028: bipush #64
    //   3030: if_icmple -> 3140
    //   3033: bipush #64
    //   3035: istore_1
    //   3036: goto -> 3140
    //   3039: iload_3
    //   3040: istore_1
    //   3041: lload #10
    //   3043: ldc2_w 137438953504
    //   3046: land
    //   3047: lconst_0
    //   3048: lcmp
    //   3049: ifeq -> 3140
    //   3052: bipush #43
    //   3054: istore_1
    //   3055: bipush #44
    //   3057: istore_2
    //   3058: goto -> 3132
    //   3061: iload_3
    //   3062: istore_1
    //   3063: lload #10
    //   3065: ldc2_w 17592186048512
    //   3068: land
    //   3069: lconst_0
    //   3070: lcmp
    //   3071: ifeq -> 3140
    //   3074: iload_3
    //   3075: istore_1
    //   3076: iload_3
    //   3077: bipush #60
    //   3079: if_icmple -> 3140
    //   3082: bipush #60
    //   3084: istore_1
    //   3085: goto -> 3140
    //   3088: lload #10
    //   3090: ldc2_w 576460745995190270
    //   3093: land
    //   3094: lconst_0
    //   3095: lcmp
    //   3096: ifne -> 3104
    //   3099: iload_3
    //   3100: istore_1
    //   3101: goto -> 3140
    //   3104: iload_3
    //   3105: istore_1
    //   3106: iload_3
    //   3107: bipush #69
    //   3109: if_icmple -> 3115
    //   3112: bipush #69
    //   3114: istore_1
    //   3115: bipush #35
    //   3117: istore_2
    //   3118: aload_0
    //   3119: iload_2
    //   3120: invokespecial a : (I)V
    //   3123: goto -> 3140
    //   3126: bipush #21
    //   3128: istore_1
    //   3129: bipush #23
    //   3131: istore_2
    //   3132: aload_0
    //   3133: iload_1
    //   3134: iload_2
    //   3135: invokespecial b : (II)V
    //   3138: iload_3
    //   3139: istore_1
    //   3140: iload #4
    //   3142: istore_2
    //   3143: iload_1
    //   3144: istore_3
    //   3145: iload #4
    //   3147: iload #5
    //   3149: if_icmpne -> 2477
    //   3152: goto -> 2441
    //   3155: aload_0
    //   3156: getfield n : C
    //   3159: bipush #8
    //   3161: ishr
    //   3162: istore #7
    //   3164: iload #7
    //   3166: bipush #6
    //   3168: ishr
    //   3169: istore #8
    //   3171: lconst_1
    //   3172: iload #7
    //   3174: bipush #63
    //   3176: iand
    //   3177: lshl
    //   3178: lstore #10
    //   3180: aload_0
    //   3181: getfield n : C
    //   3184: sipush #255
    //   3187: iand
    //   3188: bipush #6
    //   3190: ishr
    //   3191: istore #9
    //   3193: lconst_1
    //   3194: aload_0
    //   3195: getfield n : C
    //   3198: bipush #63
    //   3200: iand
    //   3201: lshl
    //   3202: lstore #12
    //   3204: aload_0
    //   3205: getfield v : [I
    //   3208: astore #14
    //   3210: iload_2
    //   3211: iconst_1
    //   3212: isub
    //   3213: istore #4
    //   3215: aload #14
    //   3217: iload #4
    //   3219: iaload
    //   3220: lookupswitch default -> 3344, 0 -> 3722, 2 -> 3691, 6 -> 3620, 17 -> 3573, 26 -> 3542, 34 -> 3501, 35 -> 3501, 57 -> 3458, 62 -> 3425, 64 -> 3398, 65 -> 3398, 68 -> 3369, 70 -> 3347, 71 -> 3347
    //   3344: goto -> 3760
    //   3347: iload #7
    //   3349: iload #8
    //   3351: iload #9
    //   3353: lload #10
    //   3355: lload #12
    //   3357: invokestatic b : (IIIJJ)Z
    //   3360: ifeq -> 3344
    //   3363: bipush #71
    //   3365: istore_2
    //   3366: goto -> 3388
    //   3369: iload #7
    //   3371: iload #8
    //   3373: iload #9
    //   3375: lload #10
    //   3377: lload #12
    //   3379: invokestatic b : (IIIJJ)Z
    //   3382: ifeq -> 3344
    //   3385: bipush #68
    //   3387: istore_2
    //   3388: aload_0
    //   3389: iload_2
    //   3390: bipush #69
    //   3392: invokespecial c : (II)V
    //   3395: goto -> 3344
    //   3398: iload #7
    //   3400: iload #8
    //   3402: iload #9
    //   3404: lload #10
    //   3406: lload #12
    //   3408: invokestatic b : (IIIJJ)Z
    //   3411: ifeq -> 3420
    //   3414: bipush #65
    //   3416: istore_2
    //   3417: goto -> 3446
    //   3420: iload_1
    //   3421: istore_2
    //   3422: goto -> 3686
    //   3425: iload_1
    //   3426: istore_2
    //   3427: iload #7
    //   3429: iload #8
    //   3431: iload #9
    //   3433: lload #10
    //   3435: lload #12
    //   3437: invokestatic b : (IIIJJ)Z
    //   3440: ifeq -> 3686
    //   3443: bipush #62
    //   3445: istore_2
    //   3446: aload_0
    //   3447: iload_2
    //   3448: bipush #63
    //   3450: invokespecial c : (II)V
    //   3453: iload_1
    //   3454: istore_2
    //   3455: goto -> 3686
    //   3458: iload #7
    //   3460: iload #8
    //   3462: iload #9
    //   3464: lload #10
    //   3466: lload #12
    //   3468: invokestatic b : (IIIJJ)Z
    //   3471: ifne -> 3479
    //   3474: iload_1
    //   3475: istore_2
    //   3476: goto -> 3686
    //   3479: iload_1
    //   3480: istore_2
    //   3481: iload_1
    //   3482: bipush #7
    //   3484: if_icmple -> 3490
    //   3487: bipush #7
    //   3489: istore_2
    //   3490: aload_0
    //   3491: bipush #18
    //   3493: bipush #20
    //   3495: invokespecial b : (II)V
    //   3498: goto -> 3686
    //   3501: iload #7
    //   3503: iload #8
    //   3505: iload #9
    //   3507: lload #10
    //   3509: lload #12
    //   3511: invokestatic c : (IIIJJ)Z
    //   3514: ifne -> 3522
    //   3517: iload_1
    //   3518: istore_2
    //   3519: goto -> 3686
    //   3522: iload_1
    //   3523: istore_2
    //   3524: iload_1
    //   3525: bipush #69
    //   3527: if_icmple -> 3533
    //   3530: bipush #69
    //   3532: istore_2
    //   3533: aload_0
    //   3534: bipush #35
    //   3536: invokespecial a : (I)V
    //   3539: goto -> 3686
    //   3542: iload_1
    //   3543: istore_2
    //   3544: iload #7
    //   3546: iload #8
    //   3548: iload #9
    //   3550: lload #10
    //   3552: lload #12
    //   3554: invokestatic b : (IIIJJ)Z
    //   3557: ifeq -> 3686
    //   3560: aload_0
    //   3561: bipush #10
    //   3563: bipush #12
    //   3565: invokespecial b : (II)V
    //   3568: iload_1
    //   3569: istore_2
    //   3570: goto -> 3686
    //   3573: iload_1
    //   3574: istore_2
    //   3575: iload #7
    //   3577: iload #8
    //   3579: iload #9
    //   3581: lload #10
    //   3583: lload #12
    //   3585: invokestatic b : (IIIJJ)Z
    //   3588: ifeq -> 3686
    //   3591: aload_0
    //   3592: getfield v : [I
    //   3595: astore #14
    //   3597: aload_0
    //   3598: getfield q : I
    //   3601: istore_2
    //   3602: aload_0
    //   3603: iload_2
    //   3604: iconst_1
    //   3605: iadd
    //   3606: putfield q : I
    //   3609: aload #14
    //   3611: iload_2
    //   3612: bipush #18
    //   3614: iastore
    //   3615: iload_1
    //   3616: istore_2
    //   3617: goto -> 3686
    //   3620: iload_1
    //   3621: istore_3
    //   3622: iload #7
    //   3624: iload #8
    //   3626: iload #9
    //   3628: lload #10
    //   3630: lload #12
    //   3632: invokestatic a : (IIIJJ)Z
    //   3635: ifeq -> 3657
    //   3638: iload_1
    //   3639: bipush #6
    //   3641: if_icmple -> 3650
    //   3644: bipush #6
    //   3646: istore_1
    //   3647: goto -> 3650
    //   3650: aload_0
    //   3651: iconst_0
    //   3652: invokespecial a : (I)V
    //   3655: iload_1
    //   3656: istore_3
    //   3657: iload_3
    //   3658: istore_2
    //   3659: iload #7
    //   3661: iload #8
    //   3663: iload #9
    //   3665: lload #10
    //   3667: lload #12
    //   3669: invokestatic c : (IIIJJ)Z
    //   3672: ifeq -> 3686
    //   3675: iload_3
    //   3676: istore_2
    //   3677: iload_3
    //   3678: bipush #69
    //   3680: if_icmple -> 3533
    //   3683: goto -> 3530
    //   3686: iload_2
    //   3687: istore_1
    //   3688: goto -> 3760
    //   3691: iload_1
    //   3692: istore_2
    //   3693: iload #7
    //   3695: iload #8
    //   3697: iload #9
    //   3699: lload #10
    //   3701: lload #12
    //   3703: invokestatic b : (IIIJJ)Z
    //   3706: ifeq -> 3686
    //   3709: aload_0
    //   3710: bipush #21
    //   3712: bipush #23
    //   3714: invokespecial b : (II)V
    //   3717: iload_1
    //   3718: istore_2
    //   3719: goto -> 3686
    //   3722: iload #7
    //   3724: iload #8
    //   3726: iload #9
    //   3728: lload #10
    //   3730: lload #12
    //   3732: invokestatic a : (IIIJJ)Z
    //   3735: ifne -> 3743
    //   3738: iload_1
    //   3739: istore_2
    //   3740: goto -> 3686
    //   3743: iload_1
    //   3744: bipush #6
    //   3746: if_icmple -> 3755
    //   3749: bipush #6
    //   3751: istore_1
    //   3752: goto -> 3755
    //   3755: aload_0
    //   3756: iconst_0
    //   3757: invokespecial a : (I)V
    //   3760: iload #4
    //   3762: iload #5
    //   3764: if_icmpne -> 3840
    //   3767: iload_1
    //   3768: istore_2
    //   3769: iload_2
    //   3770: istore_1
    //   3771: iload_2
    //   3772: ldc_w 2147483647
    //   3775: if_icmpeq -> 3793
    //   3778: aload_0
    //   3779: iload_2
    //   3780: putfield t : I
    //   3783: aload_0
    //   3784: iload #6
    //   3786: putfield s : I
    //   3789: ldc_w 2147483647
    //   3792: istore_1
    //   3793: iload #6
    //   3795: iconst_1
    //   3796: iadd
    //   3797: istore #6
    //   3799: aload_0
    //   3800: getfield q : I
    //   3803: istore_2
    //   3804: aload_0
    //   3805: iload #5
    //   3807: putfield q : I
    //   3810: bipush #74
    //   3812: iload #5
    //   3814: isub
    //   3815: istore #5
    //   3817: iload_2
    //   3818: iload #5
    //   3820: if_icmpne -> 3826
    //   3823: iload #6
    //   3825: ireturn
    //   3826: aload_0
    //   3827: aload_0
    //   3828: getfield m : Lbsh/JavaCharStream;
    //   3831: invokevirtual readChar : ()C
    //   3834: putfield n : C
    //   3837: goto -> 27
    //   3840: iload #4
    //   3842: istore_2
    //   3843: goto -> 3204
    //   3846: astore #14
    //   3848: iload #6
    //   3850: ireturn
    // Exception table:
    //   from	to	target	type
    //   3826	3837	3846	java/io/IOException }
  
  private final int e(long paramLong1, long paramLong2) {
    paramLong2 &= paramLong1;
    if (paramLong2 == 0L)
      return b(24, 0L, 0L, paramLong1); 
    try {
      this.n = this.m.readChar();
      return (this.n != 'g') ? b(25, 0L, 0L, paramLong2) : f(paramLong2, 32L);
    } catch (IOException iOException) {
      a(25, 0L, 0L, paramLong2);
      return 26;
    } 
  }
  
  private final int e(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(15, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      if (c1 != 'n') {
        switch (c1) {
          default:
            return b(16, 0L, paramLong2, paramLong4);
          case 'h':
            return f(paramLong2, 9007199254740992L, paramLong4, 32L);
          case 'g':
            break;
        } 
        return f(paramLong2, 0L, paramLong4, 8L);
      } 
      if ((paramLong4 & 0x2L) != 0L)
        return a(17, 129); 
    } catch (IOException iOException) {
      a(16, 0L, paramLong2, paramLong4);
      return 17;
    } 
  }
  
  private final int e(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(4, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      switch (this.n) {
        default:
          return b(5, paramLong2, paramLong4, paramLong6);
        case 'y':
          if ((paramLong2 & 0x10000000L) != 0L)
            return a(6, 28, 35); 
        case 'u':
          return f(paramLong2, 524288L, paramLong4, 0L, paramLong6, 0L);
        case 't':
          return ((paramLong2 & 0x100000L) != 0L) ? a(6, 20, 35) : f(paramLong2, 17592186044416L, paramLong4, 0L, paramLong6, 0L);
        case 's':
          return ((paramLong2 & 0x2000000L) != 0L) ? a(6, 25, 35) : f(paramLong2, 0L, paramLong4, 2882910691935649792L, paramLong6, 2L);
        case 'o':
          return f(paramLong2, 2251799813685248L, paramLong4, 0L, paramLong6, 0L);
        case 'n':
          if ((paramLong2 & 0x800L) != 0L)
            return a(6, 11, 35); 
        case 'l':
          return f(paramLong2, 288230376151711744L, paramLong4, 0L, paramLong6, 0L);
        case 'f':
          return f(paramLong2, 562949953421312L, paramLong4, 0L, paramLong6, 0L);
        case 'e':
          return ((paramLong2 & 0x40000000000L) != 0L) ? a(6, 42, 35) : (((paramLong2 & 0x80000000000L) != 0L) ? a(6, 43, 35) : f(paramLong2, 4503608217305088L, paramLong4, 0L, paramLong6, 0L));
        case 'c':
          return f(paramLong2, 34359739392L, paramLong4, 0L, paramLong6, 0L);
        case 'a':
          return f(paramLong2, 137438953472L, paramLong4, 0L, paramLong6, 0L);
        case '_':
          break;
      } 
      return f(paramLong2, 0L, paramLong4, 11258999068426240L, paramLong6, 40L);
    } catch (IOException iOException) {
      a(5, paramLong2, paramLong4, paramLong6);
      return 6;
    } 
  }
  
  private final int f(long paramLong1, long paramLong2) {
    paramLong2 &= paramLong1;
    if (paramLong2 == 0L)
      return b(25, 0L, 0L, paramLong1); 
    try {
      this.n = this.m.readChar();
      return (this.n == 'n' && (paramLong2 & 0x20L) != 0L) ? a(27, 133) : b(26, 0L, 0L, paramLong2);
    } catch (IOException iOException) {
      a(26, 0L, 0L, paramLong2);
      return 27;
    } 
  }
  
  private final int f(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(16, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      return (c1 != 'i') ? ((c1 == 'n' && (paramLong4 & 0x8L) != 0L) ? a(18, 131) : b(17, 0L, paramLong2, paramLong4)) : g(paramLong2, 9007199254740992L, paramLong4, 32L);
    } catch (IOException iOException) {
      a(17, 0L, paramLong2, paramLong4);
      return 18;
    } 
  }
  
  private final int f(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(5, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      if (c1 != 'c') {
        if (c1 != 'e') {
          if (c1 != 'n') {
            if (c1 != 'p') {
              switch (c1) {
                default:
                  switch (c1) {
                    default:
                      return b(6, paramLong2, paramLong4, paramLong6);
                    case 'u':
                      return g(paramLong2, 0L, paramLong4, 9007199254740992L, paramLong6, 32L);
                    case 't':
                      if ((paramLong2 & 0x400L) != 0L)
                        return a(7, 10, 35); 
                    case 's':
                      break;
                  } 
                  return g(paramLong2, 0L, paramLong4, 578712552117108736L, paramLong6, 8L);
                case 'i':
                  return g(paramLong2, 0L, paramLong4, 2305843009213693952L, paramLong6, 0L);
                case 'h':
                  break;
              } 
              return g(paramLong2, 0L, paramLong4, 562949953421312L, paramLong6, 2L);
            } 
            if ((paramLong2 & 0x2000000000000L) != 0L)
              return a(7, 49, 35); 
          } 
          return g(paramLong2, 6755408030990336L, paramLong4, 0L, paramLong6, 0L);
        } 
        return ((paramLong2 & 0x80000L) != 0L) ? a(7, 19, 35) : (((paramLong2 & 0x400000000000000L) != 0L) ? a(7, 58, 35) : g(paramLong2, 17626545782784L, paramLong4, 43980465111040L, paramLong6, 0L));
      } 
      return g(paramLong2, 137438953472L, paramLong4, 0L, paramLong6, 0L);
    } catch (IOException iOException) {
      a(6, paramLong2, paramLong4, paramLong6);
      return 7;
    } 
  }
  
  private final int g(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(17, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      return (this.n != 'f') ? b(18, 0L, paramLong2, paramLong4) : h(paramLong2, 9007199254740992L, paramLong4, 32L);
    } catch (IOException iOException) {
      a(18, 0L, paramLong2, paramLong4);
      return 19;
    } 
  }
  
  private final int g(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(6, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      switch (this.n) {
        default:
          return b(7, paramLong2, paramLong4, paramLong6);
        case 't':
          return ((paramLong2 & 0x10000000000000L) != 0L) ? a(8, 52, 35) : h(paramLong2, 8589934592L, paramLong4, 0L, paramLong6, 0L);
        case 'o':
          return h(paramLong2, 34359738368L, paramLong4, 0L, paramLong6, 0L);
        case 'n':
          return h(paramLong2, 0L, paramLong4, 9007199254740992L, paramLong6, 32L);
        case 'i':
          return h(paramLong2, 2251799813685248L, paramLong4, 577023702256844800L, paramLong6, 2L);
        case 'h':
          return h(paramLong2, 0L, paramLong4, 2251799813685248L, paramLong6, 8L);
        case 'g':
          return h(paramLong2, 0L, paramLong4, 2305843009213693952L, paramLong6, 0L);
        case 'e':
          if ((paramLong2 & 0x2000000000L) != 0L)
            return a(8, 37, 35); 
        case 'd':
          if ((paramLong2 & 0x100000000000L) != 0L)
            return a(8, 44, 35); 
        case '_':
          break;
      } 
      return h(paramLong2, 0L, paramLong4, 43980465111040L, paramLong6, 0L);
    } catch (IOException iOException) {
      a(7, paramLong2, paramLong4, paramLong6);
      return 8;
    } 
  }
  
  private final int h(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    if ((paramLong2 | paramLong4) == 0L)
      return b(18, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      if (this.n != 't')
        return b(19, 0L, paramLong2, paramLong4); 
      if ((paramLong2 & 0x20000000000000L) != 0L) {
        this.t = 117;
        this.s = 20;
      } 
      return i(paramLong2, 0L, paramLong4, 32L);
    } catch (IOException iOException) {
      a(19, 0L, paramLong2, paramLong4);
      return 20;
    } 
  }
  
  private final int h(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(7, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      switch (this.n) {
        default:
          return b(8, paramLong2, paramLong4, paramLong6);
        case 'z':
          return i(paramLong2, 2251799813685248L, paramLong4, 0L, paramLong6, 0L);
        case 's':
          return ((paramLong2 & 0x200000000L) != 0L) ? a(9, 33, 35) : i(paramLong2, 0L, paramLong4, 9007199254740992L, paramLong6, 32L);
        case 'o':
          return i(paramLong2, 0L, paramLong4, 35184372088832L, paramLong6, 0L);
        case 'n':
          if ((paramLong4 & 0x2000000000000000L) != 0L)
            return a(9, 125); 
        case 'i':
          return i(paramLong2, 0L, paramLong4, 2251799813685248L, paramLong6, 8L);
        case 'g':
          return i(paramLong2, 0L, paramLong4, 576460752303423488L, paramLong6, 0L);
        case 'f':
          return ((paramLong2 & 0x800000000L) != 0L) ? a(9, 35, 35) : i(paramLong2, 0L, paramLong4, 562949953421312L, paramLong6, 2L);
        case 'a':
          break;
      } 
      return i(paramLong2, 0L, paramLong4, 8796093022208L, paramLong6, 0L);
    } catch (IOException iOException) {
      a(8, paramLong2, paramLong4, paramLong6);
      return 9;
    } 
  }
  
  private final int i(long paramLong1, long paramLong2, long paramLong3, long paramLong4) {
    paramLong4 &= paramLong3;
    if ((paramLong2 & paramLong1 | paramLong4) == 0L)
      return b(19, 0L, paramLong1, paramLong3); 
    try {
      this.n = this.m.readChar();
      return (this.n != '_') ? b(20, 0L, 0L, paramLong4) : a(paramLong4, 32L);
    } catch (IOException iOException) {
      a(20, 0L, 0L, paramLong4);
      return 21;
    } 
  }
  
  private final int i(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(8, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      if (c1 != 'i') {
        if (c1 != 'n') {
          if (c1 != 'r') {
            if (c1 != 't') {
              switch (c1) {
                default:
                  return b(9, paramLong2, paramLong4, paramLong6);
                case 'f':
                  return j(paramLong2, 0L, paramLong4, 2251799813685248L, paramLong6, 8L);
                case 'e':
                  break;
              } 
              return j(paramLong2, 2251799813685248L, paramLong4, 0L, paramLong6, 0L);
            } 
            if ((paramLong4 & 0x2000000000000L) != 0L) {
              this.t = 113;
              this.s = 10;
            } 
            return j(paramLong2, 0L, paramLong4, 0L, paramLong6, 2L);
          } 
          if ((paramLong4 & 0x200000000000L) != 0L)
            return a(10, 109); 
        } 
        return ((paramLong4 & 0x800000000000000L) != 0L) ? a(10, 123) : j(paramLong2, 0L, paramLong4, 8796093022208L, paramLong6, 0L);
      } 
      return j(paramLong2, 0L, paramLong4, 9007199254740992L, paramLong6, 32L);
    } catch (IOException iOException) {
      a(9, paramLong2, paramLong4, paramLong6);
      return 10;
    } 
  }
  
  private final int j(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong2 &= paramLong1;
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 | paramLong4 | paramLong6) == 0L)
      return b(9, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      if (c1 != '_') {
        if (c1 != 'd') {
          if (c1 != 'g') {
            if (c1 == 't') {
              if ((paramLong4 & 0x8000000000000L) != 0L) {
                this.t = 115;
                this.s = 11;
              } 
              return k(paramLong2, 0L, paramLong4, 0L, paramLong6, 8L);
            } 
          } else {
            return k(paramLong2, 0L, paramLong4, 9007199254740992L, paramLong6, 32L);
          } 
        } else {
          if ((paramLong2 & 0x8000000000000L) != 0L)
            return a(11, 51, 35); 
          if ((paramLong4 & 0x80000000000L) != 0L)
            return a(11, 107); 
        } 
        return b(10, paramLong2, paramLong4, paramLong6);
      } 
      return k(paramLong2, 0L, paramLong4, 0L, paramLong6, 2L);
    } catch (IOException iOException) {
      a(10, paramLong2, paramLong4, paramLong6);
      return 11;
    } 
  }
  
  private final int k(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6) {
    paramLong4 &= paramLong3;
    paramLong6 &= paramLong5;
    if ((paramLong2 & paramLong1 | paramLong4 | paramLong6) == 0L)
      return b(10, paramLong1, paramLong3, paramLong5); 
    try {
      this.n = this.m.readChar();
      char c1 = this.n;
      return (c1 != '_') ? ((c1 != 'a') ? ((c1 != 'n') ? b(11, 0L, paramLong4, paramLong6) : a(paramLong4, 9007199254740992L, paramLong6, 32L)) : a(paramLong4, 0L, paramLong6, 2L)) : a(paramLong4, 0L, paramLong6, 8L);
    } catch (IOException iOException) {
      a(11, 0L, paramLong4, paramLong6);
      return 12;
    } 
  }
  
  public void ReInit(JavaCharStream paramJavaCharStream) {
    this.q = 0;
    this.s = 0;
    this.o = this.p;
    this.m = paramJavaCharStream;
    c();
  }
  
  public void ReInit(JavaCharStream paramJavaCharStream, int paramInt) {
    ReInit(paramJavaCharStream);
    SwitchTo(paramInt);
  }
  
  public void SwitchTo(int paramInt) {
    if (paramInt >= 1 || paramInt < 0) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Error: Ignoring invalid lexical state : ");
      stringBuffer.append(paramInt);
      stringBuffer.append(". State unchanged.");
      throw new TokenMgrError(stringBuffer.toString(), 2);
    } 
    this.o = paramInt;
  }
  
  protected Token a() {
    Token token = Token.newToken(this.t);
    token.kind = this.t;
    String str2 = jjstrLiteralImages[this.t];
    String str1 = str2;
    if (str2 == null)
      str1 = this.m.GetImage(); 
    token.image = str1;
    token.beginLine = this.m.getBeginLine();
    token.beginColumn = this.m.getBeginColumn();
    token.endLine = this.m.getEndLine();
    token.endColumn = this.m.getEndColumn();
    return token;
  }
  
  public Token getNextToken() {
    token = null;
    String str = null;
    try {
      boolean bool;
      int i3;
      while (true) {
        this.n = this.m.BeginToken();
        this.t = Integer.MAX_VALUE;
        this.s = 0;
        i3 = b();
        if (this.t != Integer.MAX_VALUE) {
          if (this.s + 1 < i3)
            this.m.backup(i3 - this.s - 1); 
          if ((j[this.t >> 6] & 1L << (this.t & 0x3F)) == 0L) {
            if ((l[this.t >> 6] & 1L << (this.t & 0x3F)) != 0L) {
              Token token1 = a();
              if (str != null) {
                token1.specialToken = str;
                str.next = token1;
              } 
              str = token1;
            } 
            continue;
          } 
          token = a();
          token.specialToken = str;
          return token;
        } 
        break;
      } 
      int i2 = this.m.getEndLine();
      int i1 = this.m.getEndColumn();
      try {
        this.m.readChar();
        this.m.backup(1);
        bool = false;
        str = token;
      } catch (IOException null) {
        if (i3 <= 1) {
          str = "";
        } else {
          str = this.m.GetImage();
        } 
        if (this.n == '\n' || this.n == '\r') {
          i2++;
          i1 = 0;
        } else {
          i1++;
        } 
        bool = true;
      } 
      if (!bool) {
        this.m.backup(1);
        if (i3 <= 1) {
          str = "";
        } else {
          str = this.m.GetImage();
        } 
      } 
      throw new TokenMgrError(bool, this.o, i2, i1, str, this.n, 0);
    } catch (IOException token) {}
    token = a();
    token.specialToken = str;
    return token;
  }
  
  public void setDebugStream(PrintStream paramPrintStream) { this.debugStream = paramPrintStream; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ParserTokenManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
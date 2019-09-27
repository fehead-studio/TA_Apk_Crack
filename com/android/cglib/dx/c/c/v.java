package com.android.cglib.dx.c.c;

import com.android.cglib.dx.c.d.c;
import com.android.cglib.dx.d.c;

public final class v extends x {
  public static final v a = new v("");
  
  private final String b;
  
  private final c c;
  
  public v(String paramString) {
    if (paramString == null)
      throw new NullPointerException("string == null"); 
    this.b = paramString.intern();
    this.c = new c(a(paramString));
  }
  
  public static byte[] a(String paramString) {
    int i = paramString.length();
    byte[] arrayOfByte2 = new byte[i * 3];
    byte b2 = 0;
    byte b1 = 0;
    while (b2 < i) {
      char c1 = paramString.charAt(b2);
      if (c1 != '\000' && c1 < '') {
        arrayOfByte2[b1] = (byte)c1;
        b1++;
      } else if (c1 < 'ࠀ') {
        arrayOfByte2[b1] = (byte)(c1 >> '\006' & 0x1F | 0xC0);
        arrayOfByte2[b1 + 1] = (byte)(c1 & 0x3F | 0x80);
        b1 += 2;
      } else {
        arrayOfByte2[b1] = (byte)(c1 >> '\f' & 0xF | 0xE0);
        arrayOfByte2[b1 + 1] = (byte)(c1 >> '\006' & 0x3F | 0x80);
        arrayOfByte2[b1 + 2] = (byte)(c1 & 0x3F | 0x80);
        b1 += 3;
      } 
      b2++;
    } 
    byte[] arrayOfByte1 = new byte[b1];
    System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, b1);
    return arrayOfByte1;
  }
  
  public String a(int paramInt) {
    String str2;
    String str1 = a_();
    if (str1.length() <= paramInt - 2) {
      str2 = "";
    } else {
      str1 = str1.substring(0, paramInt - 5);
      str2 = "...";
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append('"');
    stringBuilder.append(str1);
    stringBuilder.append(str2);
    stringBuilder.append('"');
    return stringBuilder.toString();
  }
  
  public String a_() { // Byte code:
    //   0: aload_0
    //   1: getfield b : Ljava/lang/String;
    //   4: invokevirtual length : ()I
    //   7: istore #7
    //   9: new java/lang/StringBuilder
    //   12: dup
    //   13: iload #7
    //   15: iconst_3
    //   16: imul
    //   17: iconst_2
    //   18: idiv
    //   19: invokespecial <init> : (I)V
    //   22: astore #9
    //   24: iconst_0
    //   25: istore #4
    //   27: iload #4
    //   29: iload #7
    //   31: if_icmpge -> 361
    //   34: aload_0
    //   35: getfield b : Ljava/lang/String;
    //   38: iload #4
    //   40: invokevirtual charAt : (I)C
    //   43: istore_2
    //   44: iload_2
    //   45: bipush #32
    //   47: if_icmplt -> 89
    //   50: iload_2
    //   51: bipush #127
    //   53: if_icmpge -> 89
    //   56: iload_2
    //   57: bipush #39
    //   59: if_icmpeq -> 76
    //   62: iload_2
    //   63: bipush #34
    //   65: if_icmpeq -> 76
    //   68: iload_2
    //   69: istore_1
    //   70: iload_2
    //   71: bipush #92
    //   73: if_icmpne -> 345
    //   76: aload #9
    //   78: bipush #92
    //   80: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   83: pop
    //   84: iload_2
    //   85: istore_1
    //   86: goto -> 345
    //   89: iload_2
    //   90: bipush #127
    //   92: if_icmpgt -> 277
    //   95: iload_2
    //   96: bipush #13
    //   98: if_icmpeq -> 270
    //   101: iload_2
    //   102: tableswitch default -> 124, 9 -> 255, 10 -> 248
    //   124: iload #4
    //   126: iload #7
    //   128: iconst_1
    //   129: isub
    //   130: if_icmpge -> 148
    //   133: aload_0
    //   134: getfield b : Ljava/lang/String;
    //   137: iload #4
    //   139: iconst_1
    //   140: iadd
    //   141: invokevirtual charAt : (I)C
    //   144: istore_3
    //   145: goto -> 150
    //   148: iconst_0
    //   149: istore_3
    //   150: iload_3
    //   151: bipush #48
    //   153: if_icmplt -> 167
    //   156: iload_3
    //   157: bipush #55
    //   159: if_icmpgt -> 167
    //   162: iconst_1
    //   163: istore_3
    //   164: goto -> 169
    //   167: iconst_0
    //   168: istore_3
    //   169: aload #9
    //   171: bipush #92
    //   173: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: bipush #6
    //   179: istore #5
    //   181: iload #5
    //   183: iflt -> 233
    //   186: iload_2
    //   187: iload #5
    //   189: ishr
    //   190: bipush #7
    //   192: iand
    //   193: bipush #48
    //   195: iadd
    //   196: i2c
    //   197: istore_1
    //   198: iload_1
    //   199: bipush #48
    //   201: if_icmpne -> 211
    //   204: iload_3
    //   205: istore #6
    //   207: iload_3
    //   208: ifeq -> 221
    //   211: aload #9
    //   213: iload_1
    //   214: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   217: pop
    //   218: iconst_1
    //   219: istore #6
    //   221: iload #5
    //   223: iconst_3
    //   224: isub
    //   225: istore #5
    //   227: iload #6
    //   229: istore_3
    //   230: goto -> 181
    //   233: iload_3
    //   234: ifne -> 352
    //   237: aload #9
    //   239: bipush #48
    //   241: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   244: pop
    //   245: goto -> 352
    //   248: ldc '\n'
    //   250: astore #8
    //   252: goto -> 259
    //   255: ldc '\t'
    //   257: astore #8
    //   259: aload #9
    //   261: aload #8
    //   263: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: pop
    //   267: goto -> 352
    //   270: ldc '\r'
    //   272: astore #8
    //   274: goto -> 259
    //   277: aload #9
    //   279: ldc '\u'
    //   281: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: pop
    //   285: aload #9
    //   287: iload_2
    //   288: bipush #12
    //   290: ishr
    //   291: bipush #16
    //   293: invokestatic forDigit : (II)C
    //   296: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   299: pop
    //   300: aload #9
    //   302: iload_2
    //   303: bipush #8
    //   305: ishr
    //   306: bipush #15
    //   308: iand
    //   309: bipush #16
    //   311: invokestatic forDigit : (II)C
    //   314: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   317: pop
    //   318: aload #9
    //   320: iload_2
    //   321: iconst_4
    //   322: ishr
    //   323: bipush #15
    //   325: iand
    //   326: bipush #16
    //   328: invokestatic forDigit : (II)C
    //   331: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   334: pop
    //   335: iload_2
    //   336: bipush #15
    //   338: iand
    //   339: bipush #16
    //   341: invokestatic forDigit : (II)C
    //   344: istore_1
    //   345: aload #9
    //   347: iload_1
    //   348: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   351: pop
    //   352: iload #4
    //   354: iconst_1
    //   355: iadd
    //   356: istore #4
    //   358: goto -> 27
    //   361: aload #9
    //   363: invokevirtual toString : ()Ljava/lang/String;
    //   366: areturn }
  
  protected int b(a parama) { return this.b.compareTo(((v)parama).b); }
  
  public c b() { return c.q; }
  
  public String e() { return "utf8"; }
  
  public boolean equals(Object paramObject) { return !(paramObject instanceof v) ? false : this.b.equals(((v)paramObject).b); }
  
  public String f() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append('"');
    stringBuilder.append(a_());
    stringBuilder.append('"');
    return stringBuilder.toString();
  }
  
  public String g() { return this.b; }
  
  public c h() { return this.c; }
  
  public int hashCode() { return this.b.hashCode(); }
  
  public int i() { return this.c.a(); }
  
  public int j() { return this.b.length(); }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("string{\"");
    stringBuilder.append(a_());
    stringBuilder.append("\"}");
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\c\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.android.cglib.dx.d;

public final class i {
  public static String a(int paramInt) {
    char[] arrayOfChar = new char[8];
    int k = 0;
    int j = paramInt;
    for (paramInt = k; paramInt < 8; paramInt++) {
      arrayOfChar[7 - paramInt] = Character.forDigit(j & 0xF, 16);
      j >>= 4;
    } 
    return new String(arrayOfChar);
  }
  
  public static String a(long paramLong) {
    char[] arrayOfChar = new char[16];
    for (byte b = 0; b < 16; b++) {
      arrayOfChar[15 - b] = Character.forDigit((int)paramLong & 0xF, 16);
      paramLong >>= 4;
    } 
    return new String(arrayOfChar);
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    int j = paramInt1 + paramInt2;
    if ((paramInt1 | paramInt2 | j) < 0 || j > paramArrayOfByte.length) {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("arr.length ");
      stringBuilder.append(paramArrayOfByte.length);
      stringBuilder.append("; ");
      stringBuilder.append(paramInt1);
      stringBuilder.append("..!");
      stringBuilder.append(j);
      throw new IndexOutOfBoundsException(stringBuilder.toString());
    } 
    if (paramInt3 < 0)
      throw new IllegalArgumentException("outOffset < 0"); 
    if (paramInt2 == 0)
      return ""; 
    StringBuffer stringBuffer = new StringBuffer(paramInt2 * 4 + 6);
    j = paramInt1;
    paramInt1 = 0;
    while (paramInt2 > 0) {
      if (paramInt1 == 0) {
        String str;
        if (paramInt5 != 2) {
          if (paramInt5 != 4) {
            if (paramInt5 != 6) {
              str = a(paramInt3);
            } else {
              str = b(paramInt3);
            } 
          } else {
            str = c(paramInt3);
          } 
        } else {
          str = e(paramInt3);
        } 
        stringBuffer.append(str);
        stringBuffer.append(": ");
      } else if ((paramInt1 & true) == 0) {
        stringBuffer.append(' ');
      } 
      stringBuffer.append(e(paramArrayOfByte[j]));
      paramInt3++;
      j++;
      int k = paramInt1 + 1;
      paramInt1 = k;
      if (k == paramInt4) {
        stringBuffer.append('\n');
        paramInt1 = 0;
      } 
      paramInt2--;
    } 
    if (paramInt1 != 0)
      stringBuffer.append('\n'); 
    return stringBuffer.toString();
  }
  
  public static String b(int paramInt) {
    char[] arrayOfChar = new char[6];
    int k = 0;
    int j = paramInt;
    for (paramInt = k; paramInt < 6; paramInt++) {
      arrayOfChar[5 - paramInt] = Character.forDigit(j & 0xF, 16);
      j >>= 4;
    } 
    return new String(arrayOfChar);
  }
  
  public static String c(int paramInt) {
    char[] arrayOfChar = new char[4];
    int k = 0;
    int j = paramInt;
    for (paramInt = k; paramInt < 4; paramInt++) {
      arrayOfChar[3 - paramInt] = Character.forDigit(j & 0xF, 16);
      j >>= 4;
    } 
    return new String(arrayOfChar);
  }
  
  public static String d(int paramInt) { return (paramInt == (char)paramInt) ? c(paramInt) : a(paramInt); }
  
  public static String e(int paramInt) {
    char[] arrayOfChar = new char[2];
    int k = 0;
    int j = paramInt;
    for (paramInt = k; paramInt < 2; paramInt++) {
      arrayOfChar[1 - paramInt] = Character.forDigit(j & 0xF, 16);
      j >>= 4;
    } 
    return new String(arrayOfChar);
  }
  
  public static String f(int paramInt) { return new String(new char[] { Character.forDigit(paramInt & 0xF, 16) }); }
  
  public static String g(int paramInt) {
    char[] arrayOfChar = new char[9];
    byte b = 0;
    if (paramInt < 0) {
      arrayOfChar[0] = '-';
      paramInt = -paramInt;
    } else {
      arrayOfChar[0] = '+';
    } 
    while (b < 8) {
      arrayOfChar[8 - b] = Character.forDigit(paramInt & 0xF, 16);
      paramInt >>= 4;
      b++;
    } 
    return new String(arrayOfChar);
  }
  
  public static String h(int paramInt) {
    char[] arrayOfChar = new char[5];
    byte b = 0;
    if (paramInt < 0) {
      arrayOfChar[0] = '-';
      paramInt = -paramInt;
    } else {
      arrayOfChar[0] = '+';
    } 
    while (b < 4) {
      arrayOfChar[4 - b] = Character.forDigit(paramInt & 0xF, 16);
      paramInt >>= 4;
      b++;
    } 
    return new String(arrayOfChar);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

public final class ct {
  private static final byte[] a = { 
      65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
      75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
      85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
      101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
      111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
      121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
      56, 57, 43, 47 };
  
  public static String a(byte[] paramArrayOfByte, String paramString) {
    byte[] arrayOfByte2;
    int k;
    int i = paramArrayOfByte.length * 4 / 3;
    byte[] arrayOfByte1 = new byte[i + i / 76 + 3];
    int m = paramArrayOfByte.length - paramArrayOfByte.length % 3;
    byte b = 0;
    i = 0;
    int j;
    for (j = 0; b < m; j = n) {
      int n = i + 1;
      arrayOfByte1[i] = a[(paramArrayOfByte[b] & 0xFF) >> 2];
      i = n + 1;
      byte[] arrayOfByte = a;
      byte b2 = paramArrayOfByte[b];
      byte b1 = b + true;
      arrayOfByte1[n] = arrayOfByte[(b2 & 0x3) << 4 | (paramArrayOfByte[b1] & 0xFF) >> 4];
      n = i + 1;
      arrayOfByte = a;
      b2 = paramArrayOfByte[b1];
      b1 = b + 2;
      arrayOfByte1[i] = arrayOfByte[(b2 & 0xF) << 2 | (paramArrayOfByte[b1] & 0xFF) >> 6];
      i = n + 1;
      arrayOfByte1[n] = a[paramArrayOfByte[b1] & 0x3F];
      n = j;
      if ((i - j) % 76 == 0) {
        n = j;
        if (i != 0)
          n = j + 1; 
      } 
      b += 3;
    } 
    switch (paramArrayOfByte.length % 3) {
      default:
        return new String(arrayOfByte1, 0, i, paramString);
      case 2:
        j = i + 1;
        arrayOfByte1[i] = a[(paramArrayOfByte[m] & 0xFF) >> 2];
        i = j + 1;
        arrayOfByte2 = a;
        b = paramArrayOfByte[m];
        k = m + 1;
        arrayOfByte1[j] = arrayOfByte2[(b & 0x3) << 4 | (paramArrayOfByte[k] & 0xFF) >> 4];
        j = i + 1;
        arrayOfByte1[i] = a[(paramArrayOfByte[k] & 0xF) << 2];
        i = j + 1;
        arrayOfByte1[j] = 61;
      case 1:
        break;
    } 
    j = i + 1;
    arrayOfByte1[i] = a[(paramArrayOfByte[m] & 0xFF) >> 2];
    i = j + 1;
    arrayOfByte1[j] = a[(paramArrayOfByte[m] & 0x3) << 4];
    j = i + 1;
    arrayOfByte1[i] = 61;
    i = j + 1;
    arrayOfByte1[j] = 61;
  }
  
  public static byte[] a(byte[] paramArrayOfByte) { return a(paramArrayOfByte, paramArrayOfByte.length); }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt) {
    int i = paramInt / 4 * 3;
    if (i == 0)
      return new byte[0]; 
    byte[] arrayOfByte = new byte[i];
    int j = 0;
    int k = paramInt;
    while (true) {
      i = paramArrayOfByte[k - 1];
      paramInt = j;
      if (i != 10) {
        paramInt = j;
        if (i != 13) {
          paramInt = j;
          if (i != 32)
            if (i == 9) {
              paramInt = j;
            } else if (i == 61) {
              paramInt = j + 1;
            } else {
              byte b2 = 0;
              int m = 0;
              i = 0;
              byte b1;
              for (b1 = 0; b2 < k; b1 = b3) {
                byte b4 = paramArrayOfByte[b2];
                byte b = m;
                paramInt = i;
                byte b3 = b1;
                if (b4 != 10) {
                  b = m;
                  paramInt = i;
                  b3 = b1;
                  if (b4 != 13) {
                    b = m;
                    paramInt = i;
                    b3 = b1;
                    if (b4 != 32)
                      if (b4 == 9) {
                        b = m;
                        paramInt = i;
                        b3 = b1;
                      } else {
                        if (b4 >= 65 && b4 <= 90) {
                          paramInt = b4 - 65;
                        } else if (b4 >= 97 && b4 <= 122) {
                          paramInt = b4 - 71;
                        } else if (b4 >= 48 && b4 <= 57) {
                          paramInt = b4 + 4;
                        } else if (b4 == 43) {
                          paramInt = 62;
                        } else if (b4 == 47) {
                          paramInt = 63;
                        } else {
                          return null;
                        } 
                        b = (byte)paramInt | m << 6;
                        paramInt = i;
                        if (b1 % 4 == 3) {
                          paramInt = i + 1;
                          arrayOfByte[i] = (byte)((b & 0xFF0000) >> 16);
                          i = paramInt + 1;
                          arrayOfByte[paramInt] = (byte)((b & 0xFF00) >> 8);
                          paramInt = i + 1;
                          arrayOfByte[i] = (byte)(b & 0xFF);
                        } 
                        b3 = b1 + 1;
                      }  
                  } 
                } 
                b2++;
                m = b;
                i = paramInt;
              } 
              paramInt = i;
              if (j > 0) {
                k = m << j * 6;
                paramInt = i + 1;
                arrayOfByte[i] = (byte)((k & 0xFF0000) >> 16);
                if (j == 1) {
                  i = paramInt + 1;
                  arrayOfByte[paramInt] = (byte)((k & 0xFF00) >> 8);
                  paramInt = i;
                } 
              } 
              paramArrayOfByte = new byte[paramInt];
              System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, paramInt);
              return paramArrayOfByte;
            }  
        } 
      } 
      k--;
      j = paramInt;
    } 
  }
  
  public static String b(byte[] paramArrayOfByte) { return a(paramArrayOfByte, "utf-8"); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
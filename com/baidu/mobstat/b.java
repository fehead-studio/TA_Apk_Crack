package com.baidu.mobstat;

public final class b {
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
    int m;
    int i = paramArrayOfByte.length * 4 / 3;
    byte[] arrayOfByte1 = new byte[i + i / 76 + 3];
    int n = paramArrayOfByte.length - paramArrayOfByte.length % 3;
    int j = 0;
    i = 0;
    int k;
    for (k = 0; j < n; k = i1) {
      int i1 = i + 1;
      arrayOfByte1[i] = a[(paramArrayOfByte[j] & 0xFF) >> 2];
      i = i1 + 1;
      byte[] arrayOfByte = a;
      byte b1 = paramArrayOfByte[j];
      int i2 = j + true;
      arrayOfByte1[i1] = arrayOfByte[(b1 & 0x3) << 4 | (paramArrayOfByte[i2] & 0xFF) >> 4];
      i1 = i + 1;
      arrayOfByte = a;
      i2 = paramArrayOfByte[i2];
      b1 = j + 2;
      arrayOfByte1[i] = arrayOfByte[(i2 & 0xF) << 2 | (paramArrayOfByte[b1] & 0xFF) >> 6];
      i2 = i1 + 1;
      arrayOfByte1[i1] = a[paramArrayOfByte[b1] & 0x3F];
      i = i2;
      i1 = k;
      if ((i2 - k) % 76 == 0) {
        i = i2;
        i1 = k;
        if (i2 != 0) {
          arrayOfByte1[i2] = 10;
          i1 = k + 1;
          i = i2 + 1;
        } 
      } 
      j += 3;
    } 
    switch (paramArrayOfByte.length % 3) {
      default:
        return new String(arrayOfByte1, 0, i, paramString);
      case 2:
        j = i + 1;
        arrayOfByte1[i] = a[(paramArrayOfByte[n] & 0xFF) >> 2];
        i = j + 1;
        arrayOfByte2 = a;
        k = paramArrayOfByte[n];
        m = n + 1;
        arrayOfByte1[j] = arrayOfByte2[(k & 0x3) << 4 | (paramArrayOfByte[m] & 0xFF) >> 4];
        j = i + 1;
        arrayOfByte1[i] = a[(paramArrayOfByte[m] & 0xF) << 2];
        i = j + 1;
        arrayOfByte1[j] = 61;
      case 1:
        break;
    } 
    j = i + 1;
    arrayOfByte1[i] = a[(paramArrayOfByte[n] & 0xFF) >> 2];
    i = j + 1;
    arrayOfByte1[j] = a[(paramArrayOfByte[n] & 0x3) << 4];
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
              for (b1 = 0; b2 < k; b1 = b4) {
                byte b5 = paramArrayOfByte[b2];
                byte b3 = m;
                paramInt = i;
                byte b4 = b1;
                if (b5 != 10) {
                  b3 = m;
                  paramInt = i;
                  b4 = b1;
                  if (b5 != 13) {
                    b3 = m;
                    paramInt = i;
                    b4 = b1;
                    if (b5 != 32)
                      if (b5 == 9) {
                        b3 = m;
                        paramInt = i;
                        b4 = b1;
                      } else {
                        if (b5 >= 65 && b5 <= 90) {
                          paramInt = b5 - 65;
                        } else if (b5 >= 97 && b5 <= 122) {
                          paramInt = b5 - 71;
                        } else if (b5 >= 48 && b5 <= 57) {
                          paramInt = b5 + 4;
                        } else if (b5 == 43) {
                          paramInt = 62;
                        } else if (b5 == 47) {
                          paramInt = 63;
                        } else {
                          return null;
                        } 
                        b3 = (byte)paramInt | m << 6;
                        paramInt = i;
                        if (b1 % 4 == 3) {
                          paramInt = i + 1;
                          arrayOfByte[i] = (byte)((b3 & 0xFF0000) >> 16);
                          i = paramInt + 1;
                          arrayOfByte[paramInt] = (byte)((b3 & 0xFF00) >> 8);
                          paramInt = i + 1;
                          arrayOfByte[i] = (byte)(b3 & 0xFF);
                        } 
                        b4 = b1 + 1;
                      }  
                  } 
                } 
                b2++;
                m = b3;
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
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
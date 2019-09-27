package bsh.org.objectweb.asm;

final class ByteVector {
  byte[] a = new byte[64];
  
  int b;
  
  public ByteVector() {}
  
  public ByteVector(int paramInt) {}
  
  private void a(int paramInt) {
    byte[] arrayOfByte = new byte[Math.max(this.a.length * 2, this.b + paramInt)];
    System.arraycopy(this.a, 0, arrayOfByte, 0, this.b);
    this.a = arrayOfByte;
  }
  
  public ByteVector put1(int paramInt) {
    int i = this.b;
    int j = i + 1;
    if (j > this.a.length)
      a(1); 
    this.a[i] = (byte)paramInt;
    this.b = j;
    return this;
  }
  
  public ByteVector put11(int paramInt1, int paramInt2) {
    int i = this.b;
    if (i + 2 > this.a.length)
      a(2); 
    byte[] arrayOfByte = this.a;
    int j = i + 1;
    arrayOfByte[i] = (byte)paramInt1;
    arrayOfByte[j] = (byte)paramInt2;
    this.b = j + 1;
    return this;
  }
  
  public ByteVector put12(int paramInt1, int paramInt2) {
    int j = this.b;
    if (j + 3 > this.a.length)
      a(3); 
    byte[] arrayOfByte = this.a;
    int i = j + 1;
    arrayOfByte[j] = (byte)paramInt1;
    paramInt1 = i + 1;
    arrayOfByte[i] = (byte)(paramInt2 >>> 8);
    arrayOfByte[paramInt1] = (byte)paramInt2;
    this.b = paramInt1 + 1;
    return this;
  }
  
  public ByteVector put2(int paramInt) {
    int i = this.b;
    if (i + 2 > this.a.length)
      a(2); 
    byte[] arrayOfByte = this.a;
    int j = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 8);
    arrayOfByte[j] = (byte)paramInt;
    this.b = j + 1;
    return this;
  }
  
  public ByteVector put4(int paramInt) {
    int j = this.b;
    if (j + 4 > this.a.length)
      a(4); 
    byte[] arrayOfByte = this.a;
    int i = j + 1;
    arrayOfByte[j] = (byte)(paramInt >>> 24);
    j = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 16);
    i = j + 1;
    arrayOfByte[j] = (byte)(paramInt >>> 8);
    arrayOfByte[i] = (byte)paramInt;
    this.b = i + 1;
    return this;
  }
  
  public ByteVector put8(long paramLong) {
    int k = this.b;
    if (k + 8 > this.a.length)
      a(8); 
    byte[] arrayOfByte = this.a;
    int i = (int)(paramLong >>> 32);
    int j = k + 1;
    arrayOfByte[k] = (byte)(i >>> 24);
    k = j + 1;
    arrayOfByte[j] = (byte)(i >>> 16);
    int m = k + 1;
    arrayOfByte[k] = (byte)(i >>> 8);
    j = m + 1;
    arrayOfByte[m] = (byte)i;
    i = (int)paramLong;
    k = j + 1;
    arrayOfByte[j] = (byte)(i >>> 24);
    j = k + 1;
    arrayOfByte[k] = (byte)(i >>> 16);
    k = j + 1;
    arrayOfByte[j] = (byte)(i >>> 8);
    arrayOfByte[k] = (byte)i;
    this.b = k + 1;
    return this;
  }
  
  public ByteVector putByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2) {
    if (this.b + paramInt2 > this.a.length)
      a(paramInt2); 
    if (paramArrayOfByte != null)
      System.arraycopy(paramArrayOfByte, paramInt1, this.a, this.b, paramInt2); 
    this.b += paramInt2;
    return this;
  }
  
  public ByteVector putUTF(String paramString) {
    int m = paramString.length();
    int k = 0;
    int j = 0;
    int i = 0;
    while (true) {
      if (j >= m) {
        if (i > 65535)
          throw new IllegalArgumentException(); 
        j = this.b;
        if (j + 2 + i > this.a.length)
          a(i + 2); 
        byte[] arrayOfByte = this.a;
        int n = j + 1;
        arrayOfByte[j] = (byte)(i >>> 8);
        j = n + 1;
        arrayOfByte[n] = (byte)i;
        i = j;
        for (j = k;; j++) {
          if (j >= m) {
            this.b = i;
            return this;
          } 
          n = paramString.charAt(j);
          if (n >= 1 && n <= 127) {
            k = i + 1;
            arrayOfByte[i] = (byte)n;
            i = k;
          } else if (n > 2047) {
            k = i + 1;
            arrayOfByte[i] = (byte)(n >> 12 & 0xF | 0xE0);
            int i1 = k + 1;
            arrayOfByte[k] = (byte)(n >> 6 & 0x3F | 0x80);
            i = i1 + 1;
            arrayOfByte[i1] = (byte)(n & 0x3F | 0x80);
          } else {
            k = i + 1;
            arrayOfByte[i] = (byte)(n >> 6 & 0x1F | 0xC0);
            i = k + 1;
            arrayOfByte[k] = (byte)(n & 0x3F | 0x80);
          } 
        } 
        break;
      } 
      char c = paramString.charAt(j);
      if (c >= '\001' && c <= '') {
        i++;
      } else if (c > '߿') {
        i += 3;
      } else {
        i += 2;
      } 
      j++;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\ByteVector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh.org.objectweb.asm;

public class Label {
  boolean a;
  
  int b;
  
  int c;
  
  int d;
  
  Edge e;
  
  Label f;
  
  boolean g;
  
  private int h;
  
  private int[] i;
  
  private void a(int paramInt1, int paramInt2) {
    if (this.i == null)
      this.i = new int[6]; 
    if (this.h >= this.i.length) {
      int[] arrayOfInt1 = new int[this.i.length + 6];
      System.arraycopy(this.i, 0, arrayOfInt1, 0, this.i.length);
      this.i = arrayOfInt1;
    } 
    int[] arrayOfInt = this.i;
    int j = this.h;
    this.h = j + 1;
    arrayOfInt[j] = paramInt1;
    arrayOfInt = this.i;
    paramInt1 = this.h;
    this.h = paramInt1 + 1;
    arrayOfInt[paramInt1] = paramInt2;
  }
  
  void a(CodeWriter paramCodeWriter, ByteVector paramByteVector, int paramInt, boolean paramBoolean) {
    byte b1;
    if (this.a) {
      if (paramBoolean) {
        b1 = this.b - paramInt;
      } else {
        b1 = this.b - paramInt;
        paramByteVector.put2(b1);
      } 
    } else {
      b1 = -1;
      if (paramBoolean) {
        a(-1 - paramInt, paramByteVector.b);
      } else {
        a(paramInt, paramByteVector.b);
        paramByteVector.put2(b1);
      } 
    } 
    paramByteVector.put4(b1);
  }
  
  boolean a(CodeWriter paramCodeWriter, int paramInt, byte[] paramArrayOfByte) {
    this.a = true;
    this.b = paramInt;
    int j = 0;
    boolean bool = false;
    while (true) {
      if (j >= this.h)
        return bool; 
      int[] arrayOfInt = this.i;
      boolean bool1 = j + true;
      int k = arrayOfInt[j];
      j = this.i[bool1];
      if (k >= 0) {
        k = paramInt - k;
        if (k < -32768 || k > 32767) {
          int m = j - 1;
          byte b1 = paramArrayOfByte[m] & 0xFF;
          if (b1 <= 168) {
            paramArrayOfByte[m] = (byte)(b1 + 49);
          } else {
            paramArrayOfByte[m] = (byte)(b1 + 20);
          } 
          bool = true;
        } 
        paramArrayOfByte[j] = (byte)(k >>> 8);
        paramArrayOfByte[j + 1] = (byte)k;
      } else {
        k = k + paramInt + 1;
        int m = j + 1;
        paramArrayOfByte[j] = (byte)(k >>> 24);
        j = m + 1;
        paramArrayOfByte[m] = (byte)(k >>> 16);
        paramArrayOfByte[j] = (byte)(k >>> 8);
        paramArrayOfByte[j + 1] = (byte)k;
      } 
      j = bool1 + true;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\org\objectweb\asm\Label.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
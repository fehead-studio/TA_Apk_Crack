package com.android.cglib.dx.d;

public final class c {
  private final byte[] a;
  
  private final int b;
  
  private final int c;
  
  public c(byte[] paramArrayOfByte) { this(paramArrayOfByte, 0, paramArrayOfByte.length); }
  
  public c(byte[] paramArrayOfByte, int paramInt1, int paramInt2) {
    if (paramArrayOfByte == null)
      throw new NullPointerException("bytes == null"); 
    if (paramInt1 < 0)
      throw new IllegalArgumentException("start < 0"); 
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException("end < start"); 
    if (paramInt2 > paramArrayOfByte.length)
      throw new IllegalArgumentException("end > bytes.length"); 
    this.a = paramArrayOfByte;
    this.b = paramInt1;
    this.c = paramInt2 - paramInt1;
  }
  
  public int a() { return this.c; }
  
  public void a(byte[] paramArrayOfByte, int paramInt) {
    if (paramArrayOfByte.length - paramInt < this.c)
      throw new IndexOutOfBoundsException("(out.length - offset) < size()"); 
    System.arraycopy(this.a, this.b, paramArrayOfByte, paramInt, this.c);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

public class w {
  private long a = -1L;
  
  private String b;
  
  private String c;
  
  public w(long paramLong, String paramString1, String paramString2) {
    String str = paramString2;
    if (paramString2 == null)
      str = ""; 
    this.a = paramLong;
    this.b = paramString1;
    this.c = str;
  }
  
  public long a() { return this.a; }
  
  public String b() { return this.c; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
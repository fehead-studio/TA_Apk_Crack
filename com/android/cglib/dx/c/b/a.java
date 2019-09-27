package com.android.cglib.dx.c.b;

import com.android.cglib.dx.d.i;

public final class a {
  public static String a(int paramInt) { return a(paramInt, 30257, 1); }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    StringBuffer stringBuffer = new StringBuffer(80);
    int i = (paramInt2 ^ 0xFFFFFFFF) & paramInt1;
    paramInt1 &= paramInt2;
    if ((paramInt1 & true) != 0)
      stringBuffer.append("|public"); 
    if ((paramInt1 & 0x2) != 0)
      stringBuffer.append("|private"); 
    if ((paramInt1 & 0x4) != 0)
      stringBuffer.append("|protected"); 
    if ((paramInt1 & 0x8) != 0)
      stringBuffer.append("|static"); 
    if ((paramInt1 & 0x10) != 0)
      stringBuffer.append("|final"); 
    if ((paramInt1 & 0x20) != 0) {
      String str;
      if (paramInt3 == 1) {
        str = "|super";
      } else {
        str = "|synchronized";
      } 
      stringBuffer.append(str);
    } 
    if ((paramInt1 & 0x40) != 0) {
      String str;
      if (paramInt3 == 3) {
        str = "|bridge";
      } else {
        str = "|volatile";
      } 
      stringBuffer.append(str);
    } 
    if ((paramInt1 & 0x80) != 0) {
      String str;
      if (paramInt3 == 3) {
        str = "|varargs";
      } else {
        str = "|transient";
      } 
      stringBuffer.append(str);
    } 
    if ((paramInt1 & 0x100) != 0)
      stringBuffer.append("|native"); 
    if ((paramInt1 & 0x200) != 0)
      stringBuffer.append("|interface"); 
    if ((paramInt1 & 0x400) != 0)
      stringBuffer.append("|abstract"); 
    if ((paramInt1 & 0x800) != 0)
      stringBuffer.append("|strictfp"); 
    if ((paramInt1 & 0x1000) != 0)
      stringBuffer.append("|synthetic"); 
    if ((paramInt1 & 0x2000) != 0)
      stringBuffer.append("|annotation"); 
    if ((paramInt1 & 0x4000) != 0)
      stringBuffer.append("|enum"); 
    if ((0x10000 & paramInt1) != 0)
      stringBuffer.append("|constructor"); 
    if ((paramInt1 & 0x20000) != 0)
      stringBuffer.append("|declared_synchronized"); 
    if (i != 0 || stringBuffer.length() == 0) {
      stringBuffer.append('|');
      stringBuffer.append(i.c(i));
    } 
    return stringBuffer.substring(1);
  }
  
  public static String b(int paramInt) { return a(paramInt, 20703, 2); }
  
  public static String c(int paramInt) { return a(paramInt, 204287, 3); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\android\cglib\dx\c\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
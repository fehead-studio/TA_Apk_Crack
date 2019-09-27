package com.baidu.mobstat;

import android.text.TextUtils;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class cr {
  public static byte[] a(int paramInt, byte[] paramArrayOfByte) {
    if (--paramInt >= 0 && cu.a.length > paramInt) {
      SecretKeySpec secretKeySpec = new SecretKeySpec(cu.a[paramInt].getBytes(), "AES");
      Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      cipher.init(1, secretKeySpec);
      return cipher.doFinal(paramArrayOfByte);
    } 
    return new byte[0];
  }
  
  public static byte[] b(int paramInt, byte[] paramArrayOfByte) {
    if (--paramInt >= 0 && cu.a.length > paramInt) {
      SecretKeySpec secretKeySpec = new SecretKeySpec(cu.a[paramInt].getBytes(), "AES");
      Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
      cipher.init(2, secretKeySpec);
      return cipher.doFinal(paramArrayOfByte);
    } 
    return new byte[0];
  }
  
  public static String c(int paramInt, byte[] paramArrayOfByte) {
    try {
      return ct.b(a(paramInt, paramArrayOfByte));
    } catch (Exception paramArrayOfByte) {
      cz.a(paramArrayOfByte);
      return "";
    } 
  }
  
  public static String d(int paramInt, byte[] paramArrayOfByte) {
    String str = c(paramInt, paramArrayOfByte);
    if (TextUtils.isEmpty(str))
      return ""; 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(str);
    stringBuilder.append("|");
    stringBuilder.append(paramInt);
    return stringBuilder.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
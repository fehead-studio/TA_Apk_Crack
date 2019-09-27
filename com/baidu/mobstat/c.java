package com.baidu.mobstat;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class c {
  public static String a(byte[] paramArrayOfByte, String paramString, boolean paramBoolean) {
    StringBuilder stringBuilder = new StringBuilder();
    int i = paramArrayOfByte.length;
    for (byte b = 0; b < i; b++) {
      String str2 = Integer.toHexString(paramArrayOfByte[b] & 0xFF);
      String str1 = str2;
      if (paramBoolean)
        str1 = str2.toUpperCase(); 
      if (str1.length() == 1)
        stringBuilder.append("0"); 
      stringBuilder.append(str1);
      stringBuilder.append(paramString);
    } 
    return stringBuilder.toString();
  }
  
  public static String a(byte[] paramArrayOfByte, boolean paramBoolean) {
    try {
      MessageDigest messageDigest = MessageDigest.getInstance("MD5");
      messageDigest.reset();
      messageDigest.update(paramArrayOfByte);
      return a(messageDigest.digest(), "", paramBoolean);
    } catch (NoSuchAlgorithmException paramArrayOfByte) {
      throw new RuntimeException(paramArrayOfByte);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
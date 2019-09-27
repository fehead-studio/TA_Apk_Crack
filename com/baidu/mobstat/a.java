package com.baidu.mobstat;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class a {
  public static byte[] a(String paramString1, String paramString2, byte[] paramArrayOfByte) {
    SecretKeySpec secretKeySpec = new SecretKeySpec(paramString2.getBytes(), "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, secretKeySpec, new IvParameterSpec(paramString1.getBytes()));
    return cipher.doFinal(paramArrayOfByte);
  }
  
  public static byte[] b(String paramString1, String paramString2, byte[] paramArrayOfByte) {
    SecretKeySpec secretKeySpec = new SecretKeySpec(paramString2.getBytes(), "AES");
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(2, secretKeySpec, new IvParameterSpec(paramString1.getBytes()));
    return cipher.doFinal(paramArrayOfByte);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
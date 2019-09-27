package com.baidu.mobstat;

import android.annotation.SuppressLint;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class cq {
  public static String a(byte[] paramArrayOfByte) {
    try {
      return b(a(), b(), paramArrayOfByte);
    } catch (Exception paramArrayOfByte) {
      cz.b(paramArrayOfByte);
      return "";
    } 
  }
  
  public static byte[] a() {
    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
    keyGenerator.init(128, new SecureRandom());
    return keyGenerator.generateKey().getEncoded();
  }
  
  @SuppressLint({"TrulyRandom"})
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3) {
    SecretKeySpec secretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    IvParameterSpec ivParameterSpec = new IvParameterSpec(paramArrayOfByte2);
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    cipher.init(1, secretKeySpec, ivParameterSpec);
    return cipher.doFinal(paramArrayOfByte3);
  }
  
  public static String b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3) {
    try {
      paramArrayOfByte3 = a(paramArrayOfByte1, paramArrayOfByte2, cv.a(paramArrayOfByte3));
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(ct.b(paramArrayOfByte3));
      stringBuilder.append("|");
      stringBuilder.append(da.a(paramArrayOfByte1));
      stringBuilder.append("|");
      stringBuilder.append(da.a(paramArrayOfByte2));
      return stringBuilder.toString();
    } catch (Exception paramArrayOfByte1) {
      cz.b(paramArrayOfByte1);
      return "";
    } 
  }
  
  public static byte[] b() {
    SecureRandom secureRandom = new SecureRandom();
    byte[] arrayOfByte = new byte[16];
    secureRandom.nextBytes(arrayOfByte);
    return arrayOfByte;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
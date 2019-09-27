package com.baidu.mobstat;

import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.interfaces.RSAKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class da {
  public static String a(byte[] paramArrayOfByte) {
    try {
      return ct.b(a(false, cu.a(), paramArrayOfByte));
    } catch (Exception paramArrayOfByte) {
      cz.b(paramArrayOfByte);
      return "";
    } 
  }
  
  private static RSAKey a(boolean paramBoolean, byte[] paramArrayOfByte) {
    KeyFactory keyFactory = KeyFactory.getInstance("RSA");
    return paramBoolean ? (RSAPrivateKey)keyFactory.generatePrivate(new PKCS8EncodedKeySpec(paramArrayOfByte)) : (RSAPublicKey)keyFactory.generatePublic(new X509EncodedKeySpec(paramArrayOfByte));
  }
  
  private static byte[] a(int paramInt1, Key paramKey, int paramInt2, byte[] paramArrayOfByte) {
    Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    cipher.init(paramInt1, paramKey);
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    for (paramInt1 = 0; paramInt1 < paramArrayOfByte.length; paramInt1 += paramInt2) {
      int j = paramArrayOfByte.length - paramInt1;
      int i = j;
      if (j > paramInt2)
        i = paramInt2; 
      byteArrayOutputStream.write(cipher.doFinal(paramArrayOfByte, paramInt1, i));
    } 
    return byteArrayOutputStream.toByteArray();
  }
  
  public static byte[] a(boolean paramBoolean, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2) {
    RSAKey rSAKey = a(paramBoolean, paramArrayOfByte1);
    int i = (rSAKey.getModulus().bitLength() + 1) / 8;
    return a(1, (Key)rSAKey, i - 11, paramArrayOfByte2);
  }
  
  public static byte[] b(boolean paramBoolean, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2) {
    RSAKey rSAKey = a(paramBoolean, paramArrayOfByte1);
    int i = (rSAKey.getModulus().bitLength() + 1) / 8;
    return a(2, (Key)rSAKey, i, paramArrayOfByte2);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\da.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class d {
  public static byte[] a(byte[] paramArrayOfByte) {
    try {
      return MessageDigest.getInstance("SHA-1").digest(paramArrayOfByte);
    } catch (NoSuchAlgorithmException paramArrayOfByte) {
      throw new RuntimeException(paramArrayOfByte);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
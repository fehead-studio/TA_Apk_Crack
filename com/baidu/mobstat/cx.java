package com.baidu.mobstat;

import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class cx {
  public static String a(File paramFile) {
    try {
      return cw.a(MessageDigest.getInstance("SHA-256"), paramFile);
    } catch (NoSuchAlgorithmException paramFile) {
      cz.b(paramFile);
      return "";
    } 
  }
  
  public static String a(byte[] paramArrayOfByte) {
    try {
      return cw.a(MessageDigest.getInstance("SHA-256"), paramArrayOfByte);
    } catch (Exception paramArrayOfByte) {
      cz.b(paramArrayOfByte);
      return "";
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
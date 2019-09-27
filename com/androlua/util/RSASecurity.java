package com.androlua.util;

import com.androlua.LuaApplication;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import javax.crypto.Cipher;

public class RSASecurity {
  private static String a = LuaApplication.getInstance().getLuaExtDir("PublicKey");
  
  private static String b = LuaApplication.getInstance().getLuaExtDir("PrivateKey");
  
  public static byte[] decrypt(byte[] paramArrayOfByte) {
    Key key2 = null;
    key1 = null;
    try {
      cipher = new ObjectInputStream(new FileInputStream(b));
      try {
        key1 = (Key)cipher.readObject();
        cipher.close();
        cipher = Cipher.getInstance("RSA");
        return cipher.doFinal(paramArrayOfByte);
      } catch (Exception paramArrayOfByte) {
      
      } finally {
        Cipher cipher1;
        paramArrayOfByte = null;
      } 
    } catch (Exception paramArrayOfByte) {
      key1 = key2;
    } finally {}
    throw paramArrayOfByte;
  }
  
  public static byte[] encrypt(String paramString) {
    generateKeyPair();
    Key key2 = null;
    key1 = null;
    try {
      cipher = new ObjectInputStream(new FileInputStream(a));
      try {
        key1 = (Key)cipher.readObject();
        cipher.close();
        cipher = Cipher.getInstance("RSA");
        return cipher.doFinal(paramString.getBytes());
      } catch (Exception paramString) {
      
      } finally {
        Cipher cipher1;
        paramString = null;
      } 
    } catch (Exception paramString) {
      key1 = key2;
    } finally {}
    throw paramString;
  }
  
  public static void generateKeyPair() {
    SecureRandom secureRandom = new SecureRandom();
    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
    keyPairGenerator.initialize(1024, secureRandom);
    keyPairGenerator.initialize(1024);
    KeyPair keyPair = keyPairGenerator.generateKeyPair();
    objectOutputStream1 = keyPair.getPublic();
    privateKey = keyPair.getPrivate();
    PublicKey publicKey = null;
    objectOutputStream2 = null;
    try {
      objectOutputStream = new ObjectOutputStream(new FileOutputStream(a));
    } catch (Exception null) {
      objectOutputStream1 = null;
    } finally {
      objectOutputStream1 = null;
    } 
    try {
      throw publicKey;
    } finally {
      objectOutputStream2 = null;
      publicKey = objectOutputStream1;
    } 
    keyPair.close();
    publicKey.close();
    throw objectOutputStream1;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\RSASecurity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
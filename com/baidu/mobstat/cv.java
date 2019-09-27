package com.baidu.mobstat;

import com.a.a.a.a.a.a.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

public class cv {
  public static byte[] a(byte[] paramArrayOfByte) {
    if (paramArrayOfByte == null)
      return null; 
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    try {
      GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
      gZIPOutputStream.write(paramArrayOfByte);
      gZIPOutputStream.close();
    } catch (IOException paramArrayOfByte) {
      a.a(paramArrayOfByte);
    } 
    return byteArrayOutputStream.toByteArray();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
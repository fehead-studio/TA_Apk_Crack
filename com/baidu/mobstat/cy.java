package com.baidu.mobstat;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class cy {
  public static void a(Closeable paramCloseable) {
    if (paramCloseable != null)
      try {
        paramCloseable.close();
        return;
      } catch (Throwable paramCloseable) {
        cz.b(paramCloseable);
      }  
  }
  
  public static boolean a(InputStream paramInputStream, OutputStream paramOutputStream) {
    if (paramInputStream != null && paramOutputStream != null) {
      byte[] arrayOfByte = new byte[4048];
      try {
        while (true) {
          int i = paramInputStream.read(arrayOfByte);
          if (i == -1)
            return true; 
          paramOutputStream.write(arrayOfByte, 0, i);
        } 
      } catch (IOException paramInputStream) {
        cz.b(paramInputStream);
      } 
    } 
    return false;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
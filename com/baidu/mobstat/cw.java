package com.baidu.mobstat;

import java.io.File;
import java.security.MessageDigest;

public final class cw {
  private static String a(byte[] paramArrayOfByte) {
    StringBuilder stringBuilder = new StringBuilder();
    for (byte b = 0; b < paramArrayOfByte.length; b++) {
      byte b1 = paramArrayOfByte[b] >> 4 & 0xF;
      byte b2 = paramArrayOfByte[b] & 0xF;
      if (b1 >= 10) {
        b1 = b1 + 97 - 10;
      } else {
        b1 += 48;
      } 
      stringBuilder.append((char)b1);
      if (b2 >= 10) {
        b1 = b2 + 97 - 10;
      } else {
        b1 = b2 + 48;
      } 
      stringBuilder.append((char)b1);
    } 
    return stringBuilder.toString();
  }
  
  private static String b(MessageDigest paramMessageDigest, File paramFile) { // Byte code:
    //   0: aload_1
    //   1: invokevirtual isFile : ()Z
    //   4: ifeq -> 128
    //   7: aconst_null
    //   8: astore #5
    //   10: aconst_null
    //   11: astore_3
    //   12: new java/io/FileInputStream
    //   15: dup
    //   16: aload_1
    //   17: invokespecial <init> : (Ljava/io/File;)V
    //   20: astore_1
    //   21: sipush #4048
    //   24: newarray byte
    //   26: astore_3
    //   27: aload_1
    //   28: aload_3
    //   29: invokevirtual read : ([B)I
    //   32: istore_2
    //   33: iload_2
    //   34: iconst_m1
    //   35: if_icmpne -> 49
    //   38: aload_1
    //   39: ifnull -> 102
    //   42: aload_1
    //   43: invokevirtual close : ()V
    //   46: goto -> 102
    //   49: aload_0
    //   50: aload_3
    //   51: iconst_0
    //   52: iload_2
    //   53: invokevirtual update : ([BII)V
    //   56: goto -> 27
    //   59: astore_0
    //   60: aload_1
    //   61: astore_3
    //   62: goto -> 110
    //   65: astore #4
    //   67: goto -> 79
    //   70: astore_0
    //   71: goto -> 110
    //   74: astore #4
    //   76: aload #5
    //   78: astore_1
    //   79: aload_1
    //   80: astore_3
    //   81: aload #4
    //   83: invokestatic b : (Ljava/lang/Throwable;)V
    //   86: aload_1
    //   87: ifnull -> 102
    //   90: aload_1
    //   91: invokevirtual close : ()V
    //   94: goto -> 102
    //   97: astore_1
    //   98: aload_1
    //   99: invokestatic b : (Ljava/lang/Throwable;)V
    //   102: aload_0
    //   103: invokevirtual digest : ()[B
    //   106: invokestatic a : ([B)Ljava/lang/String;
    //   109: areturn
    //   110: aload_3
    //   111: ifnull -> 126
    //   114: aload_3
    //   115: invokevirtual close : ()V
    //   118: goto -> 126
    //   121: astore_1
    //   122: aload_1
    //   123: invokestatic b : (Ljava/lang/Throwable;)V
    //   126: aload_0
    //   127: athrow
    //   128: ldc ''
    //   130: areturn
    // Exception table:
    //   from	to	target	type
    //   12	21	74	java/lang/Exception
    //   12	21	70	finally
    //   21	27	65	java/lang/Exception
    //   21	27	59	finally
    //   27	33	65	java/lang/Exception
    //   27	33	59	finally
    //   42	46	97	java/io/IOException
    //   49	56	65	java/lang/Exception
    //   49	56	59	finally
    //   81	86	70	finally
    //   90	94	97	java/io/IOException
    //   114	118	121	java/io/IOException }
  
  private static String b(MessageDigest paramMessageDigest, byte[] paramArrayOfByte) {
    paramMessageDigest.update(paramArrayOfByte);
    return a(paramMessageDigest.digest());
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
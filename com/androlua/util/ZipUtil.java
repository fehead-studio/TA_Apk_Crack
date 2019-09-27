package com.androlua.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.logging.Logger;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public class ZipUtil {
  private static final Logger a = Logger.getLogger(ZipUtil.class.getName());
  
  private static final byte[] b = new byte[4096];
  
  private static void a(File paramFile, ZipOutputStream paramZipOutputStream, String paramString) { // Byte code:
    //   0: aload_0
    //   1: invokevirtual isFile : ()Z
    //   4: istore #5
    //   6: iconst_0
    //   7: istore_3
    //   8: iload #5
    //   10: ifeq -> 214
    //   13: aconst_null
    //   14: astore #8
    //   16: aconst_null
    //   17: astore #9
    //   19: aconst_null
    //   20: astore #6
    //   22: new java/io/BufferedInputStream
    //   25: dup
    //   26: new java/io/FileInputStream
    //   29: dup
    //   30: aload_0
    //   31: invokespecial <init> : (Ljava/io/File;)V
    //   34: getstatic com/androlua/util/ZipUtil.b : [B
    //   37: arraylength
    //   38: invokespecial <init> : (Ljava/io/InputStream;I)V
    //   41: astore #7
    //   43: aload_0
    //   44: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   47: aload_2
    //   48: invokevirtual indexOf : (Ljava/lang/String;)I
    //   51: istore_3
    //   52: aload_0
    //   53: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   56: iload_3
    //   57: invokevirtual substring : (I)Ljava/lang/String;
    //   60: astore_0
    //   61: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   64: aload_0
    //   65: invokevirtual println : (Ljava/lang/String;)V
    //   68: aload_1
    //   69: new java/util/zip/ZipEntry
    //   72: dup
    //   73: aload_0
    //   74: invokespecial <init> : (Ljava/lang/String;)V
    //   77: invokevirtual putNextEntry : (Ljava/util/zip/ZipEntry;)V
    //   80: aload #7
    //   82: getstatic com/androlua/util/ZipUtil.b : [B
    //   85: iconst_0
    //   86: getstatic com/androlua/util/ZipUtil.b : [B
    //   89: arraylength
    //   90: invokevirtual read : ([BII)I
    //   93: istore_3
    //   94: iload_3
    //   95: iconst_m1
    //   96: if_icmpeq -> 111
    //   99: aload_1
    //   100: getstatic com/androlua/util/ZipUtil.b : [B
    //   103: iconst_0
    //   104: iload_3
    //   105: invokevirtual write : ([BII)V
    //   108: goto -> 80
    //   111: aload #7
    //   113: ifnull -> 260
    //   116: aload #7
    //   118: invokevirtual close : ()V
    //   121: return
    //   122: astore_0
    //   123: goto -> 194
    //   126: astore_1
    //   127: aload #7
    //   129: astore_0
    //   130: goto -> 152
    //   133: astore_1
    //   134: aload #7
    //   136: astore_0
    //   137: goto -> 172
    //   140: astore_0
    //   141: aload #6
    //   143: astore #7
    //   145: goto -> 194
    //   148: astore_1
    //   149: aload #8
    //   151: astore_0
    //   152: aload_0
    //   153: astore #6
    //   155: aload_1
    //   156: invokestatic a : (Ljava/lang/Throwable;)V
    //   159: aload_0
    //   160: ifnull -> 260
    //   163: aload_0
    //   164: invokevirtual close : ()V
    //   167: return
    //   168: astore_1
    //   169: aload #9
    //   171: astore_0
    //   172: aload_0
    //   173: astore #6
    //   175: aload_1
    //   176: invokestatic a : (Ljava/lang/Throwable;)V
    //   179: aload_0
    //   180: ifnull -> 260
    //   183: aload_0
    //   184: invokevirtual close : ()V
    //   187: return
    //   188: astore_0
    //   189: aload_0
    //   190: invokestatic a : (Ljava/lang/Throwable;)V
    //   193: return
    //   194: aload #7
    //   196: ifnull -> 212
    //   199: aload #7
    //   201: invokevirtual close : ()V
    //   204: goto -> 212
    //   207: astore_1
    //   208: aload_1
    //   209: invokestatic a : (Ljava/lang/Throwable;)V
    //   212: aload_0
    //   213: athrow
    //   214: aload_0
    //   215: invokevirtual isDirectory : ()Z
    //   218: ifeq -> 260
    //   221: aload_0
    //   222: invokevirtual listFiles : ()[Ljava/io/File;
    //   225: astore_0
    //   226: aload_0
    //   227: ifnull -> 260
    //   230: aload_0
    //   231: arraylength
    //   232: ifle -> 260
    //   235: aload_0
    //   236: arraylength
    //   237: istore #4
    //   239: iload_3
    //   240: iload #4
    //   242: if_icmpge -> 260
    //   245: aload_0
    //   246: iload_3
    //   247: aaload
    //   248: aload_1
    //   249: aload_2
    //   250: invokestatic a : (Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    //   253: iload_3
    //   254: iconst_1
    //   255: iadd
    //   256: istore_3
    //   257: goto -> 239
    //   260: return
    // Exception table:
    //   from	to	target	type
    //   22	43	168	java/io/FileNotFoundException
    //   22	43	148	java/io/IOException
    //   22	43	140	finally
    //   43	80	133	java/io/FileNotFoundException
    //   43	80	126	java/io/IOException
    //   43	80	122	finally
    //   80	94	133	java/io/FileNotFoundException
    //   80	94	126	java/io/IOException
    //   80	94	122	finally
    //   99	108	133	java/io/FileNotFoundException
    //   99	108	126	java/io/IOException
    //   99	108	122	finally
    //   116	121	188	java/io/IOException
    //   155	159	140	finally
    //   163	167	188	java/io/IOException
    //   175	179	140	finally
    //   183	187	188	java/io/IOException
    //   199	204	207	java/io/IOException }
  
  public static void append(String paramString1, String paramString2) {
    ZipFile zipFile = new ZipFile(paramString1);
    ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(paramString1));
    Enumeration enumeration = zipFile.entries();
    while (enumeration.hasMoreElements()) {
      ZipEntry zipEntry1 = (ZipEntry)enumeration.nextElement();
      PrintStream printStream1 = System.out;
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("copy: ");
      stringBuilder1.append(zipEntry1.getName());
      printStream1.println(stringBuilder1.toString());
      zipOutputStream.putNextEntry(zipEntry1);
      if (!zipEntry1.isDirectory())
        copy(zipFile.getInputStream(zipEntry1), zipOutputStream); 
      zipOutputStream.closeEntry();
    } 
    ZipEntry zipEntry = new ZipEntry(paramString2);
    PrintStream printStream = System.out;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("append: ");
    stringBuilder.append(zipEntry.getName());
    printStream.println(stringBuilder.toString());
    zipOutputStream.putNextEntry(zipEntry);
    copy(new FileInputStream(new File(paramString2)), zipOutputStream);
    zipOutputStream.closeEntry();
    zipFile.close();
    zipOutputStream.close();
  }
  
  public static void copy(InputStream paramInputStream, OutputStream paramOutputStream) {
    while (true) {
      int i = paramInputStream.read(b);
      if (i != -1) {
        paramOutputStream.write(b, 0, i);
        continue;
      } 
      break;
    } 
  }
  
  public static boolean unzip(File paramFile, String paramString) { // Byte code:
    //   0: aload_0
    //   1: invokevirtual exists : ()Z
    //   4: istore_3
    //   5: iconst_0
    //   6: istore #4
    //   8: iconst_0
    //   9: istore #5
    //   11: iload_3
    //   12: ifne -> 57
    //   15: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   18: astore_1
    //   19: new java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial <init> : ()V
    //   26: astore #6
    //   28: aload #6
    //   30: aload_0
    //   31: invokevirtual getName : ()Ljava/lang/String;
    //   34: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: pop
    //   38: aload #6
    //   40: ldc ' doesn't exist.'
    //   42: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: pop
    //   46: aload_1
    //   47: aload #6
    //   49: invokevirtual toString : ()Ljava/lang/String;
    //   52: invokevirtual info : (Ljava/lang/String;)V
    //   55: iconst_0
    //   56: ireturn
    //   57: new java/io/File
    //   60: dup
    //   61: aload_1
    //   62: invokespecial <init> : (Ljava/lang/String;)V
    //   65: astore #6
    //   67: aload #6
    //   69: invokevirtual exists : ()Z
    //   72: ifne -> 122
    //   75: aload #6
    //   77: invokevirtual mkdirs : ()Z
    //   80: ifne -> 122
    //   83: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   86: astore_0
    //   87: new java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial <init> : ()V
    //   94: astore_1
    //   95: aload_1
    //   96: ldc 'cann't create file '
    //   98: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: pop
    //   102: aload_1
    //   103: aload #6
    //   105: invokevirtual getName : ()Ljava/lang/String;
    //   108: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: pop
    //   112: aload_0
    //   113: aload_1
    //   114: invokevirtual toString : ()Ljava/lang/String;
    //   117: invokevirtual info : (Ljava/lang/String;)V
    //   120: iconst_0
    //   121: ireturn
    //   122: aconst_null
    //   123: astore #7
    //   125: aconst_null
    //   126: astore #8
    //   128: aconst_null
    //   129: astore #6
    //   131: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   134: ldc 'start unzip file ...'
    //   136: invokevirtual info : (Ljava/lang/String;)V
    //   139: new java/util/zip/ZipInputStream
    //   142: dup
    //   143: new java/io/BufferedInputStream
    //   146: dup
    //   147: new java/util/zip/CheckedInputStream
    //   150: dup
    //   151: new java/io/FileInputStream
    //   154: dup
    //   155: aload_0
    //   156: invokespecial <init> : (Ljava/io/File;)V
    //   159: new java/util/zip/Adler32
    //   162: dup
    //   163: invokespecial <init> : ()V
    //   166: invokespecial <init> : (Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    //   169: invokespecial <init> : (Ljava/io/InputStream;)V
    //   172: invokespecial <init> : (Ljava/io/InputStream;)V
    //   175: astore_0
    //   176: aload_0
    //   177: invokevirtual getNextEntry : ()Ljava/util/zip/ZipEntry;
    //   180: astore #6
    //   182: aload #6
    //   184: ifnull -> 381
    //   187: aload #6
    //   189: invokevirtual getName : ()Ljava/lang/String;
    //   192: astore #6
    //   194: new java/lang/StringBuilder
    //   197: dup
    //   198: invokespecial <init> : ()V
    //   201: astore #7
    //   203: aload #7
    //   205: aload_1
    //   206: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: pop
    //   210: aload #7
    //   212: ldc '/'
    //   214: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: pop
    //   218: aload #7
    //   220: aload #6
    //   222: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: pop
    //   226: aload #7
    //   228: invokevirtual toString : ()Ljava/lang/String;
    //   231: astore #7
    //   233: getstatic java/lang/System.out : Ljava/io/PrintStream;
    //   236: aload #7
    //   238: invokevirtual println : (Ljava/lang/String;)V
    //   241: new java/io/File
    //   244: dup
    //   245: aload #7
    //   247: invokespecial <init> : (Ljava/lang/String;)V
    //   250: invokevirtual getParentFile : ()Ljava/io/File;
    //   253: astore #6
    //   255: aload #6
    //   257: invokevirtual exists : ()Z
    //   260: ifne -> 315
    //   263: aload #6
    //   265: invokevirtual mkdirs : ()Z
    //   268: ifne -> 315
    //   271: new java/lang/StringBuilder
    //   274: dup
    //   275: invokespecial <init> : ()V
    //   278: astore_1
    //   279: aload_1
    //   280: ldc 'create file '
    //   282: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: pop
    //   286: aload_1
    //   287: aload #6
    //   289: invokevirtual getName : ()Ljava/lang/String;
    //   292: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: pop
    //   296: aload_1
    //   297: ldc ' fail'
    //   299: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: pop
    //   303: new java/lang/RuntimeException
    //   306: dup
    //   307: aload_1
    //   308: invokevirtual toString : ()Ljava/lang/String;
    //   311: invokespecial <init> : (Ljava/lang/String;)V
    //   314: athrow
    //   315: new java/io/BufferedOutputStream
    //   318: dup
    //   319: new java/io/FileOutputStream
    //   322: dup
    //   323: aload #7
    //   325: invokespecial <init> : (Ljava/lang/String;)V
    //   328: getstatic com/androlua/util/ZipUtil.b : [B
    //   331: arraylength
    //   332: invokespecial <init> : (Ljava/io/OutputStream;I)V
    //   335: astore #6
    //   337: aload_0
    //   338: getstatic com/androlua/util/ZipUtil.b : [B
    //   341: iconst_0
    //   342: getstatic com/androlua/util/ZipUtil.b : [B
    //   345: arraylength
    //   346: invokevirtual read : ([BII)I
    //   349: istore_2
    //   350: iload_2
    //   351: iconst_m1
    //   352: if_icmpeq -> 368
    //   355: aload #6
    //   357: getstatic com/androlua/util/ZipUtil.b : [B
    //   360: iconst_0
    //   361: iload_2
    //   362: invokevirtual write : ([BII)V
    //   365: goto -> 337
    //   368: aload #6
    //   370: invokevirtual flush : ()V
    //   373: aload #6
    //   375: invokevirtual close : ()V
    //   378: goto -> 176
    //   381: iconst_1
    //   382: istore #4
    //   384: iconst_1
    //   385: istore #5
    //   387: iload #4
    //   389: istore_3
    //   390: aload_0
    //   391: ifnull -> 493
    //   394: iload #5
    //   396: istore_3
    //   397: aload_0
    //   398: invokevirtual close : ()V
    //   401: iload #4
    //   403: istore_3
    //   404: goto -> 493
    //   407: astore_0
    //   408: aload_0
    //   409: invokestatic a : (Ljava/lang/Throwable;)V
    //   412: goto -> 493
    //   415: astore_1
    //   416: goto -> 521
    //   419: astore_1
    //   420: goto -> 438
    //   423: astore_1
    //   424: goto -> 469
    //   427: astore_1
    //   428: aload #6
    //   430: astore_0
    //   431: goto -> 521
    //   434: astore_1
    //   435: aload #7
    //   437: astore_0
    //   438: aload_0
    //   439: astore #6
    //   441: aload_1
    //   442: invokestatic a : (Ljava/lang/Throwable;)V
    //   445: iload #4
    //   447: istore_3
    //   448: aload_0
    //   449: ifnull -> 493
    //   452: iload #5
    //   454: istore_3
    //   455: aload_0
    //   456: invokevirtual close : ()V
    //   459: iload #4
    //   461: istore_3
    //   462: goto -> 493
    //   465: astore_1
    //   466: aload #8
    //   468: astore_0
    //   469: aload_0
    //   470: astore #6
    //   472: aload_1
    //   473: invokestatic a : (Ljava/lang/Throwable;)V
    //   476: iload #4
    //   478: istore_3
    //   479: aload_0
    //   480: ifnull -> 493
    //   483: iload #5
    //   485: istore_3
    //   486: aload_0
    //   487: invokevirtual close : ()V
    //   490: iload #4
    //   492: istore_3
    //   493: iload_3
    //   494: ifeq -> 511
    //   497: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   500: astore_0
    //   501: ldc 'done.'
    //   503: astore_1
    //   504: aload_0
    //   505: aload_1
    //   506: invokevirtual info : (Ljava/lang/String;)V
    //   509: iload_3
    //   510: ireturn
    //   511: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   514: astore_0
    //   515: ldc 'fail.'
    //   517: astore_1
    //   518: goto -> 504
    //   521: aload_0
    //   522: ifnull -> 537
    //   525: aload_0
    //   526: invokevirtual close : ()V
    //   529: goto -> 537
    //   532: astore_0
    //   533: aload_0
    //   534: invokestatic a : (Ljava/lang/Throwable;)V
    //   537: aload_1
    //   538: athrow
    // Exception table:
    //   from	to	target	type
    //   139	176	465	java/io/FileNotFoundException
    //   139	176	434	java/io/IOException
    //   139	176	427	finally
    //   176	182	423	java/io/FileNotFoundException
    //   176	182	419	java/io/IOException
    //   176	182	415	finally
    //   187	315	423	java/io/FileNotFoundException
    //   187	315	419	java/io/IOException
    //   187	315	415	finally
    //   315	337	423	java/io/FileNotFoundException
    //   315	337	419	java/io/IOException
    //   315	337	415	finally
    //   337	350	423	java/io/FileNotFoundException
    //   337	350	419	java/io/IOException
    //   337	350	415	finally
    //   355	365	423	java/io/FileNotFoundException
    //   355	365	419	java/io/IOException
    //   355	365	415	finally
    //   368	378	423	java/io/FileNotFoundException
    //   368	378	419	java/io/IOException
    //   368	378	415	finally
    //   397	401	407	java/io/IOException
    //   441	445	427	finally
    //   455	459	407	java/io/IOException
    //   472	476	427	finally
    //   486	490	407	java/io/IOException
    //   525	529	532	java/io/IOException }
  
  public static boolean unzip(String paramString1, String paramString2) { return unzip(new File(paramString1), paramString2); }
  
  public static boolean zip(String paramString1, String paramString2) { // Byte code:
    //   0: new java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial <init> : (Ljava/lang/String;)V
    //   8: astore #6
    //   10: aload #6
    //   12: invokevirtual exists : ()Z
    //   15: istore_2
    //   16: iconst_0
    //   17: istore_3
    //   18: iconst_0
    //   19: istore #4
    //   21: iload_2
    //   22: ifne -> 69
    //   25: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   28: astore #5
    //   30: new java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial <init> : ()V
    //   37: astore #6
    //   39: aload #6
    //   41: aload_0
    //   42: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: pop
    //   46: ldc ' doesn't exist.'
    //   48: astore_1
    //   49: aload #6
    //   51: astore_0
    //   52: aload_0
    //   53: aload_1
    //   54: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: pop
    //   58: aload #5
    //   60: aload_0
    //   61: invokevirtual toString : ()Ljava/lang/String;
    //   64: invokevirtual info : (Ljava/lang/String;)V
    //   67: iconst_0
    //   68: ireturn
    //   69: aload #6
    //   71: invokevirtual isDirectory : ()Z
    //   74: ifne -> 108
    //   77: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   80: astore #5
    //   82: new java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial <init> : ()V
    //   89: astore_1
    //   90: aload_1
    //   91: aload_0
    //   92: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: pop
    //   96: ldc ' is not a directory.'
    //   98: astore #6
    //   100: aload_1
    //   101: astore_0
    //   102: aload #6
    //   104: astore_1
    //   105: goto -> 52
    //   108: new java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial <init> : ()V
    //   115: astore_0
    //   116: aload_0
    //   117: aload_1
    //   118: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: pop
    //   122: aload_0
    //   123: ldc '/'
    //   125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_0
    //   130: aload #6
    //   132: invokevirtual getName : ()Ljava/lang/String;
    //   135: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: pop
    //   139: aload_0
    //   140: ldc '.zip'
    //   142: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: new java/io/File
    //   149: dup
    //   150: aload_0
    //   151: invokevirtual toString : ()Ljava/lang/String;
    //   154: invokespecial <init> : (Ljava/lang/String;)V
    //   157: astore_1
    //   158: aload_1
    //   159: invokevirtual exists : ()Z
    //   162: ifeq -> 193
    //   165: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   168: astore #5
    //   170: new java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial <init> : ()V
    //   177: astore_0
    //   178: aload_0
    //   179: aload_1
    //   180: invokevirtual getName : ()Ljava/lang/String;
    //   183: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: pop
    //   187: ldc ' is already exist.'
    //   189: astore_1
    //   190: goto -> 52
    //   193: aload_1
    //   194: invokevirtual getParentFile : ()Ljava/io/File;
    //   197: invokevirtual exists : ()Z
    //   200: ifne -> 241
    //   203: aload_1
    //   204: invokevirtual getParentFile : ()Ljava/io/File;
    //   207: invokevirtual mkdirs : ()Z
    //   210: ifne -> 241
    //   213: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   216: astore #5
    //   218: new java/lang/StringBuilder
    //   221: dup
    //   222: invokespecial <init> : ()V
    //   225: astore_0
    //   226: aload_0
    //   227: ldc 'cann't create file '
    //   229: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: pop
    //   233: aload_1
    //   234: invokevirtual getName : ()Ljava/lang/String;
    //   237: astore_1
    //   238: goto -> 52
    //   241: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   244: ldc 'creating zip file...'
    //   246: invokevirtual info : (Ljava/lang/String;)V
    //   249: aconst_null
    //   250: astore #5
    //   252: aconst_null
    //   253: astore_0
    //   254: new java/util/zip/ZipOutputStream
    //   257: dup
    //   258: new java/io/BufferedOutputStream
    //   261: dup
    //   262: new java/util/zip/CheckedOutputStream
    //   265: dup
    //   266: new java/io/FileOutputStream
    //   269: dup
    //   270: aload_1
    //   271: invokespecial <init> : (Ljava/io/File;)V
    //   274: new java/util/zip/Adler32
    //   277: dup
    //   278: invokespecial <init> : ()V
    //   281: invokespecial <init> : (Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V
    //   284: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   287: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   290: astore_1
    //   291: aload_1
    //   292: bipush #8
    //   294: invokevirtual setMethod : (I)V
    //   297: aload #6
    //   299: aload_1
    //   300: aload #6
    //   302: invokevirtual getName : ()Ljava/lang/String;
    //   305: invokestatic a : (Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    //   308: iconst_1
    //   309: istore_3
    //   310: iconst_1
    //   311: istore #4
    //   313: iload_3
    //   314: istore_2
    //   315: aload_1
    //   316: ifnull -> 411
    //   319: aload_1
    //   320: invokevirtual closeEntry : ()V
    //   323: goto -> 331
    //   326: astore_0
    //   327: aload_0
    //   328: invokestatic a : (Ljava/lang/Throwable;)V
    //   331: iload #4
    //   333: istore_2
    //   334: aload_1
    //   335: invokevirtual close : ()V
    //   338: iload_3
    //   339: istore_2
    //   340: goto -> 411
    //   343: astore_0
    //   344: aload_0
    //   345: invokestatic a : (Ljava/lang/Throwable;)V
    //   348: goto -> 411
    //   351: astore #5
    //   353: aload_1
    //   354: astore_0
    //   355: aload #5
    //   357: astore_1
    //   358: goto -> 439
    //   361: astore #5
    //   363: goto -> 377
    //   366: astore_1
    //   367: goto -> 439
    //   370: astore_0
    //   371: aload #5
    //   373: astore_1
    //   374: aload_0
    //   375: astore #5
    //   377: aload_1
    //   378: astore_0
    //   379: aload #5
    //   381: invokestatic a : (Ljava/lang/Throwable;)V
    //   384: iload_3
    //   385: istore_2
    //   386: aload_1
    //   387: ifnull -> 411
    //   390: aload_1
    //   391: invokevirtual closeEntry : ()V
    //   394: goto -> 402
    //   397: astore_0
    //   398: aload_0
    //   399: invokestatic a : (Ljava/lang/Throwable;)V
    //   402: iload #4
    //   404: istore_2
    //   405: aload_1
    //   406: invokevirtual close : ()V
    //   409: iload_3
    //   410: istore_2
    //   411: iload_2
    //   412: ifeq -> 429
    //   415: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   418: astore_0
    //   419: ldc 'done.'
    //   421: astore_1
    //   422: aload_0
    //   423: aload_1
    //   424: invokevirtual info : (Ljava/lang/String;)V
    //   427: iload_2
    //   428: ireturn
    //   429: getstatic com/androlua/util/ZipUtil.a : Ljava/util/logging/Logger;
    //   432: astore_0
    //   433: ldc 'fail.'
    //   435: astore_1
    //   436: goto -> 422
    //   439: aload_0
    //   440: ifnull -> 469
    //   443: aload_0
    //   444: invokevirtual closeEntry : ()V
    //   447: goto -> 457
    //   450: astore #5
    //   452: aload #5
    //   454: invokestatic a : (Ljava/lang/Throwable;)V
    //   457: aload_0
    //   458: invokevirtual close : ()V
    //   461: goto -> 469
    //   464: astore_0
    //   465: aload_0
    //   466: invokestatic a : (Ljava/lang/Throwable;)V
    //   469: aload_1
    //   470: athrow
    // Exception table:
    //   from	to	target	type
    //   254	291	370	java/io/FileNotFoundException
    //   254	291	366	finally
    //   291	308	361	java/io/FileNotFoundException
    //   291	308	351	finally
    //   319	323	326	java/io/IOException
    //   334	338	343	java/io/IOException
    //   379	384	366	finally
    //   390	394	397	java/io/IOException
    //   405	409	343	java/io/IOException
    //   443	447	450	java/io/IOException
    //   457	461	464	java/io/IOException }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\ZipUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
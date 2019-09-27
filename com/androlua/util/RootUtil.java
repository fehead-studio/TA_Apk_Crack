package com.androlua.util;

import android.util.Log;
import com.a.a.a.a.a.a.a;
import java.io.IOException;

public class RootUtil {
  private static boolean a;
  
  static  {
  
  }
  
  public static String execRootCmd(String paramString) { // Byte code:
    //   0: ldc ''
    //   2: astore_1
    //   3: aconst_null
    //   4: astore #4
    //   6: invokestatic getRuntime : ()Ljava/lang/Runtime;
    //   9: ldc 'su'
    //   11: invokevirtual exec : (Ljava/lang/String;)Ljava/lang/Process;
    //   14: astore #5
    //   16: new java/io/DataOutputStream
    //   19: dup
    //   20: aload #5
    //   22: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   25: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   28: astore_3
    //   29: new java/io/DataInputStream
    //   32: dup
    //   33: aload #5
    //   35: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   38: invokespecial <init> : (Ljava/io/InputStream;)V
    //   41: astore #4
    //   43: aload_1
    //   44: astore_2
    //   45: ldc 'linin.root'
    //   47: aload_0
    //   48: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   51: pop
    //   52: aload_1
    //   53: astore_2
    //   54: new java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial <init> : ()V
    //   61: astore #6
    //   63: aload_1
    //   64: astore_2
    //   65: aload #6
    //   67: aload_0
    //   68: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload_1
    //   73: astore_2
    //   74: aload #6
    //   76: ldc '\\n'
    //   78: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: aload_1
    //   83: astore_2
    //   84: aload_3
    //   85: aload #6
    //   87: invokevirtual toString : ()Ljava/lang/String;
    //   90: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   93: aload_1
    //   94: astore_2
    //   95: aload_3
    //   96: invokevirtual flush : ()V
    //   99: aload_1
    //   100: astore_2
    //   101: aload_3
    //   102: ldc 'exit\\n'
    //   104: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   107: aload_1
    //   108: astore_2
    //   109: aload_3
    //   110: invokevirtual flush : ()V
    //   113: aload_1
    //   114: astore_0
    //   115: aload_0
    //   116: astore_2
    //   117: aload #4
    //   119: invokevirtual readLine : ()Ljava/lang/String;
    //   122: astore_1
    //   123: aload_1
    //   124: ifnull -> 177
    //   127: aload_0
    //   128: astore_2
    //   129: new java/lang/StringBuilder
    //   132: dup
    //   133: invokespecial <init> : ()V
    //   136: astore #6
    //   138: aload_0
    //   139: astore_2
    //   140: aload #6
    //   142: aload_0
    //   143: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: pop
    //   147: aload_0
    //   148: astore_2
    //   149: aload #6
    //   151: aload_1
    //   152: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: pop
    //   156: aload_0
    //   157: astore_2
    //   158: aload #6
    //   160: ldc '\\n'
    //   162: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: pop
    //   166: aload_0
    //   167: astore_2
    //   168: aload #6
    //   170: invokevirtual toString : ()Ljava/lang/String;
    //   173: astore_0
    //   174: goto -> 115
    //   177: aload_0
    //   178: astore_2
    //   179: aload #5
    //   181: invokevirtual waitFor : ()I
    //   184: pop
    //   185: aload_3
    //   186: ifnull -> 201
    //   189: aload_3
    //   190: invokevirtual close : ()V
    //   193: goto -> 201
    //   196: astore_1
    //   197: aload_1
    //   198: invokestatic a : (Ljava/lang/Throwable;)V
    //   201: aload_0
    //   202: astore_2
    //   203: aload #4
    //   205: ifnull -> 308
    //   208: aload_0
    //   209: astore_2
    //   210: aload #4
    //   212: invokevirtual close : ()V
    //   215: aload_0
    //   216: areturn
    //   217: astore_0
    //   218: aload_0
    //   219: invokestatic a : (Ljava/lang/Throwable;)V
    //   222: aload_2
    //   223: areturn
    //   224: astore_1
    //   225: aload_3
    //   226: astore_2
    //   227: aload #4
    //   229: astore_0
    //   230: goto -> 313
    //   233: astore #5
    //   235: aload_2
    //   236: astore_1
    //   237: aload #4
    //   239: astore_0
    //   240: aload #5
    //   242: astore_2
    //   243: goto -> 257
    //   246: astore_1
    //   247: aconst_null
    //   248: astore_0
    //   249: aload_3
    //   250: astore_2
    //   251: goto -> 313
    //   254: astore_2
    //   255: aconst_null
    //   256: astore_0
    //   257: goto -> 274
    //   260: astore_1
    //   261: aconst_null
    //   262: astore_2
    //   263: aload_2
    //   264: astore_0
    //   265: goto -> 313
    //   268: astore_2
    //   269: aconst_null
    //   270: astore_0
    //   271: aload #4
    //   273: astore_3
    //   274: aload_2
    //   275: invokestatic a : (Ljava/lang/Throwable;)V
    //   278: aload_3
    //   279: ifnull -> 294
    //   282: aload_3
    //   283: invokevirtual close : ()V
    //   286: goto -> 294
    //   289: astore_2
    //   290: aload_2
    //   291: invokestatic a : (Ljava/lang/Throwable;)V
    //   294: aload_1
    //   295: astore_2
    //   296: aload_0
    //   297: ifnull -> 308
    //   300: aload_1
    //   301: astore_2
    //   302: aload_0
    //   303: invokevirtual close : ()V
    //   306: aload_1
    //   307: astore_2
    //   308: aload_2
    //   309: areturn
    //   310: astore_1
    //   311: aload_3
    //   312: astore_2
    //   313: aload_2
    //   314: ifnull -> 329
    //   317: aload_2
    //   318: invokevirtual close : ()V
    //   321: goto -> 329
    //   324: astore_2
    //   325: aload_2
    //   326: invokestatic a : (Ljava/lang/Throwable;)V
    //   329: aload_0
    //   330: ifnull -> 345
    //   333: aload_0
    //   334: invokevirtual close : ()V
    //   337: goto -> 345
    //   340: astore_0
    //   341: aload_0
    //   342: invokestatic a : (Ljava/lang/Throwable;)V
    //   345: aload_1
    //   346: athrow
    // Exception table:
    //   from	to	target	type
    //   6	29	268	java/lang/Exception
    //   6	29	260	finally
    //   29	43	254	java/lang/Exception
    //   29	43	246	finally
    //   45	52	233	java/lang/Exception
    //   45	52	224	finally
    //   54	63	233	java/lang/Exception
    //   54	63	224	finally
    //   65	72	233	java/lang/Exception
    //   65	72	224	finally
    //   74	82	233	java/lang/Exception
    //   74	82	224	finally
    //   84	93	233	java/lang/Exception
    //   84	93	224	finally
    //   95	99	233	java/lang/Exception
    //   95	99	224	finally
    //   101	107	233	java/lang/Exception
    //   101	107	224	finally
    //   109	113	233	java/lang/Exception
    //   109	113	224	finally
    //   117	123	233	java/lang/Exception
    //   117	123	224	finally
    //   129	138	233	java/lang/Exception
    //   129	138	224	finally
    //   140	147	233	java/lang/Exception
    //   140	147	224	finally
    //   149	156	233	java/lang/Exception
    //   149	156	224	finally
    //   158	166	233	java/lang/Exception
    //   158	166	224	finally
    //   168	174	233	java/lang/Exception
    //   168	174	224	finally
    //   179	185	233	java/lang/Exception
    //   179	185	224	finally
    //   189	193	196	java/io/IOException
    //   210	215	217	java/io/IOException
    //   274	278	310	finally
    //   282	286	289	java/io/IOException
    //   302	306	217	java/io/IOException
    //   317	321	324	java/io/IOException
    //   333	337	340	java/io/IOException }
  
  public static int execRootCmdSilent(String paramString) { // Byte code:
    //   0: aconst_null
    //   1: astore #5
    //   3: aconst_null
    //   4: astore #4
    //   6: aload #4
    //   8: astore_3
    //   9: invokestatic getRuntime : ()Ljava/lang/Runtime;
    //   12: ldc 'su'
    //   14: invokevirtual exec : (Ljava/lang/String;)Ljava/lang/Process;
    //   17: astore #6
    //   19: aload #4
    //   21: astore_3
    //   22: new java/io/DataOutputStream
    //   25: dup
    //   26: aload #6
    //   28: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   31: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   34: astore #4
    //   36: ldc 'linin.root'
    //   38: aload_0
    //   39: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   42: pop
    //   43: new java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial <init> : ()V
    //   50: astore_3
    //   51: aload_3
    //   52: aload_0
    //   53: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: pop
    //   57: aload_3
    //   58: ldc '\\n'
    //   60: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: pop
    //   64: aload #4
    //   66: aload_3
    //   67: invokevirtual toString : ()Ljava/lang/String;
    //   70: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   73: aload #4
    //   75: invokevirtual flush : ()V
    //   78: aload #4
    //   80: ldc 'exit\\n'
    //   82: invokevirtual writeBytes : (Ljava/lang/String;)V
    //   85: aload #4
    //   87: invokevirtual flush : ()V
    //   90: aload #6
    //   92: invokevirtual waitFor : ()I
    //   95: pop
    //   96: aload #6
    //   98: invokevirtual exitValue : ()I
    //   101: istore_2
    //   102: iload_2
    //   103: istore_1
    //   104: aload #4
    //   106: ifnull -> 174
    //   109: aload #4
    //   111: invokevirtual close : ()V
    //   114: iload_2
    //   115: ireturn
    //   116: astore_0
    //   117: aload_0
    //   118: invokestatic a : (Ljava/lang/Throwable;)V
    //   121: iload_2
    //   122: ireturn
    //   123: astore_0
    //   124: goto -> 176
    //   127: astore_3
    //   128: aload #4
    //   130: astore_0
    //   131: aload_3
    //   132: astore #4
    //   134: goto -> 149
    //   137: astore_0
    //   138: aload_3
    //   139: astore #4
    //   141: goto -> 176
    //   144: astore #4
    //   146: aload #5
    //   148: astore_0
    //   149: aload_0
    //   150: astore_3
    //   151: aload #4
    //   153: invokestatic a : (Ljava/lang/Throwable;)V
    //   156: aload_0
    //   157: ifnull -> 172
    //   160: aload_0
    //   161: invokevirtual close : ()V
    //   164: goto -> 172
    //   167: astore_0
    //   168: aload_0
    //   169: invokestatic a : (Ljava/lang/Throwable;)V
    //   172: iconst_m1
    //   173: istore_1
    //   174: iload_1
    //   175: ireturn
    //   176: aload #4
    //   178: ifnull -> 194
    //   181: aload #4
    //   183: invokevirtual close : ()V
    //   186: goto -> 194
    //   189: astore_3
    //   190: aload_3
    //   191: invokestatic a : (Ljava/lang/Throwable;)V
    //   194: aload_0
    //   195: athrow
    // Exception table:
    //   from	to	target	type
    //   9	19	144	java/lang/Exception
    //   9	19	137	finally
    //   22	36	144	java/lang/Exception
    //   22	36	137	finally
    //   36	102	127	java/lang/Exception
    //   36	102	123	finally
    //   109	114	116	java/io/IOException
    //   151	156	137	finally
    //   160	164	167	java/io/IOException
    //   181	186	189	java/io/IOException }
  
  public static boolean haveRoot() {
    if (!a) {
      if (execRootCmdSilent("echo test") != -1) {
        Log.i("linin.root", "have root!");
        a = true;
      } else {
        String str = "not root!";
        Log.i("linin.root", str);
      } 
    } else {
      String str = "mHaveRoot = true, have root!";
      Log.i("linin.root", str);
    } 
    return a;
  }
  
  public static boolean root() {
    try {
      Runtime.getRuntime().exec(new String[] { "/system/bin/su", "-c", "chmod 777 /dev/graphics/fb0" });
      Log.i("linin.root", "root success!");
      return true;
    } catch (IOException iOException) {
      a.a(iOException);
      Log.i("linin.root", "root fail!");
      return false;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlu\\util\RootUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
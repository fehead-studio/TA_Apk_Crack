package com.baidu.mobstat;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.zip.GZIPOutputStream;

public class al {
  private static String a;
  
  private static al b;
  
  private Handler c;
  
  static  {
    String str;
    if (Build.VERSION.SDK_INT < 9) {
      str = "http://openrcv.baidu.com/1010/bplus.gif";
    } else {
      str = "https://openrcv.baidu.com/1010/bplus.gif";
    } 
    a = str;
  }
  
  private al() {
    HandlerThread handlerThread = new HandlerThread("LogSender");
    handlerThread.start();
    this.c = new Handler(handlerThread.getLooper());
  }
  
  public static al a() { // Byte code:
    //   0: getstatic com/baidu/mobstat/al.b : Lcom/baidu/mobstat/al;
    //   3: ifnonnull -> 37
    //   6: ldc com/baidu/mobstat/al
    //   8: monitorenter
    //   9: getstatic com/baidu/mobstat/al.b : Lcom/baidu/mobstat/al;
    //   12: ifnonnull -> 25
    //   15: new com/baidu/mobstat/al
    //   18: dup
    //   19: invokespecial <init> : ()V
    //   22: putstatic com/baidu/mobstat/al.b : Lcom/baidu/mobstat/al;
    //   25: ldc com/baidu/mobstat/al
    //   27: monitorexit
    //   28: goto -> 37
    //   31: astore_0
    //   32: ldc com/baidu/mobstat/al
    //   34: monitorexit
    //   35: aload_0
    //   36: athrow
    //   37: getstatic com/baidu/mobstat/al.b : Lcom/baidu/mobstat/al;
    //   40: areturn
    // Exception table:
    //   from	to	target	type
    //   9	25	31	finally
    //   25	28	31	finally
    //   32	35	31	finally }
  
  private String a(Context paramContext, String paramString1, String paramString2) {
    boolean bool = paramString1.startsWith("https:") ^ true;
    HttpURLConnection httpURLConnection = cs.d(paramContext, paramString1);
    httpURLConnection.setDoOutput(true);
    httpURLConnection.setInstanceFollowRedirects(false);
    httpURLConnection.setUseCaches(false);
    httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
    httpURLConnection.connect();
    try {
      byte[] arrayOfByte2;
      byte[] arrayOfByte1;
      OutputStream outputStream = httpURLConnection.getOutputStream();
      GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
      gZIPOutputStream.write(new byte[] { 72, 77, 48, 49 });
      gZIPOutputStream.write(new byte[] { 0, 0, 0, 1 });
      gZIPOutputStream.write(new byte[] { 0, 0, 3, -14 });
      gZIPOutputStream.write(new byte[] { 0, 0, 0, 0, 0, 0, 0, 0 });
      gZIPOutputStream.write(new byte[] { 0, 2 });
      if (bool) {
        arrayOfByte1 = new byte[2];
        arrayOfByte1[0] = 0;
        arrayOfByte1[1] = 1;
        arrayOfByte1;
      } else {
        arrayOfByte1 = new byte[2];
        arrayOfByte1[0] = 0;
        arrayOfByte1[1] = 0;
        arrayOfByte1;
      } 
      gZIPOutputStream.write(arrayOfByte1);
      gZIPOutputStream.write(new byte[] { 72, 77, 48, 49 });
      if (bool) {
        arrayOfByte1 = cq.a();
        byte[] arrayOfByte = da.a(false, cu.a(), arrayOfByte1);
        gZIPOutputStream.write(a(arrayOfByte.length, 4));
        gZIPOutputStream.write(arrayOfByte);
        arrayOfByte2 = paramString2.getBytes("utf-8");
        arrayOfByte1 = cq.a(arrayOfByte1, new byte[] { 
              1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
              1, 1, 1, 1, 1, 1 }, arrayOfByte2);
        gZIPOutputStream.write(a(arrayOfByte1.length, 2));
      } else {
        arrayOfByte1 = arrayOfByte2.getBytes("utf-8");
      } 
      gZIPOutputStream.write(arrayOfByte1);
      gZIPOutputStream.close();
      outputStream.close();
      int i = httpURLConnection.getResponseCode();
      int j = httpURLConnection.getContentLength();
      StringBuilder stringBuilder1 = new StringBuilder();
      stringBuilder1.append("code: ");
      stringBuilder1.append(i);
      stringBuilder1.append("; len: ");
      stringBuilder1.append(j);
      bd.c(stringBuilder1.toString());
      if (i != 200 || j != 0) {
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append("Response code = ");
        stringBuilder1.append(httpURLConnection.getResponseCode());
        throw new IOException(stringBuilder1.toString());
      } 
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
      StringBuilder stringBuilder2 = new StringBuilder();
      while (true) {
        String str = bufferedReader.readLine();
        if (str == null) {
          String str1 = stringBuilder2.toString();
          httpURLConnection.disconnect();
          return str1;
        } 
        stringBuilder2.append(str);
      } 
    } catch (Exception paramContext) {
      bd.b(paramContext);
      httpURLConnection.disconnect();
      return "";
    } finally {}
    httpURLConnection.disconnect();
    throw paramContext;
  }
  
  private void a(Context paramContext) {
    if (!"mounted".equals(cs.a()))
      return; 
    File file = new File(Environment.getExternalStorageDirectory(), "backups/system");
    if (!file.exists())
      return; 
    File[] arrayOfFile = file.listFiles();
    if (arrayOfFile != null) {
      if (arrayOfFile.length == 0)
        return; 
      try {
        Arrays.sort(arrayOfFile, new an(this));
      } catch (Exception exception) {
        bd.b(exception);
      } 
      int i = arrayOfFile.length;
      byte b2 = 0;
      byte b1 = 0;
      while (b2 < i) {
        File file1 = arrayOfFile[b2];
        if (file1.isFile()) {
          String str = file1.getName();
          if (!TextUtils.isEmpty(str) && str.startsWith("__send_log_data_")) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("backups/system");
            stringBuilder.append(File.separator);
            stringBuilder.append(str);
            str = stringBuilder.toString();
            if (b(paramContext, cs.b(str))) {
              cs.c(str);
              b1 = 0;
            } else {
              byte b3 = b1 + true;
              b1 = b3;
              if (b3 >= 5)
                return; 
            } 
          } 
        } 
        b2++;
      } 
    } 
  }
  
  private void a(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("backups/system");
    stringBuilder.append(File.separator);
    stringBuilder.append("__send_log_data_");
    stringBuilder.append(System.currentTimeMillis());
    cs.a(stringBuilder.toString(), paramString, false);
  }
  
  private static byte[] a(long paramLong, int paramInt) {
    byte[] arrayOfByte = new byte[paramInt];
    for (int i = 0; i < paramInt; i++) {
      arrayOfByte[paramInt - i - 1] = (byte)(int)(paramLong & 0xFFL);
      paramLong >>= 8;
    } 
    return arrayOfByte;
  }
  
  private boolean b(Context paramContext, String paramString) {
    if (paramContext != null) {
      if (TextUtils.isEmpty(paramString))
        return false; 
      try {
        a(paramContext, a, paramString);
        return true;
      } catch (Exception paramContext) {
        bd.c(paramContext);
      } 
    } 
    return false;
  }
  
  public void a(Context paramContext, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("data = ");
    stringBuilder.append(paramString);
    bd.a(stringBuilder.toString());
    if (paramString != null) {
      if ("".equals(paramString))
        return; 
      this.c.post(new am(this, paramString, paramContext));
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
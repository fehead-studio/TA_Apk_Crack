package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.util.Timer;
import java.util.zip.GZIPOutputStream;

class by {
  private static by a = new by();
  
  private boolean b = false;
  
  private int c = 0;
  
  private int d = 1;
  
  private SendStrategyEnum e = SendStrategyEnum.APP_START;
  
  private Timer f;
  
  private Handler g;
  
  private by() {
    HandlerThread handlerThread = new HandlerThread("LogSenderThread");
    handlerThread.start();
    this.g = new Handler(handlerThread.getLooper());
  }
  
  public static by a() { return a; }
  
  private String a(Context paramContext, String paramString1, String paramString2) { return !paramString1.startsWith("https:") ? c(paramContext, paramString1, paramString2) : b(paramContext, paramString1, paramString2); }
  
  private String b(Context paramContext, String paramString1, String paramString2) {
    httpURLConnection = cs.d(paramContext, paramString1);
    httpURLConnection.setDoOutput(true);
    httpURLConnection.setInstanceFollowRedirects(false);
    httpURLConnection.setUseCaches(false);
    httpURLConnection.setRequestProperty("Content-Type", "gzip");
    httpURLConnection.connect();
    cz.a("AdUtil.httpPost connected");
    try {
      BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new GZIPOutputStream(httpURLConnection.getOutputStream())));
      bufferedWriter.write(paramString2);
      bufferedWriter.flush();
      bufferedWriter.close();
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
      StringBuilder stringBuilder = new StringBuilder();
      while (true) {
        String str = bufferedReader.readLine();
        if (str != null) {
          stringBuilder.append(str);
          continue;
        } 
        break;
      } 
      int i = httpURLConnection.getContentLength();
      if (httpURLConnection.getResponseCode() != 200 || i != 0) {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("http code = ");
        stringBuilder1.append(httpURLConnection.getResponseCode());
        stringBuilder1.append("; contentResponse = ");
        stringBuilder1.append(stringBuilder);
        throw new IOException(stringBuilder1.toString());
      } 
      return stringBuilder.toString();
    } finally {
      httpURLConnection.disconnect();
    } 
  }
  
  private boolean b(Context paramContext, String paramString) {
    boolean bool2 = this.b;
    boolean bool1 = false;
    if (bool2 && !dc.n(paramContext))
      return false; 
    try {
      a(paramContext, Config.LOG_SEND_URL, paramString);
      bool1 = true;
    } catch (Exception paramContext) {
      cz.c(paramContext);
    } 
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("send log data over. result = ");
    stringBuilder.append(bool1);
    stringBuilder.append("; data=");
    stringBuilder.append(paramString);
    cz.a(stringBuilder.toString());
    return bool1;
  }
  
  private String c(Context paramContext, String paramString1, String paramString2) {
    cz.a("httpPostEncrypt");
    httpURLConnection = cs.d(paramContext, paramString1);
    httpURLConnection.setDoOutput(true);
    httpURLConnection.setInstanceFollowRedirects(false);
    httpURLConnection.setUseCaches(false);
    httpURLConnection.setRequestProperty("Content-Type", "gzip");
    null = cq.a();
    byte[] arrayOfByte = cq.b();
    httpURLConnection.setRequestProperty("key", da.a(null));
    httpURLConnection.setRequestProperty("iv", da.a(arrayOfByte));
    null = cq.a(null, arrayOfByte, paramString2.getBytes("utf-8"));
    httpURLConnection.connect();
    cz.a("AdUtil.httpPost connected");
    try {
      GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(httpURLConnection.getOutputStream());
      gZIPOutputStream.write(null);
      gZIPOutputStream.flush();
      gZIPOutputStream.close();
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
      StringBuilder stringBuilder = new StringBuilder();
      while (true) {
        String str = bufferedReader.readLine();
        if (str != null) {
          stringBuilder.append(str);
          continue;
        } 
        break;
      } 
      int i = httpURLConnection.getContentLength();
      if (httpURLConnection.getResponseCode() != 200 || i != 0) {
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("http code = ");
        stringBuilder1.append(httpURLConnection.getResponseCode());
        stringBuilder1.append("; contentResponse = ");
        stringBuilder1.append(stringBuilder);
        throw new IOException(stringBuilder1.toString());
      } 
      return stringBuilder.toString();
    } finally {
      httpURLConnection.disconnect();
    } 
  }
  
  private void c(Context paramContext) {
    if (this.b && !dc.n(paramContext))
      return; 
    this.g.post(new cc(this, paramContext));
  }
  
  public void a(int paramInt) {
    if (paramInt >= 0 && paramInt <= 30)
      this.c = paramInt; 
  }
  
  public void a(Context paramContext) {
    Context context = paramContext;
    if (paramContext != null)
      context = paramContext.getApplicationContext(); 
    if (context == null)
      return; 
    this.g.post(new bz(this, context));
  }
  
  public void a(Context paramContext, SendStrategyEnum paramSendStrategyEnum, int paramInt, boolean paramBoolean) {
    if (paramSendStrategyEnum.equals(SendStrategyEnum.SET_TIME_INTERVAL)) {
      if (paramInt > 0 && paramInt <= 24) {
        this.d = paramInt;
        this.e = SendStrategyEnum.SET_TIME_INTERVAL;
        bj.a().a(paramContext, this.e.ordinal());
        bj.a().b(paramContext, this.d);
      } else {
        cz.c("timeInterval is invalid, new strategy does not work");
      } 
    } else {
      this.e = paramSendStrategyEnum;
      bj.a().a(paramContext, this.e.ordinal());
      if (paramSendStrategyEnum.equals(SendStrategyEnum.ONCE_A_DAY))
        bj.a().b(paramContext, 24); 
    } 
    this.b = paramBoolean;
    bj.a().a(paramContext, this.b);
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("sstype is:");
    stringBuilder.append(this.e.name());
    stringBuilder.append(" And timeInterval is:");
    stringBuilder.append(this.d);
    stringBuilder.append(" And mOnlyWifi:");
    stringBuilder.append(this.b);
    cz.a(stringBuilder.toString());
  }
  
  public void a(Context paramContext, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("__send_data_");
    stringBuilder.append(System.currentTimeMillis());
    cs.a(paramContext, stringBuilder.toString(), paramString, false);
  }
  
  public void b(Context paramContext) {
    paramContext = paramContext.getApplicationContext();
    long l = (this.d * 3600000);
    this.f = new Timer();
    this.f.schedule(new cb(this, paramContext), l, l);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\by.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
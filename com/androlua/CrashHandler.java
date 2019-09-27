package com.androlua;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.util.Log;
import com.a.a.a.a.a.a.a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;

public class CrashHandler implements Thread.UncaughtExceptionHandler {
  public static final String TAG = "CrashHandler";
  
  private static CrashHandler b = new CrashHandler();
  
  private Thread.UncaughtExceptionHandler a;
  
  private Context c;
  
  private Map<String, String> d = new LinkedHashMap();
  
  private DateFormat e = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
  
  private boolean a(Throwable paramThrowable) {
    if (paramThrowable == null)
      return false; 
    collectDeviceInfo(this.c);
    b(paramThrowable);
    return true;
  }
  
  private String b(Throwable paramThrowable) {
    StringBuffer stringBuffer = new StringBuffer();
    for (Map.Entry entry : this.d.entrySet()) {
      String str1 = (String)entry.getKey();
      String str2 = (String)entry.getValue();
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(str1);
      stringBuilder.append("=");
      stringBuilder.append(str2);
      stringBuilder.append("\n");
      stringBuffer.append(stringBuilder.toString());
    } 
    StringWriter stringWriter = new StringWriter();
    PrintWriter printWriter = new PrintWriter(stringWriter);
    while (true) {
      a.a(paramThrowable, printWriter);
      paramThrowable = paramThrowable.getCause();
      if (paramThrowable != null)
        continue; 
      break;
    } 
    printWriter.close();
    stringBuffer.append(stringWriter.toString());
    try {
      long l = System.currentTimeMillis();
      String str = this.e.format(new Date());
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("crash-");
      stringBuilder.append(str);
      stringBuilder.append("-");
      stringBuilder.append(l);
      stringBuilder.append(".log");
      str = stringBuilder.toString();
      if (Environment.getExternalStorageState().equals("mounted")) {
        File file = new File("/sdcard/androlua/crash/");
        if (!file.exists())
          file.mkdirs(); 
        StringBuilder stringBuilder1 = new StringBuilder();
        stringBuilder1.append("/sdcard/androlua/crash/");
        stringBuilder1.append(str);
        FileOutputStream fileOutputStream = new FileOutputStream(stringBuilder1.toString());
        fileOutputStream.write(stringBuffer.toString().getBytes());
        Log.e("crash", stringBuffer.toString());
        fileOutputStream.close();
      } 
      return str;
    } catch (Exception paramThrowable) {
      Log.e("CrashHandler", "an error occured while writing file...", paramThrowable);
      return null;
    } 
  }
  
  public static CrashHandler getInstance() { return b; }
  
  public void collectDeviceInfo(Context paramContext) {
    try {
      PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 1);
      if (packageInfo != null) {
        String str1;
        if (packageInfo.versionName == null) {
          str1 = "null";
        } else {
          str1 = packageInfo.versionName;
        } 
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(packageInfo.versionCode);
        stringBuilder.append("");
        String str2 = stringBuilder.toString();
        this.d.put("versionName", str1);
        this.d.put("versionCode", str2);
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException paramContext) {
      Log.e("CrashHandler", "an error occured when collect package info", paramContext);
    } 
    Field[] arrayOfField = android.os.Build.class.getDeclaredFields();
    int i = arrayOfField.length;
    byte b2 = 0;
    byte b1;
    for (b1 = 0; b1 < i; b1++) {
      Field field = arrayOfField[b1];
      try {
        String str;
        Map map;
        field.setAccessible(true);
        Object object = field.get(null);
        if (object instanceof String[]) {
          map = this.d;
          str = field.getName();
          object = Arrays.toString((String[])object);
        } else {
          map = this.d;
          str = field.getName();
          object = object.toString();
        } 
        map.put(str, object);
        object = new StringBuilder();
        object.append(field.getName());
        object.append(" : ");
        object.append(field.get(null));
        Log.d("CrashHandler", object.toString());
      } catch (Exception paramContext) {
        Log.e("CrashHandler", "an error occured when collect crash info", paramContext);
      } 
    } 
    arrayOfField = android.os.Build.VERSION.class.getDeclaredFields();
    i = arrayOfField.length;
    for (b1 = b2; b1 < i; b1++) {
      Field field = arrayOfField[b1];
      try {
        String str;
        Map map;
        field.setAccessible(true);
        Object object = field.get(null);
        if (object instanceof String[]) {
          map = this.d;
          str = field.getName();
          object = Arrays.toString((String[])object);
        } else {
          map = this.d;
          str = field.getName();
          object = object.toString();
        } 
        map.put(str, object);
        object = new StringBuilder();
        object.append(field.getName());
        object.append(" : ");
        object.append(field.get(null));
        Log.d("CrashHandler", object.toString());
      } catch (Exception paramContext) {
        Log.e("CrashHandler", "an error occured when collect crash info", paramContext);
      } 
    } 
  }
  
  public void init(Context paramContext) {
    this.c = paramContext;
    this.a = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable) {
    if (!a(paramThrowable) && this.a != null)
      this.a.uncaughtException(paramThread, paramThrowable); 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\CrashHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
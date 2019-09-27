package com.nirenr.screencapture;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class FileUtil {
  public static final String SCREENCAPTURE_PATH;
  
  public static final String SCREENSHOT_NAME = "Screenshot";
  
  static  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("ScreenCapture");
    stringBuilder.append(File.separator);
    stringBuilder.append("Screenshots");
    stringBuilder.append(File.separator);
    SCREENCAPTURE_PATH = stringBuilder.toString();
  }
  
  public static String getAppPath(Context paramContext) {
    if ("mounted".equals(Environment.getExternalStorageState())) {
      file = Environment.getExternalStorageDirectory();
      return file.toString();
    } 
    File file = file.getFilesDir();
    return file.toString();
  }
  
  public static String getScreenShots(Context paramContext) {
    StringBuffer stringBuffer = new StringBuffer(getAppPath(paramContext));
    stringBuffer.append(File.separator);
    stringBuffer.append(SCREENCAPTURE_PATH);
    File file = new File(stringBuffer.toString());
    if (!file.exists())
      file.mkdirs(); 
    return stringBuffer.toString();
  }
  
  public static String getScreenShotsName(Context paramContext) {
    String str = (new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss", Locale.CHINESE)).format(new Date());
    StringBuffer stringBuffer = new StringBuffer(getScreenShots(paramContext));
    stringBuffer.append("Screenshot");
    stringBuffer.append("_");
    stringBuffer.append(str);
    stringBuffer.append(".png");
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\nirenr\screencapture\FileUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
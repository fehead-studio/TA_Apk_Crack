package com.androlua;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.a.a.a.a.a.a.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.WeakHashMap;

public class LuaBitmap {
  static WeakHashMap<String, WeakReference<Bitmap>> a = new WeakHashMap();
  
  private static long b = 604800000L;
  
  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2) {
    int i = b(paramOptions, paramInt1, paramInt2);
    if (i <= 8) {
      paramInt1 = 1;
      while (true) {
        paramInt2 = paramInt1;
        if (paramInt1 < i) {
          paramInt1 <<= 1;
          continue;
        } 
        break;
      } 
    } else {
      paramInt2 = (i + 7) / 8 * 8;
    } 
    return paramInt2;
  }
  
  private static int b(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2) {
    int j;
    int i;
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    if (paramInt2 == -1) {
      i = 1;
    } else {
      i = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
    } 
    if (paramInt1 == -1) {
      j = 128;
    } else {
      double d = paramInt1;
      j = (int)Math.min(Math.floor(d1 / d), Math.floor(d2 / d));
    } 
    return (j < i) ? i : ((paramInt2 == -1 && paramInt1 == -1) ? 1 : ((paramInt1 == -1) ? i : j));
  }
  
  public static boolean checkCache(LuaContext paramLuaContext, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramLuaContext.getLuaExtDir("cache"));
    stringBuilder.append("/");
    stringBuilder.append(paramString.hashCode());
    File file = new File(stringBuilder.toString());
    return (file.exists() && b != -1L && System.currentTimeMillis() - file.lastModified() < b);
  }
  
  public static Bitmap decodeScale(int paramInt, File paramFile) {
    BitmapFactory.Options options = new BitmapFactory.Options();
    int i = 1;
    options.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramFile.getAbsolutePath(), options);
    if (options.outHeight > paramInt * 4 || options.outWidth > paramInt)
      i = (int)Math.pow(2.0D, (int)Math.round(Math.log(paramInt / Math.max(options.outHeight, options.outWidth)) / Math.log(0.5D))); 
    options = new BitmapFactory.Options();
    options.inSampleSize = i;
    return BitmapFactory.decodeFile(paramFile.getAbsolutePath(), options);
  }
  
  public static Bitmap getAssetBitmap(Context paramContext, String paramString) {
    InputStream inputStream = paramContext.getAssets().open(paramString);
    Bitmap bitmap = BitmapFactory.decodeStream(inputStream);
    inputStream.close();
    return bitmap;
  }
  
  public static Bitmap getBitmap(LuaContext paramLuaContext, String paramString) {
    Bitmap bitmap;
    WeakReference weakReference = (WeakReference)a.get(paramString);
    if (weakReference != null) {
      Bitmap bitmap1 = (Bitmap)weakReference.get();
      if (bitmap1 != null)
        return bitmap1; 
    } 
    if (paramString.toLowerCase().startsWith("http://") || paramString.toLowerCase().startsWith("https://")) {
      bitmap = getHttpBitmap(paramLuaContext, paramString);
      a.put(paramString, new WeakReference(bitmap));
      return bitmap;
    } 
    if (paramString.charAt(0) != '/') {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(bitmap.getLuaDir());
      stringBuilder.append("/");
      stringBuilder.append(paramString);
      bitmap = getLocalBitmap(bitmap, stringBuilder.toString());
    } else {
      bitmap = getLocalBitmap(bitmap, paramString);
    } 
    a.put(paramString, new WeakReference(bitmap));
    return bitmap;
  }
  
  public static Bitmap getBitmapFromFile(File paramFile, int paramInt1, int paramInt2) {
    if (paramFile != null && paramFile.exists()) {
      BitmapFactory.Options options;
      if (paramInt1 > 0 && paramInt2 > 0) {
        options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(paramFile.getPath(), options);
        options.inSampleSize = a(options, Math.min(paramInt1, paramInt2), paramInt1 * paramInt2);
        options.inJustDecodeBounds = false;
        options.inInputShareable = true;
        options.inPurgeable = true;
      } else {
        options = null;
      } 
      try {
        return BitmapFactory.decodeFile(paramFile.getPath(), options);
      } catch (OutOfMemoryError paramFile) {
        a.a(paramFile);
      } 
    } 
    return null;
  }
  
  public static long getCacheTime() { return b; }
  
  public static Bitmap getHttpBitmap(LuaContext paramLuaContext, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramLuaContext.getLuaExtDir("cache"));
    stringBuilder.append("/");
    stringBuilder.append(paramString.hashCode());
    String str = stringBuilder.toString();
    File file2 = new File(str);
    if (file2.exists() && b != -1L && System.currentTimeMillis() - file2.lastModified() < b) {
      int j = paramLuaContext.getWidth();
      file1 = new File(str);
      return decodeScale(j, file1);
    } 
    (new File(str)).delete();
    HttpURLConnection httpURLConnection = (HttpURLConnection)(new URL(paramString)).openConnection();
    httpURLConnection.setConnectTimeout(120000);
    httpURLConnection.setDoInput(true);
    httpURLConnection.connect();
    InputStream inputStream = httpURLConnection.getInputStream();
    FileOutputStream fileOutputStream = new FileOutputStream(str);
    if (!LuaUtil.copyFile(inputStream, fileOutputStream)) {
      fileOutputStream.close();
      inputStream.close();
      (new File(str)).delete();
      throw new RuntimeException("LoadHttpBitmap Error.");
    } 
    fileOutputStream.close();
    inputStream.close();
    int i = file1.getWidth();
    File file1 = new File(str);
    return decodeScale(i, file1);
  }
  
  public static Bitmap getHttpBitmap(String paramString) {
    HttpURLConnection httpURLConnection = (HttpURLConnection)(new URL(paramString)).openConnection();
    httpURLConnection.setDoInput(true);
    httpURLConnection.connect();
    InputStream inputStream = httpURLConnection.getInputStream();
    Bitmap bitmap = BitmapFactory.decodeStream(inputStream);
    inputStream.close();
    return bitmap;
  }
  
  public static Bitmap getImageFromPath(String paramString) {
    BitmapFactory.Options options = new BitmapFactory.Options();
    options.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, options);
    options.inSampleSize = a(options, -1, 62500);
    options.inJustDecodeBounds = false;
    try {
      return BitmapFactory.decodeFile(paramString, options);
    } catch (Exception paramString) {
      return null;
    } 
  }
  
  public static Bitmap getLocalBitmap(LuaContext paramLuaContext, String paramString) { return decodeScale(paramLuaContext.getWidth(), new File(paramString)); }
  
  public static Bitmap getLocalBitmap(String paramString) {
    FileInputStream fileInputStream = new FileInputStream(paramString);
    Bitmap bitmap = BitmapFactory.decodeStream(fileInputStream);
    fileInputStream.close();
    return bitmap;
  }
  
  public static void removeBitmap(Bitmap paramBitmap) {
    for (Map.Entry entry : a.entrySet()) {
      if (paramBitmap.equals(((WeakReference)entry.getValue()).get())) {
        a.remove(entry.getKey());
        break;
      } 
    } 
  }
  
  public static void setCacheTime(long paramLong) { b = paramLong; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaBitmap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
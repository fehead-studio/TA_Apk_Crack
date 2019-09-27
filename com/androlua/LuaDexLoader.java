package com.androlua;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.a.a.a.a.a.a.a;
import com.luajava.LuaException;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

public class LuaDexLoader {
  private static HashMap<String, LuaDexClassLoader> a = new HashMap();
  
  private ArrayList<ClassLoader> b = new ArrayList();
  
  private HashMap<String, String> c = new HashMap();
  
  private LuaContext d;
  
  private String e;
  
  private AssetManager f;
  
  private LuaResources g;
  
  private Resources.Theme h;
  
  private String i;
  
  public LuaDexLoader(LuaContext paramLuaContext) {
    this.d = paramLuaContext;
    this.e = paramLuaContext.getLuaDir();
    this.i = LuaApplication.getInstance().getOdexDir();
  }
  
  public AssetManager getAssets() { return this.f; }
  
  public ArrayList<ClassLoader> getClassLoaders() { return this.b; }
  
  public HashMap<String, String> getLibrarys() { return this.c; }
  
  public Resources getResources() { return this.g; }
  
  public Resources.Theme getTheme() { return this.h; }
  
  public LuaDexClassLoader loadApp(String paramString) {
    try {
      LuaDexClassLoader luaDexClassLoader2 = (LuaDexClassLoader)a.get(paramString);
      LuaDexClassLoader luaDexClassLoader1 = luaDexClassLoader2;
      if (luaDexClassLoader2 == null) {
        ApplicationInfo applicationInfo = (this.d.getContext().getPackageManager().getPackageInfo(paramString, 0)).applicationInfo;
        luaDexClassLoader1 = new LuaDexClassLoader(applicationInfo.publicSourceDir, LuaApplication.getInstance().getOdexDir(), applicationInfo.nativeLibraryDir, this.d.getContext().getClassLoader());
        a.put(paramString, luaDexClassLoader1);
      } 
      if (!this.b.contains(luaDexClassLoader1))
        this.b.add(luaDexClassLoader1); 
      return luaDexClassLoader1;
    } catch (android.content.pm.PackageManager.NameNotFoundException paramString) {
      a.a(paramString);
      return null;
    } 
  }
  
  public DexClassLoader loadDex(String paramString) {
    StringBuilder stringBuilder1;
    LuaDexClassLoader luaDexClassLoader = (LuaDexClassLoader)a.get(paramString);
    StringBuilder stringBuilder2 = luaDexClassLoader;
    if (luaDexClassLoader == null)
      stringBuilder2 = loadApp(paramString); 
    if (stringBuilder2 == null) {
      StringBuilder stringBuilder;
      if (paramString.charAt(0) != '/') {
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append(this.e);
        stringBuilder3.append("/");
        stringBuilder3.append(paramString);
        stringBuilder2 = stringBuilder3.toString();
      } else {
        stringBuilder2 = paramString;
      } 
      String str = stringBuilder2;
      if (!(new File(stringBuilder2)).exists()) {
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append(stringBuilder2);
        stringBuilder3.append(".dex");
        if ((new File(stringBuilder3.toString())).exists()) {
          stringBuilder3 = new StringBuilder();
          stringBuilder3.append(stringBuilder2);
          stringBuilder2 = ".dex";
        } else {
          stringBuilder3 = new StringBuilder();
          stringBuilder3.append(stringBuilder2);
          stringBuilder3.append(".jar");
          if ((new File(stringBuilder3.toString())).exists()) {
            stringBuilder3 = new StringBuilder();
            stringBuilder3.append(stringBuilder2);
            stringBuilder2 = ".jar";
          } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append(stringBuilder2);
            stringBuilder.append(" not found");
            throw new LuaException(stringBuilder.toString());
          } 
        } 
        stringBuilder3.append(stringBuilder2);
        str = stringBuilder3.toString();
      } 
      stringBuilder2 = LuaUtil.getFileMD5(str);
      if (stringBuilder2 != null && stringBuilder2.equals("0"))
        stringBuilder2 = stringBuilder; 
      LuaDexClassLoader luaDexClassLoader1 = (LuaDexClassLoader)a.get(stringBuilder2);
      stringBuilder1 = luaDexClassLoader1;
      if (luaDexClassLoader1 == null) {
        stringBuilder1 = new LuaDexClassLoader(str, this.i, (LuaApplication.getInstance().getApplicationInfo()).nativeLibraryDir, this.d.getContext().getClassLoader());
        a.put(stringBuilder2, stringBuilder1);
      } 
    } else {
      stringBuilder1 = stringBuilder2;
    } 
    if (!this.b.contains(stringBuilder1)) {
      this.b.add(stringBuilder1);
      String str = stringBuilder1.getDexPath();
      if (str.endsWith(".jar"))
        loadResources(str); 
    } 
    return stringBuilder1;
  }
  
  public void loadLib(String paramString) {
    int j = paramString.indexOf(".");
    if (j > 0) {
      stringBuilder1 = paramString.substring(0, j);
    } else {
      stringBuilder1 = paramString;
    } 
    String str = stringBuilder1;
    if (stringBuilder1.startsWith("lib"))
      str = stringBuilder1.substring(3); 
    StringBuilder stringBuilder1 = this.d.getContext().getDir(str, 0).getAbsolutePath();
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(stringBuilder1);
    stringBuilder2.append("/lib");
    stringBuilder2.append(str);
    stringBuilder2.append(".so");
    stringBuilder1 = stringBuilder2.toString();
    if (!(new File(stringBuilder1)).exists()) {
      stringBuilder2 = new StringBuilder();
      stringBuilder2.append(this.e);
      stringBuilder2.append("/libs/lib");
      stringBuilder2.append(str);
      stringBuilder2.append(".so");
      if (!(new File(stringBuilder2.toString())).exists()) {
        stringBuilder1 = new StringBuilder();
        stringBuilder1.append("can not find lib ");
        stringBuilder1.append(paramString);
        throw new LuaException(stringBuilder1.toString());
      } 
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append(this.e);
      stringBuilder.append("/libs/lib");
      stringBuilder.append(str);
      stringBuilder.append(".so");
      LuaUtil.copyFile(stringBuilder.toString(), stringBuilder1);
    } 
    this.c.put(str, stringBuilder1);
  }
  
  public void loadLibs() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(this.d.getLuaDir());
    stringBuilder.append("/libs");
    File[] arrayOfFile = (new File(stringBuilder.toString())).listFiles();
    if (arrayOfFile == null)
      return; 
    int j = arrayOfFile.length;
    for (byte b1 = 0; b1 < j; b1++) {
      File file = arrayOfFile[b1];
      if (!file.isDirectory())
        if (file.getAbsolutePath().endsWith(".so")) {
          loadLib(file.getName());
        } else {
          loadDex(file.getAbsolutePath());
        }  
    } 
  }
  
  public void loadResources(String paramString) {
    try {
      AssetManager assetManager = (AssetManager)AssetManager.class.newInstance();
      if (((Integer)assetManager.getClass().getMethod("addAssetPath", new Class[] { String.class }).invoke(assetManager, new Object[] { paramString })).intValue() == 0)
        return; 
      this.f = assetManager;
      Resources resources = this.d.getContext().getResources();
      this.g = new LuaResources(this.f, resources.getDisplayMetrics(), resources.getConfiguration());
      this.g.setSuperResources(resources);
      this.h = this.g.newTheme();
      this.h.setTo(this.d.getContext().getTheme());
      return;
    } catch (Exception paramString) {
      a.a(paramString);
      return;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaDexLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.baidu.mobstat;

import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

class ae extends ContextWrapper {
  public ae() { super(null); }
  
  public File getDatabasePath(String paramString) {
    if (!"mounted".equals(cs.a()))
      return null; 
    str = Environment.getExternalStorageDirectory().getAbsolutePath();
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(str);
    stringBuilder2.append(File.separator);
    stringBuilder2.append("backups/system");
    str = stringBuilder2.toString();
    File file2 = new File(str);
    if (!file2.exists())
      file2.mkdirs(); 
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(str);
    stringBuilder1.append(File.separator);
    stringBuilder1.append(paramString);
    File file1 = new File(stringBuilder1.toString());
    if (!file1.exists())
      try {
        file1.createNewFile();
      } catch (IOException str) {
        bd.b(str);
      }  
    return file1.exists() ? file1 : null;
  }
  
  public SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory) {
    File file = getDatabasePath(paramString);
    if (file == null || !file.canWrite())
      throw new RuntimeException("db path is null or path can not be write"); 
    return SQLiteDatabase.openOrCreateDatabase(file, null);
  }
  
  public SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory, DatabaseErrorHandler paramDatabaseErrorHandler) {
    File file = getDatabasePath(paramString);
    if (file == null || !file.canWrite())
      throw new RuntimeException("db path is null or path can not be write"); 
    return SQLiteDatabase.openOrCreateDatabase(file, null);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
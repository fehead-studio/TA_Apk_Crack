package com.baidu.mobstat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class af extends SQLiteOpenHelper {
  private String a;
  
  private SQLiteDatabase b;
  
  public af(Context paramContext, String paramString) {
    super(paramContext, ".confd", null, 1);
    this.a = paramString;
  }
  
  public int a(String paramString, String[] paramArrayOfString) { return this.b.delete(this.a, paramString, paramArrayOfString); }
  
  public long a(String paramString, ContentValues paramContentValues) { return this.b.insert(this.a, paramString, paramContentValues); }
  
  public Cursor a(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4, String paramString5) { return this.b.query(this.a, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramString3, paramString4, paramString5); }
  
  public void a(String paramString) { getWritableDatabase().execSQL(paramString); }
  
  public boolean a() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore #4
    //   8: iconst_0
    //   9: istore_3
    //   10: aload #4
    //   12: ifnonnull -> 18
    //   15: goto -> 104
    //   18: aload_0
    //   19: getfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   22: invokevirtual isOpen : ()Z
    //   25: istore_2
    //   26: iload_2
    //   27: ifne -> 33
    //   30: goto -> 104
    //   33: iconst_0
    //   34: istore_1
    //   35: iload_1
    //   36: ifeq -> 60
    //   39: aload_0
    //   40: aload_0
    //   41: invokevirtual getWritableDatabase : ()Landroid/database/sqlite/SQLiteDatabase;
    //   44: putfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   47: goto -> 60
    //   50: new java/lang/NullPointerException
    //   53: dup
    //   54: ldc 'db path is null'
    //   56: invokespecial <init> : (Ljava/lang/String;)V
    //   59: athrow
    //   60: iload_3
    //   61: istore_2
    //   62: aload_0
    //   63: getfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   66: ifnull -> 88
    //   69: aload_0
    //   70: getfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   73: invokevirtual isOpen : ()Z
    //   76: istore_2
    //   77: iload_2
    //   78: ifne -> 86
    //   81: iload_3
    //   82: istore_2
    //   83: goto -> 88
    //   86: iconst_1
    //   87: istore_2
    //   88: aload_0
    //   89: monitorexit
    //   90: iload_2
    //   91: ireturn
    //   92: astore #4
    //   94: aload_0
    //   95: monitorexit
    //   96: aload #4
    //   98: athrow
    //   99: astore #4
    //   101: goto -> 50
    //   104: iconst_1
    //   105: istore_1
    //   106: goto -> 35
    // Exception table:
    //   from	to	target	type
    //   2	8	92	finally
    //   18	26	92	finally
    //   39	47	99	java/lang/NullPointerException
    //   39	47	92	finally
    //   50	60	92	finally
    //   62	77	92	finally }
  
  public final int b() {
    Cursor cursor = null;
    try {
      SQLiteDatabase sQLiteDatabase = this.b;
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append("SELECT COUNT(*) FROM ");
      stringBuilder.append(this.a);
      cursor1 = sQLiteDatabase.rawQuery(stringBuilder.toString(), null);
      if (cursor1 != null)
        try {
          if (cursor1.moveToNext())
            return i; 
        } finally {
          sQLiteDatabase = null;
        }  
      return 0;
    } finally {
      if (cursor != null)
        cursor.close(); 
    } 
  }
  
  public void close() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial close : ()V
    //   6: aload_0
    //   7: getfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   10: ifnull -> 25
    //   13: aload_0
    //   14: getfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   17: invokevirtual close : ()V
    //   20: aload_0
    //   21: aconst_null
    //   22: putfield b : Landroid/database/sqlite/SQLiteDatabase;
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Exception table:
    //   from	to	target	type
    //   2	25	28	finally }
  
  public SQLiteDatabase getReadableDatabase() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial getReadableDatabase : ()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: aload_1
    //   10: areturn
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally }
  
  public SQLiteDatabase getWritableDatabase() { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial getWritableDatabase : ()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: aload_1
    //   10: areturn
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase) { this.b = paramSQLiteDatabase; }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase) { super.onOpen(paramSQLiteDatabase); }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
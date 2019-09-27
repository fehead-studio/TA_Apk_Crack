package com.baidu.mobstat;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;

class ai extends x {
  public ai() { super("app_change3", "Create table if not exists app_change3(_id Integer primary key AUTOINCREMENT,time VARCHAR(50),content TEXT);"); }
  
  private ArrayList<w> a(Cursor paramCursor) {
    ArrayList arrayList = new ArrayList();
    if (paramCursor == null)
      return arrayList; 
    if (paramCursor.getCount() == 0)
      return arrayList; 
    int i = paramCursor.getColumnIndex("_id");
    int j = paramCursor.getColumnIndex("time");
    int k = paramCursor.getColumnIndex("content");
    while (paramCursor.moveToNext())
      arrayList.add(new w(paramCursor.getLong(i), paramCursor.getString(j), paramCursor.getString(k))); 
    return arrayList;
  }
  
  public long a(String paramString1, String paramString2) {
    ContentValues contentValues = new ContentValues();
    contentValues.put("time", paramString1);
    contentValues.put("content", paramString2);
    return a(contentValues);
  }
  
  public ArrayList<w> a(int paramInt1, int paramInt2) {
    Cursor cursor = a("time", paramInt1, paramInt2);
    ArrayList arrayList = a(cursor);
    if (cursor != null)
      cursor.close(); 
    return arrayList;
  }
  
  public boolean b(long paramLong) { return a(paramLong); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
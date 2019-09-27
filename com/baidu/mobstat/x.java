package com.baidu.mobstat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.io.Closeable;
import java.util.ArrayList;

abstract class x implements Closeable {
  private af a;
  
  public x(String paramString1, String paramString2) {
    ae ae = new ae();
    this.a = new af(ae, paramString1);
    if (ae.getDatabasePath(".confd") != null)
      a(paramString2); 
  }
  
  private void a(String paramString) { this.a.a(paramString); }
  
  protected long a(ContentValues paramContentValues) { return this.a.a(null, paramContentValues); }
  
  public abstract long a(String paramString1, String paramString2);
  
  protected Cursor a(String paramString, int paramInt1, int paramInt2) {
    af af1 = this.a;
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramString);
    stringBuilder.append(" desc");
    paramString = stringBuilder.toString();
    stringBuilder = new StringBuilder();
    stringBuilder.append(paramInt2);
    stringBuilder.append(", ");
    stringBuilder.append(paramInt1);
    return af1.a(null, null, null, null, null, paramString, stringBuilder.toString());
  }
  
  protected Cursor a(String paramString1, String paramString2, String paramString3, int paramInt) {
    StringBuilder stringBuilder1 = new StringBuilder();
    stringBuilder1.append(paramString1);
    stringBuilder1.append("=? ");
    paramString1 = stringBuilder1.toString();
    af af1 = this.a;
    StringBuilder stringBuilder2 = new StringBuilder();
    stringBuilder2.append(paramString3);
    stringBuilder2.append(" desc");
    paramString3 = stringBuilder2.toString();
    stringBuilder2 = new StringBuilder();
    stringBuilder2.append(paramInt);
    stringBuilder2.append("");
    String str = stringBuilder2.toString();
    return af1.a(null, paramString1, new String[] { paramString2 }, null, null, paramString3, str);
  }
  
  public abstract ArrayList<w> a(int paramInt1, int paramInt2);
  
  public boolean a() {
    Context context;
    /* monitor enter ThisExpression{ObjectType{com/baidu/mobstat/x}} */
    try {
      boolean bool = this.a.a();
      /* monitor exit ThisExpression{ObjectType{com/baidu/mobstat/x}} */
      return bool;
    } catch (Exception null) {
      bd.b(context);
      /* monitor exit ThisExpression{ObjectType{com/baidu/mobstat/x}} */
      return false;
    } finally {}
    /* monitor exit ThisExpression{ObjectType{com/baidu/mobstat/x}} */
    throw context;
  }
  
  protected boolean a(long paramLong) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramLong);
    stringBuilder.append("");
    String str = stringBuilder.toString();
    return (this.a.a("_id=? ", new String[] { str }) > 0);
  }
  
  protected int b() { return this.a.b(); }
  
  public abstract boolean b(long paramLong);
  
  public void close() {
    /* monitor enter ThisExpression{ObjectType{com/baidu/mobstat/x}} */
    try {
      this.a.close();
    } catch (Exception exception) {
      bd.b(exception);
    } finally {
      Context context;
    } 
    /* monitor exit ThisExpression{ObjectType{com/baidu/mobstat/x}} */
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
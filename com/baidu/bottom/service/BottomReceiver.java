package com.baidu.bottom.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.mobstat.at;
import com.baidu.mobstat.bd;
import com.baidu.mobstat.db;
import com.baidu.mobstat.n;

public class BottomReceiver extends BroadcastReceiver {
  private static db a;
  
  private static long b;
  
  private static long c;
  
  private void a(Context paramContext, Intent paramIntent) {
    String str = paramIntent.getAction();
    long l = System.currentTimeMillis();
    if (Math.abs(c - l) > 30000L && ("android.net.wifi.STATE_CHANGE".equals(str) || "android.net.wifi.WIFI_STATE_CHANGED".equals(str) || "android.net.conn.CONNECTIVITY_CHANGE".equals(str) || "android.net.wifi.SCAN_RESULTS".equals(str))) {
      c = l;
      n.a(paramContext);
    } 
  }
  
  private void b(Context paramContext, Intent paramIntent) {
    String str = paramIntent.getAction();
    if ("android.intent.action.PACKAGE_ADDED".equals(str) || "android.intent.action.PACKAGE_REMOVED".equals(str) || "android.intent.action.PACKAGE_REPLACED".equals(str)) {
      String str1;
      Intent intent = null;
      Uri uri = paramIntent.getData();
      paramIntent = intent;
      if (uri != null)
        str1 = uri.getSchemeSpecificPart(); 
      if (!TextUtils.isEmpty(str1))
        n.a(paramContext, str, str1); 
    } 
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (a != null) {
      bd.a("Bottom has alread analyzed.");
      return;
    } 
    db db1 = new db();
    if (db1.a()) {
      a = db1;
      (new at(this, paramContext, paramIntent, db1)).start();
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\bottom\service\BottomReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
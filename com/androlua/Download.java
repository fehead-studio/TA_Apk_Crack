package com.androlua;

import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.widget.EditText;
import java.io.File;
import java.util.HashMap;

public class Download {
  private final LuaContext a;
  
  private EditText b;
  
  private String c;
  
  private DownloadBroadcastReceiver d;
  
  private HashMap<Long, String[]> e = new HashMap();
  
  private OnDownloadCompleteListener f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  private String j;
  
  private long k;
  
  private String l;
  
  public Download(LuaContext paramLuaContext) { this.a = paramLuaContext; }
  
  public long getContentLength() { return this.k; }
  
  public String getDestinationDir() { return this.h; }
  
  public String getFilePath() { return this.l; }
  
  public String getMimeType() { return this.j; }
  
  public String getUrl() { return this.c; }
  
  public String getUserAgent() { return this.i; }
  
  public void setContentLength(long paramLong) { this.k = paramLong; }
  
  public void setDestinationDir(String paramString) { this.h = paramString; }
  
  public void setFilePath(String paramString) { this.l = paramString; }
  
  public void setMessage(String paramString) { this.g = paramString; }
  
  public void setMimeType(String paramString) { this.j = paramString; }
  
  public void setOnDownloadCompleteListener(OnDownloadCompleteListener paramOnDownloadCompleteListener) { this.f = paramOnDownloadCompleteListener; }
  
  public void setUrl(String paramString) { this.c = paramString; }
  
  public void setUserAgent(String paramString) { this.i = paramString; }
  
  public long start(boolean paramBoolean) {
    if (this.d == null) {
      IntentFilter intentFilter = new IntentFilter();
      intentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
      this.d = new DownloadBroadcastReceiver(this, null);
      this.a.getContext().registerReceiver(this.d, intentFilter);
    } 
    DownloadManager downloadManager = (DownloadManager)this.a.getContext().getSystemService("download");
    Uri uri = Uri.parse(this.c);
    uri.getLastPathSegment();
    DownloadManager.Request request = new DownloadManager.Request(uri);
    if (this.h == null)
      this.h = "Download"; 
    request.setDestinationInExternalPublicDir(this.h, this.l);
    request.setTitle(this.l);
    request.setDescription(this.c);
    if (paramBoolean)
      request.setAllowedNetworkTypes(2); 
    if (this.j == null)
      this.j = "*/*"; 
    request.setMimeType(this.j);
    long l1 = downloadManager.enqueue(request);
    this.e.put(Long.valueOf(l1), new String[] { (new File(this.h, this.l)).getAbsolutePath(), this.j });
    return l1;
  }
  
  public void start() {}
  
  public void start(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.c = paramString1;
    this.g = paramString4;
    Uri uri = Uri.parse(this.c);
    this.l = paramString3;
    if (paramString3 == null)
      this.l = uri.getLastPathSegment(); 
    if (paramString2 == null)
      this.h = "Download"; 
    this.b = new EditText(this.a.getContext());
    this.b.setText(this.l);
    if (this.g == null)
      this.g = paramString1; 
    (new AlertDialog.Builder(this.a.getContext())).setTitle("Download").setMessage(this.g).setView(this.b).setPositiveButton("Download", new DialogInterface.OnClickListener(this) {
          public void onClick(DialogInterface param1DialogInterface, int param1Int) {
            Download.a(this.a, Download.a(this.a).getText().toString());
            this.a.start(false);
          }
        }).setNegativeButton("Cancel", null).setNeutralButton("Only Wifi", new DialogInterface.OnClickListener(this) {
          public void onClick(DialogInterface param1DialogInterface, int param1Int) {
            Download.a(this.a, Download.a(this.a).getText().toString());
            this.a.start(true);
          }
        }).create().show();
  }
  
  private class DownloadBroadcastReceiver extends BroadcastReceiver {
    private DownloadBroadcastReceiver(Download this$0) {}
    
    public void onReceive(Context param1Context, Intent param1Intent) {
      long l = param1Intent.getLongExtra("extra_download_id", 0L);
      param1Intent.getExtras();
      if (Download.b(this.a).containsKey(Long.valueOf(l)) && Download.c(this.a) != null) {
        String[] arrayOfString = (String[])Download.b(this.a).get(Long.valueOf(l));
        Download.c(this.a).onDownloadComplete(arrayOfString[0], arrayOfString[1]);
      } 
    }
  }
  
  public static interface OnDownloadCompleteListener {
    void onDownloadComplete(String param1String1, String param1String2);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\Download.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
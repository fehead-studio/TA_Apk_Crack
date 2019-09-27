package com.androlua;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.ClientCertRequest;
import android.webkit.DownloadListener;
import android.webkit.HttpAuthHandler;
import android.webkit.JavascriptInterface;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.a.a.a.a.a.a.a;
import com.luajava.LuaException;
import com.luajava.LuaFunction;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class LuaWebView extends WebView implements LuaGcable {
  private DownloadBroadcastReceiver a;
  
  private HashMap<Long, String[]> b = new HashMap();
  
  private OnDownloadCompleteListener c;
  
  private LuaActivity d;
  
  private ProgressBar e;
  
  private DisplayMetrics f;
  
  private Dialog g;
  
  private ListView h;
  
  private ValueCallback<Uri> i;
  
  private String j = "/";
  
  private LuaFunction<Boolean> k;
  
  private boolean l;
  
  private OnReceivedTitleListener m;
  
  private OnReceivedIconListener n;
  
  @SuppressLint({"AddJavascriptInterface", "SetJavaScriptEnabled"})
  public LuaWebView(LuaActivity paramLuaActivity) {
    super(paramLuaActivity);
    paramLuaActivity.regGc(this);
    this.d = paramLuaActivity;
    getSettings().setJavaScriptEnabled(true);
    getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    getSettings().setDisplayZoomControls(true);
    getSettings().setSupportZoom(true);
    getSettings().setDomStorageEnabled(true);
    if (Build.VERSION.SDK_INT >= 21)
      getSettings().setMixedContentMode(0); 
    addJavascriptInterface(new LuaJavaScriptInterface(this, paramLuaActivity), "androlua");
    setWebViewClient(new WebViewClient(this) {
          public void onReceivedSslError(WebView param1WebView, SslErrorHandler param1SslErrorHandler, SslError param1SslError) {
            AlertDialog.Builder builder = new AlertDialog.Builder(LuaWebView.b(this.a));
            builder.setTitle("SslError");
            builder.setMessage(param1SslError.toString());
            builder.setPositiveButton(17039370, new DialogInterface.OnClickListener(this, param1SslErrorHandler) {
                  public void onClick(DialogInterface param2DialogInterface, int param2Int) { this.a.proceed(); }
                });
            builder.setNegativeButton(17039360, new DialogInterface.OnClickListener(this, param1SslErrorHandler) {
                  public void onClick(DialogInterface param2DialogInterface, int param2Int) { this.a.cancel(); }
                });
            builder.setCancelable(false);
            builder.create();
            builder.show();
          }
          
          public WebResourceResponse shouldInterceptRequest(WebView param1WebView, String param1String) {
            if (LuaWebView.a(this.a) != null)
              try {
                Boolean bool = (Boolean)LuaWebView.a(this.a).call(new Object[] { param1String });
                if (bool != null && bool.booleanValue())
                  return new WebResourceResponse(null, null, null); 
              } catch (LuaException param1WebView) {
                a.a(param1WebView);
              }  
            return null;
          }
          
          public boolean shouldOverrideUrlLoading(WebView param1WebView, String param1String) {
            if (LuaWebView.a(this.a) != null)
              try {
                Boolean bool = (Boolean)LuaWebView.a(this.a).call(new Object[] { param1String });
                if (bool != null) {
                  boolean bool1 = bool.booleanValue();
                  if (bool1)
                    return true; 
                } 
              } catch (LuaException luaException) {
                a.a(luaException);
              }  
            if (param1String.startsWith("http") || param1String.startsWith("file")) {
              param1WebView.loadUrl(param1String);
              return true;
            } 
            try {
              LuaWebView.b(this.a).startActivityForResult(new Intent("android.intent.action.VIEW", Uri.parse(param1String)), 0);
              return true;
            } catch (Exception param1WebView) {
              LuaWebView.b(this.a).sendError("LuaWebView", param1WebView);
              return true;
            } 
          }
        });
    this.f = paramLuaActivity.getResources().getDisplayMetrics();
    int i1 = (int)TypedValue.applyDimension(1, 2.0F, this.f);
    this.e = new ProgressBar(paramLuaActivity, null, 16842872);
    this.e.setLayoutParams(new AbsoluteLayout.LayoutParams(-1, i1, 0, 0));
    addView(this.e);
    setWebChromeClient(new LuaWebChromeClient(this));
    setDownloadListener(new Download(this, null));
  }
  
  @SuppressLint({"AddJavascriptInterface"})
  public void addJSInterface(JsInterface paramJsInterface, String paramString) { addJavascriptInterface(new JsObject(this, paramJsInterface), paramString); }
  
  @SuppressLint({"AddJavascriptInterface"})
  public void addJsInterface(JsInterface paramJsInterface, String paramString) { addJavascriptInterface(new JsObject(this, paramJsInterface), paramString); }
  
  public void destroy() {
    if (this.a != null)
      this.d.unregisterReceiver(this.a); 
    super.destroy();
  }
  
  public void gc() {
    destroy();
    this.l = true;
  }
  
  public boolean isGc() { return this.l; }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4 && canGoBack()) {
      goBack();
      return true;
    } 
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    AbsoluteLayout.LayoutParams layoutParams = (AbsoluteLayout.LayoutParams)this.e.getLayoutParams();
    layoutParams.x = paramInt1;
    layoutParams.y = paramInt2;
    this.e.setLayoutParams(layoutParams);
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void openFile(String paramString) {
    if (this.g == null) {
      this.g = new Dialog(getContext());
      this.h = new ListView(getContext());
      this.h.setFastScrollEnabled(true);
      this.h.setFastScrollAlwaysVisible(true);
      this.g.setContentView(this.h);
      this.h.setOnItemClickListener(new AdapterView.OnItemClickListener(this) {
            public void onItemClick(AdapterView<?> param1AdapterView, View param1View, int param1Int, long param1Long) {
              LuaWebView luaWebView = ((TextView)param1View).getText().toString();
              if (luaWebView.equals("../")) {
                luaWebView = this.a;
                StringBuilder stringBuilder1 = new StringBuilder();
                stringBuilder1.append((new File(LuaWebView.c(this.a))).getParent());
                stringBuilder1.append("/");
                LuaWebView.a(luaWebView, stringBuilder1.toString());
                this.a.openFile(LuaWebView.c(this.a));
                return;
              } 
              StringBuilder stringBuilder = new StringBuilder();
              stringBuilder.append(LuaWebView.c(this.a));
              stringBuilder.append(luaWebView);
              String str = stringBuilder.toString();
              if ((new File(str)).isDirectory()) {
                LuaWebView.a(this.a, str);
                this.a.openFile(LuaWebView.c(this.a));
                return;
              } 
              LuaWebView.d(this.a).onReceiveValue(Uri.parse(str));
            }
          });
    } 
    File file = new File(paramString);
    ArrayList arrayList = new ArrayList();
    arrayList.add("../");
    String[] arrayOfString = file.list();
    if (arrayOfString != null) {
      Arrays.sort(arrayOfString);
      int i1 = arrayOfString.length;
      byte b2 = 0;
      byte b1;
      for (b1 = 0; b1 < i1; b1++) {
        String str = arrayOfString[b1];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.j);
        stringBuilder.append(str);
        if ((new File(stringBuilder.toString())).isDirectory()) {
          stringBuilder = new StringBuilder();
          stringBuilder.append(str);
          stringBuilder.append("/");
          arrayList.add(stringBuilder.toString());
        } 
      } 
      i1 = arrayOfString.length;
      for (b1 = b2; b1 < i1; b1++) {
        String str = arrayOfString[b1];
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.j);
        stringBuilder.append(str);
        if ((new File(stringBuilder.toString())).isFile())
          arrayList.add(str); 
      } 
    } 
    ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), 17367043, arrayList);
    this.h.setAdapter(arrayAdapter);
    this.g.setTitle(this.j);
    this.g.show();
  }
  
  public void setAdsFilter(LuaFunction<Boolean> paramLuaFunction) { this.k = paramLuaFunction; }
  
  public void setDownloadListener(DownloadListener paramDownloadListener) { super.setDownloadListener(paramDownloadListener); }
  
  public void setOnDownloadCompleteListener(OnDownloadCompleteListener paramOnDownloadCompleteListener) { this.c = paramOnDownloadCompleteListener; }
  
  public void setOnDownloadStartListener(OnDownloadStartListener paramOnDownloadStartListener) { setDownloadListener(new DownloadListener(this, paramOnDownloadStartListener) {
          public void onDownloadStart(String param1String1, String param1String2, String param1String3, String param1String4, long param1Long) { this.a.onDownloadStart(param1String1, param1String2, param1String3, param1String4, param1Long); }
        }); }
  
  public void setOnKeyListener(View.OnKeyListener paramOnKeyListener) { super.setOnKeyListener(paramOnKeyListener); }
  
  public void setOnReceivedIconListener(OnReceivedIconListener paramOnReceivedIconListener) { this.n = paramOnReceivedIconListener; }
  
  public void setOnReceivedTitleListener(OnReceivedTitleListener paramOnReceivedTitleListener) { this.m = paramOnReceivedTitleListener; }
  
  public void setProgressBar(ProgressBar paramProgressBar) { this.e = paramProgressBar; }
  
  public void setProgressBarEnabled(boolean paramBoolean) {
    ProgressBar progressBar;
    byte b1;
    if (paramBoolean) {
      progressBar = this.e;
      b1 = 0;
    } else {
      progressBar = this.e;
      b1 = 8;
    } 
    progressBar.setVisibility(b1);
  }
  
  public void setWebViewClient(LuaWebViewClient paramLuaWebViewClient) { setWebViewClient(new SimpleLuaWebViewClient(this, paramLuaWebViewClient)); }
  
  private class Download implements DownloadListener {
    EditText a;
    
    private String c;
    
    private String d;
    
    private String e;
    
    private String f;
    
    private long g;
    
    private String h;
    
    private Download(LuaWebView this$0) {}
    
    private long a(boolean param1Boolean) {
      if (LuaWebView.g(this.b) == null) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
        LuaWebView.a(this.b, new LuaWebView.DownloadBroadcastReceiver(this.b, null));
        LuaWebView.b(this.b).registerReceiver(LuaWebView.g(this.b), intentFilter);
      } 
      DownloadManager downloadManager = (DownloadManager)LuaWebView.b(this.b).getSystemService("download");
      Uri uri = Uri.parse(this.c);
      uri.getLastPathSegment();
      DownloadManager.Request request = new DownloadManager.Request(uri);
      String str = LuaWebView.b(this.b).getLuaExtDir("Download");
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.append((new File(LuaWebView.b(this.b).getLuaExtDir())).getName());
      stringBuilder.append("/");
      stringBuilder.append("Download");
      request.setDestinationInExternalPublicDir(stringBuilder.toString(), this.h);
      request.setTitle(this.h);
      request.setDescription(this.c);
      if (param1Boolean)
        request.setAllowedNetworkTypes(2); 
      File file = new File(str, this.h);
      if (file.exists())
        file.delete(); 
      request.setMimeType(this.f);
      long l = downloadManager.enqueue(request);
      LuaWebView.e(this.b).put(Long.valueOf(l), new String[] { (new File(str, this.h)).getAbsolutePath(), this.f });
      return l;
    }
    
    @SuppressLint({"DefaultLocale"})
    public void onDownloadStart(String param1String1, String param1String2, String param1String3, String param1String4, long param1Long) { // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: putfield c : Ljava/lang/String;
      //   5: aload_0
      //   6: aload_2
      //   7: putfield d : Ljava/lang/String;
      //   10: aload_0
      //   11: aload_3
      //   12: putfield e : Ljava/lang/String;
      //   15: aload_0
      //   16: aload #4
      //   18: putfield f : Ljava/lang/String;
      //   21: aload_0
      //   22: lload #5
      //   24: putfield g : J
      //   27: aload_0
      //   28: aload_0
      //   29: getfield c : Ljava/lang/String;
      //   32: invokestatic parse : (Ljava/lang/String;)Landroid/net/Uri;
      //   35: invokevirtual getLastPathSegment : ()Ljava/lang/String;
      //   38: putfield h : Ljava/lang/String;
      //   41: aload_3
      //   42: ifnull -> 98
      //   45: aload_3
      //   46: ldc 'filename="'
      //   48: invokevirtual indexOf : (Ljava/lang/String;)I
      //   51: istore #7
      //   53: iload #7
      //   55: iconst_m1
      //   56: if_icmpeq -> 98
      //   59: iload #7
      //   61: ldc 'filename="'
      //   63: invokevirtual length : ()I
      //   66: iadd
      //   67: istore #7
      //   69: aload_3
      //   70: bipush #34
      //   72: iload #7
      //   74: invokevirtual indexOf : (II)I
      //   77: istore #8
      //   79: iload #8
      //   81: iload #7
      //   83: if_icmple -> 98
      //   86: aload_0
      //   87: aload_3
      //   88: iload #7
      //   90: iload #8
      //   92: invokevirtual substring : (II)Ljava/lang/String;
      //   95: putfield h : Ljava/lang/String;
      //   98: aload_0
      //   99: new android/widget/EditText
      //   102: dup
      //   103: aload_0
      //   104: getfield b : Lcom/androlua/LuaWebView;
      //   107: invokestatic b : (Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;
      //   110: invokespecial <init> : (Landroid/content/Context;)V
      //   113: putfield a : Landroid/widget/EditText;
      //   116: aload_0
      //   117: getfield a : Landroid/widget/EditText;
      //   120: aload_0
      //   121: getfield h : Ljava/lang/String;
      //   124: invokevirtual setText : (Ljava/lang/CharSequence;)V
      //   127: new java/lang/StringBuilder
      //   130: dup
      //   131: invokespecial <init> : ()V
      //   134: astore_1
      //   135: aload_1
      //   136: lload #5
      //   138: invokestatic valueOf : (J)Ljava/lang/String;
      //   141: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   144: pop
      //   145: aload_1
      //   146: ldc 'B'
      //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   151: pop
      //   152: aload_1
      //   153: invokevirtual toString : ()Ljava/lang/String;
      //   156: astore_1
      //   157: lload #5
      //   159: ldc2_w 1048576
      //   162: lcmp
      //   163: ifle -> 201
      //   166: ldc '%.2f MB'
      //   168: astore_1
      //   169: iconst_1
      //   170: anewarray java/lang/Object
      //   173: astore_2
      //   174: aload_2
      //   175: iconst_0
      //   176: lload #5
      //   178: invokestatic valueOf : (J)Ljava/lang/Long;
      //   181: invokevirtual doubleValue : ()D
      //   184: ldc2_w 1048576.0
      //   187: ddiv
      //   188: invokestatic valueOf : (D)Ljava/lang/Double;
      //   191: aastore
      //   192: aload_1
      //   193: aload_2
      //   194: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
      //   197: astore_1
      //   198: goto -> 239
      //   201: lload #5
      //   203: ldc2_w 1024
      //   206: lcmp
      //   207: ifle -> 239
      //   210: ldc '%.2f KB'
      //   212: astore_1
      //   213: iconst_1
      //   214: anewarray java/lang/Object
      //   217: astore_2
      //   218: aload_2
      //   219: iconst_0
      //   220: lload #5
      //   222: invokestatic valueOf : (J)Ljava/lang/Long;
      //   225: invokevirtual doubleValue : ()D
      //   228: ldc2_w 1024.0
      //   231: ddiv
      //   232: invokestatic valueOf : (D)Ljava/lang/Double;
      //   235: aastore
      //   236: goto -> 192
      //   239: new android/app/AlertDialog$Builder
      //   242: dup
      //   243: aload_0
      //   244: getfield b : Lcom/androlua/LuaWebView;
      //   247: invokestatic b : (Lcom/androlua/LuaWebView;)Lcom/androlua/LuaActivity;
      //   250: invokespecial <init> : (Landroid/content/Context;)V
      //   253: ldc 'Download'
      //   255: invokevirtual setTitle : (Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
      //   258: astore_2
      //   259: new java/lang/StringBuilder
      //   262: dup
      //   263: invokespecial <init> : ()V
      //   266: astore_3
      //   267: aload_3
      //   268: ldc 'Type: '
      //   270: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   273: pop
      //   274: aload_3
      //   275: aload #4
      //   277: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   280: pop
      //   281: aload_3
      //   282: ldc_w '\\nSize: '
      //   285: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   288: pop
      //   289: aload_3
      //   290: aload_1
      //   291: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   294: pop
      //   295: aload_2
      //   296: aload_3
      //   297: invokevirtual toString : ()Ljava/lang/String;
      //   300: invokevirtual setMessage : (Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
      //   303: aload_0
      //   304: getfield a : Landroid/widget/EditText;
      //   307: invokevirtual setView : (Landroid/view/View;)Landroid/app/AlertDialog$Builder;
      //   310: ldc 'Download'
      //   312: new com/androlua/LuaWebView$Download$2
      //   315: dup
      //   316: aload_0
      //   317: invokespecial <init> : (Lcom/androlua/LuaWebView$Download;)V
      //   320: invokevirtual setPositiveButton : (Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
      //   323: ldc_w 17039360
      //   326: aconst_null
      //   327: invokevirtual setNegativeButton : (ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
      //   330: ldc_w 'Only Wifi'
      //   333: new com/androlua/LuaWebView$Download$1
      //   336: dup
      //   337: aload_0
      //   338: invokespecial <init> : (Lcom/androlua/LuaWebView$Download;)V
      //   341: invokevirtual setNeutralButton : (Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
      //   344: invokevirtual create : ()Landroid/app/AlertDialog;
      //   347: invokevirtual show : ()V
      //   350: return }
  }
  
  class null implements DialogInterface.OnClickListener {
    null(LuaWebView this$0) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) {
      LuaWebView.Download.a(this.a, this.a.a.getText().toString());
      LuaWebView.Download.a(this.a, true);
    }
  }
  
  class null implements DialogInterface.OnClickListener {
    null(LuaWebView this$0) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) {
      LuaWebView.Download.a(this.a, this.a.a.getText().toString());
      LuaWebView.Download.a(this.a, false);
    }
  }
  
  private class DownloadBroadcastReceiver extends BroadcastReceiver {
    private DownloadBroadcastReceiver(LuaWebView this$0) {}
    
    public void onReceive(Context param1Context, Intent param1Intent) {
      long l = param1Intent.getLongExtra("extra_download_id", 0L);
      param1Intent.getExtras();
      if (LuaWebView.e(this.a).containsKey(Long.valueOf(l)) && LuaWebView.f(this.a) != null) {
        String[] arrayOfString = (String[])LuaWebView.e(this.a).get(Long.valueOf(l));
        LuaWebView.f(this.a).onDownloadComplete(arrayOfString[0], arrayOfString[1]);
      } 
    }
  }
  
  public static interface JsInterface {
    @JavascriptInterface
    String execute(String param1String);
  }
  
  class JsObject {
    private LuaWebView.JsInterface b;
    
    public JsObject(LuaWebView this$0, LuaWebView.JsInterface param1JsInterface) { this.b = param1JsInterface; }
    
    @JavascriptInterface
    public String execute(String param1String) { return this.b.execute(param1String); }
  }
  
  private class LuaJavaScriptInterface {
    private LuaActivity b;
    
    public LuaJavaScriptInterface(LuaWebView this$0, LuaActivity param1LuaActivity) { this.b = param1LuaActivity; }
    
    @JavascriptInterface
    public Object callLuaFunction(String param1String) { return this.b.runFunc(param1String, new Object[0]); }
    
    @JavascriptInterface
    public Object callLuaFunction(String param1String1, String param1String2) { return this.b.runFunc(param1String1, new Object[] { param1String2 }); }
    
    @JavascriptInterface
    public Object doLuaString(String param1String) { return this.b.doString(param1String, new Object[0]); }
  }
  
  class LuaWebChromeClient extends WebChromeClient {
    EditText a = new EditText(LuaWebView.b(this.b));
    
    LuaWebChromeClient(LuaWebView this$0) {}
    
    public Bitmap getDefaultVideoPoster() { return BitmapFactory.decodeResource(LuaWebView.b(this.b).getResources(), 2130771968); }
    
    public boolean onJsAlert(WebView param1WebView, String param1String1, String param1String2, JsResult param1JsResult) {
      (new AlertDialog.Builder(LuaWebView.b(this.b))).setTitle(param1String1).setMessage(param1String2).setPositiveButton(17039370, new DialogInterface.OnClickListener(this, param1JsResult) {
            public void onClick(DialogInterface param2DialogInterface, int param2Int) { this.a.confirm(); }
          }).setCancelable(false).create().show();
      return true;
    }
    
    public boolean onJsConfirm(WebView param1WebView, String param1String1, String param1String2, JsResult param1JsResult) {
      AlertDialog.Builder builder = new AlertDialog.Builder(LuaWebView.b(this.b));
      builder.setTitle(param1String1);
      builder.setMessage(param1String2);
      builder.setPositiveButton(17039370, new DialogInterface.OnClickListener(this, param1JsResult) {
            public void onClick(DialogInterface param2DialogInterface, int param2Int) { this.a.confirm(); }
          });
      builder.setNegativeButton(17039360, new DialogInterface.OnClickListener(this, param1JsResult) {
            public void onClick(DialogInterface param2DialogInterface, int param2Int) { this.a.cancel(); }
          });
      builder.setCancelable(false);
      builder.create();
      builder.show();
      return true;
    }
    
    public boolean onJsPrompt(WebView param1WebView, String param1String1, String param1String2, String param1String3, JsPromptResult param1JsPromptResult) {
      this.a.setText(param1String3);
      AlertDialog.Builder builder = new AlertDialog.Builder(LuaWebView.b(this.b));
      builder.setTitle(param1String1);
      builder.setMessage(param1String2);
      builder.setView(this.a);
      builder.setPositiveButton(17039370, new DialogInterface.OnClickListener(this, param1JsPromptResult) {
            public void onClick(DialogInterface param2DialogInterface, int param2Int) {
              String str = this.b.a.getText().toString();
              this.a.confirm(str);
            }
          });
      builder.setNegativeButton(17039360, new DialogInterface.OnClickListener(this, param1JsPromptResult) {
            public void onClick(DialogInterface param2DialogInterface, int param2Int) { this.a.cancel(); }
          });
      builder.setOnCancelListener(new DialogInterface.OnCancelListener(this, param1JsPromptResult) {
            public void onCancel(DialogInterface param2DialogInterface) { this.a.cancel(); }
          });
      builder.show();
      return true;
    }
    
    public void onProgressChanged(WebView param1WebView, int param1Int) {
      if (param1Int == 100) {
        LuaWebView.h(this.b).setVisibility(8);
      } else {
        LuaWebView.h(this.b).setVisibility(0);
        LuaWebView.h(this.b).setProgress(param1Int);
      } 
      super.onProgressChanged(param1WebView, param1Int);
    }
    
    public void onReceivedIcon(WebView param1WebView, Bitmap param1Bitmap) {
      super.onReceivedIcon(param1WebView, param1Bitmap);
      if (LuaWebView.j(this.b) != null)
        LuaWebView.j(this.b).onReceivedIcon(param1Bitmap); 
    }
    
    public void onReceivedTitle(WebView param1WebView, String param1String) {
      super.onReceivedTitle(param1WebView, param1String);
      if (LuaWebView.i(this.b) != null)
        LuaWebView.i(this.b).onReceivedTitle(param1String); 
    }
    
    public void openFileChooser(ValueCallback<Uri> param1ValueCallback) { openFileChooser(param1ValueCallback, ""); }
    
    public void openFileChooser(ValueCallback<Uri> param1ValueCallback, String param1String) {
      if (LuaWebView.d(this.b) != null)
        return; 
      LuaWebView.a(this.b, param1ValueCallback);
      this.b.openFile(LuaWebView.c(this.b));
    }
    
    public void openFileChooser(ValueCallback<Uri> param1ValueCallback, String param1String1, String param1String2) { openFileChooser(param1ValueCallback, param1String1); }
  }
  
  class null implements DialogInterface.OnClickListener {
    null(LuaWebView this$0, JsResult param1JsResult) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) { this.a.confirm(); }
  }
  
  class null implements DialogInterface.OnClickListener {
    null(LuaWebView this$0, JsResult param1JsResult) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) { this.a.confirm(); }
  }
  
  class null implements DialogInterface.OnClickListener {
    null(LuaWebView this$0, JsResult param1JsResult) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) { this.a.cancel(); }
  }
  
  class null implements DialogInterface.OnClickListener {
    null(LuaWebView this$0, JsPromptResult param1JsPromptResult) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) {
      String str = this.b.a.getText().toString();
      this.a.confirm(str);
    }
  }
  
  class null implements DialogInterface.OnClickListener {
    null(LuaWebView this$0, JsPromptResult param1JsPromptResult) {}
    
    public void onClick(DialogInterface param1DialogInterface, int param1Int) { this.a.cancel(); }
  }
  
  class null implements DialogInterface.OnCancelListener {
    null(LuaWebView this$0, JsPromptResult param1JsPromptResult) {}
    
    public void onCancel(DialogInterface param1DialogInterface) { this.a.cancel(); }
  }
  
  public static interface LuaWebViewClient {
    public static final int ERROR_AUTHENTICATION = -4;
    
    public static final int ERROR_BAD_URL = -12;
    
    public static final int ERROR_CONNECT = -6;
    
    public static final int ERROR_FAILED_SSL_HANDSHAKE = -11;
    
    public static final int ERROR_FILE = -13;
    
    public static final int ERROR_FILE_NOT_FOUND = -14;
    
    public static final int ERROR_HOST_LOOKUP = -2;
    
    public static final int ERROR_IO = -7;
    
    public static final int ERROR_PROXY_AUTHENTICATION = -5;
    
    public static final int ERROR_REDIRECT_LOOP = -9;
    
    public static final int ERROR_TIMEOUT = -8;
    
    public static final int ERROR_TOO_MANY_REQUESTS = -15;
    
    public static final int ERROR_UNKNOWN = -1;
    
    public static final int ERROR_UNSUPPORTED_AUTH_SCHEME = -3;
    
    public static final int ERROR_UNSUPPORTED_SCHEME = -10;
    
    void doUpdateVisitedHistory(WebView param1WebView, String param1String, boolean param1Boolean);
    
    void onFormResubmission(WebView param1WebView, Message param1Message1, Message param1Message2);
    
    void onLoadResource(WebView param1WebView, String param1String);
    
    void onPageFinished(WebView param1WebView, String param1String);
    
    void onPageStarted(WebView param1WebView, String param1String, Bitmap param1Bitmap);
    
    void onProceededAfterSslError(WebView param1WebView, SslError param1SslError);
    
    void onReceivedClientCertRequest(WebView param1WebView, ClientCertRequest param1ClientCertRequest, String param1String);
    
    void onReceivedError(WebView param1WebView, int param1Int, String param1String1, String param1String2);
    
    void onReceivedHttpAuthRequest(WebView param1WebView, HttpAuthHandler param1HttpAuthHandler, String param1String1, String param1String2);
    
    void onReceivedLoginRequest(WebView param1WebView, String param1String1, String param1String2, String param1String3);
    
    void onReceivedSslError(WebView param1WebView, SslErrorHandler param1SslErrorHandler, SslError param1SslError);
    
    void onScaleChanged(WebView param1WebView, float param1Float1, float param1Float2);
    
    @Deprecated
    void onTooManyRedirects(WebView param1WebView, Message param1Message1, Message param1Message2);
    
    void onUnhandledKeyEvent(WebView param1WebView, KeyEvent param1KeyEvent);
    
    WebResourceResponse shouldInterceptRequest(WebView param1WebView, String param1String);
    
    boolean shouldOverrideKeyEvent(WebView param1WebView, KeyEvent param1KeyEvent);
    
    boolean shouldOverrideUrlLoading(WebView param1WebView, String param1String);
  }
  
  public static interface OnDownloadCompleteListener {
    void onDownloadComplete(String param1String1, String param1String2);
  }
  
  public static interface OnDownloadStartListener {
    void onDownloadStart(String param1String1, String param1String2, String param1String3, String param1String4, long param1Long);
  }
  
  public static interface OnReceivedIconListener {
    void onReceivedIcon(Bitmap param1Bitmap);
  }
  
  public static interface OnReceivedTitleListener {
    void onReceivedTitle(String param1String);
  }
  
  private class SimpleLuaWebViewClient extends WebViewClient {
    private LuaWebView.LuaWebViewClient b;
    
    public SimpleLuaWebViewClient(LuaWebView this$0, LuaWebView.LuaWebViewClient param1LuaWebViewClient) { this.b = param1LuaWebViewClient; }
    
    public void doUpdateVisitedHistory(WebView param1WebView, String param1String, boolean param1Boolean) { this.b.doUpdateVisitedHistory(param1WebView, param1String, param1Boolean); }
    
    public void onFormResubmission(WebView param1WebView, Message param1Message1, Message param1Message2) { param1Message1.sendToTarget(); }
    
    public void onLoadResource(WebView param1WebView, String param1String) { this.b.onLoadResource(param1WebView, param1String); }
    
    public void onPageFinished(WebView param1WebView, String param1String) { this.b.onPageFinished(param1WebView, param1String); }
    
    public void onPageStarted(WebView param1WebView, String param1String, Bitmap param1Bitmap) { this.b.onPageStarted(param1WebView, param1String, param1Bitmap); }
    
    public void onProceededAfterSslError(WebView param1WebView, SslError param1SslError) { this.b.onProceededAfterSslError(param1WebView, param1SslError); }
    
    public void onReceivedClientCertRequest(WebView param1WebView, ClientCertRequest param1ClientCertRequest, String param1String) { this.b.onReceivedClientCertRequest(param1WebView, param1ClientCertRequest, param1String); }
    
    public void onReceivedError(WebView param1WebView, int param1Int, String param1String1, String param1String2) { this.b.onReceivedError(param1WebView, param1Int, param1String1, param1String2); }
    
    public void onReceivedHttpAuthRequest(WebView param1WebView, HttpAuthHandler param1HttpAuthHandler, String param1String1, String param1String2) { this.b.onReceivedHttpAuthRequest(param1WebView, param1HttpAuthHandler, param1String1, param1String2); }
    
    public void onReceivedLoginRequest(WebView param1WebView, String param1String1, String param1String2, String param1String3) { this.b.onReceivedLoginRequest(param1WebView, param1String1, param1String2, param1String3); }
    
    public void onReceivedSslError(WebView param1WebView, SslErrorHandler param1SslErrorHandler, SslError param1SslError) { this.b.onReceivedSslError(param1WebView, param1SslErrorHandler, param1SslError); }
    
    public void onScaleChanged(WebView param1WebView, float param1Float1, float param1Float2) { this.b.onScaleChanged(param1WebView, param1Float1, param1Float2); }
    
    @Deprecated
    public void onTooManyRedirects(WebView param1WebView, Message param1Message1, Message param1Message2) { param1Message1.sendToTarget(); }
    
    public void onUnhandledKeyEvent(WebView param1WebView, KeyEvent param1KeyEvent) { this.b.onUnhandledKeyEvent(param1WebView, param1KeyEvent); }
    
    public WebResourceResponse shouldInterceptRequest(WebView param1WebView, WebResourceRequest param1WebResourceRequest) { return super.shouldInterceptRequest(param1WebView, param1WebResourceRequest); }
    
    public WebResourceResponse shouldInterceptRequest(WebView param1WebView, String param1String) {
      if (LuaWebView.a(this.a) != null)
        try {
          if (((Boolean)LuaWebView.a(this.a).call(new Object[] { param1String })).booleanValue())
            return new WebResourceResponse(null, null, null); 
        } catch (LuaException luaException) {
          a.a(luaException);
        }  
      return this.b.shouldInterceptRequest(param1WebView, param1String);
    }
    
    public boolean shouldOverrideKeyEvent(WebView param1WebView, KeyEvent param1KeyEvent) { return this.b.shouldOverrideKeyEvent(param1WebView, param1KeyEvent); }
    
    public boolean shouldOverrideUrlLoading(WebView param1WebView, String param1String) { return this.b.shouldOverrideUrlLoading(param1WebView, param1String); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
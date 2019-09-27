package com.baidu.mobstat;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import org.json.JSONObject;

class bi extends WebViewClient {
  private WeakReference<Context> a;
  
  private WebViewClient b;
  
  public bi(Context paramContext, WebViewClient paramWebViewClient) {
    this.a = new WeakReference(paramContext);
    this.b = paramWebViewClient;
  }
  
  private void a(String paramString) {
    JSONObject jSONObject = new JSONObject(paramString);
    paramString = jSONObject.getString("action");
    jSONObject = jSONObject.getJSONObject("obj");
    Context context = (Context)this.a.get();
    if (context == null)
      return; 
    if ("onPageStart".equals(paramString)) {
      StatService.onPageStart(context, jSONObject.getString("page"));
      return;
    } 
    if ("onPageEnd".equals(paramString)) {
      StatService.onPageEnd(context, jSONObject.getString("page"));
      return;
    } 
    if ("onEvent".equals(paramString)) {
      StatService.onEvent(context, jSONObject.getString("event_id"), jSONObject.getString("label"), jSONObject.getInt("acc"));
      return;
    } 
    if ("onEventStart".equals(paramString)) {
      StatService.onEventStart(context, jSONObject.getString("event_id"), jSONObject.getString("label"));
      return;
    } 
    if ("onEventEnd".equals(paramString)) {
      StatService.onEventEnd(context, jSONObject.getString("event_id"), jSONObject.getString("label"));
      return;
    } 
    if ("onEventDuration".equals(paramString))
      StatService.onEventDuration(context, jSONObject.getString("event_id"), jSONObject.getString("label"), jSONObject.getLong("duration")); 
  }
  
  public void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean) {
    if (this.b != null)
      this.b.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean); 
  }
  
  public void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2) {
    if (this.b != null)
      this.b.onFormResubmission(paramWebView, paramMessage1, paramMessage2); 
  }
  
  public void onLoadResource(WebView paramWebView, String paramString) {
    if (this.b != null)
      this.b.onLoadResource(paramWebView, paramString); 
  }
  
  public void onPageFinished(WebView paramWebView, String paramString) {
    if (this.b != null)
      this.b.onPageFinished(paramWebView, paramString); 
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap) {
    if (this.b != null)
      this.b.onPageStarted(paramWebView, paramString, paramBitmap); 
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2) {
    if (this.b != null)
      this.b.onReceivedError(paramWebView, paramInt, paramString1, paramString2); 
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2) {
    if (this.b != null)
      this.b.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2); 
  }
  
  public void onReceivedLoginRequest(WebView paramWebView, String paramString1, String paramString2, String paramString3) {
    if (this.b != null)
      this.b.onReceivedLoginRequest(paramWebView, paramString1, paramString2, paramString3); 
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError) {
    if (this.b != null)
      this.b.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError); 
  }
  
  public void onScaleChanged(WebView paramWebView, float paramFloat1, float paramFloat2) {
    if (this.b != null)
      this.b.onScaleChanged(paramWebView, paramFloat1, paramFloat2); 
  }
  
  @Deprecated
  public void onTooManyRedirects(WebView paramWebView, Message paramMessage1, Message paramMessage2) {
    if (this.b != null)
      this.b.onTooManyRedirects(paramWebView, paramMessage1, paramMessage2); 
  }
  
  public void onUnhandledKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent) {
    if (this.b != null)
      this.b.onUnhandledKeyEvent(paramWebView, paramKeyEvent); 
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString) { return (this.b != null) ? this.b.shouldInterceptRequest(paramWebView, paramString) : null; }
  
  public boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent) { return (this.b != null) ? this.b.shouldOverrideKeyEvent(paramWebView, paramKeyEvent) : 0; }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString) {
    Log.d("BaiduStatJSInterface", "shouldOverrideUrlLoading");
    try {
      unsupportedEncodingException = URLDecoder.decode(paramString, "UTF-8");
      paramString = unsupportedEncodingException;
      try {
        if (!TextUtils.isEmpty(unsupportedEncodingException)) {
          paramString = unsupportedEncodingException;
          if (unsupportedEncodingException.startsWith("bmtj:")) {
            a(unsupportedEncodingException.substring(5));
            return true;
          } 
        } 
      } catch (UnsupportedEncodingException|org.json.JSONException unsupportedEncodingException2) {
        paramString = unsupportedEncodingException;
        UnsupportedEncodingException unsupportedEncodingException1 = unsupportedEncodingException2;
      } 
    } catch (UnsupportedEncodingException|org.json.JSONException unsupportedEncodingException) {}
    cz.b(unsupportedEncodingException);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
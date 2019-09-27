package com.baidu.mobstat;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

class bg implements Application.ActivityLifecycleCallbacks {
  bg(bf parambf) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {
    Context context = paramActivity.getApplicationContext();
    ch.a().b(context, System.currentTimeMillis());
    if (bf.a(this.a))
      bf.a(this.a, paramActivity, false); 
  }
  
  public void onActivityResumed(Activity paramActivity) {
    Context context = paramActivity.getApplicationContext();
    ch.a().a(context, System.currentTimeMillis());
    if (bf.a(this.a)) {
      bf.a(this.a, paramActivity, true);
      bf.a(this.a, paramActivity);
    } 
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\bg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
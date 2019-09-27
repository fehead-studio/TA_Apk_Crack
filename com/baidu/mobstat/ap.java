package com.baidu.mobstat;

import android.content.Context;
import android.content.Intent;

static enum ap {
  public void a(Context paramContext) {
    if (!au.a(paramContext).b(paramContext))
      return; 
    try {
      Intent intent = new Intent(paramContext, Class.forName("com.baidu.bottom.service.BottomService"));
      intent.putExtra("SDK_PRODUCT_LY", "MS");
      paramContext.startService(intent);
      return;
    } catch (Throwable paramContext) {
      cz.b(paramContext);
      return;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
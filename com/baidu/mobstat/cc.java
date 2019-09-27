package com.baidu.mobstat;

import android.content.Context;
import java.io.File;
import java.util.Arrays;

class cc implements Runnable {
  cc(by paramby, Context paramContext) {}
  
  public void run() {
    try {
      File file = this.a.getFilesDir();
      if (file != null) {
        if (!file.exists())
          return; 
        String[] arrayOfString = file.list(new cd(this));
        if (arrayOfString != null) {
          int i = arrayOfString.length;
          if (i == 0)
            return; 
          try {
            Arrays.sort(arrayOfString, new ce(this));
          } catch (Exception exception) {
            cz.b(exception);
          } 
          int j = arrayOfString.length;
          byte b1 = 0;
          i = 0;
          while (b1 < j) {
            String str1 = arrayOfString[b1];
            String str2 = cs.a(this.a, str1);
            if (by.a(this.b, this.a, str2)) {
              cs.b(this.a, str1);
              i = 0;
            } else {
              int k = i + 1;
              i = k;
              if (k >= 5)
                return; 
            } 
            b1++;
          } 
        } else {
          return;
        } 
      } else {
        return;
      } 
    } catch (Exception exception) {
      cz.b(exception);
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\cc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
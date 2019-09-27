package com.baidu.mobstat;

import android.net.wifi.ScanResult;
import java.util.Comparator;

final class dd extends Object implements Comparator<ScanResult> {
  public int a(ScanResult paramScanResult1, ScanResult paramScanResult2) { return paramScanResult2.level - paramScanResult1.level; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\dd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
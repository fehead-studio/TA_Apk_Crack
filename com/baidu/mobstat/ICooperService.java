package com.baidu.mobstat;

import android.content.Context;
import android.telephony.TelephonyManager;
import org.json.JSONObject;

public interface ICooperService {
  boolean checkCellLocationSetting(Context paramContext);
  
  boolean checkGPSLocationSetting(Context paramContext);
  
  boolean checkWifiLocationSetting(Context paramContext);
  
  String getAppChannel(Context paramContext);
  
  String getAppKey(Context paramContext);
  
  int getAppVersionCode(Context paramContext);
  
  String getAppVersionName(Context paramContext);
  
  String getCUID(Context paramContext, boolean paramBoolean);
  
  String getDeviceId(TelephonyManager paramTelephonyManager, Context paramContext);
  
  String getHost();
  
  String getLinkedWay(Context paramContext);
  
  String getMTJSDKVersion();
  
  String getOSVersion();
  
  String getOperator(TelephonyManager paramTelephonyManager);
  
  String getPhoneModel();
  
  String getSecretValue(String paramString);
  
  int getTagValue();
  
  void installHeader(Context paramContext, JSONObject paramJSONObject);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\baidu\mobstat\ICooperService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
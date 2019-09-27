package com.androlua;

import android.util.Log;
import com.a.a.a.a.a.a.a;
import com.androlua.util.AsyncTaskX;
import com.luajava.LuaException;
import com.luajava.LuaObject;
import com.luajava.LuaString;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Http {
  private static HashMap<String, String> a;
  
  private static String a(HashMap<String, String> paramHashMap) {
    StringBuilder stringBuilder = new StringBuilder();
    for (Map.Entry entry : paramHashMap.entrySet()) {
      stringBuilder.append((String)entry.getKey());
      stringBuilder.append("=");
      stringBuilder.append((String)entry.getValue());
      stringBuilder.append("&");
    } 
    if (!paramHashMap.isEmpty())
      stringBuilder.deleteCharAt(stringBuilder.length() - 1); 
    return stringBuilder.toString();
  }
  
  private static byte[] a(HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2, String paramString) {
    String str = paramString;
    if (paramString == null)
      str = "UTF-8"; 
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    for (Map.Entry entry : paramHashMap1.entrySet()) {
      try {
        byteArrayOutputStream.write(String.format("--%s\r\nContent-Disposition:form-data;name=\"%s\"\r\n\r\n%s\r\n", new Object[] { "----qwertyuiopasdfghjklzxcvbnm", entry.getKey(), entry.getValue() }).getBytes(str));
      } catch (IOException entry) {
        a.a(entry);
      } 
    } 
    for (Map.Entry entry : paramHashMap2.entrySet()) {
      try {
        byteArrayOutputStream.write(String.format("--%s\r\nContent-Disposition:form-data;name=\"%s\";filename=\"%s\"\r\nContent-Type:application/octet-stream\r\n\r\n", new Object[] { "----qwertyuiopasdfghjklzxcvbnm", entry.getKey(), entry.getValue() }).getBytes(str));
        byteArrayOutputStream.write(LuaUtil.readAll(new FileInputStream((String)entry.getValue())));
        byteArrayOutputStream.write("\r\n".getBytes(str));
      } catch (IOException entry) {
        a.a(entry);
      } 
    } 
    return byteArrayOutputStream.toByteArray();
  }
  
  public static HttpTask delete(String paramString, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString, "DELETE", null, null, null, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask delete(String paramString1, String paramString2, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString2.matches("[\\w\\-\\.:]+") && Charset.isSupported(paramString2)) {
      httpTask = new HttpTask(paramString1, "DELETE", null, paramString2, null, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "DELETE", paramString2, null, null, paramLuaObject);
    } 
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask delete(String paramString1, String paramString2, String paramString3, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "DELETE", paramString2, paramString3, null, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask delete(String paramString1, String paramString2, String paramString3, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "DELETE", paramString2, paramString3, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask delete(String paramString1, String paramString2, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString2.matches("[\\w\\-\\.:]+") && Charset.isSupported(paramString2)) {
      httpTask = new HttpTask(paramString1, "DELETE", null, paramString2, paramHashMap, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "DELETE", paramString2, null, paramHashMap, paramLuaObject);
    } 
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask delete(String paramString, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString, "DELETE", null, null, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask download(String paramString1, String paramString2, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "GET", null, null, null, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask download(String paramString1, String paramString2, String paramString3, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "GET", paramString3, null, null, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask download(String paramString1, String paramString2, String paramString3, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "GET", paramString3, null, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask download(String paramString1, String paramString2, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "GET", null, null, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask get(String paramString, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString, "GET", null, null, null, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask get(String paramString1, String paramString2, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString2.matches("[\\w\\-\\.:]+") && Charset.isSupported(paramString2)) {
      httpTask = new HttpTask(paramString1, "GET", null, paramString2, null, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "GET", paramString2, null, null, paramLuaObject);
    } 
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask get(String paramString1, String paramString2, String paramString3, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "GET", paramString2, paramString3, null, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask get(String paramString1, String paramString2, String paramString3, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "GET", paramString2, paramString3, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask get(String paramString1, String paramString2, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString2.matches("[\\w\\-\\.:]+") && Charset.isSupported(paramString2)) {
      httpTask = new HttpTask(paramString1, "GET", null, paramString2, paramHashMap, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "GET", paramString2, null, paramHashMap, paramLuaObject);
    } 
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HttpTask get(String paramString, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString, "GET", null, null, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[0]);
    return httpTask;
  }
  
  public static HashMap<String, String> getHeader() { return a; }
  
  public static HttpTask post(String paramString1, String paramString2, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "POST", null, null, null, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask post(String paramString1, String paramString2, String paramString3, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString3.matches("[\\w\\-.:]+") && Charset.isSupported(paramString3)) {
      httpTask = new HttpTask(paramString1, "POST", null, paramString3, null, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "POST", paramString3, null, null, paramLuaObject);
    } 
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask post(String paramString1, String paramString2, String paramString3, String paramString4, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "POST", paramString3, paramString4, null, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask post(String paramString1, String paramString2, String paramString3, String paramString4, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "POST", paramString3, paramString4, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask post(String paramString1, String paramString2, String paramString3, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString3.matches("[\\w\\-.:]+") && Charset.isSupported(paramString3)) {
      httpTask = new HttpTask(paramString1, "POST", null, paramString3, paramHashMap, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "POST", paramString3, null, paramHashMap, paramLuaObject);
    } 
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask post(String paramString1, String paramString2, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "POST", null, null, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask post(String paramString, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) { return post(paramString, a(paramHashMap), paramLuaObject); }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap, String paramString2, LuaObject paramLuaObject) { return post(paramString1, a(paramHashMap), paramString2, paramLuaObject); }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap, String paramString2, String paramString3, LuaObject paramLuaObject) { return post(paramString1, a(paramHashMap), paramString2, paramString3, paramLuaObject); }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap1, String paramString2, String paramString3, HashMap<String, String> paramHashMap2, LuaObject paramLuaObject) { return post(paramString1, a(paramHashMap1), paramString2, paramString3, paramHashMap2, paramLuaObject); }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap1, String paramString2, HashMap<String, String> paramHashMap2, LuaObject paramLuaObject) { return post(paramString1, a(paramHashMap1), paramString2, paramHashMap2, paramLuaObject); }
  
  public static HttpTask post(String paramString, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2, LuaObject paramLuaObject) { return post(paramString, paramHashMap1, paramHashMap2, null, null, null, paramLuaObject); }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2, String paramString2, LuaObject paramLuaObject) { return post(paramString1, paramHashMap1, paramHashMap2, paramString2, new HashMap(), paramLuaObject); }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2, String paramString2, String paramString3, LuaObject paramLuaObject) { return post(paramString1, paramHashMap1, paramHashMap2, paramString2, paramString3, null, paramLuaObject); }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2, String paramString2, String paramString3, HashMap<String, String> paramHashMap3, LuaObject paramLuaObject) {
    HashMap<String, String> hashMap = paramHashMap3;
    if (paramHashMap3 == null)
      hashMap = new HashMap<String, String>(); 
    hashMap.put("Content-Type", "multipart/form-data;boundary=----qwertyuiopasdfghjklzxcvbnm");
    HttpTask httpTask = new HttpTask(paramString1, "POST", paramString2, paramString3, hashMap, paramLuaObject);
    httpTask.execute(new Object[] { a(paramHashMap1, paramHashMap2, paramString3) });
    return httpTask;
  }
  
  public static HttpTask post(String paramString1, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2, String paramString2, HashMap<String, String> paramHashMap3, LuaObject paramLuaObject) { return (paramString2.matches("[\\w\\-.:]+") && Charset.isSupported(paramString2)) ? post(paramString1, paramHashMap1, paramHashMap2, paramString2, null, paramHashMap3, paramLuaObject) : post(paramString1, paramHashMap1, paramHashMap2, null, paramString2, paramHashMap3, paramLuaObject); }
  
  public static HttpTask post(String paramString, HashMap<String, String> paramHashMap1, HashMap<String, String> paramHashMap2, HashMap<String, String> paramHashMap3, LuaObject paramLuaObject) { return post(paramString, paramHashMap1, paramHashMap2, null, paramHashMap3, paramLuaObject); }
  
  public static HttpTask put(String paramString1, String paramString2, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "PUT", null, null, null, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask put(String paramString1, String paramString2, String paramString3, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString3.matches("[\\w\\-\\.:]+") && Charset.isSupported(paramString3)) {
      httpTask = new HttpTask(paramString1, "PUT", null, paramString3, null, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "PUT", paramString3, null, null, paramLuaObject);
    } 
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask put(String paramString1, String paramString2, String paramString3, String paramString4, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "PUT", paramString3, paramString4, null, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask put(String paramString1, String paramString2, String paramString3, String paramString4, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "PUT", paramString3, paramString4, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask put(String paramString1, String paramString2, String paramString3, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask;
    if (paramString3.matches("[\\w\\-\\.:]+") && Charset.isSupported(paramString3)) {
      httpTask = new HttpTask(paramString1, "PUT", null, paramString3, paramHashMap, paramLuaObject);
    } else {
      httpTask = new HttpTask(httpTask, "PUT", paramString3, null, paramHashMap, paramLuaObject);
    } 
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static HttpTask put(String paramString1, String paramString2, HashMap<String, String> paramHashMap, LuaObject paramLuaObject) {
    HttpTask httpTask = new HttpTask(paramString1, "PUT", null, null, paramHashMap, paramLuaObject);
    httpTask.execute(new Object[] { paramString2 });
    return httpTask;
  }
  
  public static void setHeader(HashMap<String, String> paramHashMap) { a = paramHashMap; }
  
  public static void setUserAgent(String paramString) {
    if (a == null)
      a = new HashMap(); 
    a.put("User-Agent", paramString);
  }
  
  public static class HttpTask extends AsyncTaskX<Object, Object, Object> {
    private String a;
    
    private LuaObject b;
    
    private byte[] c;
    
    private String d;
    
    private String e;
    
    private String f;
    
    private HashMap<String, String> g;
    
    private String h;
    
    public HttpTask(String param1String1, String param1String2, String param1String3, String param1String4, HashMap<String, String> param1HashMap, LuaObject param1LuaObject) {
      this.a = param1String1;
      this.h = param1String2;
      this.f = param1String3;
      this.d = param1String4;
      this.e = param1String4;
      this.g = param1HashMap;
      this.b = param1LuaObject;
    }
    
    private byte[] a(Map<String, String> param1Map) {
      StringBuilder stringBuilder = new StringBuilder();
      for (Map.Entry entry : param1Map.entrySet()) {
        stringBuilder.append((String)entry.getKey());
        stringBuilder.append("=");
        stringBuilder.append((String)entry.getValue());
        stringBuilder.append("&");
      } 
      return stringBuilder.toString().getBytes(this.d);
    }
    
    private byte[] d(Object[] param1ArrayOfObject) {
      if (param1ArrayOfObject.length == 1) {
        Object object = param1ArrayOfObject[0];
        if (object instanceof String)
          return ((String)object).getBytes(this.d); 
        if (object.getClass().getComponentType() == byte.class)
          return (byte[])object; 
        if (object instanceof File)
          return LuaUtil.readAll(new FileInputStream((File)object)); 
        if (object instanceof Map)
          return a((Map)object); 
      } 
      return null;
    }
    
    protected Object a(Object[] param1ArrayOfObject) {
      try {
        HttpURLConnection httpURLConnection = (HttpURLConnection)(new URL(this.a)).openConnection();
        httpURLConnection.setConnectTimeout(6000);
        HttpURLConnection.setFollowRedirects(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Accept-Language", "zh-cn,zh;q=0.5");
        if (this.d == null)
          this.d = "UTF-8"; 
        httpURLConnection.setRequestProperty("Accept-Charset", this.d);
        if (this.f != null)
          httpURLConnection.setRequestProperty("Cookie", this.f); 
        if (Http.a() != null)
          for (Map.Entry entry : Http.a().entrySet())
            httpURLConnection.setRequestProperty((String)entry.getKey(), (String)entry.getValue());  
        if (this.g != null)
          for (Map.Entry entry : this.g.entrySet())
            httpURLConnection.setRequestProperty((String)entry.getKey(), (String)entry.getValue());  
        if (this.h != null)
          httpURLConnection.setRequestMethod(this.h); 
        if (!"GET".equals(this.h) && param1ArrayOfObject.length != 0) {
          this.c = d(param1ArrayOfObject);
          httpURLConnection.setDoOutput(true);
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append("");
          stringBuilder.append(this.c.length);
          httpURLConnection.setRequestProperty("Content-length", stringBuilder.toString());
        } 
        httpURLConnection.connect();
        if ("GET".equals(this.h) && param1ArrayOfObject.length != 0) {
          File file = new File((String)param1ArrayOfObject[0]);
          if (!file.getParentFile().exists())
            file.getParentFile().mkdirs(); 
          FileOutputStream fileOutputStream = new FileOutputStream(file);
          LuaUtil.copyFile(httpURLConnection.getInputStream(), fileOutputStream);
          return new Object[] { Integer.valueOf(httpURLConnection.getResponseCode()), param1ArrayOfObject[0], httpURLConnection.getHeaderFields() };
        } 
        if (param1ArrayOfObject.length != 0)
          httpURLConnection.getOutputStream().write(this.c); 
        int i = httpURLConnection.getResponseCode();
        Map map = httpURLConnection.getHeaderFields();
        httpURLConnection.getContentEncoding();
        List list = (List)map.get("Set-Cookie");
        StringBuilder stringBuilder1 = new StringBuilder();
        if (list != null) {
          Iterator iterator = list.iterator();
          while (iterator.hasNext()) {
            stringBuilder1.append((String)iterator.next());
            stringBuilder1.append(";");
          } 
        } 
        list = (List)map.get("Content-Type");
        if (list != null)
          for (String str : list) {
            int j = str.indexOf("charset");
            if (j != -1) {
              int k = str.indexOf("=", j);
              if (k != -1) {
                int m = str.indexOf(";", k);
                j = m;
                if (m == -1)
                  j = str.length(); 
                this.d = str.substring(k + 1, j);
                break;
              } 
            } 
          }  
        str3 = this.e;
        if (str3 == null)
          try {
            InputStream inputStream1 = httpURLConnection.getInputStream();
            byte[] arrayOfByte = LuaUtil.readAll(inputStream1);
            inputStream1.close();
            LuaString luaString = new LuaString(arrayOfByte);
            String str = stringBuilder1.toString();
            return new Object[] { Integer.valueOf(i), luaString, str, map };
          } catch (Exception str3) {
            a.a(str3);
          }  
        StringBuilder stringBuilder2 = new StringBuilder();
        try {
          InputStream inputStream1 = httpURLConnection.getInputStream();
          BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream1, this.d));
          while (true) {
            String str = bufferedReader.readLine();
            if (str != null && !isCancelled()) {
              stringBuilder2.append(str);
              stringBuilder2.append('\n');
              continue;
            } 
            break;
          } 
          inputStream1.close();
        } catch (Exception exception) {
          a.a(exception);
        } 
        InputStream inputStream = httpURLConnection.getErrorStream();
        if (inputStream != null) {
          BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, this.d));
          while (true) {
            String str = bufferedReader.readLine();
            if (str != null && !isCancelled()) {
              stringBuilder2.append(str);
              stringBuilder2.append('\n');
              continue;
            } 
            break;
          } 
          inputStream.close();
        } 
        String str1 = new String(stringBuilder2);
        String str2 = stringBuilder1.toString();
        return new Object[] { Integer.valueOf(i), str1, str2, map };
      } catch (Exception param1ArrayOfObject) {
        a.a(param1ArrayOfObject);
        return new Object[] { Integer.valueOf(-1), param1ArrayOfObject.getMessage() };
      } 
    }
    
    protected void a(Object param1Object) {
      if (isCancelled())
        return; 
      try {
        this.b.call((Object[])param1Object);
        return;
      } catch (LuaException param1Object) {
        try {
          this.b.getLuaState().getLuaObject("print").call(new Object[] { param1Object.getMessage() });
        } catch (LuaException luaException) {}
        Log.i("lua", param1Object.getMessage());
        return;
      } 
    }
    
    public boolean cancel() { return cancel(true); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\Http.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
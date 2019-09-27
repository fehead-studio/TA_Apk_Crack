package com.androlua;

import android.util.Log;
import com.a.a.a.a.a.a.a;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Socket;

public class LuaClient implements LuaGcable {
  private OnReadLineListener a;
  
  private Socket b;
  
  private BufferedReader c;
  
  private BufferedWriter d;
  
  private boolean e;
  
  public LuaClient() {}
  
  public LuaClient(LuaContext paramLuaContext) { paramLuaContext.regGc(this); }
  
  public boolean flush() {
    try {
      this.d.flush();
      return true;
    } catch (Exception exception) {
      a.a(exception);
      return false;
    } 
  }
  
  public void gc() {
    stop();
    this.e = true;
  }
  
  public boolean isGc() { return this.e; }
  
  public boolean newLine() {
    try {
      this.d.newLine();
      this.d.flush();
      return true;
    } catch (Exception exception) {
      a.a(exception);
      return false;
    } 
  }
  
  public void setOnReadLineListener(OnReadLineListener paramOnReadLineListener) { this.a = paramOnReadLineListener; }
  
  public boolean start(String paramString, int paramInt) {
    if (this.b != null)
      return false; 
    try {
      this.b = new Socket(paramString, paramInt);
      this.c = new BufferedReader(new InputStreamReader(this.b.getInputStream()));
      this.d = new BufferedWriter(new OutputStreamWriter(this.b.getOutputStream()));
      (new SocketThread(this, this.b)).start();
      return true;
    } catch (IOException paramString) {
      a.a(paramString);
      return false;
    } 
  }
  
  public boolean stop() {
    if (this.b == null)
      return false; 
    try {
      this.b.close();
      return true;
    } catch (Exception exception) {
      a.a(exception);
      return false;
    } 
  }
  
  public boolean write(String paramString) {
    try {
      this.d.write(paramString);
      return true;
    } catch (Exception paramString) {
      a.a(paramString);
      return false;
    } 
  }
  
  public static interface OnReadLineListener {
    void onReadLine(LuaClient param1LuaClient, LuaClient.SocketThread param1SocketThread, String param1String);
  }
  
  private class SocketThread extends Thread {
    private final Socket b;
    
    public SocketThread(LuaClient this$0, Socket param1Socket) { this.b = param1Socket; }
    
    public boolean close() {
      try {
        this.b.close();
        return true;
      } catch (Exception exception) {
        a.a(exception);
        return false;
      } 
    }
    
    public boolean flush() {
      try {
        LuaClient.c(this.a).flush();
        return true;
      } catch (Exception exception) {
        a.a(exception);
        return false;
      } 
    }
    
    public boolean newLine() {
      try {
        LuaClient.c(this.a).newLine();
        LuaClient.c(this.a).flush();
        return true;
      } catch (Exception exception) {
        a.a(exception);
        return false;
      } 
    }
    
    public void run() {
      try {
        while (true) {
          String str = LuaClient.a(this.a).readLine();
          if (str != null) {
            if (LuaClient.b(this.a) != null)
              LuaClient.b(this.a).onReadLine(this.a, this, str); 
            continue;
          } 
          break;
        } 
      } catch (Exception exception) {
        a.a(exception);
      } 
    }
    
    public boolean write(String param1String) {
      try {
        Log.i("lua", param1String);
        LuaClient.c(this.a).write(param1String);
        return true;
      } catch (Exception param1String) {
        a.a(param1String);
        return false;
      } 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.androlua;

import com.a.a.a.a.a.a.a;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class LuaServer implements LuaGcable {
  private ServerSocket a;
  
  private OnReadLineListener b;
  
  private boolean c;
  
  public LuaServer() {}
  
  public LuaServer(LuaContext paramLuaContext) { paramLuaContext.regGc(this); }
  
  public void gc() {
    if (this.a == null)
      return; 
    try {
      this.a.close();
    } catch (Exception exception) {
      a.a(exception);
    } 
    this.c = true;
  }
  
  public boolean isGc() { return this.c; }
  
  public void setOnReadLineListener(OnReadLineListener paramOnReadLineListener) { this.b = paramOnReadLineListener; }
  
  public boolean start(int paramInt) {
    if (this.a != null)
      return false; 
    try {
      this.a = new ServerSocket(paramInt);
      (new ServerThread(this, this.a)).start();
      return true;
    } catch (Exception exception) {
      a.a(exception);
      return false;
    } 
  }
  
  public boolean stop() {
    try {
      this.a.close();
      this.a = null;
      return true;
    } catch (Exception exception) {
      a.a(exception);
      return false;
    } 
  }
  
  public static interface OnReadLineListener {
    void onReadLine(LuaServer param1LuaServer, LuaServer.SocketThread param1SocketThread, String param1String);
  }
  
  private class ServerThread extends Thread {
    private final ServerSocket b;
    
    public ServerThread(LuaServer this$0, ServerSocket param1ServerSocket) { this.b = param1ServerSocket; }
    
    public void run() {
      while (true) {
        try {
          while (true) {
            Socket socket = LuaServer.a(this.a).accept();
            (new LuaServer.SocketThread(this.a, socket)).start();
          } 
          break;
        } catch (Exception exception) {
          a.a(exception);
        } 
      } 
    }
  }
  
  private class SocketThread extends Thread {
    private final Socket b;
    
    private BufferedWriter c;
    
    public SocketThread(LuaServer this$0, Socket param1Socket) { this.b = param1Socket; }
    
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
        this.c.flush();
        return true;
      } catch (Exception exception) {
        a.a(exception);
        return false;
      } 
    }
    
    public boolean newLine() {
      try {
        this.c.newLine();
        this.c.flush();
        return true;
      } catch (Exception exception) {
        a.a(exception);
        return false;
      } 
    }
    
    public void run() {
      try {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.b.getInputStream()));
        this.c = new BufferedWriter(new OutputStreamWriter(this.b.getOutputStream()));
        while (true) {
          String str = bufferedReader.readLine();
          if (str != null) {
            if (LuaServer.b(this.a) != null)
              LuaServer.b(this.a).onReadLine(this.a, this, str); 
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
        this.c.write(param1String);
        return true;
      } catch (Exception param1String) {
        a.a(param1String);
        return false;
      } 
    }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\androlua\LuaServer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
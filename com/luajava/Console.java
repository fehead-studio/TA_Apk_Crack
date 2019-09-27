package com.luajava;

import com.a.a.a.a.a.a.a;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintStream;

public class Console {
  public static void main(String[] paramArrayOfString) {
    try {
      LuaState luaState = LuaStateFactory.newLuaState();
      luaState.openLibs();
      if (paramArrayOfString.length > 0) {
        for (byte b = 0; b < paramArrayOfString.length; b++) {
          int j = luaState.LloadFile(paramArrayOfString[b]);
          int i = j;
          if (j == 0)
            i = luaState.pcall(0, 0, 0); 
          if (i != 0) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Error on file: ");
            stringBuilder.append(paramArrayOfString[b]);
            stringBuilder.append(". ");
            stringBuilder.append(luaState.toString(-1));
            throw new LuaException(stringBuilder.toString());
          } 
        } 
      } else {
        System.out.println("API Lua Java - console mode.");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        PrintStream printStream = System.out;
        while (true) {
          printStream.print("> ");
          String str = bufferedReader.readLine();
          if (str != null && !str.equals("exit")) {
            int j = luaState.LloadBuffer(str.getBytes(), "from console");
            int i = j;
            if (j == 0)
              i = luaState.pcall(0, 0, 0); 
            if (i != 0) {
              PrintStream printStream2 = System.err;
              StringBuilder stringBuilder = new StringBuilder();
              stringBuilder.append("Error on line: ");
              stringBuilder.append(str);
              printStream2.println(stringBuilder.toString());
              System.err.println(luaState.toString(-1));
            } 
            PrintStream printStream1 = System.out;
            continue;
          } 
          break;
        } 
        luaState.close();
        return;
      } 
    } catch (Exception paramArrayOfString) {
      a.a(paramArrayOfString);
      return;
    } 
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\Console.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package bsh;

import java.io.FilterReader;
import java.io.InputStreamReader;
import java.io.Reader;

class CommandLineReader extends FilterReader {
  int a = 1;
  
  public CommandLineReader(Reader paramReader) { super(paramReader); }
  
  public static void main(String[] paramArrayOfString) {
    CommandLineReader commandLineReader = new CommandLineReader(new InputStreamReader(System.in));
    while (true)
      System.out.println(commandLineReader.read()); 
  }
  
  public int read() {
    int i;
    if (this.a == 2) {
      this.a = 1;
      return 10;
    } 
    do {
      i = this.in.read();
    } while (i == 13);
    if (i == 10) {
      if (this.a == 1) {
        this.a = 2;
        return 59;
      } 
      this.a = 1;
      return i;
    } 
    this.a = 0;
    return i;
  }
  
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2) {
    paramInt2 = read();
    if (paramInt2 == -1)
      return -1; 
    paramArrayOfChar[paramInt1] = (char)paramInt2;
    return 1;
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\CommandLineReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
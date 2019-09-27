package bsh;

import java.io.PrintStream;
import java.io.Reader;

public interface ConsoleInterface {
  void error(Object paramObject);
  
  PrintStream getErr();
  
  Reader getIn();
  
  PrintStream getOut();
  
  void print(Object paramObject);
  
  void println(Object paramObject);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ConsoleInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
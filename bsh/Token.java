package bsh;

import java.io.Serializable;

public class Token implements Serializable {
  public int beginColumn;
  
  public int beginLine;
  
  public int endColumn;
  
  public int endLine;
  
  public String image;
  
  public int kind;
  
  public Token next;
  
  public Token specialToken;
  
  public static final Token newToken(int paramInt) { return new Token(); }
  
  public String toString() { return this.image; }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Token.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
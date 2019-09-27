package bsh;

public class TokenMgrError extends Error {
  int a;
  
  public TokenMgrError() {}
  
  public TokenMgrError(String paramString, int paramInt) {
    super(paramString);
    this.a = paramInt;
  }
  
  public TokenMgrError(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, String paramString, char paramChar, int paramInt4) { this(a(paramBoolean, paramInt1, paramInt2, paramInt3, paramString, paramChar), paramInt4); }
  
  protected static final String a(String paramString) {
    StringBuffer stringBuffer = new StringBuffer();
    for (byte b = 0;; b++) {
      if (b >= paramString.length())
        return stringBuffer.toString(); 
      char c = paramString.charAt(b);
      if (c != '\000')
        if (c != '"') {
          if (c != '\'') {
            if (c != '\\') {
              String str;
              char c1;
              switch (c) {
                default:
                  switch (c) {
                    default:
                      c1 = paramString.charAt(b);
                      if (c1 < ' ' || c1 > '~') {
                        StringBuffer stringBuffer1 = new StringBuffer();
                        stringBuffer1.append("0000");
                        stringBuffer1.append(Integer.toString(c1, 16));
                        String str1 = stringBuffer1.toString();
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("\\u");
                        stringBuffer2.append(str1.substring(str1.length() - 4, str1.length()));
                        str1 = stringBuffer2.toString();
                        break;
                      } 
                      stringBuffer.append(c1);
                      break;
                    case '\r':
                      str = "\\r";
                      break;
                    case '\f':
                      str = "\\f";
                      break;
                  } 
                  stringBuffer.append(str);
                case '\n':
                  str = "\\n";
                  stringBuffer.append(str);
                case '\t':
                  str = "\\t";
                  stringBuffer.append(str);
                case '\b':
                  str = "\\b";
                  stringBuffer.append(str);
              } 
            } else {
              String str = "\\\\";
              stringBuffer.append(str);
            } 
          } else {
            String str = "\\'";
            stringBuffer.append(str);
          } 
        } else {
          String str = "\\\"";
          stringBuffer.append(str);
        }  
    } 
  }
  
  protected static String a(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, String paramString, char paramChar) {
    String str;
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Lexical error at line ");
    stringBuffer.append(paramInt2);
    stringBuffer.append(", column ");
    stringBuffer.append(paramInt3);
    stringBuffer.append(".  Encountered: ");
    if (paramBoolean) {
      str = "<EOF> ";
    } else {
      StringBuffer stringBuffer1 = new StringBuffer();
      stringBuffer1.append("\"");
      stringBuffer1.append(a(String.valueOf(paramChar)));
      stringBuffer1.append("\"");
      stringBuffer1.append(" (");
      stringBuffer1.append(paramChar);
      stringBuffer1.append("), ");
      str = stringBuffer1.toString();
    } 
    stringBuffer.append(str);
    stringBuffer.append("after : \"");
    stringBuffer.append(a(paramString));
    stringBuffer.append("\"");
    return stringBuffer.toString();
  }
  
  public String getMessage() { return super.getMessage(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\TokenMgrError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
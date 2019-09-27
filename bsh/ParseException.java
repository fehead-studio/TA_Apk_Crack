package bsh;

public class ParseException extends EvalError {
  public Token currentToken;
  
  String d = "<unknown>";
  
  protected boolean e = false;
  
  public int[][] expectedTokenSequences;
  
  protected String f = System.getProperty("line.separator", "\n");
  
  public String[] tokenImage;
  
  public ParseException() {
    this("");
    this.e = false;
  }
  
  public ParseException(Token paramToken, int[][] paramArrayOfInt, String[] paramArrayOfString) {
    this();
    this.e = true;
    this.currentToken = paramToken;
    this.expectedTokenSequences = paramArrayOfInt;
    this.tokenImage = paramArrayOfString;
  }
  
  public ParseException(String paramString) { super(paramString, null, null); }
  
  protected String b(String paramString) {
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
  
  public int getErrorLineNumber() { return this.currentToken.next.beginLine; }
  
  public String getErrorSourceFile() { return this.d; }
  
  public String getErrorText() {
    byte b = 0;
    for (int i = 0;; i = j) {
      if (b >= this.expectedTokenSequences.length) {
        Token token = this.currentToken.next;
        String str = "";
        for (b = 0;; b++) {
          if (b >= i)
            return str; 
          String str2 = str;
          if (b) {
            StringBuffer stringBuffer1 = new StringBuffer();
            stringBuffer1.append(str);
            stringBuffer1.append(" ");
            str2 = stringBuffer1.toString();
          } 
          if (token.kind == 0) {
            StringBuffer stringBuffer1 = new StringBuffer();
            stringBuffer1.append(str2);
            stringBuffer1.append(this.tokenImage[0]);
            return stringBuffer1.toString();
          } 
          StringBuffer stringBuffer = new StringBuffer();
          stringBuffer.append(str2);
          stringBuffer.append(b(token.image));
          String str1 = stringBuffer.toString();
          token = token.next;
        } 
        break;
      } 
      int j = i;
      if (i < this.expectedTokenSequences[b].length)
        j = this.expectedTokenSequences[b].length; 
      b++;
    } 
  }
  
  public String getMessage() { return getMessage(false); }
  
  public String getMessage(boolean paramBoolean) {
    if (!this.e)
      return super.getMessage(); 
    String str = "";
    byte b = 0;
    int i = 0;
    label40: while (true) {
      if (b >= this.expectedTokenSequences.length) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("In file: ");
        stringBuffer.append(this.d);
        stringBuffer.append(" Encountered \"");
        String str2 = stringBuffer.toString();
        Token token = this.currentToken.next;
        b = 0;
        while (true) {
          if (b < i) {
            String str5 = str2;
            if (b) {
              StringBuffer stringBuffer2 = new StringBuffer();
              stringBuffer2.append(str2);
              stringBuffer2.append(" ");
              str5 = stringBuffer2.toString();
            } 
            if (token.kind == 0) {
              StringBuffer stringBuffer2 = new StringBuffer();
              stringBuffer2.append(str5);
              stringBuffer2.append(this.tokenImage[0]);
              str3 = stringBuffer2.toString();
            } else {
              StringBuffer stringBuffer2 = new StringBuffer();
              stringBuffer2.append(str5);
              stringBuffer2.append(b(token.image));
              str3 = stringBuffer2.toString();
              token = token.next;
              b++;
              continue;
            } 
          } 
          StringBuffer stringBuffer1 = new StringBuffer();
          stringBuffer1.append(str3);
          stringBuffer1.append("\" at line ");
          stringBuffer1.append(this.currentToken.next.beginLine);
          stringBuffer1.append(", column ");
          stringBuffer1.append(this.currentToken.next.beginColumn);
          stringBuffer1.append(".");
          stringBuffer1.append(this.f);
          String str4 = stringBuffer1.toString();
          String str3 = str4;
          if (paramBoolean) {
            if (this.expectedTokenSequences.length == 1) {
              StringBuffer stringBuffer3 = new StringBuffer();
              stringBuffer3.append(str4);
              String str6 = "Was expecting:";
              stringBuffer2 = stringBuffer3;
              String str5 = str6;
            } else {
              StringBuffer stringBuffer3 = new StringBuffer();
              stringBuffer3.append(stringBuffer2);
              str3 = "Was expecting one of:";
              stringBuffer2 = stringBuffer3;
            } 
            stringBuffer2.append(str3);
            stringBuffer2.append(this.f);
            stringBuffer2.append("    ");
            str3 = stringBuffer2.toString();
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str3);
            stringBuffer2.append(str);
            str3 = stringBuffer2.toString();
          } 
          return str3;
        } 
        break;
      } 
      int j = i;
      if (i < this.expectedTokenSequences[b].length)
        j = this.expectedTokenSequences[b].length; 
      String str1 = str;
      for (i = 0;; i++) {
        StringBuffer stringBuffer1;
        if (i >= this.expectedTokenSequences[b].length) {
          str = str1;
          if (this.expectedTokenSequences[b][this.expectedTokenSequences[b].length - 1] != 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str1);
            stringBuffer.append("...");
            str3 = stringBuffer.toString();
          } 
          stringBuffer1 = new StringBuffer();
          stringBuffer1.append(str3);
          stringBuffer1.append(this.f);
          stringBuffer1.append("    ");
          String str3 = stringBuffer1.toString();
          b++;
          i = j;
          continue label40;
        } 
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(stringBuffer1);
        stringBuffer2.append(this.tokenImage[this.expectedTokenSequences[b][i]]);
        stringBuffer2.append(" ");
        String str2 = stringBuffer2.toString();
      } 
      break;
    } 
  }
  
  public void setErrorSourceFile(String paramString) { this.d = paramString; }
  
  public String toString() { return getMessage(); }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ParseException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
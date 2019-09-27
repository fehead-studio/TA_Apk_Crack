package bsh;

import java.io.Serializable;
import java.util.Hashtable;

public class Modifiers implements Serializable {
  public static final int CLASS = 0;
  
  public static final int FIELD = 2;
  
  public static final int METHOD = 1;
  
  Hashtable a;
  
  private void a() {
    a("volatile", "Method");
    a("transient", "Method");
  }
  
  private void a(String paramString1, String paramString2) {
    if (hasModifier(paramString1)) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append(paramString2);
      stringBuffer.append(" cannot be declared '");
      stringBuffer.append(paramString1);
      stringBuffer.append("'");
      throw new IllegalStateException(stringBuffer.toString());
    } 
  }
  
  private void b() {
    a("synchronized", "Variable");
    a("native", "Variable");
    a("abstract", "Variable");
  }
  
  private void c() {
    a();
    a("native", "Class");
    a("synchronized", "Class");
  }
  
  public void addModifier(int paramInt, String paramString) {
    if (this.a == null)
      this.a = new Hashtable(); 
    if (this.a.put(paramString, void.class) != null) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Duplicate modifier: ");
      stringBuffer.append(paramString);
      throw new IllegalStateException(stringBuffer.toString());
    } 
    byte b2 = 0;
    if (hasModifier("private"))
      b2 = 1; 
    byte b1 = b2;
    if (hasModifier("protected"))
      b1 = b2 + true; 
    b2 = b1;
    if (hasModifier("public"))
      b2 = b1 + 1; 
    if (b2 > 1)
      throw new IllegalStateException("public/private/protected cannot be used in combination."); 
    switch (paramInt) {
      default:
        return;
      case 2:
        b();
        return;
      case 1:
        a();
        return;
      case 0:
        break;
    } 
    c();
  }
  
  public boolean hasModifier(String paramString) {
    if (this.a == null)
      this.a = new Hashtable(); 
    return (this.a.get(paramString) != null);
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Modifiers: ");
    stringBuffer.append(this.a);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Modifiers.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
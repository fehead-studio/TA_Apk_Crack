package bsh;

public class ClassIdentifier {
  Class a;
  
  public ClassIdentifier(Class paramClass) { this.a = paramClass; }
  
  public Class getTargetClass() { return this.a; }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Class Identifier: ");
    stringBuffer.append(this.a.getName());
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ClassIdentifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
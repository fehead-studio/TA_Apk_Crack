package bsh;

import java.io.Serializable;

public class Variable implements Serializable {
  String a;
  
  Class b = null;
  
  String c;
  
  Object d;
  
  Modifiers e;
  
  LHS f;
  
  Variable(String paramString, Class paramClass, LHS paramLHS) {
    this.a = paramString;
    this.f = paramLHS;
    this.b = paramClass;
  }
  
  Variable(String paramString, Class paramClass, Object paramObject, Modifiers paramModifiers) {
    this.a = paramString;
    this.b = paramClass;
    this.e = paramModifiers;
    setValue(paramObject, 0);
  }
  
  Variable(String paramString, Object paramObject, Modifiers paramModifiers) { this(paramString, (Class)null, paramObject, paramModifiers); }
  
  Variable(String paramString1, String paramString2, Object paramObject, Modifiers paramModifiers) {
    this(paramString1, (Class)null, paramObject, paramModifiers);
    this.c = paramString2;
  }
  
  Object a() { return (this.f != null) ? this.f.getValue() : this.d; }
  
  public Modifiers getModifiers() { return this.e; }
  
  public String getName() { return this.a; }
  
  public Class getType() { return this.b; }
  
  public String getTypeDescriptor() { return this.c; }
  
  public boolean hasModifier(String paramString) { return (this.e != null && this.e.hasModifier(paramString)); }
  
  public void setValue(Object paramObject, int paramInt) {
    if (hasModifier("final") && this.d != null)
      throw new UtilEvalError("Final variable, can't re-assign."); 
    Object object = paramObject;
    if (paramObject == null)
      object = Primitive.getDefaultValue(this.b); 
    paramObject = this.f;
    int i = 0;
    if (paramObject != null) {
      this.f.assign(object, false);
      return;
    } 
    paramObject = object;
    if (this.b != null) {
      paramObject = this.b;
      if (paramInt == 0) {
        paramInt = i;
      } else {
        paramInt = 1;
      } 
      paramObject = Types.castObject(object, paramObject, paramInt);
    } 
    this.d = paramObject;
  }
  
  public String toString() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Variable: ");
    stringBuffer.append(super.toString());
    stringBuffer.append(" ");
    stringBuffer.append(this.a);
    stringBuffer.append(", type:");
    stringBuffer.append(this.b);
    stringBuffer.append(", value:");
    stringBuffer.append(this.d);
    stringBuffer.append(", lhs = ");
    stringBuffer.append(this.f);
    return stringBuffer.toString();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Variable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
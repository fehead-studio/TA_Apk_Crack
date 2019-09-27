package bsh;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Vector;

public class ExternalNameSpace extends NameSpace {
  private Map h;
  
  public ExternalNameSpace() { this(null, "External Map Namespace", null); }
  
  public ExternalNameSpace(NameSpace paramNameSpace, String paramString, Map paramMap) {
    super(paramNameSpace, paramString);
    Map map = paramMap;
    if (paramMap == null)
      map = new HashMap(); 
    this.h = map;
  }
  
  protected Variable a(String paramString, boolean paramBoolean) {
    Object object = this.h.get(paramString);
    if (object == null) {
      super.unsetVariable(paramString);
      return super.a(paramString, paramBoolean);
    } 
    Variable variable2 = super.a(paramString, false);
    Variable variable1 = variable2;
    if (variable2 == null)
      variable1 = new Variable(paramString, (Class)null, object, (Modifiers)null); 
    return variable1;
  }
  
  protected void a(String paramString, Object paramObject) { // Byte code:
    //   0: aload_2
    //   1: astore_3
    //   2: aload_2
    //   3: instanceof bsh/Variable
    //   6: ifeq -> 31
    //   9: aload_0
    //   10: aload_2
    //   11: checkcast bsh/Variable
    //   14: invokevirtual a : (Lbsh/Variable;)Ljava/lang/Object;
    //   17: astore_3
    //   18: goto -> 31
    //   21: new bsh/InterpreterError
    //   24: dup
    //   25: ldc 'unexpected UtilEvalError'
    //   27: invokespecial <init> : (Ljava/lang/String;)V
    //   30: athrow
    //   31: aload_3
    //   32: astore_2
    //   33: aload_3
    //   34: instanceof bsh/Primitive
    //   37: ifeq -> 48
    //   40: aload_3
    //   41: checkcast bsh/Primitive
    //   44: invokestatic unwrap : (Ljava/lang/Object;)Ljava/lang/Object;
    //   47: astore_2
    //   48: aload_0
    //   49: getfield h : Ljava/util/Map;
    //   52: aload_1
    //   53: aload_2
    //   54: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   59: pop
    //   60: return
    //   61: astore_1
    //   62: goto -> 21
    // Exception table:
    //   from	to	target	type
    //   9	18	61	bsh/UtilEvalError }
  
  protected void a(Vector paramVector) { super.a(paramVector); }
  
  public void clear() {
    super.clear();
    this.h.clear();
  }
  
  public Variable[] getDeclaredVariables() { return super.getDeclaredVariables(); }
  
  public Map getMap() { return this.h; }
  
  public BshMethod getMethod(String paramString, Class[] paramArrayOfClass, boolean paramBoolean) { return super.getMethod(paramString, paramArrayOfClass, paramBoolean); }
  
  public String[] getVariableNames() {
    HashSet hashSet = new HashSet();
    hashSet.addAll(Arrays.asList(super.getVariableNames()));
    hashSet.addAll(this.h.keySet());
    return (String[])hashSet.toArray(new String[0]);
  }
  
  public void setMap(Map paramMap) {
    this.h = null;
    clear();
    this.h = paramMap;
  }
  
  public void setMethod(String paramString, BshMethod paramBshMethod) { super.setMethod(paramString, paramBshMethod); }
  
  public void setTypedVariable(String paramString, Class paramClass, Object paramObject, Modifiers paramModifiers) {
    super.setTypedVariable(paramString, paramClass, paramObject, paramModifiers);
    a(paramString, paramObject);
  }
  
  void setVariable(String paramString, Object paramObject, boolean paramBoolean1, boolean paramBoolean2) {
    super.setVariable(paramString, paramObject, paramBoolean1, paramBoolean2);
    a(paramString, paramObject);
  }
  
  public void unsetVariable(String paramString) {
    super.unsetVariable(paramString);
    this.h.remove(paramString);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ExternalNameSpace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
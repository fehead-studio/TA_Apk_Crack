package bsh;

class BlockNameSpace extends NameSpace {
  public BlockNameSpace(NameSpace paramNameSpace) { super(paramNameSpace, stringBuffer.toString()); }
  
  private NameSpace d() {
    NameSpace nameSpace2 = getParent();
    NameSpace nameSpace1 = nameSpace2;
    if (nameSpace2 instanceof BlockNameSpace)
      nameSpace1 = ((BlockNameSpace)nameSpace2).d(); 
    return nameSpace1;
  }
  
  private boolean d(String paramString) {
    boolean bool = false;
    try {
      Variable variable = a(paramString, false);
      if (variable != null)
        bool = true; 
      return bool;
    } catch (UtilEvalError paramString) {
      return false;
    } 
  }
  
  This a(Interpreter paramInterpreter) { return d().a(paramInterpreter); }
  
  public This getSuper(Interpreter paramInterpreter) { return d().getSuper(paramInterpreter); }
  
  public void importClass(String paramString) { getParent().importClass(paramString); }
  
  public void importPackage(String paramString) { getParent().importPackage(paramString); }
  
  public void setBlockVariable(String paramString, Object paramObject) { super.setVariable(paramString, paramObject, false, false); }
  
  public void setMethod(String paramString, BshMethod paramBshMethod) { getParent().setMethod(paramString, paramBshMethod); }
  
  public void setVariable(String paramString, Object paramObject, boolean paramBoolean1, boolean paramBoolean2) {
    if (d(paramString)) {
      super.setVariable(paramString, paramObject, paramBoolean1, false);
      return;
    } 
    getParent().setVariable(paramString, paramObject, paramBoolean1, paramBoolean2);
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\BlockNameSpace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
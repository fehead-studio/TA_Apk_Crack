package bsh;

public abstract class ClassGenerator {
  private static ClassGenerator a;
  
  public static ClassGenerator getClassGenerator() {
    if (a == null)
      try {
        a = (ClassGenerator)Class.forName("bsh.ClassGeneratorImpl").newInstance();
      } catch (Exception exception) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ClassGenerator unavailable: ");
        stringBuffer.append(exception);
        throw new Capabilities.Unavailable(stringBuffer.toString());
      }  
    return a;
  }
  
  public abstract Class generateClass(String paramString, Modifiers paramModifiers, Class[] paramArrayOfClass, Class paramClass, BSHBlock paramBSHBlock, boolean paramBoolean, CallStack paramCallStack, Interpreter paramInterpreter);
  
  public abstract Object invokeSuperclassMethod(BshClassManager paramBshClassManager, Object paramObject, String paramString, Object[] paramArrayOfObject);
  
  public abstract void setInstanceNameSpaceParent(Object paramObject, String paramString, NameSpace paramNameSpace);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ClassGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
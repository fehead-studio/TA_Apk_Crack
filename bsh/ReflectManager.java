package bsh;

public abstract class ReflectManager {
  private static ReflectManager a;
  
  public static boolean RMSetAccessible(Object paramObject) { return getReflectManager().setAccessible(paramObject); }
  
  public static ReflectManager getReflectManager() {
    if (a == null)
      try {
        a = (ReflectManager)Class.forName("bsh.reflect.ReflectManagerImpl").newInstance();
      } catch (Exception exception) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Reflect Manager unavailable: ");
        stringBuffer.append(exception);
        throw new Capabilities.Unavailable(stringBuffer.toString());
      }  
    return a;
  }
  
  public abstract boolean setAccessible(Object paramObject);
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\ReflectManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
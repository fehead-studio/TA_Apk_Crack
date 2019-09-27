package bsh;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class CollectionManager {
  private static CollectionManager a;
  
  public static CollectionManager getCollectionManager() { // Byte code:
    //   0: ldc bsh/CollectionManager
    //   2: monitorenter
    //   3: getstatic bsh/CollectionManager.a : Lbsh/CollectionManager;
    //   6: ifnonnull -> 65
    //   9: ldc 'java.util.Collection'
    //   11: invokestatic classExists : (Ljava/lang/String;)Z
    //   14: istore_0
    //   15: iload_0
    //   16: ifeq -> 65
    //   19: ldc 'bsh.collection.CollectionManagerImpl'
    //   21: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   24: invokevirtual newInstance : ()Ljava/lang/Object;
    //   27: checkcast bsh/CollectionManager
    //   30: putstatic bsh/CollectionManager.a : Lbsh/CollectionManager;
    //   33: goto -> 65
    //   36: astore_1
    //   37: new java/lang/StringBuffer
    //   40: dup
    //   41: invokespecial <init> : ()V
    //   44: astore_2
    //   45: aload_2
    //   46: ldc 'unable to load CollectionManagerImpl: '
    //   48: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   51: pop
    //   52: aload_2
    //   53: aload_1
    //   54: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   57: pop
    //   58: aload_2
    //   59: invokevirtual toString : ()Ljava/lang/String;
    //   62: invokestatic debug : (Ljava/lang/String;)V
    //   65: getstatic bsh/CollectionManager.a : Lbsh/CollectionManager;
    //   68: ifnonnull -> 81
    //   71: new bsh/CollectionManager
    //   74: dup
    //   75: invokespecial <init> : ()V
    //   78: putstatic bsh/CollectionManager.a : Lbsh/CollectionManager;
    //   81: getstatic bsh/CollectionManager.a : Lbsh/CollectionManager;
    //   84: astore_1
    //   85: ldc bsh/CollectionManager
    //   87: monitorexit
    //   88: aload_1
    //   89: areturn
    //   90: astore_1
    //   91: ldc bsh/CollectionManager
    //   93: monitorexit
    //   94: aload_1
    //   95: athrow
    // Exception table:
    //   from	to	target	type
    //   3	15	90	finally
    //   19	33	36	java/lang/Exception
    //   19	33	90	finally
    //   37	65	90	finally
    //   65	81	90	finally
    //   81	85	90	finally }
  
  public BshIterator getBshIterator(Object paramObject) { return new BasicBshIterator(paramObject); }
  
  public Object getFromMap(Object paramObject1, Object paramObject2) { return ((Hashtable)paramObject1).get(paramObject2); }
  
  public boolean isBshIterable(Object paramObject) {
    try {
      getBshIterator(paramObject);
      return true;
    } catch (IllegalArgumentException paramObject) {
      return false;
    } 
  }
  
  public boolean isMap(Object paramObject) { return paramObject instanceof Hashtable; }
  
  public Object putInMap(Object paramObject1, Object paramObject2, Object paramObject3) { return ((Hashtable)paramObject1).put(paramObject2, paramObject3); }
  
  public static class BasicBshIterator implements BshIterator {
    Enumeration a;
    
    public BasicBshIterator(Object param1Object) { this.a = a(param1Object); }
    
    protected Enumeration a(Object param1Object) {
      if (param1Object == null)
        throw new NullPointerException("Object arguments passed to the BasicBshIterator constructor cannot be null."); 
      if (param1Object instanceof Enumeration)
        return (Enumeration)param1Object; 
      if (param1Object instanceof Vector)
        return ((Vector)param1Object).elements(); 
      if (param1Object.getClass().isArray())
        return new CollectionManager$1(this, param1Object); 
      if (param1Object instanceof String)
        return a(((String)param1Object).toCharArray()); 
      if (param1Object instanceof StringBuffer)
        return a(param1Object.toString().toCharArray()); 
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Cannot enumerate object of type ");
      stringBuffer.append(param1Object.getClass());
      throw new IllegalArgumentException(stringBuffer.toString());
    }
    
    public boolean hasNext() { return this.a.hasMoreElements(); }
    
    public Object next() { return this.a.nextElement(); }
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\CollectionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
package com.luajava;

import java.util.HashMap;
import java.util.Map;

public final class LuaStateFactory {
  private static final Map<Long, LuaState> a = new HashMap();
  
  public static LuaState getExistingState(long paramLong) { // Byte code:
    //   0: ldc com/luajava/LuaStateFactory
    //   2: monitorenter
    //   3: getstatic com/luajava/LuaStateFactory.a : Ljava/util/Map;
    //   6: lload_0
    //   7: invokestatic valueOf : (J)Ljava/lang/Long;
    //   10: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   15: checkcast com/luajava/LuaState
    //   18: astore_3
    //   19: aload_3
    //   20: astore_2
    //   21: aload_3
    //   22: ifnonnull -> 48
    //   25: new com/luajava/LuaState
    //   28: dup
    //   29: lload_0
    //   30: invokespecial <init> : (J)V
    //   33: astore_2
    //   34: getstatic com/luajava/LuaStateFactory.a : Ljava/util/Map;
    //   37: lload_0
    //   38: invokestatic valueOf : (J)Ljava/lang/Long;
    //   41: aload_2
    //   42: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   47: pop
    //   48: ldc com/luajava/LuaStateFactory
    //   50: monitorexit
    //   51: aload_2
    //   52: areturn
    //   53: astore_2
    //   54: ldc com/luajava/LuaStateFactory
    //   56: monitorexit
    //   57: aload_2
    //   58: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	53	finally
    //   25	48	53	finally }
  
  public static long insertLuaState(LuaState paramLuaState) { // Byte code:
    //   0: ldc com/luajava/LuaStateFactory
    //   2: monitorenter
    //   3: getstatic com/luajava/LuaStateFactory.a : Ljava/util/Map;
    //   6: aload_0
    //   7: invokevirtual getPointer : ()J
    //   10: invokestatic valueOf : (J)Ljava/lang/Long;
    //   13: aload_0
    //   14: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   19: pop
    //   20: aload_0
    //   21: invokevirtual getPointer : ()J
    //   24: lstore_1
    //   25: ldc com/luajava/LuaStateFactory
    //   27: monitorexit
    //   28: lload_1
    //   29: lreturn
    //   30: astore_0
    //   31: ldc com/luajava/LuaStateFactory
    //   33: monitorexit
    //   34: aload_0
    //   35: athrow
    // Exception table:
    //   from	to	target	type
    //   3	25	30	finally }
  
  public static LuaState newLuaState() { // Byte code:
    //   0: ldc com/luajava/LuaStateFactory
    //   2: monitorenter
    //   3: new com/luajava/LuaState
    //   6: dup
    //   7: invokespecial <init> : ()V
    //   10: astore_0
    //   11: getstatic com/luajava/LuaStateFactory.a : Ljava/util/Map;
    //   14: aload_0
    //   15: invokevirtual getPointer : ()J
    //   18: invokestatic valueOf : (J)Ljava/lang/Long;
    //   21: aload_0
    //   22: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   27: pop
    //   28: ldc com/luajava/LuaStateFactory
    //   30: monitorexit
    //   31: aload_0
    //   32: areturn
    //   33: astore_0
    //   34: ldc com/luajava/LuaStateFactory
    //   36: monitorexit
    //   37: aload_0
    //   38: athrow
    // Exception table:
    //   from	to	target	type
    //   3	28	33	finally }
  
  public static void removeLuaState(long paramLong) { // Byte code:
    //   0: ldc com/luajava/LuaStateFactory
    //   2: monitorenter
    //   3: getstatic com/luajava/LuaStateFactory.a : Ljava/util/Map;
    //   6: lload_0
    //   7: invokestatic valueOf : (J)Ljava/lang/Long;
    //   10: aconst_null
    //   11: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   16: pop
    //   17: ldc com/luajava/LuaStateFactory
    //   19: monitorexit
    //   20: return
    //   21: astore_2
    //   22: ldc com/luajava/LuaStateFactory
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   3	17	21	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaStateFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
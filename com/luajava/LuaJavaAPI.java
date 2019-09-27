package com.luajava;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import com.a.a.a.a.a.a.a;
import com.android.cglib.proxy.EnhancerInterface;
import com.android.cglib.proxy.MethodFilter;
import com.androlua.LuaBitmap;
import com.androlua.LuaEnhancer;
import com.androlua.LuaGcable;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class LuaJavaAPI {
  private static final HashMap<Class<?>, HashMap<String, ArrayList<Method>>> a = new HashMap();
  
  private static HashMap<String, Method> b;
  
  private static HashMap<String, Method> c;
  
  private static HashMap<String, Method> d;
  
  private static HashMap<String, Method> e;
  
  private static HashMap<String, Method> f;
  
  public static final HashMap<String, Method[]> methodCache;
  
  public static final HashMap<Class<?>, Method[]> methodsMap = new HashMap();
  
  static  {
    methodCache = new HashMap();
    b = new HashMap();
    c = new HashMap();
    d = new HashMap();
    e = new HashMap();
    f = new HashMap();
  }
  
  private static int a(LuaState paramLuaState, Class<?> paramClass) {
    paramClass = (new LuaEnhancer(paramClass)).create(new MethodFilter() {
          public boolean filter(Method param1Method, String param1String) { return ((param1Method.getModifiers() & 0x400) == 0); }
        });
    try {
      EnhancerInterface enhancerInterface = (EnhancerInterface)paramClass.newInstance();
      enhancerInterface.setMethodInterceptor_Enhancer(new LuaAbstractMethodInterceptor(paramLuaState.getLuaObject(-1)));
      paramLuaState.pushJavaObject(enhancerInterface);
      return 1;
    } catch (Exception paramLuaState) {
      a.a(paramLuaState);
      return 0;
    } 
  }
  
  private static int a(LuaState paramLuaState, Object paramObject) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual newTable : ()V
    //   6: aload_1
    //   7: invokevirtual getClass : ()Ljava/lang/Class;
    //   10: invokevirtual isArray : ()Z
    //   13: ifeq -> 55
    //   16: aload_1
    //   17: invokestatic getLength : (Ljava/lang/Object;)I
    //   20: istore_3
    //   21: iconst_0
    //   22: istore_2
    //   23: iload_2
    //   24: iload_3
    //   25: iconst_1
    //   26: isub
    //   27: if_icmpgt -> 193
    //   30: aload_0
    //   31: aload_1
    //   32: iload_2
    //   33: invokestatic get : (Ljava/lang/Object;I)Ljava/lang/Object;
    //   36: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Object;)I
    //   39: pop
    //   40: iload_2
    //   41: iconst_1
    //   42: iadd
    //   43: istore_2
    //   44: aload_0
    //   45: bipush #-2
    //   47: iload_2
    //   48: i2l
    //   49: invokevirtual rawSetI : (IJ)V
    //   52: goto -> 23
    //   55: aload_1
    //   56: instanceof java/util/Collection
    //   59: ifeq -> 109
    //   62: aload_1
    //   63: checkcast java/util/Collection
    //   66: invokeinterface iterator : ()Ljava/util/Iterator;
    //   71: astore_1
    //   72: iconst_1
    //   73: istore_2
    //   74: aload_1
    //   75: invokeinterface hasNext : ()Z
    //   80: ifeq -> 193
    //   83: aload_0
    //   84: aload_1
    //   85: invokeinterface next : ()Ljava/lang/Object;
    //   90: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Object;)I
    //   93: pop
    //   94: aload_0
    //   95: bipush #-2
    //   97: iload_2
    //   98: i2l
    //   99: invokevirtual rawSetI : (IJ)V
    //   102: iload_2
    //   103: iconst_1
    //   104: iadd
    //   105: istore_2
    //   106: goto -> 74
    //   109: aload_1
    //   110: instanceof java/util/Map
    //   113: ifeq -> 183
    //   116: aload_1
    //   117: checkcast java/util/Map
    //   120: invokeinterface entrySet : ()Ljava/util/Set;
    //   125: invokeinterface iterator : ()Ljava/util/Iterator;
    //   130: astore_1
    //   131: aload_1
    //   132: invokeinterface hasNext : ()Z
    //   137: ifeq -> 193
    //   140: aload_1
    //   141: invokeinterface next : ()Ljava/lang/Object;
    //   146: checkcast java/util/Map$Entry
    //   149: astore #4
    //   151: aload_0
    //   152: aload #4
    //   154: invokeinterface getKey : ()Ljava/lang/Object;
    //   159: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   162: aload_0
    //   163: aload #4
    //   165: invokeinterface getValue : ()Ljava/lang/Object;
    //   170: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Object;)I
    //   173: pop
    //   174: aload_0
    //   175: bipush #-3
    //   177: invokevirtual setTable : (I)V
    //   180: goto -> 131
    //   183: aload_0
    //   184: iconst_1
    //   185: invokevirtual pop : (I)V
    //   188: aload_0
    //   189: aload_1
    //   190: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   193: aload_0
    //   194: monitorexit
    //   195: iconst_1
    //   196: ireturn
    //   197: astore_1
    //   198: new java/lang/StringBuilder
    //   201: dup
    //   202: invokespecial <init> : ()V
    //   205: astore #4
    //   207: aload #4
    //   209: ldc 'can not astable: '
    //   211: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: pop
    //   215: aload #4
    //   217: aload_1
    //   218: invokevirtual getMessage : ()Ljava/lang/String;
    //   221: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: pop
    //   225: new com/luajava/LuaException
    //   228: dup
    //   229: aload #4
    //   231: invokevirtual toString : ()Ljava/lang/String;
    //   234: invokespecial <init> : (Ljava/lang/String;)V
    //   237: athrow
    //   238: aload_0
    //   239: monitorexit
    //   240: aload_1
    //   241: athrow
    //   242: astore_1
    //   243: goto -> 238
    // Exception table:
    //   from	to	target	type
    //   2	21	197	java/lang/Exception
    //   2	21	242	finally
    //   30	40	197	java/lang/Exception
    //   30	40	242	finally
    //   44	52	197	java/lang/Exception
    //   44	52	242	finally
    //   55	72	197	java/lang/Exception
    //   55	72	242	finally
    //   74	102	197	java/lang/Exception
    //   74	102	242	finally
    //   109	131	197	java/lang/Exception
    //   109	131	242	finally
    //   131	180	197	java/lang/Exception
    //   131	180	242	finally
    //   183	193	197	java/lang/Exception
    //   183	193	242	finally
    //   193	195	242	finally
    //   198	238	242	finally
    //   238	240	242	finally }
  
  private static int a(LuaState paramLuaState, Object paramObject, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull -> 10
    //   6: aload_0
    //   7: monitorexit
    //   8: iconst_0
    //   9: ireturn
    //   10: aload_1
    //   11: instanceof java/lang/Class
    //   14: ifeq -> 29
    //   17: aload_1
    //   18: checkcast java/lang/Class
    //   21: astore #7
    //   23: iconst_1
    //   24: istore #4
    //   26: goto -> 38
    //   29: aload_1
    //   30: invokevirtual getClass : ()Ljava/lang/Class;
    //   33: astore #7
    //   35: iconst_0
    //   36: istore #4
    //   38: aload_2
    //   39: ldc 'm'
    //   41: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   44: istore #5
    //   46: aconst_null
    //   47: astore #8
    //   49: iload #5
    //   51: ifne -> 149
    //   54: aload_2
    //   55: iconst_0
    //   56: invokevirtual charAt : (I)C
    //   59: istore_3
    //   60: iload_3
    //   61: invokestatic isLowerCase : (C)Z
    //   64: ifeq -> 352
    //   67: new java/lang/StringBuilder
    //   70: dup
    //   71: invokespecial <init> : ()V
    //   74: astore #6
    //   76: aload #6
    //   78: iload_3
    //   79: invokestatic toUpperCase : (C)C
    //   82: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   85: pop
    //   86: aload #6
    //   88: aload_2
    //   89: iconst_1
    //   90: invokevirtual substring : (I)Ljava/lang/String;
    //   93: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: pop
    //   97: aload #6
    //   99: invokevirtual toString : ()Ljava/lang/String;
    //   102: astore #6
    //   104: goto -> 107
    //   107: new java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial <init> : ()V
    //   114: astore #8
    //   116: aload #8
    //   118: ldc 'm'
    //   120: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: pop
    //   124: aload #8
    //   126: aload #6
    //   128: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: aload #8
    //   134: invokevirtual toString : ()Ljava/lang/String;
    //   137: astore #8
    //   139: aconst_null
    //   140: astore #6
    //   142: aload #7
    //   144: astore #9
    //   146: goto -> 156
    //   149: aconst_null
    //   150: astore #6
    //   152: aload #7
    //   154: astore #9
    //   156: aload #6
    //   158: astore #7
    //   160: aload #9
    //   162: ifnull -> 231
    //   165: aload #9
    //   167: aload_2
    //   168: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   171: astore #7
    //   173: aload #7
    //   175: astore #6
    //   177: aload #6
    //   179: astore #7
    //   181: goto -> 209
    //   184: aload #6
    //   186: astore #7
    //   188: aload #8
    //   190: ifnull -> 209
    //   193: aload #9
    //   195: aload #8
    //   197: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   200: astore #7
    //   202: aload #7
    //   204: astore #6
    //   206: goto -> 177
    //   209: aload #7
    //   211: ifnull -> 217
    //   214: goto -> 231
    //   217: aload #9
    //   219: invokevirtual getSuperclass : ()Ljava/lang/Class;
    //   222: astore #9
    //   224: aload #7
    //   226: astore #6
    //   228: goto -> 156
    //   231: aload #7
    //   233: ifnonnull -> 240
    //   236: aload_0
    //   237: monitorexit
    //   238: iconst_0
    //   239: ireturn
    //   240: iload #4
    //   242: ifeq -> 260
    //   245: aload #7
    //   247: invokevirtual getModifiers : ()I
    //   250: invokestatic isStatic : (I)Z
    //   253: ifne -> 260
    //   256: aload_0
    //   257: monitorexit
    //   258: iconst_0
    //   259: ireturn
    //   260: aload #7
    //   262: invokevirtual getType : ()Ljava/lang/Class;
    //   265: astore #6
    //   267: aload #7
    //   269: invokevirtual getModifiers : ()I
    //   272: invokestatic isPublic : (I)Z
    //   275: ifne -> 284
    //   278: aload #7
    //   280: iconst_1
    //   281: invokevirtual setAccessible : (Z)V
    //   284: aload #7
    //   286: aload_1
    //   287: aload_0
    //   288: aload #6
    //   290: aload_0
    //   291: invokevirtual getTop : ()I
    //   294: invokestatic e : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   297: invokevirtual set : (Ljava/lang/Object;Ljava/lang/Object;)V
    //   300: goto -> 322
    //   303: astore_1
    //   304: new com/luajava/LuaException
    //   307: dup
    //   308: aload_1
    //   309: invokespecial <init> : (Ljava/lang/Exception;)V
    //   312: athrow
    //   313: aload_0
    //   314: aload_2
    //   315: iconst_3
    //   316: aload #6
    //   318: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    //   321: pop
    //   322: aload_0
    //   323: monitorexit
    //   324: iconst_1
    //   325: ireturn
    //   326: aload_0
    //   327: monitorexit
    //   328: aload_1
    //   329: athrow
    //   330: astore #7
    //   332: goto -> 184
    //   335: astore #7
    //   337: aload #6
    //   339: astore #7
    //   341: goto -> 209
    //   344: astore_1
    //   345: goto -> 313
    //   348: astore_1
    //   349: goto -> 326
    //   352: aconst_null
    //   353: astore #6
    //   355: goto -> 107
    // Exception table:
    //   from	to	target	type
    //   6	8	348	finally
    //   10	23	348	finally
    //   29	35	348	finally
    //   38	46	348	finally
    //   54	104	348	finally
    //   107	139	348	finally
    //   165	173	330	java/lang/NoSuchFieldException
    //   165	173	348	finally
    //   193	202	335	java/lang/NoSuchFieldException
    //   193	202	348	finally
    //   217	224	348	finally
    //   236	238	348	finally
    //   245	258	348	finally
    //   260	267	348	finally
    //   267	284	344	com/luajava/LuaException
    //   267	284	303	java/lang/Exception
    //   267	284	348	finally
    //   284	300	344	com/luajava/LuaException
    //   284	300	303	java/lang/Exception
    //   284	300	348	finally
    //   304	313	348	finally
    //   313	322	348	finally
    //   322	324	348	finally
    //   326	328	348	finally }
  
  private static int a(LuaState paramLuaState, Object paramObject, String paramString, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial <init> : ()V
    //   9: astore #4
    //   11: aload #4
    //   13: ldc_w 'setOn'
    //   16: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: pop
    //   20: aload #4
    //   22: aload_2
    //   23: iconst_2
    //   24: invokevirtual substring : (I)Ljava/lang/String;
    //   27: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: pop
    //   31: aload #4
    //   33: ldc_w 'Listener'
    //   36: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: pop
    //   40: aload #4
    //   42: invokevirtual toString : ()Ljava/lang/String;
    //   45: astore #4
    //   47: aload_1
    //   48: invokevirtual getClass : ()Ljava/lang/Class;
    //   51: aload #4
    //   53: iload_3
    //   54: invokestatic getMethod : (Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;
    //   57: invokevirtual iterator : ()Ljava/util/Iterator;
    //   60: astore #5
    //   62: aload #5
    //   64: invokeinterface hasNext : ()Z
    //   69: ifeq -> 190
    //   72: aload #5
    //   74: invokeinterface next : ()Ljava/lang/Object;
    //   79: checkcast java/lang/reflect/Method
    //   82: astore #4
    //   84: iload_3
    //   85: ifeq -> 102
    //   88: aload #4
    //   90: invokevirtual getModifiers : ()I
    //   93: invokestatic isStatic : (I)Z
    //   96: ifne -> 102
    //   99: goto -> 62
    //   102: aload #4
    //   104: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   107: astore #6
    //   109: aload #6
    //   111: arraylength
    //   112: iconst_1
    //   113: if_icmpne -> 62
    //   116: aload #6
    //   118: iconst_0
    //   119: aaload
    //   120: invokevirtual isInterface : ()Z
    //   123: ifeq -> 62
    //   126: aload_0
    //   127: invokevirtual newTable : ()V
    //   130: aload_0
    //   131: bipush #-2
    //   133: invokevirtual pushValue : (I)V
    //   136: aload_0
    //   137: bipush #-2
    //   139: aload_2
    //   140: invokevirtual setField : (ILjava/lang/String;)V
    //   143: aload_0
    //   144: iconst_m1
    //   145: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   148: aload #6
    //   150: iconst_0
    //   151: aaload
    //   152: invokevirtual createProxy : (Ljava/lang/Class;)Ljava/lang/Object;
    //   155: astore_2
    //   156: aload_0
    //   157: iconst_1
    //   158: invokevirtual pop : (I)V
    //   161: aload #4
    //   163: aload_1
    //   164: iconst_1
    //   165: anewarray java/lang/Object
    //   168: dup
    //   169: iconst_0
    //   170: aload_2
    //   171: aastore
    //   172: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   175: pop
    //   176: aload_0
    //   177: monitorexit
    //   178: iconst_1
    //   179: ireturn
    //   180: astore_1
    //   181: new com/luajava/LuaException
    //   184: dup
    //   185: aload_1
    //   186: invokespecial <init> : (Ljava/lang/Exception;)V
    //   189: athrow
    //   190: aload_0
    //   191: monitorexit
    //   192: iconst_0
    //   193: ireturn
    //   194: astore_1
    //   195: aload_0
    //   196: monitorexit
    //   197: aload_1
    //   198: athrow
    // Exception table:
    //   from	to	target	type
    //   2	62	194	finally
    //   62	84	194	finally
    //   88	99	194	finally
    //   102	143	194	finally
    //   143	176	180	java/lang/Exception
    //   143	176	194	finally
    //   176	178	194	finally
    //   181	190	194	finally
    //   190	192	194	finally
    //   195	197	194	finally }
  
  private static int a(LuaState paramLuaState, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: iconst_2
    //   5: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   8: aload_1
    //   9: invokevirtual createProxy : (Ljava/lang/String;)Ljava/lang/Object;
    //   12: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: iconst_1
    //   18: ireturn
    //   19: astore_1
    //   20: new com/luajava/LuaException
    //   23: dup
    //   24: aload_1
    //   25: invokespecial <init> : (Ljava/lang/Exception;)V
    //   28: athrow
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    //   33: astore_1
    //   34: goto -> 29
    // Exception table:
    //   from	to	target	type
    //   2	15	19	java/lang/Exception
    //   2	15	33	finally
    //   15	17	33	finally
    //   20	29	33	finally
    //   29	31	33	finally }
  
  private static Object a(LuaState paramLuaState, Class paramClass, int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_2
    //   4: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   7: aload_1
    //   8: invokevirtual createProxy : (Ljava/lang/Class;)Ljava/lang/Object;
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: astore_1
    //   17: new com/luajava/LuaException
    //   20: dup
    //   21: aload_1
    //   22: invokespecial <init> : (Ljava/lang/Exception;)V
    //   25: athrow
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    //   30: astore_1
    //   31: goto -> 26
    // Exception table:
    //   from	to	target	type
    //   2	12	16	java/lang/Exception
    //   2	12	30	finally
    //   12	14	30	finally
    //   17	26	30	finally
    //   26	28	30	finally }
  
  private static Object a(LuaState paramLuaState, Class<?> paramClass, int paramInt1, int paramInt2) { // Byte code:
    //   0: aconst_null
    //   1: astore #6
    //   3: aconst_null
    //   4: astore #7
    //   6: aconst_null
    //   7: astore #5
    //   9: iload_2
    //   10: ifne -> 15
    //   13: aconst_null
    //   14: areturn
    //   15: iconst_1
    //   16: istore #4
    //   18: iload_2
    //   19: iconst_1
    //   20: if_icmpeq -> 557
    //   23: iload_2
    //   24: tableswitch default -> 60, 3 -> 470, 4 -> 439, 5 -> 331, 6 -> 293, 7 -> 71
    //   60: new com/luajava/LuaException
    //   63: dup
    //   64: ldc_w 'Invalid Parameters.'
    //   67: invokespecial <init> : (Ljava/lang/String;)V
    //   70: athrow
    //   71: aload_0
    //   72: iload_3
    //   73: invokevirtual isObject : (I)Z
    //   76: ifeq -> 276
    //   79: aload_0
    //   80: iload_3
    //   81: invokevirtual getObjectFromUserdata : (I)Ljava/lang/Object;
    //   84: astore #6
    //   86: aload #6
    //   88: ifnonnull -> 93
    //   91: aconst_null
    //   92: areturn
    //   93: aload #5
    //   95: astore_0
    //   96: aload_1
    //   97: invokevirtual isPrimitive : ()Z
    //   100: ifeq -> 241
    //   103: aload #6
    //   105: invokevirtual getClass : ()Ljava/lang/Class;
    //   108: pop
    //   109: aload_1
    //   110: getstatic java/lang/Byte.TYPE : Ljava/lang/Class;
    //   113: if_acmpne -> 127
    //   116: aload #6
    //   118: instanceof java/lang/Byte
    //   121: ifeq -> 127
    //   124: goto -> 238
    //   127: aload_1
    //   128: getstatic java/lang/Short.TYPE : Ljava/lang/Class;
    //   131: if_acmpne -> 145
    //   134: aload #6
    //   136: instanceof java/lang/Short
    //   139: ifeq -> 145
    //   142: goto -> 238
    //   145: aload_1
    //   146: getstatic java/lang/Integer.TYPE : Ljava/lang/Class;
    //   149: if_acmpne -> 163
    //   152: aload #6
    //   154: instanceof java/lang/Integer
    //   157: ifeq -> 163
    //   160: goto -> 238
    //   163: aload_1
    //   164: getstatic java/lang/Long.TYPE : Ljava/lang/Class;
    //   167: if_acmpne -> 181
    //   170: aload #6
    //   172: instanceof java/lang/Long
    //   175: ifeq -> 181
    //   178: goto -> 238
    //   181: aload_1
    //   182: getstatic java/lang/Float.TYPE : Ljava/lang/Class;
    //   185: if_acmpne -> 199
    //   188: aload #6
    //   190: instanceof java/lang/Float
    //   193: ifeq -> 199
    //   196: goto -> 238
    //   199: aload_1
    //   200: getstatic java/lang/Double.TYPE : Ljava/lang/Class;
    //   203: if_acmpne -> 217
    //   206: aload #6
    //   208: instanceof java/lang/Double
    //   211: ifeq -> 217
    //   214: goto -> 238
    //   217: aload #5
    //   219: astore_0
    //   220: aload_1
    //   221: getstatic java/lang/Character.TYPE : Ljava/lang/Class;
    //   224: if_acmpne -> 241
    //   227: aload #5
    //   229: astore_0
    //   230: aload #6
    //   232: instanceof java/lang/Character
    //   235: ifeq -> 241
    //   238: aload #6
    //   240: astore_0
    //   241: aload_0
    //   242: astore #5
    //   244: iload #4
    //   246: istore_2
    //   247: aload_0
    //   248: ifnonnull -> 601
    //   251: aload_0
    //   252: astore #5
    //   254: aload_1
    //   255: aload #6
    //   257: invokevirtual getClass : ()Ljava/lang/Class;
    //   260: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   263: ifeq -> 452
    //   266: aload #6
    //   268: astore #5
    //   270: iload #4
    //   272: istore_2
    //   273: goto -> 601
    //   276: aload_1
    //   277: ldc_w com/luajava/LuaObject
    //   280: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   283: ifne -> 341
    //   286: aload #6
    //   288: astore #5
    //   290: goto -> 452
    //   293: aload_1
    //   294: invokevirtual isInterface : ()Z
    //   297: ifeq -> 314
    //   300: aload_0
    //   301: aload_1
    //   302: iload_3
    //   303: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   306: astore #5
    //   308: iload #4
    //   310: istore_2
    //   311: goto -> 601
    //   314: aload_1
    //   315: ldc_w com/luajava/LuaFunction
    //   318: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   321: ifne -> 341
    //   324: aload #6
    //   326: astore #5
    //   328: goto -> 452
    //   331: aload_1
    //   332: ldc_w com/luajava/LuaTable
    //   335: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   338: ifeq -> 354
    //   341: aload_0
    //   342: iload_3
    //   343: invokevirtual getLuaObject : (I)Lcom/luajava/LuaObject;
    //   346: astore #5
    //   348: iload #4
    //   350: istore_2
    //   351: goto -> 601
    //   354: aload_1
    //   355: invokevirtual isArray : ()Z
    //   358: ifeq -> 378
    //   361: aload_0
    //   362: aload_1
    //   363: invokevirtual getComponentType : ()Ljava/lang/Class;
    //   366: iload_3
    //   367: invokestatic b : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   370: astore #5
    //   372: iload #4
    //   374: istore_2
    //   375: goto -> 601
    //   378: ldc_w java/util/List
    //   381: aload_1
    //   382: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   385: ifeq -> 402
    //   388: aload_0
    //   389: aload_1
    //   390: iload_3
    //   391: invokestatic c : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   394: astore #5
    //   396: iload #4
    //   398: istore_2
    //   399: goto -> 601
    //   402: ldc java/util/Map
    //   404: aload_1
    //   405: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   408: ifeq -> 425
    //   411: aload_0
    //   412: aload_1
    //   413: iload_3
    //   414: invokestatic d : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   417: astore #5
    //   419: iload #4
    //   421: istore_2
    //   422: goto -> 601
    //   425: aload #6
    //   427: astore #5
    //   429: aload_1
    //   430: invokevirtual isInterface : ()Z
    //   433: ifeq -> 452
    //   436: goto -> 300
    //   439: aload_1
    //   440: ldc java/lang/String
    //   442: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   445: ifne -> 457
    //   448: aload #6
    //   450: astore #5
    //   452: iconst_0
    //   453: istore_2
    //   454: goto -> 601
    //   457: aload_0
    //   458: iload_3
    //   459: invokevirtual toString : (I)Ljava/lang/String;
    //   462: astore #5
    //   464: iload #4
    //   466: istore_2
    //   467: goto -> 601
    //   470: aload_1
    //   471: invokevirtual isPrimitive : ()Z
    //   474: ifne -> 494
    //   477: aload_1
    //   478: ldc_w java/lang/Number
    //   481: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   484: ifne -> 494
    //   487: aload #6
    //   489: astore #5
    //   491: goto -> 452
    //   494: aload_0
    //   495: iload_3
    //   496: invokevirtual isInteger : (I)Z
    //   499: ifeq -> 522
    //   502: aload_0
    //   503: iload_3
    //   504: invokevirtual toInteger : (I)J
    //   507: invokestatic valueOf : (J)Ljava/lang/Long;
    //   510: aload_1
    //   511: invokestatic convertLuaNumber : (Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;
    //   514: astore #5
    //   516: iload #4
    //   518: istore_2
    //   519: goto -> 601
    //   522: aload #7
    //   524: astore #5
    //   526: iload #4
    //   528: istore_2
    //   529: aload_0
    //   530: iload_3
    //   531: invokevirtual isNumber : (I)Z
    //   534: ifeq -> 601
    //   537: aload_0
    //   538: iload_3
    //   539: invokevirtual toNumber : (I)D
    //   542: invokestatic valueOf : (D)Ljava/lang/Double;
    //   545: aload_1
    //   546: invokestatic convertLuaNumber : (Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    //   549: astore #5
    //   551: iload #4
    //   553: istore_2
    //   554: goto -> 601
    //   557: aload_1
    //   558: invokevirtual isPrimitive : ()Z
    //   561: ifeq -> 588
    //   564: aload_1
    //   565: getstatic java/lang/Boolean.TYPE : Ljava/lang/Class;
    //   568: if_acmpeq -> 588
    //   571: aload_1
    //   572: ldc_w java/lang/Boolean
    //   575: invokevirtual isAssignableFrom : (Ljava/lang/Class;)Z
    //   578: ifne -> 588
    //   581: aload #6
    //   583: astore #5
    //   585: goto -> 452
    //   588: aload_0
    //   589: iload_3
    //   590: invokevirtual toBoolean : (I)Z
    //   593: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   596: astore #5
    //   598: iload #4
    //   600: istore_2
    //   601: iload_2
    //   602: ifeq -> 616
    //   605: aload #5
    //   607: ifnonnull -> 613
    //   610: goto -> 616
    //   613: aload #5
    //   615: areturn
    //   616: new com/luajava/LuaException
    //   619: dup
    //   620: ldc_w 'Invalid Parameter.'
    //   623: invokespecial <init> : (Ljava/lang/String;)V
    //   626: athrow }
  
  private static String a(LuaState paramLuaState, int paramInt) {
    if (paramLuaState.isObject(paramInt))
      return paramLuaState.getObjectFromUserdata(paramInt).getClass().getName(); 
    switch (paramLuaState.type(paramInt)) {
      default:
        return "unkown";
      case 8:
        return "thread";
      case 6:
        return "function";
      case 5:
        return "table";
      case 4:
        return "string";
      case 3:
        return "number";
      case 2:
      case 7:
        return "userdata";
      case 1:
        break;
    } 
    return "boolean";
  }
  
  private static String a(LuaState paramLuaState, String paramString, int paramInt, Class paramClass) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("bad argument to '");
    stringBuilder.append(paramString);
    stringBuilder.append("' (");
    stringBuilder.append(paramClass.getName());
    stringBuilder.append(" expected, got ");
    stringBuilder.append(a(paramLuaState, paramInt));
    stringBuilder.append(" value)");
    throw new LuaException(stringBuilder.toString());
  }
  
  private static String a(LuaState paramLuaState, String paramString1, int paramInt, String paramString2) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("bad argument #");
    stringBuilder.append(paramInt);
    stringBuilder.append(" to '");
    stringBuilder.append(paramString1);
    stringBuilder.append("' (");
    stringBuilder.append(paramString2);
    stringBuilder.append(" expected, got ");
    stringBuilder.append(a(paramLuaState, paramInt + 1));
    stringBuilder.append(" value)");
    throw new LuaException(stringBuilder.toString());
  }
  
  public static int asTable(long paramLong, Object paramObject) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      if (null.isBoolean(-1) && null.toBoolean(-1)) {
        null.pop(1);
        return a(null, paramObject);
      } 
      try {
        null.newTable();
        if (paramObject.getClass().isArray()) {
          int i = Array.getLength(paramObject);
          byte b1 = 0;
          while (b1 <= i - 1) {
            null.pushObjectValue(Array.get(paramObject, b1));
            null.rawSetI(-2, ++b1);
          } 
        } else if (paramObject instanceof Collection) {
          paramObject = ((Collection)paramObject).iterator();
          for (byte b1 = 1; paramObject.hasNext(); b1++) {
            null.pushObjectValue(paramObject.next());
            null.rawSetI(-2, b1);
          } 
        } else if (paramObject instanceof Map) {
          paramObject = ((Map)paramObject).entrySet().iterator();
          while (paramObject.hasNext()) {
            Map.Entry entry = (Map.Entry)paramObject.next();
            null.pushObjectValue(entry.getKey());
            null.pushObjectValue(entry.getValue());
            null.setTable(-3);
          } 
        } 
        null.pushValue(-1);
        return 1;
      } catch (Exception paramObject) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("can not astable: ");
        stringBuilder.append(paramObject.getMessage());
        throw new LuaException(stringBuilder.toString());
      } 
    } 
  }
  
  private static int b(LuaState paramLuaState, Class<?> paramClass) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual getTop : ()I
    //   6: istore_2
    //   7: iconst_0
    //   8: istore #4
    //   10: iload_2
    //   11: iconst_1
    //   12: if_icmpne -> 68
    //   15: aload_0
    //   16: aload_1
    //   17: invokevirtual newInstance : ()Ljava/lang/Object;
    //   20: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   23: aload_0
    //   24: monitorexit
    //   25: iconst_1
    //   26: ireturn
    //   27: aload_0
    //   28: aload_1
    //   29: iconst_1
    //   30: anewarray java/lang/Class
    //   33: dup
    //   34: iconst_0
    //   35: ldc_w android/content/Context
    //   38: aastore
    //   39: invokevirtual getConstructor : ([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   42: iconst_1
    //   43: anewarray java/lang/Object
    //   46: dup
    //   47: iconst_0
    //   48: aload_0
    //   49: invokevirtual getContext : ()Lcom/androlua/LuaContext;
    //   52: invokeinterface getContext : ()Landroid/content/Context;
    //   57: aastore
    //   58: invokevirtual newInstance : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   61: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   64: aload_0
    //   65: monitorexit
    //   66: iconst_1
    //   67: ireturn
    //   68: iload_2
    //   69: iconst_1
    //   70: isub
    //   71: istore #5
    //   73: iload #5
    //   75: anewarray java/lang/Object
    //   78: astore #10
    //   80: aload_1
    //   81: invokevirtual getConstructors : ()[Ljava/lang/reflect/Constructor;
    //   84: astore #11
    //   86: new java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial <init> : ()V
    //   93: astore #9
    //   95: aload #11
    //   97: arraylength
    //   98: istore #6
    //   100: iconst_0
    //   101: istore_2
    //   102: iload_2
    //   103: iload #6
    //   105: if_icmpge -> 255
    //   108: aload #11
    //   110: iload_2
    //   111: aaload
    //   112: astore_1
    //   113: aload_1
    //   114: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   117: astore #8
    //   119: aload #8
    //   121: arraylength
    //   122: iload #5
    //   124: if_icmpeq -> 400
    //   127: goto -> 405
    //   130: aload #8
    //   132: arraylength
    //   133: istore #7
    //   135: iload_3
    //   136: iload #7
    //   138: if_icmpge -> 168
    //   141: aload #10
    //   143: iload_3
    //   144: aload_0
    //   145: aload #8
    //   147: iload_3
    //   148: aaload
    //   149: iload_3
    //   150: iconst_2
    //   151: iadd
    //   152: invokestatic e : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   155: aastore
    //   156: iload_3
    //   157: iconst_1
    //   158: iadd
    //   159: istore_3
    //   160: goto -> 130
    //   163: iconst_0
    //   164: istore_3
    //   165: goto -> 170
    //   168: iconst_1
    //   169: istore_3
    //   170: iload_3
    //   171: ifeq -> 405
    //   174: aload_1
    //   175: aload #10
    //   177: invokevirtual newInstance : ([Ljava/lang/Object;)Ljava/lang/Object;
    //   180: astore #8
    //   182: aload_0
    //   183: aload #8
    //   185: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   188: aload_0
    //   189: monitorexit
    //   190: iconst_1
    //   191: ireturn
    //   192: astore #8
    //   194: aload #9
    //   196: ldc_w '  at '
    //   199: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: pop
    //   203: aload #9
    //   205: aload_1
    //   206: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   209: pop
    //   210: aload #9
    //   212: ldc_w '\\n  -> '
    //   215: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: pop
    //   219: aload #8
    //   221: astore_1
    //   222: aload #8
    //   224: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   227: ifnull -> 236
    //   230: aload #8
    //   232: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   235: astore_1
    //   236: aload #9
    //   238: aload_1
    //   239: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   242: pop
    //   243: aload #9
    //   245: ldc_w '\\n'
    //   248: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: pop
    //   252: goto -> 405
    //   255: aload #9
    //   257: invokevirtual length : ()I
    //   260: ifle -> 301
    //   263: new java/lang/StringBuilder
    //   266: dup
    //   267: invokespecial <init> : ()V
    //   270: astore_1
    //   271: aload_1
    //   272: ldc_w 'Invalid constructor method call.\\n'
    //   275: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: pop
    //   279: aload_1
    //   280: aload #9
    //   282: invokevirtual toString : ()Ljava/lang/String;
    //   285: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: pop
    //   289: new com/luajava/LuaException
    //   292: dup
    //   293: aload_1
    //   294: invokevirtual toString : ()Ljava/lang/String;
    //   297: invokespecial <init> : (Ljava/lang/String;)V
    //   300: athrow
    //   301: aload #11
    //   303: arraylength
    //   304: istore_3
    //   305: iload #4
    //   307: istore_2
    //   308: iload_2
    //   309: iload_3
    //   310: if_icmpge -> 342
    //   313: aload #9
    //   315: aload #11
    //   317: iload_2
    //   318: aaload
    //   319: invokevirtual toString : ()Ljava/lang/String;
    //   322: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: pop
    //   326: aload #9
    //   328: ldc_w '\\n'
    //   331: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: pop
    //   335: iload_2
    //   336: iconst_1
    //   337: iadd
    //   338: istore_2
    //   339: goto -> 308
    //   342: new java/lang/StringBuilder
    //   345: dup
    //   346: invokespecial <init> : ()V
    //   349: astore_1
    //   350: aload_1
    //   351: ldc_w 'Invalid constructor method call. Invalid Parameters.\\n'
    //   354: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   357: pop
    //   358: aload_1
    //   359: aload #9
    //   361: invokevirtual toString : ()Ljava/lang/String;
    //   364: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: pop
    //   368: new com/luajava/LuaException
    //   371: dup
    //   372: aload_1
    //   373: invokevirtual toString : ()Ljava/lang/String;
    //   376: invokespecial <init> : (Ljava/lang/String;)V
    //   379: athrow
    //   380: astore_1
    //   381: aload_0
    //   382: monitorexit
    //   383: aload_1
    //   384: athrow
    //   385: astore #8
    //   387: goto -> 27
    //   390: astore #8
    //   392: goto -> 68
    //   395: astore #8
    //   397: goto -> 163
    //   400: iconst_0
    //   401: istore_3
    //   402: goto -> 130
    //   405: iload_2
    //   406: iconst_1
    //   407: iadd
    //   408: istore_2
    //   409: goto -> 102
    // Exception table:
    //   from	to	target	type
    //   2	7	380	finally
    //   15	23	385	java/lang/Exception
    //   15	23	380	finally
    //   23	25	380	finally
    //   27	64	390	java/lang/Exception
    //   27	64	380	finally
    //   64	66	380	finally
    //   73	100	380	finally
    //   113	127	380	finally
    //   130	135	380	finally
    //   141	156	395	java/lang/Exception
    //   141	156	380	finally
    //   174	182	192	java/lang/Exception
    //   174	182	380	finally
    //   182	190	380	finally
    //   194	219	380	finally
    //   222	236	380	finally
    //   236	252	380	finally
    //   255	301	380	finally
    //   301	305	380	finally
    //   313	335	380	finally
    //   342	380	380	finally
    //   381	383	380	finally }
  
  private static int b(LuaState paramLuaState, Object paramObject, String paramString, boolean paramBoolean) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore #6
    //   5: aload_2
    //   6: iconst_0
    //   7: invokevirtual charAt : (I)C
    //   10: istore #4
    //   12: aload_2
    //   13: astore #8
    //   15: iload #4
    //   17: invokestatic isLowerCase : (C)Z
    //   20: ifeq -> 61
    //   23: new java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial <init> : ()V
    //   30: astore #8
    //   32: aload #8
    //   34: iload #4
    //   36: invokestatic toUpperCase : (C)C
    //   39: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   42: pop
    //   43: aload #8
    //   45: aload_2
    //   46: iconst_1
    //   47: invokevirtual substring : (I)Ljava/lang/String;
    //   50: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: pop
    //   54: aload #8
    //   56: invokevirtual toString : ()Ljava/lang/String;
    //   59: astore #8
    //   61: new java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial <init> : ()V
    //   68: astore_2
    //   69: aload_2
    //   70: ldc_w 'set'
    //   73: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: pop
    //   77: aload_2
    //   78: aload #8
    //   80: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: pop
    //   84: aload_2
    //   85: invokevirtual toString : ()Ljava/lang/String;
    //   88: astore #10
    //   90: aconst_null
    //   91: astore_2
    //   92: new java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial <init> : ()V
    //   99: astore #9
    //   101: aload #9
    //   103: aload_1
    //   104: invokevirtual getClass : ()Ljava/lang/Class;
    //   107: invokevirtual getName : ()Ljava/lang/String;
    //   110: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: pop
    //   114: aload #9
    //   116: ldc_w '@->'
    //   119: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: pop
    //   123: aload #9
    //   125: aload #10
    //   127: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: pop
    //   131: aload #9
    //   133: invokevirtual toString : ()Ljava/lang/String;
    //   136: astore #9
    //   138: iconst_1
    //   139: anewarray java/lang/Object
    //   142: astore #11
    //   144: aload_0
    //   145: iconst_m1
    //   146: invokevirtual type : (I)I
    //   149: istore #5
    //   151: iload #5
    //   153: iconst_1
    //   154: if_icmpeq -> 296
    //   157: iload #5
    //   159: tableswitch default -> 788, 3 -> 208, 4 -> 180
    //   180: getstatic com/luajava/LuaJavaAPI.b : Ljava/util/HashMap;
    //   183: aload #9
    //   185: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   188: checkcast java/lang/reflect/Method
    //   191: astore_2
    //   192: aload_2
    //   193: ifnull -> 794
    //   196: aload #11
    //   198: iconst_0
    //   199: aload_0
    //   200: iconst_m1
    //   201: invokevirtual toString : (I)Ljava/lang/String;
    //   204: aastore
    //   205: goto -> 794
    //   208: aload_0
    //   209: iconst_m1
    //   210: invokevirtual isInteger : (I)Z
    //   213: ifeq -> 256
    //   216: getstatic com/luajava/LuaJavaAPI.c : Ljava/util/HashMap;
    //   219: aload #9
    //   221: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   224: checkcast java/lang/reflect/Method
    //   227: astore_2
    //   228: aload_2
    //   229: ifnull -> 800
    //   232: aload #11
    //   234: iconst_0
    //   235: aload_0
    //   236: iconst_m1
    //   237: invokevirtual toInteger : (I)J
    //   240: invokestatic valueOf : (J)Ljava/lang/Long;
    //   243: aload_2
    //   244: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   247: iconst_0
    //   248: aaload
    //   249: invokestatic convertLuaNumber : (Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;
    //   252: aastore
    //   253: goto -> 800
    //   256: getstatic com/luajava/LuaJavaAPI.d : Ljava/util/HashMap;
    //   259: aload #9
    //   261: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   264: checkcast java/lang/reflect/Method
    //   267: astore_2
    //   268: aload_2
    //   269: ifnull -> 807
    //   272: aload #11
    //   274: iconst_0
    //   275: aload_0
    //   276: iconst_m1
    //   277: invokevirtual toNumber : (I)D
    //   280: invokestatic valueOf : (D)Ljava/lang/Double;
    //   283: aload_2
    //   284: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   287: iconst_0
    //   288: aaload
    //   289: invokestatic convertLuaNumber : (Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    //   292: aastore
    //   293: goto -> 807
    //   296: getstatic com/luajava/LuaJavaAPI.e : Ljava/util/HashMap;
    //   299: aload #9
    //   301: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   304: checkcast java/lang/reflect/Method
    //   307: astore_2
    //   308: aload_2
    //   309: ifnull -> 324
    //   312: aload #11
    //   314: iconst_0
    //   315: aload_0
    //   316: iconst_m1
    //   317: invokevirtual toBoolean : (I)Z
    //   320: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   323: aastore
    //   324: iconst_1
    //   325: istore #5
    //   327: aload_2
    //   328: ifnull -> 353
    //   331: aload_2
    //   332: aload_1
    //   333: aload #11
    //   335: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   338: pop
    //   339: aload_0
    //   340: monitorexit
    //   341: iconst_1
    //   342: ireturn
    //   343: astore_1
    //   344: new com/luajava/LuaException
    //   347: dup
    //   348: aload_1
    //   349: invokespecial <init> : (Ljava/lang/Exception;)V
    //   352: athrow
    //   353: aload_1
    //   354: invokevirtual getClass : ()Ljava/lang/Class;
    //   357: aload #10
    //   359: iload_3
    //   360: invokestatic getMethod : (Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;
    //   363: astore #11
    //   365: new java/lang/StringBuilder
    //   368: dup
    //   369: invokespecial <init> : ()V
    //   372: astore_2
    //   373: aload #11
    //   375: invokevirtual iterator : ()Ljava/util/Iterator;
    //   378: astore #13
    //   380: aload #13
    //   382: invokeinterface hasNext : ()Z
    //   387: ifeq -> 593
    //   390: aload #13
    //   392: invokeinterface next : ()Ljava/lang/Object;
    //   397: checkcast java/lang/reflect/Method
    //   400: astore #11
    //   402: iload_3
    //   403: ifeq -> 420
    //   406: aload #11
    //   408: invokevirtual getModifiers : ()I
    //   411: invokestatic isStatic : (I)Z
    //   414: ifne -> 420
    //   417: goto -> 380
    //   420: aload #11
    //   422: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   425: astore #14
    //   427: aload #14
    //   429: arraylength
    //   430: istore #7
    //   432: iload #7
    //   434: iconst_1
    //   435: if_icmpeq -> 441
    //   438: goto -> 380
    //   441: aload_0
    //   442: aload #14
    //   444: iload #6
    //   446: aaload
    //   447: aload_0
    //   448: invokevirtual getTop : ()I
    //   451: invokestatic e : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   454: astore #12
    //   456: iload #5
    //   458: iconst_1
    //   459: if_icmpeq -> 525
    //   462: iload #5
    //   464: bipush #9
    //   466: if_icmpeq -> 518
    //   469: iload #5
    //   471: tableswitch default -> 492, 3 -> 511, 4 -> 495
    //   492: goto -> 532
    //   495: getstatic com/luajava/LuaJavaAPI.b : Ljava/util/HashMap;
    //   498: astore_2
    //   499: aload_2
    //   500: aload #9
    //   502: aload #11
    //   504: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   507: pop
    //   508: goto -> 532
    //   511: getstatic com/luajava/LuaJavaAPI.d : Ljava/util/HashMap;
    //   514: astore_2
    //   515: goto -> 499
    //   518: getstatic com/luajava/LuaJavaAPI.c : Ljava/util/HashMap;
    //   521: astore_2
    //   522: goto -> 499
    //   525: getstatic com/luajava/LuaJavaAPI.e : Ljava/util/HashMap;
    //   528: astore_2
    //   529: goto -> 499
    //   532: aload #11
    //   534: aload_1
    //   535: iconst_1
    //   536: anewarray java/lang/Object
    //   539: dup
    //   540: iconst_0
    //   541: aload #12
    //   543: aastore
    //   544: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   547: pop
    //   548: aload_0
    //   549: monitorexit
    //   550: iconst_1
    //   551: ireturn
    //   552: astore_1
    //   553: new com/luajava/LuaException
    //   556: dup
    //   557: aload_1
    //   558: invokespecial <init> : (Ljava/lang/Exception;)V
    //   561: athrow
    //   562: aload_2
    //   563: ldc_w '-> '
    //   566: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: pop
    //   570: aload_2
    //   571: aload #14
    //   573: iconst_0
    //   574: aaload
    //   575: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   578: pop
    //   579: aload_2
    //   580: ldc_w '\\n'
    //   583: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: pop
    //   587: iconst_0
    //   588: istore #6
    //   590: goto -> 438
    //   593: aload_0
    //   594: invokevirtual getTop : ()I
    //   597: istore #6
    //   599: aload_0
    //   600: iload #6
    //   602: invokevirtual type : (I)I
    //   605: iconst_5
    //   606: if_icmpne -> 702
    //   609: aload_0
    //   610: iconst_1
    //   611: aload #10
    //   613: invokevirtual getField : (ILjava/lang/String;)I
    //   616: pop
    //   617: aload_0
    //   618: iconst_m1
    //   619: invokevirtual getFunction : (I)Lcom/luajava/LuaFunction;
    //   622: astore_1
    //   623: aload_0
    //   624: iconst_m1
    //   625: invokevirtual type : (I)I
    //   628: bipush #6
    //   630: if_icmpne -> 702
    //   633: aload_1
    //   634: ifnull -> 702
    //   637: aload_0
    //   638: iload #6
    //   640: invokevirtual rawLen : (I)I
    //   643: istore #7
    //   645: iconst_0
    //   646: istore #5
    //   648: iload #5
    //   650: iload #7
    //   652: if_icmpge -> 674
    //   655: iload #5
    //   657: iconst_1
    //   658: iadd
    //   659: istore #5
    //   661: aload_0
    //   662: iload #6
    //   664: iload #5
    //   666: i2l
    //   667: invokevirtual getI : (IJ)I
    //   670: pop
    //   671: goto -> 648
    //   674: aload_0
    //   675: iload #7
    //   677: iconst_0
    //   678: iconst_0
    //   679: invokevirtual pcall : (III)I
    //   682: ifne -> 689
    //   685: aload_0
    //   686: monitorexit
    //   687: iconst_1
    //   688: ireturn
    //   689: new com/luajava/LuaException
    //   692: dup
    //   693: aload_0
    //   694: iconst_m1
    //   695: invokevirtual toString : (I)Ljava/lang/String;
    //   698: invokespecial <init> : (Ljava/lang/String;)V
    //   701: athrow
    //   702: aload_2
    //   703: invokevirtual length : ()I
    //   706: ifle -> 774
    //   709: new java/lang/StringBuilder
    //   712: dup
    //   713: invokespecial <init> : ()V
    //   716: astore_1
    //   717: aload_1
    //   718: ldc_w 'Invalid setter '
    //   721: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   724: pop
    //   725: aload_1
    //   726: aload #8
    //   728: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   731: pop
    //   732: aload_1
    //   733: ldc_w '. Invalid Parameters.\\n'
    //   736: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   739: pop
    //   740: aload_1
    //   741: aload_2
    //   742: invokevirtual toString : ()Ljava/lang/String;
    //   745: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   748: pop
    //   749: aload_1
    //   750: aload_0
    //   751: iconst_m1
    //   752: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   755: invokevirtual getClass : ()Ljava/lang/Class;
    //   758: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   761: pop
    //   762: new com/luajava/LuaException
    //   765: dup
    //   766: aload_1
    //   767: invokevirtual toString : ()Ljava/lang/String;
    //   770: invokespecial <init> : (Ljava/lang/String;)V
    //   773: athrow
    //   774: aload_0
    //   775: monitorexit
    //   776: iconst_0
    //   777: ireturn
    //   778: astore_1
    //   779: aload_0
    //   780: monitorexit
    //   781: aload_1
    //   782: athrow
    //   783: astore #11
    //   785: goto -> 562
    //   788: iconst_m1
    //   789: istore #5
    //   791: goto -> 327
    //   794: iconst_4
    //   795: istore #5
    //   797: goto -> 327
    //   800: bipush #9
    //   802: istore #5
    //   804: goto -> 327
    //   807: iconst_3
    //   808: istore #5
    //   810: goto -> 327
    // Exception table:
    //   from	to	target	type
    //   5	12	778	finally
    //   15	61	778	finally
    //   61	90	778	finally
    //   92	151	778	finally
    //   180	192	778	finally
    //   196	205	778	finally
    //   208	228	778	finally
    //   232	253	778	finally
    //   256	268	778	finally
    //   272	293	778	finally
    //   296	308	778	finally
    //   312	324	778	finally
    //   331	339	343	java/lang/Exception
    //   331	339	778	finally
    //   339	341	778	finally
    //   344	353	778	finally
    //   353	380	778	finally
    //   380	402	778	finally
    //   406	417	778	finally
    //   420	432	778	finally
    //   441	456	783	com/luajava/LuaException
    //   441	456	778	finally
    //   495	499	778	finally
    //   499	508	778	finally
    //   511	515	778	finally
    //   518	522	778	finally
    //   525	529	778	finally
    //   532	548	552	java/lang/Exception
    //   532	548	778	finally
    //   548	550	778	finally
    //   553	562	778	finally
    //   562	587	778	finally
    //   593	633	778	finally
    //   637	645	778	finally
    //   661	671	778	finally
    //   674	687	778	finally
    //   689	702	778	finally
    //   702	774	778	finally
    //   774	776	778	finally
    //   779	781	778	finally }
  
  private static Object b(LuaState paramLuaState, Class<?> paramClass, int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_2
    //   4: invokevirtual objLen : (I)I
    //   7: istore #4
    //   9: aload_1
    //   10: iload #4
    //   12: invokestatic newInstance : (Ljava/lang/Class;I)Ljava/lang/Object;
    //   15: astore #5
    //   17: aload_1
    //   18: ldc java/lang/String
    //   20: if_acmpne -> 68
    //   23: iconst_1
    //   24: istore_3
    //   25: iload_3
    //   26: iload #4
    //   28: if_icmpgt -> 508
    //   31: aload_0
    //   32: iload_3
    //   33: i2d
    //   34: invokevirtual pushNumber : (D)V
    //   37: aload_0
    //   38: iload_2
    //   39: invokevirtual getTable : (I)I
    //   42: pop
    //   43: aload #5
    //   45: iload_3
    //   46: iconst_1
    //   47: isub
    //   48: aload_0
    //   49: iconst_m1
    //   50: invokevirtual toString : (I)Ljava/lang/String;
    //   53: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   56: aload_0
    //   57: iconst_1
    //   58: invokevirtual pop : (I)V
    //   61: iload_3
    //   62: iconst_1
    //   63: iadd
    //   64: istore_3
    //   65: goto -> 25
    //   68: aload_1
    //   69: getstatic java/lang/Double.TYPE : Ljava/lang/Class;
    //   72: if_acmpne -> 123
    //   75: iconst_1
    //   76: istore_3
    //   77: iload_3
    //   78: iload #4
    //   80: if_icmpgt -> 508
    //   83: aload_0
    //   84: iload_3
    //   85: i2d
    //   86: invokevirtual pushNumber : (D)V
    //   89: aload_0
    //   90: iload_2
    //   91: invokevirtual getTable : (I)I
    //   94: pop
    //   95: aload #5
    //   97: iload_3
    //   98: iconst_1
    //   99: isub
    //   100: aload_0
    //   101: iconst_m1
    //   102: invokevirtual toNumber : (I)D
    //   105: invokestatic valueOf : (D)Ljava/lang/Double;
    //   108: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   111: aload_0
    //   112: iconst_1
    //   113: invokevirtual pop : (I)V
    //   116: iload_3
    //   117: iconst_1
    //   118: iadd
    //   119: istore_3
    //   120: goto -> 77
    //   123: aload_1
    //   124: getstatic java/lang/Float.TYPE : Ljava/lang/Class;
    //   127: if_acmpne -> 179
    //   130: iconst_1
    //   131: istore_3
    //   132: iload_3
    //   133: iload #4
    //   135: if_icmpgt -> 508
    //   138: aload_0
    //   139: iload_3
    //   140: i2d
    //   141: invokevirtual pushNumber : (D)V
    //   144: aload_0
    //   145: iload_2
    //   146: invokevirtual getTable : (I)I
    //   149: pop
    //   150: aload #5
    //   152: iload_3
    //   153: iconst_1
    //   154: isub
    //   155: aload_0
    //   156: iconst_m1
    //   157: invokevirtual toNumber : (I)D
    //   160: d2f
    //   161: invokestatic valueOf : (F)Ljava/lang/Float;
    //   164: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   167: aload_0
    //   168: iconst_1
    //   169: invokevirtual pop : (I)V
    //   172: iload_3
    //   173: iconst_1
    //   174: iadd
    //   175: istore_3
    //   176: goto -> 132
    //   179: aload_1
    //   180: getstatic java/lang/Long.TYPE : Ljava/lang/Class;
    //   183: if_acmpne -> 234
    //   186: iconst_1
    //   187: istore_3
    //   188: iload_3
    //   189: iload #4
    //   191: if_icmpgt -> 508
    //   194: aload_0
    //   195: iload_3
    //   196: i2d
    //   197: invokevirtual pushNumber : (D)V
    //   200: aload_0
    //   201: iload_2
    //   202: invokevirtual getTable : (I)I
    //   205: pop
    //   206: aload #5
    //   208: iload_3
    //   209: iconst_1
    //   210: isub
    //   211: aload_0
    //   212: iconst_m1
    //   213: invokevirtual toInteger : (I)J
    //   216: invokestatic valueOf : (J)Ljava/lang/Long;
    //   219: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   222: aload_0
    //   223: iconst_1
    //   224: invokevirtual pop : (I)V
    //   227: iload_3
    //   228: iconst_1
    //   229: iadd
    //   230: istore_3
    //   231: goto -> 188
    //   234: aload_1
    //   235: getstatic java/lang/Integer.TYPE : Ljava/lang/Class;
    //   238: if_acmpne -> 290
    //   241: iconst_1
    //   242: istore_3
    //   243: iload_3
    //   244: iload #4
    //   246: if_icmpgt -> 508
    //   249: aload_0
    //   250: iload_3
    //   251: i2d
    //   252: invokevirtual pushNumber : (D)V
    //   255: aload_0
    //   256: iload_2
    //   257: invokevirtual getTable : (I)I
    //   260: pop
    //   261: aload #5
    //   263: iload_3
    //   264: iconst_1
    //   265: isub
    //   266: aload_0
    //   267: iconst_m1
    //   268: invokevirtual toInteger : (I)J
    //   271: l2i
    //   272: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   275: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   278: aload_0
    //   279: iconst_1
    //   280: invokevirtual pop : (I)V
    //   283: iload_3
    //   284: iconst_1
    //   285: iadd
    //   286: istore_3
    //   287: goto -> 243
    //   290: aload_1
    //   291: getstatic java/lang/Short.TYPE : Ljava/lang/Class;
    //   294: if_acmpne -> 347
    //   297: iconst_1
    //   298: istore_3
    //   299: iload_3
    //   300: iload #4
    //   302: if_icmpgt -> 508
    //   305: aload_0
    //   306: iload_3
    //   307: i2d
    //   308: invokevirtual pushNumber : (D)V
    //   311: aload_0
    //   312: iload_2
    //   313: invokevirtual getTable : (I)I
    //   316: pop
    //   317: aload #5
    //   319: iload_3
    //   320: iconst_1
    //   321: isub
    //   322: aload_0
    //   323: iconst_m1
    //   324: invokevirtual toInteger : (I)J
    //   327: l2i
    //   328: i2s
    //   329: invokestatic valueOf : (S)Ljava/lang/Short;
    //   332: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   335: aload_0
    //   336: iconst_1
    //   337: invokevirtual pop : (I)V
    //   340: iload_3
    //   341: iconst_1
    //   342: iadd
    //   343: istore_3
    //   344: goto -> 299
    //   347: aload_1
    //   348: getstatic java/lang/Character.TYPE : Ljava/lang/Class;
    //   351: if_acmpne -> 404
    //   354: iconst_1
    //   355: istore_3
    //   356: iload_3
    //   357: iload #4
    //   359: if_icmpgt -> 508
    //   362: aload_0
    //   363: iload_3
    //   364: i2d
    //   365: invokevirtual pushNumber : (D)V
    //   368: aload_0
    //   369: iload_2
    //   370: invokevirtual getTable : (I)I
    //   373: pop
    //   374: aload #5
    //   376: iload_3
    //   377: iconst_1
    //   378: isub
    //   379: aload_0
    //   380: iconst_m1
    //   381: invokevirtual toInteger : (I)J
    //   384: l2i
    //   385: i2c
    //   386: invokestatic valueOf : (C)Ljava/lang/Character;
    //   389: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   392: aload_0
    //   393: iconst_1
    //   394: invokevirtual pop : (I)V
    //   397: iload_3
    //   398: iconst_1
    //   399: iadd
    //   400: istore_3
    //   401: goto -> 356
    //   404: aload_1
    //   405: getstatic java/lang/Byte.TYPE : Ljava/lang/Class;
    //   408: if_acmpne -> 527
    //   411: iconst_1
    //   412: istore_3
    //   413: iload_3
    //   414: iload #4
    //   416: if_icmpgt -> 508
    //   419: aload_0
    //   420: iload_3
    //   421: i2d
    //   422: invokevirtual pushNumber : (D)V
    //   425: aload_0
    //   426: iload_2
    //   427: invokevirtual getTable : (I)I
    //   430: pop
    //   431: aload #5
    //   433: iload_3
    //   434: iconst_1
    //   435: isub
    //   436: aload_0
    //   437: iconst_m1
    //   438: invokevirtual toInteger : (I)J
    //   441: l2i
    //   442: i2b
    //   443: invokestatic valueOf : (B)Ljava/lang/Byte;
    //   446: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   449: aload_0
    //   450: iconst_1
    //   451: invokevirtual pop : (I)V
    //   454: iload_3
    //   455: iconst_1
    //   456: iadd
    //   457: istore_3
    //   458: goto -> 413
    //   461: iload_3
    //   462: iload #4
    //   464: if_icmpgt -> 508
    //   467: aload_0
    //   468: iload_3
    //   469: i2d
    //   470: invokevirtual pushNumber : (D)V
    //   473: aload_0
    //   474: iload_2
    //   475: invokevirtual getTable : (I)I
    //   478: pop
    //   479: aload #5
    //   481: iload_3
    //   482: iconst_1
    //   483: isub
    //   484: aload_0
    //   485: aload_1
    //   486: aload_0
    //   487: invokevirtual getTop : ()I
    //   490: invokestatic e : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   493: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   496: aload_0
    //   497: iconst_1
    //   498: invokevirtual pop : (I)V
    //   501: iload_3
    //   502: iconst_1
    //   503: iadd
    //   504: istore_3
    //   505: goto -> 461
    //   508: aload_0
    //   509: monitorexit
    //   510: aload #5
    //   512: areturn
    //   513: astore_1
    //   514: new com/luajava/LuaException
    //   517: dup
    //   518: aload_1
    //   519: invokespecial <init> : (Ljava/lang/Exception;)V
    //   522: athrow
    //   523: aload_0
    //   524: monitorexit
    //   525: aload_1
    //   526: athrow
    //   527: iconst_1
    //   528: istore_3
    //   529: goto -> 461
    //   532: astore_1
    //   533: goto -> 523
    // Exception table:
    //   from	to	target	type
    //   2	17	513	java/lang/Exception
    //   2	17	532	finally
    //   31	61	513	java/lang/Exception
    //   31	61	532	finally
    //   68	75	513	java/lang/Exception
    //   68	75	532	finally
    //   83	116	513	java/lang/Exception
    //   83	116	532	finally
    //   123	130	513	java/lang/Exception
    //   123	130	532	finally
    //   138	172	513	java/lang/Exception
    //   138	172	532	finally
    //   179	186	513	java/lang/Exception
    //   179	186	532	finally
    //   194	227	513	java/lang/Exception
    //   194	227	532	finally
    //   234	241	513	java/lang/Exception
    //   234	241	532	finally
    //   249	283	513	java/lang/Exception
    //   249	283	532	finally
    //   290	297	513	java/lang/Exception
    //   290	297	532	finally
    //   305	340	513	java/lang/Exception
    //   305	340	532	finally
    //   347	354	513	java/lang/Exception
    //   347	354	532	finally
    //   362	397	513	java/lang/Exception
    //   362	397	532	finally
    //   404	411	513	java/lang/Exception
    //   404	411	532	finally
    //   419	454	513	java/lang/Exception
    //   419	454	532	finally
    //   467	501	513	java/lang/Exception
    //   467	501	532	finally
    //   508	510	532	finally
    //   514	523	532	finally
    //   523	525	532	finally }
  
  private static int c(LuaState paramLuaState, Class paramClass) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_1
    //   5: iconst_2
    //   6: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   9: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   12: aload_0
    //   13: monitorexit
    //   14: iconst_1
    //   15: ireturn
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	16	finally
    //   17	19	16	finally }
  
  private static Object c(LuaState paramLuaState, Class<List<Object>> paramClass, int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_2
    //   4: invokevirtual objLen : (I)I
    //   7: istore #4
    //   9: aload_1
    //   10: ldc_w java/util/List
    //   13: invokevirtual equals : (Ljava/lang/Object;)Z
    //   16: ifeq -> 30
    //   19: new java/util/ArrayList
    //   22: dup
    //   23: invokespecial <init> : ()V
    //   26: astore_1
    //   27: goto -> 102
    //   30: aload_1
    //   31: invokevirtual newInstance : ()Ljava/lang/Object;
    //   34: checkcast java/util/List
    //   37: astore_1
    //   38: goto -> 102
    //   41: iload_3
    //   42: iload #4
    //   44: if_icmpgt -> 83
    //   47: aload_0
    //   48: iload_3
    //   49: i2d
    //   50: invokevirtual pushNumber : (D)V
    //   53: aload_0
    //   54: iload_2
    //   55: invokevirtual getTable : (I)I
    //   58: pop
    //   59: aload_1
    //   60: aload_0
    //   61: iconst_m1
    //   62: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   65: invokeinterface add : (Ljava/lang/Object;)Z
    //   70: pop
    //   71: aload_0
    //   72: iconst_1
    //   73: invokevirtual pop : (I)V
    //   76: iload_3
    //   77: iconst_1
    //   78: iadd
    //   79: istore_3
    //   80: goto -> 41
    //   83: aload_0
    //   84: monitorexit
    //   85: aload_1
    //   86: areturn
    //   87: astore_1
    //   88: new com/luajava/LuaException
    //   91: dup
    //   92: aload_1
    //   93: invokespecial <init> : (Ljava/lang/Exception;)V
    //   96: athrow
    //   97: astore_1
    //   98: aload_0
    //   99: monitorexit
    //   100: aload_1
    //   101: athrow
    //   102: iconst_1
    //   103: istore_3
    //   104: goto -> 41
    // Exception table:
    //   from	to	target	type
    //   2	9	97	finally
    //   9	27	87	java/lang/Exception
    //   9	27	97	finally
    //   30	38	87	java/lang/Exception
    //   30	38	97	finally
    //   47	76	87	java/lang/Exception
    //   47	76	97	finally
    //   83	85	97	finally
    //   88	97	97	finally
    //   98	100	97	finally }
  
  public static int callMethod(long paramLong, Object paramObject, String paramString) { // Byte code:
    //   0: lload_0
    //   1: invokestatic getExistingState : (J)Lcom/luajava/LuaState;
    //   4: astore #15
    //   6: aload #15
    //   8: monitorenter
    //   9: new java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: astore #16
    //   18: aconst_null
    //   19: astore #12
    //   21: aload #15
    //   23: invokevirtual getTop : ()I
    //   26: istore #5
    //   28: iconst_m1
    //   29: istore #4
    //   31: iload #5
    //   33: ifne -> 193
    //   36: getstatic com/luajava/LuaJavaAPI.f : Ljava/util/HashMap;
    //   39: aload_3
    //   40: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   43: checkcast java/lang/reflect/Method
    //   46: astore #12
    //   48: aload #12
    //   50: ifnull -> 1185
    //   53: aload #12
    //   55: aload_2
    //   56: iconst_0
    //   57: anewarray java/lang/Object
    //   60: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   63: astore_2
    //   64: aload_2
    //   65: ifnonnull -> 87
    //   68: aload #12
    //   70: invokevirtual getReturnType : ()Ljava/lang/Class;
    //   73: getstatic java/lang/Void.TYPE : Ljava/lang/Class;
    //   76: invokevirtual equals : (Ljava/lang/Object;)Z
    //   79: ifeq -> 87
    //   82: aload #15
    //   84: monitorexit
    //   85: iconst_0
    //   86: ireturn
    //   87: aload #15
    //   89: aload_2
    //   90: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   93: aload #15
    //   95: monitorexit
    //   96: iconst_1
    //   97: ireturn
    //   98: astore_2
    //   99: aload #16
    //   101: ldc_w '  at '
    //   104: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: pop
    //   108: aload #16
    //   110: aload #12
    //   112: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: aload #16
    //   118: ldc_w '\\n  -> '
    //   121: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload_2
    //   126: astore_3
    //   127: aload_2
    //   128: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   131: ifnull -> 139
    //   134: aload_2
    //   135: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   138: astore_3
    //   139: aload #16
    //   141: aload_3
    //   142: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: aload #16
    //   148: ldc_w '\\n'
    //   151: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: new java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial <init> : ()V
    //   162: astore_2
    //   163: aload_2
    //   164: ldc_w 'Invalid method call.\\n'
    //   167: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: aload_2
    //   172: aload #16
    //   174: invokevirtual toString : ()Ljava/lang/String;
    //   177: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: new com/luajava/LuaException
    //   184: dup
    //   185: aload_2
    //   186: invokevirtual toString : ()Ljava/lang/String;
    //   189: invokespecial <init> : (Ljava/lang/String;)V
    //   192: athrow
    //   193: iload #5
    //   195: anewarray java/lang/Object
    //   198: astore #17
    //   200: iload #5
    //   202: iconst_1
    //   203: if_icmpne -> 1194
    //   206: aload #15
    //   208: iconst_1
    //   209: invokevirtual type : (I)I
    //   212: istore #6
    //   214: iload #6
    //   216: iconst_1
    //   217: if_icmpeq -> 427
    //   220: iload #6
    //   222: tableswitch default -> 1191, 3 -> 293, 4 -> 244
    //   244: iconst_4
    //   245: istore #6
    //   247: getstatic com/luajava/LuaJavaAPI.b : Ljava/util/HashMap;
    //   250: aload_3
    //   251: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   254: checkcast java/lang/reflect/Method
    //   257: astore #13
    //   259: iload #6
    //   261: istore #4
    //   263: aload #13
    //   265: astore #12
    //   267: aload #13
    //   269: ifnull -> 460
    //   272: aload #17
    //   274: iconst_0
    //   275: aload #15
    //   277: iconst_1
    //   278: invokevirtual toString : (I)Ljava/lang/String;
    //   281: aastore
    //   282: iload #6
    //   284: istore #4
    //   286: aload #13
    //   288: astore #12
    //   290: goto -> 460
    //   293: aload #15
    //   295: iconst_1
    //   296: invokevirtual isInteger : (I)Z
    //   299: ifeq -> 365
    //   302: bipush #9
    //   304: istore #6
    //   306: getstatic com/luajava/LuaJavaAPI.c : Ljava/util/HashMap;
    //   309: aload_3
    //   310: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   313: checkcast java/lang/reflect/Method
    //   316: astore #13
    //   318: iload #6
    //   320: istore #4
    //   322: aload #13
    //   324: astore #12
    //   326: aload #13
    //   328: ifnull -> 460
    //   331: aload #17
    //   333: iconst_0
    //   334: aload #15
    //   336: iconst_1
    //   337: invokevirtual toInteger : (I)J
    //   340: invokestatic valueOf : (J)Ljava/lang/Long;
    //   343: aload #13
    //   345: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   348: iconst_0
    //   349: aaload
    //   350: invokestatic convertLuaNumber : (Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;
    //   353: aastore
    //   354: iload #6
    //   356: istore #4
    //   358: aload #13
    //   360: astore #12
    //   362: goto -> 460
    //   365: iconst_3
    //   366: istore #6
    //   368: getstatic com/luajava/LuaJavaAPI.d : Ljava/util/HashMap;
    //   371: aload_3
    //   372: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   375: checkcast java/lang/reflect/Method
    //   378: astore #13
    //   380: iload #6
    //   382: istore #4
    //   384: aload #13
    //   386: astore #12
    //   388: aload #13
    //   390: ifnull -> 460
    //   393: aload #17
    //   395: iconst_0
    //   396: aload #15
    //   398: iconst_1
    //   399: invokevirtual toNumber : (I)D
    //   402: invokestatic valueOf : (D)Ljava/lang/Double;
    //   405: aload #13
    //   407: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   410: iconst_0
    //   411: aaload
    //   412: invokestatic convertLuaNumber : (Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    //   415: aastore
    //   416: iload #6
    //   418: istore #4
    //   420: aload #13
    //   422: astore #12
    //   424: goto -> 460
    //   427: getstatic com/luajava/LuaJavaAPI.e : Ljava/util/HashMap;
    //   430: aload_3
    //   431: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   434: checkcast java/lang/reflect/Method
    //   437: astore #12
    //   439: aload #12
    //   441: ifnull -> 457
    //   444: aload #17
    //   446: iconst_0
    //   447: aload #15
    //   449: iconst_1
    //   450: invokevirtual toBoolean : (I)Z
    //   453: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   456: aastore
    //   457: iconst_1
    //   458: istore #4
    //   460: iload #4
    //   462: istore #6
    //   464: aload #12
    //   466: ifnull -> 624
    //   469: aload #12
    //   471: invokevirtual getModifiers : ()I
    //   474: invokestatic isPublic : (I)Z
    //   477: ifne -> 486
    //   480: aload #12
    //   482: iconst_1
    //   483: invokevirtual setAccessible : (Z)V
    //   486: aload #12
    //   488: aload_2
    //   489: aload #17
    //   491: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   494: astore_2
    //   495: aload_2
    //   496: ifnonnull -> 518
    //   499: aload #12
    //   501: invokevirtual getReturnType : ()Ljava/lang/Class;
    //   504: getstatic java/lang/Void.TYPE : Ljava/lang/Class;
    //   507: invokevirtual equals : (Ljava/lang/Object;)Z
    //   510: ifeq -> 518
    //   513: aload #15
    //   515: monitorexit
    //   516: iconst_0
    //   517: ireturn
    //   518: aload #15
    //   520: aload_2
    //   521: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   524: aload #15
    //   526: monitorexit
    //   527: iconst_1
    //   528: ireturn
    //   529: astore_2
    //   530: aload #16
    //   532: ldc_w '  at '
    //   535: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: pop
    //   539: aload #16
    //   541: aload #12
    //   543: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   546: pop
    //   547: aload #16
    //   549: ldc_w '\\n  -> '
    //   552: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   555: pop
    //   556: aload_2
    //   557: astore_3
    //   558: aload_2
    //   559: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   562: ifnull -> 570
    //   565: aload_2
    //   566: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   569: astore_3
    //   570: aload #16
    //   572: aload_3
    //   573: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   576: pop
    //   577: aload #16
    //   579: ldc_w '\\n'
    //   582: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   585: pop
    //   586: new java/lang/StringBuilder
    //   589: dup
    //   590: invokespecial <init> : ()V
    //   593: astore_2
    //   594: aload_2
    //   595: ldc_w 'Invalid method call.\\n'
    //   598: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: pop
    //   602: aload_2
    //   603: aload #16
    //   605: invokevirtual toString : ()Ljava/lang/String;
    //   608: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: pop
    //   612: new com/luajava/LuaException
    //   615: dup
    //   616: aload_2
    //   617: invokevirtual toString : ()Ljava/lang/String;
    //   620: invokespecial <init> : (Ljava/lang/String;)V
    //   623: athrow
    //   624: getstatic com/luajava/LuaJavaAPI.methodCache : Ljava/util/HashMap;
    //   627: aload_3
    //   628: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   631: checkcast [Ljava/lang/reflect/Method;
    //   634: astore #18
    //   636: iload #5
    //   638: newarray int
    //   640: astore #12
    //   642: iconst_0
    //   643: istore #4
    //   645: iload #4
    //   647: iload #5
    //   649: if_icmpge -> 677
    //   652: iload #4
    //   654: iconst_1
    //   655: iadd
    //   656: istore #7
    //   658: aload #12
    //   660: iload #4
    //   662: aload #15
    //   664: iload #7
    //   666: invokevirtual type : (I)I
    //   669: iastore
    //   670: iload #7
    //   672: istore #4
    //   674: goto -> 645
    //   677: aload #18
    //   679: arraylength
    //   680: istore #9
    //   682: iconst_0
    //   683: istore #7
    //   685: iload #5
    //   687: istore #4
    //   689: iload #7
    //   691: iload #9
    //   693: if_icmpge -> 1043
    //   696: aload #18
    //   698: iload #7
    //   700: aaload
    //   701: astore #14
    //   703: aload #14
    //   705: invokevirtual getParameterTypes : ()[Ljava/lang/Class;
    //   708: astore #13
    //   710: aload #13
    //   712: arraylength
    //   713: iload #4
    //   715: if_icmpeq -> 1212
    //   718: iload #4
    //   720: istore #5
    //   722: aload #12
    //   724: astore #13
    //   726: goto -> 1201
    //   729: aload #13
    //   731: arraylength
    //   732: istore #8
    //   734: iload #5
    //   736: iload #8
    //   738: if_icmpge -> 790
    //   741: aload #13
    //   743: iload #5
    //   745: aaload
    //   746: astore #19
    //   748: aload #12
    //   750: iload #5
    //   752: iaload
    //   753: istore #10
    //   755: iload #5
    //   757: iconst_1
    //   758: iadd
    //   759: istore #8
    //   761: aload #17
    //   763: iload #5
    //   765: aload #15
    //   767: aload #19
    //   769: iload #10
    //   771: iload #8
    //   773: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Class;II)Ljava/lang/Object;
    //   776: aastore
    //   777: iload #8
    //   779: istore #5
    //   781: goto -> 729
    //   784: iconst_0
    //   785: istore #8
    //   787: goto -> 793
    //   790: iconst_1
    //   791: istore #8
    //   793: iload #4
    //   795: istore #5
    //   797: aload #12
    //   799: astore #13
    //   801: iload #8
    //   803: ifeq -> 1201
    //   806: aload #14
    //   808: invokevirtual getModifiers : ()I
    //   811: invokestatic isPublic : (I)Z
    //   814: istore #11
    //   816: iload #11
    //   818: ifne -> 835
    //   821: aload #14
    //   823: iconst_1
    //   824: invokevirtual setAccessible : (Z)V
    //   827: goto -> 835
    //   830: astore #13
    //   832: goto -> 978
    //   835: aload #14
    //   837: aload_2
    //   838: aload #17
    //   840: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   843: astore #13
    //   845: iload #6
    //   847: lookupswitch default -> 896, 0 -> 935, 1 -> 928, 3 -> 921, 4 -> 914, 9 -> 899
    //   896: goto -> 942
    //   899: getstatic com/luajava/LuaJavaAPI.c : Ljava/util/HashMap;
    //   902: astore_2
    //   903: aload_2
    //   904: aload_3
    //   905: aload #14
    //   907: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   910: pop
    //   911: goto -> 942
    //   914: getstatic com/luajava/LuaJavaAPI.b : Ljava/util/HashMap;
    //   917: astore_2
    //   918: goto -> 903
    //   921: getstatic com/luajava/LuaJavaAPI.d : Ljava/util/HashMap;
    //   924: astore_2
    //   925: goto -> 903
    //   928: getstatic com/luajava/LuaJavaAPI.e : Ljava/util/HashMap;
    //   931: astore_2
    //   932: goto -> 903
    //   935: getstatic com/luajava/LuaJavaAPI.f : Ljava/util/HashMap;
    //   938: astore_2
    //   939: goto -> 903
    //   942: aload #13
    //   944: ifnonnull -> 966
    //   947: aload #14
    //   949: invokevirtual getReturnType : ()Ljava/lang/Class;
    //   952: getstatic java/lang/Void.TYPE : Ljava/lang/Class;
    //   955: invokevirtual equals : (Ljava/lang/Object;)Z
    //   958: ifeq -> 966
    //   961: aload #15
    //   963: monitorexit
    //   964: iconst_0
    //   965: ireturn
    //   966: aload #15
    //   968: aload #13
    //   970: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   973: aload #15
    //   975: monitorexit
    //   976: iconst_1
    //   977: ireturn
    //   978: aload #16
    //   980: ldc_w '  at '
    //   983: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   986: pop
    //   987: aload #16
    //   989: aload #14
    //   991: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   994: pop
    //   995: aload #16
    //   997: ldc_w '\\n  -> '
    //   1000: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1003: pop
    //   1004: aload #13
    //   1006: astore #14
    //   1008: aload #13
    //   1010: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   1013: ifnull -> 1023
    //   1016: aload #13
    //   1018: invokevirtual getCause : ()Ljava/lang/Throwable;
    //   1021: astore #14
    //   1023: aload #16
    //   1025: aload #14
    //   1027: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1030: pop
    //   1031: aload #16
    //   1033: ldc_w '\\n'
    //   1036: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1039: pop
    //   1040: goto -> 1223
    //   1043: iconst_0
    //   1044: istore #4
    //   1046: aload #16
    //   1048: invokevirtual length : ()I
    //   1051: ifle -> 1092
    //   1054: new java/lang/StringBuilder
    //   1057: dup
    //   1058: invokespecial <init> : ()V
    //   1061: astore_2
    //   1062: aload_2
    //   1063: ldc_w 'Invalid method call.\\n'
    //   1066: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1069: pop
    //   1070: aload_2
    //   1071: aload #16
    //   1073: invokevirtual toString : ()Ljava/lang/String;
    //   1076: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1079: pop
    //   1080: new com/luajava/LuaException
    //   1083: dup
    //   1084: aload_2
    //   1085: invokevirtual toString : ()Ljava/lang/String;
    //   1088: invokespecial <init> : (Ljava/lang/String;)V
    //   1091: athrow
    //   1092: aload #18
    //   1094: arraylength
    //   1095: istore #5
    //   1097: iload #4
    //   1099: iload #5
    //   1101: if_icmpge -> 1136
    //   1104: aload #16
    //   1106: aload #18
    //   1108: iload #4
    //   1110: aaload
    //   1111: invokevirtual toString : ()Ljava/lang/String;
    //   1114: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1117: pop
    //   1118: aload #16
    //   1120: ldc_w '\\n'
    //   1123: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1126: pop
    //   1127: iload #4
    //   1129: iconst_1
    //   1130: iadd
    //   1131: istore #4
    //   1133: goto -> 1097
    //   1136: new java/lang/StringBuilder
    //   1139: dup
    //   1140: invokespecial <init> : ()V
    //   1143: astore_2
    //   1144: aload_2
    //   1145: ldc_w 'Invalid method call. Invalid Parameters.\\n'
    //   1148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1151: pop
    //   1152: aload_2
    //   1153: aload #16
    //   1155: invokevirtual toString : ()Ljava/lang/String;
    //   1158: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1161: pop
    //   1162: new com/luajava/LuaException
    //   1165: dup
    //   1166: aload_2
    //   1167: invokevirtual toString : ()Ljava/lang/String;
    //   1170: invokespecial <init> : (Ljava/lang/String;)V
    //   1173: athrow
    //   1174: astore_2
    //   1175: aload #15
    //   1177: monitorexit
    //   1178: aload_2
    //   1179: athrow
    //   1180: astore #13
    //   1182: goto -> 784
    //   1185: iconst_0
    //   1186: istore #4
    //   1188: goto -> 193
    //   1191: goto -> 460
    //   1194: iload #4
    //   1196: istore #6
    //   1198: goto -> 624
    //   1201: iload #5
    //   1203: istore #4
    //   1205: aload #13
    //   1207: astore #12
    //   1209: goto -> 1223
    //   1212: iconst_0
    //   1213: istore #5
    //   1215: goto -> 729
    //   1218: astore #13
    //   1220: goto -> 978
    //   1223: iload #7
    //   1225: iconst_1
    //   1226: iadd
    //   1227: istore #7
    //   1229: goto -> 689
    // Exception table:
    //   from	to	target	type
    //   9	18	1174	finally
    //   21	28	1174	finally
    //   36	48	1174	finally
    //   53	64	98	java/lang/Exception
    //   53	64	1174	finally
    //   68	85	1174	finally
    //   87	96	1174	finally
    //   99	125	1174	finally
    //   127	139	1174	finally
    //   139	193	1174	finally
    //   193	200	1174	finally
    //   206	214	1174	finally
    //   247	259	1174	finally
    //   272	282	1174	finally
    //   293	302	1174	finally
    //   306	318	1174	finally
    //   331	354	1174	finally
    //   368	380	1174	finally
    //   393	416	1174	finally
    //   427	439	1174	finally
    //   444	457	1174	finally
    //   469	486	529	java/lang/Exception
    //   469	486	1174	finally
    //   486	495	529	java/lang/Exception
    //   486	495	1174	finally
    //   499	516	1174	finally
    //   518	527	1174	finally
    //   530	556	1174	finally
    //   558	570	1174	finally
    //   570	624	1174	finally
    //   624	642	1174	finally
    //   658	670	1174	finally
    //   677	682	1174	finally
    //   703	718	1174	finally
    //   729	734	1174	finally
    //   761	777	1180	java/lang/Exception
    //   761	777	1174	finally
    //   806	816	1218	java/lang/Exception
    //   806	816	1174	finally
    //   821	827	830	java/lang/Exception
    //   821	827	1174	finally
    //   835	845	1218	java/lang/Exception
    //   835	845	1174	finally
    //   899	903	1174	finally
    //   903	911	1174	finally
    //   914	918	1174	finally
    //   921	925	1174	finally
    //   928	932	1174	finally
    //   935	939	1174	finally
    //   947	964	1174	finally
    //   966	976	1174	finally
    //   978	1004	1174	finally
    //   1008	1023	1174	finally
    //   1023	1040	1174	finally
    //   1046	1092	1174	finally
    //   1092	1097	1174	finally
    //   1104	1127	1174	finally
    //   1136	1174	1174	finally
    //   1175	1178	1174	finally }
  
  public static int checkClass(LuaState paramLuaState, Object paramObject, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof java/lang/Class
    //   6: ifeq -> 60
    //   9: aload_1
    //   10: checkcast java/lang/Class
    //   13: invokevirtual getClasses : ()[Ljava/lang/Class;
    //   16: astore_1
    //   17: aload_1
    //   18: arraylength
    //   19: istore #4
    //   21: iconst_0
    //   22: istore_3
    //   23: iload_3
    //   24: iload #4
    //   26: if_icmpge -> 56
    //   29: aload_1
    //   30: iload_3
    //   31: aaload
    //   32: astore #5
    //   34: aload #5
    //   36: invokevirtual getSimpleName : ()Ljava/lang/String;
    //   39: aload_2
    //   40: invokevirtual equals : (Ljava/lang/Object;)Z
    //   43: ifeq -> 69
    //   46: aload_0
    //   47: aload #5
    //   49: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   52: aload_0
    //   53: monitorexit
    //   54: iconst_3
    //   55: ireturn
    //   56: aload_0
    //   57: monitorexit
    //   58: iconst_0
    //   59: ireturn
    //   60: aload_0
    //   61: monitorexit
    //   62: iconst_0
    //   63: ireturn
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    //   69: iload_3
    //   70: iconst_1
    //   71: iadd
    //   72: istore_3
    //   73: goto -> 23
    // Exception table:
    //   from	to	target	type
    //   2	21	64	finally
    //   34	54	64	finally
    //   56	58	64	finally
    //   60	62	64	finally
    //   65	67	64	finally }
  
  public static int checkField(LuaState paramLuaState, Object paramObject, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof java/lang/Class
    //   6: ifeq -> 20
    //   9: aload_1
    //   10: checkcast java/lang/Class
    //   13: astore #4
    //   15: iconst_1
    //   16: istore_3
    //   17: goto -> 28
    //   20: aload_1
    //   21: invokevirtual getClass : ()Ljava/lang/Class;
    //   24: astore #4
    //   26: iconst_0
    //   27: istore_3
    //   28: aload #4
    //   30: aload_2
    //   31: invokevirtual getField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   34: astore_2
    //   35: aload_2
    //   36: ifnonnull -> 43
    //   39: aload_0
    //   40: monitorexit
    //   41: iconst_0
    //   42: ireturn
    //   43: iload_3
    //   44: ifeq -> 61
    //   47: aload_2
    //   48: invokevirtual getModifiers : ()I
    //   51: invokestatic isStatic : (I)Z
    //   54: ifne -> 61
    //   57: aload_0
    //   58: monitorexit
    //   59: iconst_0
    //   60: ireturn
    //   61: aload_2
    //   62: invokevirtual getModifiers : ()I
    //   65: invokestatic isPublic : (I)Z
    //   68: ifne -> 76
    //   71: aload_2
    //   72: iconst_1
    //   73: invokevirtual setAccessible : (Z)V
    //   76: aload_2
    //   77: aload_1
    //   78: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   81: astore_1
    //   82: aload_0
    //   83: aload_1
    //   84: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   87: aload_2
    //   88: invokevirtual getModifiers : ()I
    //   91: invokestatic isFinal : (I)Z
    //   94: ifeq -> 101
    //   97: aload_0
    //   98: monitorexit
    //   99: iconst_5
    //   100: ireturn
    //   101: aload_0
    //   102: monitorexit
    //   103: iconst_1
    //   104: ireturn
    //   105: astore_1
    //   106: new com/luajava/LuaException
    //   109: dup
    //   110: aload_1
    //   111: invokespecial <init> : (Ljava/lang/Exception;)V
    //   114: athrow
    //   115: aload_0
    //   116: monitorexit
    //   117: iconst_0
    //   118: ireturn
    //   119: astore_1
    //   120: aload_0
    //   121: monitorexit
    //   122: aload_1
    //   123: athrow
    //   124: astore_1
    //   125: goto -> 115
    // Exception table:
    //   from	to	target	type
    //   2	15	119	finally
    //   20	26	119	finally
    //   28	35	124	java/lang/NoSuchFieldException
    //   28	35	119	finally
    //   39	41	119	finally
    //   47	59	119	finally
    //   61	76	105	java/lang/Exception
    //   61	76	119	finally
    //   76	82	105	java/lang/Exception
    //   76	82	119	finally
    //   82	99	119	finally
    //   101	103	119	finally
    //   106	115	119	finally
    //   115	117	119	finally
    //   120	122	119	finally }
  
  public static int checkMethod(LuaState paramLuaState, Object paramObject, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof java/lang/Class
    //   6: ifeq -> 19
    //   9: aload_1
    //   10: checkcast java/lang/Class
    //   13: astore_1
    //   14: iconst_1
    //   15: istore_3
    //   16: goto -> 26
    //   19: aload_1
    //   20: invokevirtual getClass : ()Ljava/lang/Class;
    //   23: astore_1
    //   24: iconst_0
    //   25: istore_3
    //   26: aload_0
    //   27: iconst_m1
    //   28: invokevirtual toString : (I)Ljava/lang/String;
    //   31: astore #6
    //   33: getstatic com/luajava/LuaJavaAPI.methodCache : Ljava/util/HashMap;
    //   36: aload #6
    //   38: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   41: checkcast [Ljava/lang/reflect/Method;
    //   44: astore #5
    //   46: aload #5
    //   48: astore #4
    //   50: aload #5
    //   52: ifnonnull -> 89
    //   55: aload_1
    //   56: aload_2
    //   57: iload_3
    //   58: invokestatic getMethod : (Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;
    //   61: astore_1
    //   62: aload_1
    //   63: invokevirtual size : ()I
    //   66: anewarray java/lang/reflect/Method
    //   69: astore #4
    //   71: aload_1
    //   72: aload #4
    //   74: invokevirtual toArray : ([Ljava/lang/Object;)[Ljava/lang/Object;
    //   77: pop
    //   78: getstatic com/luajava/LuaJavaAPI.methodCache : Ljava/util/HashMap;
    //   81: aload #6
    //   83: aload #4
    //   85: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   88: pop
    //   89: aload #4
    //   91: arraylength
    //   92: ifne -> 99
    //   95: aload_0
    //   96: monitorexit
    //   97: iconst_0
    //   98: ireturn
    //   99: aload_0
    //   100: monitorexit
    //   101: iconst_2
    //   102: ireturn
    //   103: astore_1
    //   104: aload_0
    //   105: monitorexit
    //   106: aload_1
    //   107: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	103	finally
    //   19	24	103	finally
    //   26	46	103	finally
    //   55	89	103	finally
    //   89	97	103	finally
    //   99	101	103	finally
    //   104	106	103	finally }
  
  public static void clearCaches() {
    methodCache.clear();
    methodsMap.clear();
    b.clear();
    c.clear();
    d.clear();
    e.clear();
    f.clear();
  }
  
  public static int createArray(long paramLong, String paramString) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      return d(null, javaBindClass(paramString));
    } 
  }
  
  public static int createProxy(long paramLong, String paramString) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      return a(null, paramString);
    } 
  }
  
  private static int d(LuaState paramLuaState, Class<?> paramClass) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_1
    //   5: iconst_2
    //   6: invokestatic b : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   9: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   12: aload_0
    //   13: monitorexit
    //   14: iconst_1
    //   15: ireturn
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	16	finally
    //   17	19	16	finally }
  
  private static Object d(LuaState paramLuaState, Class<Map<Object, Object>> paramClass, int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ldc java/util/Map
    //   5: invokevirtual equals : (Ljava/lang/Object;)Z
    //   8: ifeq -> 22
    //   11: new java/util/HashMap
    //   14: dup
    //   15: invokespecial <init> : ()V
    //   18: astore_1
    //   19: goto -> 30
    //   22: aload_1
    //   23: invokevirtual newInstance : ()Ljava/lang/Object;
    //   26: checkcast java/util/Map
    //   29: astore_1
    //   30: aload_0
    //   31: invokevirtual pushNil : ()V
    //   34: aload_0
    //   35: iload_2
    //   36: invokevirtual next : (I)I
    //   39: ifeq -> 68
    //   42: aload_1
    //   43: aload_0
    //   44: bipush #-2
    //   46: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   49: aload_0
    //   50: iconst_m1
    //   51: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   54: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   59: pop
    //   60: aload_0
    //   61: iconst_1
    //   62: invokevirtual pop : (I)V
    //   65: goto -> 34
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_1
    //   71: areturn
    //   72: astore_1
    //   73: new com/luajava/LuaException
    //   76: dup
    //   77: aload_1
    //   78: invokespecial <init> : (Ljava/lang/Exception;)V
    //   81: athrow
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    //   86: astore_1
    //   87: goto -> 82
    // Exception table:
    //   from	to	target	type
    //   2	19	72	java/lang/Exception
    //   2	19	86	finally
    //   22	30	72	java/lang/Exception
    //   22	30	86	finally
    //   30	34	72	java/lang/Exception
    //   30	34	86	finally
    //   34	65	72	java/lang/Exception
    //   34	65	86	finally
    //   68	70	86	finally
    //   73	82	86	finally
    //   82	84	86	finally }
  
  private static int e(LuaState paramLuaState, Class<?> paramClass) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_1
    //   5: iconst_2
    //   6: invokestatic c : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   9: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   12: aload_0
    //   13: monitorexit
    //   14: iconst_1
    //   15: ireturn
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	16	finally
    //   17	19	16	finally }
  
  private static Object e(LuaState paramLuaState, Class<?> paramClass, int paramInt) { return a(paramLuaState, paramClass, paramLuaState.type(paramInt), paramInt); }
  
  private static int f(LuaState paramLuaState, Class<?> paramClass) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_1
    //   5: iconst_2
    //   6: invokestatic d : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   9: invokevirtual pushJavaObject : (Ljava/lang/Object;)V
    //   12: aload_0
    //   13: monitorexit
    //   14: iconst_1
    //   15: ireturn
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	16	finally
    //   17	19	16	finally }
  
  private static int f(LuaState paramLuaState, Class paramClass, int paramInt) {
    char c1;
    if (paramClass == char.class && paramLuaState.type(paramInt) == 4) {
      String str = paramLuaState.toString(paramInt);
      if (str.length() == 1) {
        c1 = str.charAt(0);
      } else {
        char[] arrayOfChar = str.toCharArray();
        paramLuaState.pushJavaObject(arrayOfChar);
        return 1;
      } 
    } else {
      Character character1;
      if (!paramLuaState.isNumber(paramInt)) {
        character1 = new StringBuilder();
        character1.append(paramLuaState.toString(paramInt));
        character1.append(" is not number");
        throw new LuaException(character1.toString());
      } 
      if (character1 == double.class) {
        character1 = Double.valueOf(paramLuaState.toNumber(paramInt));
      } else {
        Float float;
        if (character1 == float.class) {
          float = Float.valueOf((float)paramLuaState.toNumber(paramInt));
        } else {
          Long long;
          if (float == long.class) {
            long = Long.valueOf(paramLuaState.toInteger(paramInt));
          } else {
            Integer integer;
            if (long == int.class) {
              integer = Integer.valueOf((int)paramLuaState.toInteger(paramInt));
            } else {
              Short short;
              if (integer == short.class) {
                short = Short.valueOf((short)(int)paramLuaState.toInteger(paramInt));
              } else {
                if (short == char.class) {
                  c1 = (char)(int)paramLuaState.toInteger(paramInt);
                } else {
                  Byte byte;
                  if (short == byte.class) {
                    byte = Byte.valueOf((byte)(int)paramLuaState.toInteger(paramInt));
                  } else if (byte == boolean.class) {
                    Boolean bool = Boolean.valueOf(paramLuaState.toBoolean(paramInt));
                  } else {
                    byte = null;
                  } 
                  paramLuaState.pushJavaObject(byte);
                  return 1;
                } 
                character1 = Character.valueOf(c1);
              } 
            } 
          } 
        } 
      } 
      paramLuaState.pushJavaObject(character1);
      return 1;
    } 
    Character character = Character.valueOf(c1);
  }
  
  public static int getArrayValue(long paramLong, Object paramObject, int paramInt) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      if (paramObject.getClass().isArray()) {
        paramObject = Array.get(paramObject, paramInt);
      } else if (paramObject instanceof List) {
        paramObject = ((List)paramObject).get(paramInt);
      } else {
        if (paramObject instanceof Map) {
          paramObject = ((Map)paramObject).get(Long.valueOf(paramInt));
          null.pushObjectValue(paramObject);
          return 1;
        } 
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("can not get ");
        stringBuilder.append(paramObject.getClass().getName());
        stringBuilder.append(" value in ");
        stringBuilder.append(paramInt);
        throw new LuaException(stringBuilder.toString());
      } 
      null.pushObjectValue(paramObject);
      return 1;
    } 
  }
  
  public static int getContext(long paramLong) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      null.pushJavaObject(null.getContext());
      return 1;
    } 
  }
  
  public static ArrayList<Method> getMethod(Class<?> paramClass, String paramString, boolean paramBoolean) {
    HashMap hashMap1 = (HashMap)a.get(paramClass);
    HashMap hashMap2 = hashMap1;
    if (hashMap1 == null) {
      hashMap2 = new HashMap();
      a.put(paramClass, hashMap2);
    } 
    ArrayList arrayList3 = (ArrayList)hashMap2.get(paramString);
    ArrayList arrayList2 = arrayList3;
    if (arrayList3 == null) {
      Method[] arrayOfMethod2 = (Method[])methodsMap.get(paramClass);
      Method[] arrayOfMethod1 = arrayOfMethod2;
      if (arrayOfMethod2 == null) {
        arrayOfMethod1 = paramClass.getMethods();
        methodsMap.put(paramClass, arrayOfMethod1);
      } 
      int i = arrayOfMethod1.length;
      for (byte b1 = 0; b1 < i; b1++) {
        Method method = arrayOfMethod1[b1];
        String str = method.getName();
        ArrayList arrayList5 = (ArrayList)hashMap2.get(str);
        ArrayList arrayList4 = arrayList5;
        if (arrayList5 == null) {
          arrayList4 = new ArrayList();
          hashMap2.put(str, arrayList4);
        } 
        arrayList4.add(method);
      } 
      arrayList2 = (ArrayList)hashMap2.get(paramString);
    } 
    ArrayList arrayList1 = arrayList2;
    if (arrayList2 == null)
      arrayList1 = new ArrayList(); 
    if (paramBoolean) {
      arrayList2 = new ArrayList();
      for (Method method : arrayList1) {
        if (Modifier.isStatic(method.getModifiers()))
          arrayList2.add(method); 
      } 
      arrayList1 = arrayList2;
      if (arrayList2.isEmpty())
        arrayList1 = getMethod(Class.class, paramString, false); 
      return arrayList1;
    } 
    return arrayList1;
  }
  
  public static Class javaBindClass(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (Exception exception) {
      StringBuilder stringBuilder;
      byte b1 = -1;
      switch (paramString.hashCode()) {
        case 109413500:
          if (paramString.equals("short"))
            b1 = 3; 
          break;
        case 97526364:
          if (paramString.equals("float"))
            b1 = 6; 
          break;
        case 64711720:
          if (paramString.equals("boolean"))
            b1 = 0; 
          break;
        case 3327612:
          if (paramString.equals("long"))
            b1 = 5; 
          break;
        case 3052374:
          if (paramString.equals("char"))
            b1 = 2; 
          break;
        case 3039496:
          if (paramString.equals("byte"))
            b1 = 1; 
          break;
        case 104431:
          if (paramString.equals("int"))
            b1 = 4; 
          break;
        case -1325958191:
          if (paramString.equals("double"))
            b1 = 7; 
          break;
      } 
      switch (b1) {
        default:
          stringBuilder = new StringBuilder();
          stringBuilder.append("Class not found: ");
          stringBuilder.append(paramString);
          throw new LuaException(stringBuilder.toString());
        case 7:
          return double.class;
        case 6:
          return float.class;
        case 5:
          return long.class;
        case 4:
          return int.class;
        case 3:
          return short.class;
        case 2:
          return char.class;
        case 1:
          return byte.class;
        case 0:
          break;
      } 
      return boolean.class;
    } 
  }
  
  public static int javaCreate(long paramLong, Class<?> paramClass) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      if (paramClass.isPrimitive() || paramClass == String.class)
        return d(null, paramClass); 
      if (paramClass.isArray())
        return d(null, paramClass); 
      if (List.class.isAssignableFrom(paramClass))
        return e(null, paramClass); 
      if (Map.class.isAssignableFrom(paramClass))
        return f(null, paramClass); 
      if (paramClass.isInterface())
        return c(null, paramClass); 
      if ((paramClass.getModifiers() & 0x400) != 0)
        return a(null, paramClass); 
      if (null.objLen(-1) == 0)
        return d(null, paramClass); 
      null.getI(-1, 1L);
      Object object = null.toJavaObject(-1);
      null.pop(1);
      if (paramClass.isAssignableFrom(object.getClass()))
        return d(null, paramClass); 
      return b(null, paramClass);
    } 
  }
  
  public static int javaEquals(long paramLong, Object paramObject1, Object paramObject2) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      null.pushBoolean(paramObject1.equals(paramObject2));
      return 1;
    } 
  }
  
  public static void javaGc(Object paramObject) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramObject);
    stringBuilder.append("");
    Log.i("javaGc: ", stringBuilder.toString());
    if (paramObject == null)
      return; 
    try {
      if (paramObject instanceof LuaGcable) {
        ((LuaGcable)paramObject).gc();
        return;
      } 
      if (paramObject instanceof Bitmap) {
        LuaBitmap.removeBitmap((Bitmap)paramObject);
        paramObject = (Bitmap)paramObject;
      } else if (paramObject instanceof BitmapDrawable) {
        paramObject = ((BitmapDrawable)paramObject).getBitmap();
      } else {
        if (paramObject instanceof AutoCloseable) {
          ((AutoCloseable)paramObject).close();
          return;
        } 
        return;
      } 
      paramObject.recycle();
      return;
    } catch (Exception paramObject) {
      a.a(paramObject);
    } 
  }
  
  public static int javaGetType(long paramLong, Object paramObject) { // Byte code:
    //   0: lload_0
    //   1: invokestatic getExistingState : (J)Lcom/luajava/LuaState;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnonnull -> 23
    //   11: ldc_w 'null'
    //   14: astore_2
    //   15: aload_3
    //   16: aload_2
    //   17: invokevirtual pushString : (Ljava/lang/String;)V
    //   20: goto -> 34
    //   23: aload_2
    //   24: invokevirtual getClass : ()Ljava/lang/Class;
    //   27: invokevirtual getName : ()Ljava/lang/String;
    //   30: astore_2
    //   31: goto -> 15
    //   34: aload_3
    //   35: monitorexit
    //   36: iconst_1
    //   37: ireturn
    //   38: aload_3
    //   39: monitorexit
    //   40: aload_2
    //   41: athrow
    //   42: astore_2
    //   43: goto -> 38
    // Exception table:
    //   from	to	target	type
    //   15	20	42	finally
    //   23	31	42	finally
    //   34	36	42	finally
    //   38	40	42	finally }
  
  public static int javaGetter(LuaState paramLuaState, Object paramObject, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore #7
    //   5: aload_1
    //   6: instanceof java/util/Map
    //   9: ifeq -> 30
    //   12: aload_0
    //   13: aload_1
    //   14: checkcast java/util/Map
    //   17: aload_2
    //   18: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   23: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   26: aload_0
    //   27: monitorexit
    //   28: iconst_1
    //   29: ireturn
    //   30: aload_1
    //   31: instanceof java/lang/Class
    //   34: ifeq -> 49
    //   37: aload_1
    //   38: checkcast java/lang/Class
    //   41: astore #5
    //   43: iconst_1
    //   44: istore #4
    //   46: goto -> 58
    //   49: aload_1
    //   50: invokevirtual getClass : ()Ljava/lang/Class;
    //   53: astore #5
    //   55: iconst_0
    //   56: istore #4
    //   58: aload_2
    //   59: iconst_0
    //   60: invokevirtual charAt : (I)C
    //   63: istore_3
    //   64: aload_2
    //   65: astore #6
    //   67: iload_3
    //   68: invokestatic isLowerCase : (C)Z
    //   71: ifeq -> 111
    //   74: new java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial <init> : ()V
    //   81: astore #6
    //   83: aload #6
    //   85: iload_3
    //   86: invokestatic toUpperCase : (C)C
    //   89: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   92: pop
    //   93: aload #6
    //   95: aload_2
    //   96: iconst_1
    //   97: invokevirtual substring : (I)Ljava/lang/String;
    //   100: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: pop
    //   104: aload #6
    //   106: invokevirtual toString : ()Ljava/lang/String;
    //   109: astore #6
    //   111: new java/lang/StringBuilder
    //   114: dup
    //   115: invokespecial <init> : ()V
    //   118: astore_2
    //   119: aload_2
    //   120: aload #5
    //   122: invokevirtual toString : ()Ljava/lang/String;
    //   125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: pop
    //   129: aload_2
    //   130: ldc_w '@<-'
    //   133: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: pop
    //   137: aload_2
    //   138: aload #6
    //   140: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: pop
    //   144: aload_2
    //   145: invokevirtual toString : ()Ljava/lang/String;
    //   148: astore #8
    //   150: aload #7
    //   152: astore_2
    //   153: iload #4
    //   155: ifne -> 170
    //   158: getstatic com/luajava/LuaJavaAPI.f : Ljava/util/HashMap;
    //   161: aload #8
    //   163: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   166: checkcast java/lang/reflect/Method
    //   169: astore_2
    //   170: aload_2
    //   171: astore #7
    //   173: aload_2
    //   174: ifnonnull -> 293
    //   177: new java/lang/StringBuilder
    //   180: dup
    //   181: invokespecial <init> : ()V
    //   184: astore_2
    //   185: aload_2
    //   186: ldc_w 'get'
    //   189: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: pop
    //   193: aload_2
    //   194: aload #6
    //   196: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: pop
    //   200: aload #5
    //   202: aload_2
    //   203: invokevirtual toString : ()Ljava/lang/String;
    //   206: iconst_0
    //   207: anewarray java/lang/Class
    //   210: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   213: astore_2
    //   214: goto -> 254
    //   217: new java/lang/StringBuilder
    //   220: dup
    //   221: invokespecial <init> : ()V
    //   224: astore_2
    //   225: aload_2
    //   226: ldc_w 'is'
    //   229: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: pop
    //   233: aload_2
    //   234: aload #6
    //   236: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: pop
    //   240: aload #5
    //   242: aload_2
    //   243: invokevirtual toString : ()Ljava/lang/String;
    //   246: iconst_0
    //   247: anewarray java/lang/Class
    //   250: invokevirtual getMethod : (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   253: astore_2
    //   254: iload #4
    //   256: ifeq -> 273
    //   259: aload_2
    //   260: invokevirtual getModifiers : ()I
    //   263: invokestatic isStatic : (I)Z
    //   266: ifne -> 273
    //   269: aload_0
    //   270: monitorexit
    //   271: iconst_0
    //   272: ireturn
    //   273: getstatic com/luajava/LuaJavaAPI.f : Ljava/util/HashMap;
    //   276: aload #8
    //   278: aload_2
    //   279: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   282: pop
    //   283: aload_2
    //   284: astore #7
    //   286: goto -> 293
    //   289: aload_0
    //   290: monitorexit
    //   291: iconst_0
    //   292: ireturn
    //   293: aload #7
    //   295: aload_1
    //   296: iconst_0
    //   297: anewarray java/lang/Object
    //   300: invokevirtual invoke : (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   303: astore_1
    //   304: aload_1
    //   305: instanceof java/lang/CharSequence
    //   308: ifeq -> 322
    //   311: aload_0
    //   312: aload_1
    //   313: invokevirtual toString : ()Ljava/lang/String;
    //   316: invokevirtual pushString : (Ljava/lang/String;)V
    //   319: goto -> 327
    //   322: aload_0
    //   323: aload_1
    //   324: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   327: aload_0
    //   328: monitorexit
    //   329: iconst_1
    //   330: ireturn
    //   331: astore_1
    //   332: new com/luajava/LuaException
    //   335: dup
    //   336: aload_1
    //   337: invokespecial <init> : (Ljava/lang/Exception;)V
    //   340: athrow
    //   341: astore_1
    //   342: aload_0
    //   343: monitorexit
    //   344: aload_1
    //   345: athrow
    //   346: astore_2
    //   347: goto -> 217
    //   350: astore_1
    //   351: goto -> 289
    // Exception table:
    //   from	to	target	type
    //   5	28	341	finally
    //   30	43	341	finally
    //   49	55	341	finally
    //   58	64	341	finally
    //   67	111	341	finally
    //   111	150	341	finally
    //   158	170	341	finally
    //   177	214	346	java/lang/NoSuchMethodException
    //   177	214	341	finally
    //   217	254	350	java/lang/NoSuchMethodException
    //   217	254	341	finally
    //   259	271	341	finally
    //   273	283	341	finally
    //   289	291	341	finally
    //   293	304	331	java/lang/Exception
    //   293	304	341	finally
    //   304	319	341	finally
    //   322	327	341	finally
    //   327	329	341	finally
    //   332	341	341	finally
    //   342	344	341	finally }
  
  public static int javaLoadLib(long paramLong, String paramString1, String paramString2) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      clazz = Class.forName(paramString1);
      try {
        Object object = clazz.getMethod(paramString2, new Class[] { LuaState.class }).invoke(null, new Object[] { null });
        if (object != null && object instanceof Integer)
          return ((Integer)object).intValue(); 
        return 0;
      } catch (Exception clazz) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Error on calling method. Library could not be loaded. ");
        stringBuilder.append(clazz.getMessage());
        throw new LuaException(stringBuilder.toString());
      } 
    } 
  }
  
  public static int javaNew(long paramLong, Class<?> paramClass) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      boolean bool = paramClass.isPrimitive();
      null = 2;
      if (bool) {
        int i = null.getTop();
        while (null <= i) {
          f(null, paramClass, null);
          null++;
        } 
        return i - 1;
      } 
      if ((paramClass.getModifiers() & 0x400) != 0) {
        if (!null.isTable(2))
          a(null, "javaOverride", 1, "table"); 
        return javaOverride(paramLong, paramClass);
      } 
      return b(null, paramClass);
    } 
  }
  
  public static int javaNewInstance(long paramLong, String paramString) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      Class clazz = javaBindClass(paramString);
      if (clazz.isPrimitive())
        return f(null, clazz, -1); 
      return b(null, clazz);
    } 
  }
  
  public static int javaObjectLength(long paramLong, Object paramObject) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      int i;
      if (paramObject instanceof CharSequence) {
        i = ((CharSequence)paramObject).length();
      } else if (paramObject instanceof Collection) {
        i = ((Collection)paramObject).size();
      } else if (paramObject instanceof Map) {
        i = ((Map)paramObject).size();
      } else {
        i = Array.getLength(paramObject);
      } 
      paramLong = i;
      null.pushInteger(paramLong);
      return 1;
    } 
  }
  
  public static int javaOverride(long paramLong, Class<?> paramClass) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      LuaTable luaTable = new LuaTable(null, 2);
      null.remove(2);
      if (b(null, (new LuaEnhancer(paramClass)).create(new MethodFilter(luaTable) {
              public boolean filter(Method param1Method, String param1String) { return this.a.containsKey(param1String); }
            })) == 0)
        return 0; 
      EnhancerInterface enhancerInterface = (EnhancerInterface)null.toJavaObject(-1);
      enhancerInterface.setMethodInterceptor_Enhancer(new LuaMethodInterceptor(luaTable));
      null.pushJavaObject(enhancerInterface);
      return 1;
    } 
  }
  
  public static int javaSetter(LuaState paramLuaState, Object paramObject, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof java/util/Map
    //   6: istore #5
    //   8: iconst_1
    //   9: istore #4
    //   11: iload #5
    //   13: ifeq -> 36
    //   16: aload_1
    //   17: checkcast java/util/Map
    //   20: aload_2
    //   21: aload_0
    //   22: iconst_m1
    //   23: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   26: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   31: pop
    //   32: aload_0
    //   33: monitorexit
    //   34: iconst_1
    //   35: ireturn
    //   36: aload_1
    //   37: instanceof java/lang/Class
    //   40: ifeq -> 52
    //   43: aload_1
    //   44: checkcast java/lang/Class
    //   47: astore #6
    //   49: goto -> 60
    //   52: aload_1
    //   53: invokevirtual getClass : ()Ljava/lang/Class;
    //   56: pop
    //   57: iconst_0
    //   58: istore #4
    //   60: aload_2
    //   61: invokevirtual length : ()I
    //   64: iconst_2
    //   65: if_icmple -> 106
    //   68: aload_2
    //   69: iconst_0
    //   70: iconst_2
    //   71: invokevirtual substring : (II)Ljava/lang/String;
    //   74: ldc_w 'on'
    //   77: invokevirtual equals : (Ljava/lang/Object;)Z
    //   80: ifeq -> 106
    //   83: aload_0
    //   84: iconst_m1
    //   85: invokevirtual type : (I)I
    //   88: bipush #6
    //   90: if_icmpne -> 106
    //   93: aload_0
    //   94: aload_1
    //   95: aload_2
    //   96: iload #4
    //   98: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I
    //   101: istore_3
    //   102: aload_0
    //   103: monitorexit
    //   104: iload_3
    //   105: ireturn
    //   106: aload_0
    //   107: aload_1
    //   108: aload_2
    //   109: iload #4
    //   111: invokestatic b : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I
    //   114: istore_3
    //   115: iload_3
    //   116: ifeq -> 123
    //   119: aload_0
    //   120: monitorexit
    //   121: iload_3
    //   122: ireturn
    //   123: aload_0
    //   124: aload_1
    //   125: aload_2
    //   126: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    //   129: istore_3
    //   130: aload_0
    //   131: monitorexit
    //   132: iload_3
    //   133: ireturn
    //   134: astore_1
    //   135: aload_0
    //   136: monitorexit
    //   137: aload_1
    //   138: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	134	finally
    //   16	34	134	finally
    //   36	49	134	finally
    //   52	57	134	finally
    //   60	104	134	finally
    //   106	115	134	finally
    //   119	121	134	finally
    //   123	132	134	finally
    //   135	137	134	finally }
  
  public static int javaSetter(LuaState paramLuaState, Object paramObject1, String paramString, Object paramObject2) {
    paramLuaState.pushObjectValue(paramObject2);
    int i = javaSetter(paramLuaState, paramObject1, paramString);
    paramLuaState.pop(1);
    return i;
  }
  
  public static int javaToString(long paramLong, Object paramObject) { // Byte code:
    //   0: lload_0
    //   1: invokestatic getExistingState : (J)Lcom/luajava/LuaState;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnonnull -> 23
    //   11: ldc_w 'null'
    //   14: astore_2
    //   15: aload_3
    //   16: aload_2
    //   17: invokevirtual pushString : (Ljava/lang/String;)V
    //   20: goto -> 31
    //   23: aload_2
    //   24: invokevirtual toString : ()Ljava/lang/String;
    //   27: astore_2
    //   28: goto -> 15
    //   31: aload_3
    //   32: monitorexit
    //   33: iconst_1
    //   34: ireturn
    //   35: aload_3
    //   36: monitorexit
    //   37: aload_2
    //   38: athrow
    //   39: astore_2
    //   40: goto -> 35
    // Exception table:
    //   from	to	target	type
    //   15	20	39	finally
    //   23	28	39	finally
    //   31	33	39	finally
    //   35	37	39	finally }
  
  public static int newArray(long paramLong, Class<?> paramClass) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      int i = null.getTop() - 1;
      int[] arrayOfInt = new int[i];
      for (byte b1 = 0; b1 < i; b1++)
        arrayOfInt[b1] = (int)null.toInteger(b1 + 2); 
      null.pushJavaObject(Array.newInstance(paramClass, arrayOfInt));
      return 1;
    } 
  }
  
  public static int newArray(long paramLong, Class<?> paramClass, int paramInt) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      null.pushJavaObject(Array.newInstance(paramClass, paramInt));
      return 1;
    } 
  }
  
  public static int objectCall(long paramLong, Object paramObject) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      boolean bool = paramObject instanceof LuaMetaTable;
      null = 2;
      if (bool) {
        int i = null.getTop();
        Object[] arrayOfObject = new Object[i - 1];
        while (null <= i) {
          arrayOfObject[null - 2] = null.toJavaObject(null);
          null++;
        } 
        null.pushObjectValue(((LuaMetaTable)paramObject).__call(arrayOfObject));
        return 1;
      } 
      if (null.isTable(2)) {
        if (paramObject.getClass().isArray() && Array.getLength(paramObject) == 0)
          return d(null, paramObject.getClass()); 
        null.pushNil();
        if (paramObject instanceof List) {
          paramObject = (List)paramObject;
          while (null.next(2) != 0) {
            paramObject.add(null.toJavaObject(-1));
            null.pop(1);
          } 
        } else {
          while (null.next(2) != 0) {
            if (null.isNumber(-2)) {
              setArrayValue(null, paramObject, (int)null.toInteger(-2));
            } else {
              javaSetter(null, paramObject, null.toString(-2));
            } 
            null.pop(1);
          } 
        } 
        null.setTop(1);
        return 1;
      } 
      return 0;
    } 
  }
  
  public static int objectIndex(long paramLong, Object paramObject, String paramString, int paramInt) { // Byte code:
    //   0: lload_0
    //   1: invokestatic getExistingState : (J)Lcom/luajava/LuaState;
    //   4: astore #6
    //   6: aload #6
    //   8: monitorenter
    //   9: iload #4
    //   11: ifne -> 121
    //   14: aload #6
    //   16: aload_2
    //   17: aload_3
    //   18: invokestatic checkMethod : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    //   21: ifeq -> 121
    //   24: aload #6
    //   26: monitorexit
    //   27: iconst_2
    //   28: ireturn
    //   29: aload #6
    //   31: aload_2
    //   32: aload_3
    //   33: invokestatic checkField : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    //   36: istore #5
    //   38: iload #5
    //   40: ifeq -> 141
    //   43: aload #6
    //   45: monitorexit
    //   46: iload #5
    //   48: ireturn
    //   49: aload #6
    //   51: aload_2
    //   52: aload_3
    //   53: invokestatic javaGetter : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    //   56: ifeq -> 155
    //   59: aload #6
    //   61: monitorexit
    //   62: iconst_4
    //   63: ireturn
    //   64: aload #6
    //   66: aload_2
    //   67: aload_3
    //   68: invokestatic checkClass : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    //   71: ifeq -> 169
    //   74: aload #6
    //   76: monitorexit
    //   77: iconst_3
    //   78: ireturn
    //   79: aload_2
    //   80: instanceof com/luajava/LuaMetaTable
    //   83: ifeq -> 107
    //   86: aload #6
    //   88: aload_2
    //   89: checkcast com/luajava/LuaMetaTable
    //   92: aload_3
    //   93: invokeinterface __index : (Ljava/lang/String;)Ljava/lang/Object;
    //   98: invokevirtual pushObjectValue : (Ljava/lang/Object;)V
    //   101: aload #6
    //   103: monitorexit
    //   104: bipush #6
    //   106: ireturn
    //   107: aload #6
    //   109: monitorexit
    //   110: iconst_0
    //   111: ireturn
    //   112: aload #6
    //   114: monitorexit
    //   115: aload_2
    //   116: athrow
    //   117: astore_2
    //   118: goto -> 112
    //   121: iload #4
    //   123: ifeq -> 29
    //   126: iload #4
    //   128: iconst_1
    //   129: if_icmpeq -> 29
    //   132: iload #4
    //   134: iconst_5
    //   135: if_icmpne -> 141
    //   138: goto -> 29
    //   141: iload #4
    //   143: ifeq -> 49
    //   146: iload #4
    //   148: iconst_4
    //   149: if_icmpne -> 155
    //   152: goto -> 49
    //   155: iload #4
    //   157: ifeq -> 64
    //   160: iload #4
    //   162: iconst_3
    //   163: if_icmpne -> 169
    //   166: goto -> 64
    //   169: iload #4
    //   171: ifeq -> 79
    //   174: iload #4
    //   176: bipush #6
    //   178: if_icmpne -> 107
    //   181: goto -> 79
    // Exception table:
    //   from	to	target	type
    //   14	27	117	finally
    //   29	38	117	finally
    //   43	46	117	finally
    //   49	62	117	finally
    //   64	77	117	finally
    //   79	104	117	finally
    //   107	110	117	finally
    //   112	115	117	finally }
  
  public static int objectNewIndex(long paramLong, Object paramObject, String paramString, int paramInt) { // Byte code:
    //   0: lload_0
    //   1: invokestatic getExistingState : (J)Lcom/luajava/LuaState;
    //   4: astore #5
    //   6: aload #5
    //   8: monitorenter
    //   9: iload #4
    //   11: ifeq -> 20
    //   14: iload #4
    //   16: iconst_1
    //   17: if_icmpne -> 89
    //   20: aload #5
    //   22: aload_2
    //   23: aload_3
    //   24: invokestatic setFieldValue : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    //   27: ifeq -> 89
    //   30: aload #5
    //   32: monitorexit
    //   33: iconst_1
    //   34: ireturn
    //   35: aload #5
    //   37: aload_2
    //   38: aload_3
    //   39: invokestatic javaSetter : (Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    //   42: ifeq -> 103
    //   45: aload #5
    //   47: monitorexit
    //   48: iconst_2
    //   49: ireturn
    //   50: aload_2
    //   51: instanceof com/luajava/LuaMetaTable
    //   54: ifeq -> 78
    //   57: aload_2
    //   58: checkcast com/luajava/LuaMetaTable
    //   61: aload_3
    //   62: aload #5
    //   64: iconst_m1
    //   65: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   68: invokeinterface __newIndex : (Ljava/lang/String;Ljava/lang/Object;)V
    //   73: aload #5
    //   75: monitorexit
    //   76: iconst_3
    //   77: ireturn
    //   78: aload #5
    //   80: monitorexit
    //   81: iconst_0
    //   82: ireturn
    //   83: astore_2
    //   84: aload #5
    //   86: monitorexit
    //   87: aload_2
    //   88: athrow
    //   89: iload #4
    //   91: ifeq -> 35
    //   94: iload #4
    //   96: iconst_2
    //   97: if_icmpne -> 103
    //   100: goto -> 35
    //   103: iload #4
    //   105: ifeq -> 50
    //   108: iload #4
    //   110: iconst_3
    //   111: if_icmpne -> 78
    //   114: goto -> 50
    // Exception table:
    //   from	to	target	type
    //   20	33	83	finally
    //   35	48	83	finally
    //   50	76	83	finally
    //   78	81	83	finally
    //   84	87	83	finally }
  
  public static int setArrayValue(long paramLong, Object paramObject, int paramInt) {
    synchronized (LuaStateFactory.getExistingState(paramLong)) {
      if (paramObject.getClass().isArray()) {
        Class clazz = paramObject.getClass().getComponentType();
        try {
          Array.set(paramObject, paramInt, e(null, clazz, 3));
        } catch (LuaException luaException) {
          StringBuilder stringBuilder = new StringBuilder();
          stringBuilder.append(paramObject.getClass().getName());
          stringBuilder.append(" [");
          stringBuilder.append(paramInt);
          stringBuilder.append("]");
          a(null, stringBuilder.toString(), 3, clazz);
        } 
      } else if (paramObject instanceof List) {
        ((List)paramObject).set(paramInt, null.toJavaObject(3));
      } else {
        if (paramObject instanceof Map) {
          ((Map)paramObject).put(Long.valueOf(paramInt), null.toJavaObject(3));
          return 0;
        } 
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("can not set ");
        stringBuilder.append(paramObject.getClass().getName());
        stringBuilder.append(" value: ");
        stringBuilder.append(null.toJavaObject(3));
        stringBuilder.append(" in ");
        stringBuilder.append(paramInt);
        throw new LuaException(stringBuilder.toString());
      } 
      return 0;
    } 
  }
  
  public static int setArrayValue(LuaState paramLuaState, Object paramObject, int paramInt) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual getClass : ()Ljava/lang/Class;
    //   6: invokevirtual isArray : ()Z
    //   9: ifeq -> 96
    //   12: aload_1
    //   13: invokevirtual getClass : ()Ljava/lang/Class;
    //   16: invokevirtual getComponentType : ()Ljava/lang/Class;
    //   19: astore_3
    //   20: aload_1
    //   21: iload_2
    //   22: aload_0
    //   23: aload_3
    //   24: iconst_m1
    //   25: invokestatic e : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   28: invokestatic set : (Ljava/lang/Object;ILjava/lang/Object;)V
    //   31: goto -> 149
    //   34: new java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial <init> : ()V
    //   41: astore #4
    //   43: aload #4
    //   45: aload_1
    //   46: invokevirtual getClass : ()Ljava/lang/Class;
    //   49: invokevirtual getName : ()Ljava/lang/String;
    //   52: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: aload #4
    //   58: ldc_w ' ['
    //   61: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: pop
    //   65: aload #4
    //   67: iload_2
    //   68: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload #4
    //   74: ldc_w ']'
    //   77: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: aload_0
    //   82: aload #4
    //   84: invokevirtual toString : ()Ljava/lang/String;
    //   87: iconst_3
    //   88: aload_3
    //   89: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    //   92: pop
    //   93: goto -> 149
    //   96: aload_1
    //   97: instanceof java/util/List
    //   100: ifeq -> 122
    //   103: aload_1
    //   104: checkcast java/util/List
    //   107: iload_2
    //   108: aload_0
    //   109: iconst_m1
    //   110: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   113: invokeinterface set : (ILjava/lang/Object;)Ljava/lang/Object;
    //   118: pop
    //   119: goto -> 149
    //   122: aload_1
    //   123: instanceof java/util/Map
    //   126: ifeq -> 153
    //   129: aload_1
    //   130: checkcast java/util/Map
    //   133: iload_2
    //   134: i2l
    //   135: invokestatic valueOf : (J)Ljava/lang/Long;
    //   138: aload_0
    //   139: iconst_m1
    //   140: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   143: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   148: pop
    //   149: aload_0
    //   150: monitorexit
    //   151: iconst_0
    //   152: ireturn
    //   153: new java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial <init> : ()V
    //   160: astore_3
    //   161: aload_3
    //   162: ldc_w 'can not set '
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: aload_3
    //   170: aload_1
    //   171: invokevirtual getClass : ()Ljava/lang/Class;
    //   174: invokevirtual getName : ()Ljava/lang/String;
    //   177: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: pop
    //   181: aload_3
    //   182: ldc_w ' value: '
    //   185: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: aload_3
    //   190: aload_0
    //   191: iconst_m1
    //   192: invokevirtual toJavaObject : (I)Ljava/lang/Object;
    //   195: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   198: pop
    //   199: aload_3
    //   200: ldc_w ' in '
    //   203: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: pop
    //   207: aload_3
    //   208: iload_2
    //   209: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   212: pop
    //   213: new com/luajava/LuaException
    //   216: dup
    //   217: aload_3
    //   218: invokevirtual toString : ()Ljava/lang/String;
    //   221: invokespecial <init> : (Ljava/lang/String;)V
    //   224: athrow
    //   225: astore_1
    //   226: aload_0
    //   227: monitorexit
    //   228: aload_1
    //   229: athrow
    //   230: astore #4
    //   232: goto -> 34
    // Exception table:
    //   from	to	target	type
    //   2	20	225	finally
    //   20	31	230	com/luajava/LuaException
    //   20	31	225	finally
    //   34	93	225	finally
    //   96	119	225	finally
    //   122	149	225	finally
    //   149	151	225	finally
    //   153	225	225	finally
    //   226	228	225	finally }
  
  public static int setFieldValue(LuaState paramLuaState, Object paramObject, String paramString) { // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull -> 10
    //   6: aload_0
    //   7: monitorexit
    //   8: iconst_0
    //   9: ireturn
    //   10: aload_1
    //   11: instanceof java/lang/Class
    //   14: ifeq -> 28
    //   17: aload_1
    //   18: checkcast java/lang/Class
    //   21: astore #4
    //   23: iconst_1
    //   24: istore_3
    //   25: goto -> 36
    //   28: aload_1
    //   29: invokevirtual getClass : ()Ljava/lang/Class;
    //   32: astore #4
    //   34: iconst_0
    //   35: istore_3
    //   36: aload #4
    //   38: aload_2
    //   39: invokevirtual getField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   42: astore #5
    //   44: aload #5
    //   46: ifnonnull -> 53
    //   49: aload_0
    //   50: monitorexit
    //   51: iconst_0
    //   52: ireturn
    //   53: iload_3
    //   54: ifeq -> 72
    //   57: aload #5
    //   59: invokevirtual getModifiers : ()I
    //   62: invokestatic isStatic : (I)Z
    //   65: ifne -> 72
    //   68: aload_0
    //   69: monitorexit
    //   70: iconst_0
    //   71: ireturn
    //   72: aload #5
    //   74: invokevirtual getType : ()Ljava/lang/Class;
    //   77: astore #4
    //   79: aload #5
    //   81: invokevirtual getModifiers : ()I
    //   84: invokestatic isPublic : (I)Z
    //   87: ifne -> 96
    //   90: aload #5
    //   92: iconst_1
    //   93: invokevirtual setAccessible : (Z)V
    //   96: aload #5
    //   98: aload_1
    //   99: aload_0
    //   100: aload #4
    //   102: aload_0
    //   103: invokevirtual getTop : ()I
    //   106: invokestatic e : (Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    //   109: invokevirtual set : (Ljava/lang/Object;Ljava/lang/Object;)V
    //   112: goto -> 134
    //   115: astore_1
    //   116: new com/luajava/LuaException
    //   119: dup
    //   120: aload_1
    //   121: invokespecial <init> : (Ljava/lang/Exception;)V
    //   124: athrow
    //   125: aload_0
    //   126: aload_2
    //   127: iconst_m1
    //   128: aload #4
    //   130: invokestatic a : (Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    //   133: pop
    //   134: aload_0
    //   135: monitorexit
    //   136: iconst_1
    //   137: ireturn
    //   138: aload_0
    //   139: monitorexit
    //   140: iconst_0
    //   141: ireturn
    //   142: aload_0
    //   143: monitorexit
    //   144: aload_1
    //   145: athrow
    //   146: astore_1
    //   147: goto -> 138
    //   150: astore_1
    //   151: goto -> 125
    //   154: astore_1
    //   155: goto -> 142
    // Exception table:
    //   from	to	target	type
    //   6	8	154	finally
    //   10	23	154	finally
    //   28	34	154	finally
    //   36	44	146	java/lang/NoSuchFieldException
    //   36	44	154	finally
    //   49	51	154	finally
    //   57	70	154	finally
    //   72	79	154	finally
    //   79	96	150	com/luajava/LuaException
    //   79	96	115	java/lang/Exception
    //   79	96	154	finally
    //   96	112	150	com/luajava/LuaException
    //   96	112	115	java/lang/Exception
    //   96	112	154	finally
    //   116	125	154	finally
    //   125	134	154	finally
    //   134	136	154	finally
    //   138	140	154	finally
    //   142	144	154	finally }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\com\luajava\LuaJavaAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */
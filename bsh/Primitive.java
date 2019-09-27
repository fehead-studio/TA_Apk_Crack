package bsh;

import java.io.Serializable;
import java.util.Hashtable;

public final class Primitive implements ParserConstants, Serializable {
  public static final Primitive NULL;
  
  public static final Primitive VOID;
  
  static Hashtable a;
  
  static Class b;
  
  static Class c;
  
  static Class d;
  
  static Class e;
  
  static Class f;
  
  static Class g;
  
  static Class h;
  
  static Class i;
  
  static Class j;
  
  private Object k;
  
  static  {
    Class clazz1;
    a = new Hashtable();
    Hashtable hashtable = a;
    Class clazz2 = boolean.class;
    if (b == null) {
      clazz1 = a("java.lang.Boolean");
      b = clazz1;
    } else {
      clazz1 = b;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    clazz2 = byte.class;
    if (c == null) {
      clazz1 = a("java.lang.Byte");
      c = clazz1;
    } else {
      clazz1 = c;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    clazz2 = short.class;
    if (d == null) {
      clazz1 = a("java.lang.Short");
      d = clazz1;
    } else {
      clazz1 = d;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    clazz2 = char.class;
    if (e == null) {
      clazz1 = a("java.lang.Character");
      e = clazz1;
    } else {
      clazz1 = e;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    clazz2 = int.class;
    if (f == null) {
      clazz1 = a("java.lang.Integer");
      f = clazz1;
    } else {
      clazz1 = f;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    clazz2 = long.class;
    if (g == null) {
      clazz1 = a("java.lang.Long");
      g = clazz1;
    } else {
      clazz1 = g;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    clazz2 = float.class;
    if (h == null) {
      clazz1 = a("java.lang.Float");
      h = clazz1;
    } else {
      clazz1 = h;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    clazz2 = double.class;
    if (i == null) {
      clazz1 = a("java.lang.Double");
      i = clazz1;
    } else {
      clazz1 = i;
    } 
    hashtable.put(clazz2, clazz1);
    hashtable = a;
    if (b == null) {
      clazz1 = a("java.lang.Boolean");
      b = clazz1;
    } else {
      clazz1 = b;
    } 
    hashtable.put(clazz1, boolean.class);
    hashtable = a;
    if (c == null) {
      clazz1 = a("java.lang.Byte");
      c = clazz1;
    } else {
      clazz1 = c;
    } 
    hashtable.put(clazz1, byte.class);
    hashtable = a;
    if (d == null) {
      clazz1 = a("java.lang.Short");
      d = clazz1;
    } else {
      clazz1 = d;
    } 
    hashtable.put(clazz1, short.class);
    hashtable = a;
    if (e == null) {
      clazz1 = a("java.lang.Character");
      e = clazz1;
    } else {
      clazz1 = e;
    } 
    hashtable.put(clazz1, char.class);
    hashtable = a;
    if (f == null) {
      clazz1 = a("java.lang.Integer");
      f = clazz1;
    } else {
      clazz1 = f;
    } 
    hashtable.put(clazz1, int.class);
    hashtable = a;
    if (g == null) {
      clazz1 = a("java.lang.Long");
      g = clazz1;
    } else {
      clazz1 = g;
    } 
    hashtable.put(clazz1, long.class);
    hashtable = a;
    if (h == null) {
      clazz1 = a("java.lang.Float");
      h = clazz1;
    } else {
      clazz1 = h;
    } 
    hashtable.put(clazz1, float.class);
    hashtable = a;
    if (i == null) {
      clazz1 = a("java.lang.Double");
      i = clazz1;
    } else {
      clazz1 = i;
    } 
    hashtable.put(clazz1, double.class);
    NULL = new Primitive(Special.NULL_VALUE);
    VOID = new Primitive(Special.VOID_TYPE);
  }
  
  public Primitive(byte paramByte) { this(new Byte(paramByte)); }
  
  public Primitive(char paramChar) { this(new Character(paramChar)); }
  
  public Primitive(double paramDouble) { this(new Double(paramDouble)); }
  
  public Primitive(float paramFloat) { this(new Float(paramFloat)); }
  
  public Primitive(int paramInt) { this(new Integer(paramInt)); }
  
  public Primitive(long paramLong) { this(new Long(paramLong)); }
  
  public Primitive(Object paramObject) {
    if (paramObject == null)
      throw new InterpreterError("Use Primitve.NULL instead of Primitive(null)"); 
    if (paramObject != Special.NULL_VALUE && paramObject != Special.VOID_TYPE && !isWrapperType(paramObject.getClass())) {
      StringBuffer stringBuffer = new StringBuffer();
      stringBuffer.append("Not a wrapper type: ");
      stringBuffer.append(paramObject);
      throw new InterpreterError(stringBuffer.toString());
    } 
    this.k = paramObject;
  }
  
  public Primitive(short paramShort) { this(new Short(paramShort)); }
  
  public Primitive(boolean paramBoolean) { this(new Boolean(paramBoolean)); }
  
  static double a(Double paramDouble, int paramInt) {
    double d1 = paramDouble.doubleValue();
    switch (paramInt) {
      default:
        throw new InterpreterError("bad double unaryOperation");
      case 103:
        return -d1;
      case 102:
        break;
    } 
    return d1;
  }
  
  static float a(Float paramFloat, int paramInt) {
    float f2 = paramFloat.floatValue();
    float f1 = f2;
    switch (paramInt) {
      default:
        throw new InterpreterError("bad float unaryOperation");
      case 103:
        f1 = -f2;
        break;
      case 102:
        break;
    } 
    return f1;
  }
  
  static int a(Integer paramInteger, int paramInt) {
    int m = paramInteger.intValue();
    if (paramInt != 87) {
      int n = m;
      switch (paramInt) {
        default:
          throw new InterpreterError("bad integer unaryOperation");
        case 103:
          n = -m;
        case 102:
          return n;
        case 101:
          return m - 1;
        case 100:
          break;
      } 
      return m + 1;
    } 
    return m ^ 0xFFFFFFFF;
  }
  
  static long a(Long paramLong, int paramInt) {
    long l = paramLong.longValue();
    if (paramInt != 87) {
      switch (paramInt) {
        default:
          throw new InterpreterError("bad long unaryOperation");
        case 103:
          return -l;
        case 102:
          return l;
        case 101:
          return l - 1L;
        case 100:
          break;
      } 
      return l + 1L;
    } 
    return l ^ 0xFFFFFFFFFFFFFFFFL;
  }
  
  static Primitive a(Class paramClass1, Class paramClass2, Primitive paramPrimitive, boolean paramBoolean, int paramInt) {
    StringBuffer stringBuffer1;
    if (paramBoolean && paramPrimitive != null)
      throw new InterpreterError("bad cast param 1"); 
    if (!paramBoolean && paramPrimitive == null)
      throw new InterpreterError("bad cast param 2"); 
    if (paramClass2 != null && !paramClass2.isPrimitive()) {
      stringBuffer1 = new StringBuffer();
      stringBuffer1.append("bad fromType:");
      stringBuffer1.append(paramClass2);
      throw new InterpreterError(stringBuffer1.toString());
    } 
    if (paramPrimitive == NULL && paramClass2 != null)
      throw new InterpreterError("inconsistent args 1"); 
    if (paramPrimitive == VOID && paramClass2 != void.class)
      throw new InterpreterError("inconsistent args 2"); 
    if (paramClass2 == void.class) {
      if (paramBoolean)
        return Types.b; 
      throw Types.a(Reflect.normalizeClassName(stringBuffer1), "void value", paramInt);
    } 
    Object object = null;
    if (paramPrimitive != null)
      object = paramPrimitive.getValue(); 
    if (stringBuffer1.isPrimitive()) {
      if (paramClass2 == null) {
        if (paramBoolean)
          return Types.b; 
        stringBuffer2 = new StringBuffer();
        stringBuffer2.append("primitive type:");
        stringBuffer2.append(stringBuffer1);
        throw Types.a(stringBuffer2.toString(), "Null value", paramInt);
      } 
      if (stringBuffer2 == boolean.class) {
        if (stringBuffer1 != boolean.class) {
          if (paramBoolean)
            return Types.b; 
          throw Types.a(stringBuffer1, stringBuffer2, paramInt);
        } 
        if (paramBoolean)
          paramPrimitive = Types.a; 
        return paramPrimitive;
      } 
      if (paramInt == 1 && !Types.a(stringBuffer1, stringBuffer2)) {
        if (paramBoolean)
          return Types.b; 
        throw Types.a(stringBuffer1, stringBuffer2, paramInt);
      } 
      return paramBoolean ? Types.a : new Primitive(a(stringBuffer1, object));
    } 
    if (stringBuffer2 == null)
      return paramBoolean ? Types.a : NULL; 
    if (paramBoolean)
      return Types.b; 
    StringBuffer stringBuffer2 = new StringBuffer();
    stringBuffer2.append("object type:");
    stringBuffer2.append(stringBuffer1);
    throw Types.a(stringBuffer2.toString(), "primitive value", paramInt);
  }
  
  static Boolean a(Boolean paramBoolean1, Boolean paramBoolean2, int paramInt) {
    boolean bool5 = paramBoolean1.booleanValue();
    boolean bool4 = paramBoolean2.booleanValue();
    int m = 0;
    boolean bool2 = false;
    boolean bool3 = false;
    byte b1 = 0;
    if (paramInt != 90) {
      switch (paramInt) {
        default:
          throw new InterpreterError("unimplemented binary operator");
        case 98:
        case 99:
          m = b1;
          if (bool5) {
            m = b1;
            if (bool4)
              m = 1; 
          } 
          return new Boolean(m);
        case 96:
        case 97:
          if (bool5 || bool4)
            bool = true; 
          return new Boolean(bool);
        case 95:
          break;
      } 
      boolean bool = bool2;
      if (bool5 != bool4)
        bool = true; 
      return new Boolean(bool);
    } 
    boolean bool1 = bool3;
    if (bool5 == bool4)
      bool1 = true; 
    return new Boolean(bool1);
  }
  
  static Class a(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (ClassNotFoundException paramString) {
      throw new NoClassDefFoundError(paramString.getMessage());
    } 
  }
  
  static Object a(Class paramClass, Object paramObject) {
    if (!paramClass.isPrimitive()) {
      paramObject = new StringBuffer();
      paramObject.append("invalid type in castWrapper: ");
      paramObject.append(paramClass);
      throw new InterpreterError(paramObject.toString());
    } 
    if (paramObject == null)
      throw new InterpreterError("null value in castWrapper, guard"); 
    if (paramObject instanceof Boolean) {
      if (paramClass != boolean.class)
        throw new InterpreterError("bad wrapper cast of boolean"); 
      return paramObject;
    } 
    Object object = paramObject;
    if (paramObject instanceof Character)
      object = new Integer(((Character)paramObject).charValue()); 
    if (!(object instanceof Number))
      throw new InterpreterError("bad type in cast"); 
    paramObject = (Number)object;
    if (paramClass == byte.class)
      return new Byte(paramObject.byteValue()); 
    if (paramClass == short.class)
      return new Short(paramObject.shortValue()); 
    if (paramClass == char.class)
      return new Character((char)paramObject.intValue()); 
    if (paramClass == int.class)
      return new Integer(paramObject.intValue()); 
    if (paramClass == long.class)
      return new Long(paramObject.longValue()); 
    if (paramClass == float.class)
      return new Float(paramObject.floatValue()); 
    if (paramClass == double.class)
      return new Double(paramObject.doubleValue()); 
    throw new InterpreterError("error in wrapper cast");
  }
  
  static Object a(Double paramDouble1, Double paramDouble2, int paramInt) {
    double d1 = paramDouble1.doubleValue();
    double d2 = paramDouble2.doubleValue();
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool = false;
    switch (paramInt) {
      default:
        switch (paramInt) {
          default:
            switch (paramInt) {
              default:
                switch (paramInt) {
                  default:
                    throw new InterpreterError("Unimplemented binary double operator");
                  case 112:
                  case 113:
                  case 114:
                  case 115:
                  case 116:
                  case 117:
                    throw new UtilEvalError("Can't shift doubles");
                  case 111:
                    break;
                } 
                return new Double(d1 % d2);
              case 105:
                return new Double(d1 / d2);
              case 104:
                return new Double(d1 * d2);
              case 103:
                return new Double(d1 - d2);
              case 102:
                break;
            } 
            return new Double(d1 + d2);
          case 95:
            if (d1 != d2)
              bool = true; 
            return new Boolean(bool);
          case 93:
          case 94:
            bool = bool1;
            if (d1 >= d2)
              bool = true; 
            return new Boolean(bool);
          case 91:
          case 92:
            bool = bool2;
            if (d1 <= d2)
              bool = true; 
            return new Boolean(bool);
          case 90:
            break;
        } 
        bool = bool3;
        if (d1 == d2)
          bool = true; 
        return new Boolean(bool);
      case 84:
      case 85:
        bool = bool4;
        if (d1 < d2)
          bool = true; 
        return new Boolean(bool);
      case 82:
      case 83:
        break;
    } 
    bool = bool5;
    if (d1 > d2)
      bool = true; 
    return new Boolean(bool);
  }
  
  static Object a(Float paramFloat1, Float paramFloat2, int paramInt) {
    float f1 = paramFloat1.floatValue();
    float f2 = paramFloat2.floatValue();
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool = false;
    switch (paramInt) {
      default:
        switch (paramInt) {
          default:
            switch (paramInt) {
              default:
                switch (paramInt) {
                  default:
                    throw new InterpreterError("Unimplemented binary float operator");
                  case 112:
                  case 113:
                  case 114:
                  case 115:
                  case 116:
                  case 117:
                    throw new UtilEvalError("Can't shift floats ");
                  case 111:
                    break;
                } 
                return new Float(f1 % f2);
              case 105:
                return new Float(f1 / f2);
              case 104:
                return new Float(f1 * f2);
              case 103:
                return new Float(f1 - f2);
              case 102:
                break;
            } 
            return new Float(f1 + f2);
          case 95:
            if (f1 != f2)
              bool = true; 
            return new Boolean(bool);
          case 93:
          case 94:
            bool = bool1;
            if (f1 >= f2)
              bool = true; 
            return new Boolean(bool);
          case 91:
          case 92:
            bool = bool2;
            if (f1 <= f2)
              bool = true; 
            return new Boolean(bool);
          case 90:
            break;
        } 
        bool = bool3;
        if (f1 == f2)
          bool = true; 
        return new Boolean(bool);
      case 84:
      case 85:
        bool = bool4;
        if (f1 < f2)
          bool = true; 
        return new Boolean(bool);
      case 82:
      case 83:
        break;
    } 
    bool = bool5;
    if (f1 > f2)
      bool = true; 
    return new Boolean(bool);
  }
  
  static Object a(Integer paramInteger1, Integer paramInteger2, int paramInt) {
    int m = paramInteger1.intValue();
    int n = paramInteger2.intValue();
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool = false;
    switch (paramInt) {
      default:
        switch (paramInt) {
          default:
            switch (paramInt) {
              default:
                throw new InterpreterError("Unimplemented binary integer operator");
              case 116:
              case 117:
                return new Integer(m >>> n);
              case 114:
              case 115:
                return new Integer(m >> n);
              case 112:
              case 113:
                return new Integer(m << n);
              case 111:
                return new Integer(m % n);
              case 110:
                return new Integer(m ^ n);
              case 108:
              case 109:
                return new Integer(m | n);
              case 106:
              case 107:
                return new Integer(m & n);
              case 105:
                return new Integer(m / n);
              case 104:
                return new Integer(m * n);
              case 103:
                return new Integer(m - n);
              case 102:
                break;
            } 
            return new Integer(m + n);
          case 95:
            if (m != n)
              bool = true; 
            return new Boolean(bool);
          case 93:
          case 94:
            bool = bool1;
            if (m >= n)
              bool = true; 
            return new Boolean(bool);
          case 91:
          case 92:
            bool = bool2;
            if (m <= n)
              bool = true; 
            return new Boolean(bool);
          case 90:
            break;
        } 
        bool = bool3;
        if (m == n)
          bool = true; 
        return new Boolean(bool);
      case 84:
      case 85:
        bool = bool4;
        if (m < n)
          bool = true; 
        return new Boolean(bool);
      case 82:
      case 83:
        break;
    } 
    bool = bool5;
    if (m > n)
      bool = true; 
    return new Boolean(bool);
  }
  
  static Object a(Long paramLong1, Long paramLong2, int paramInt) {
    long l1 = paramLong1.longValue();
    long l2 = paramLong2.longValue();
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool = false;
    switch (paramInt) {
      default:
        switch (paramInt) {
          default:
            switch (paramInt) {
              default:
                throw new InterpreterError("Unimplemented binary long operator");
              case 116:
              case 117:
                return new Long(l1 >>> (int)l2);
              case 114:
              case 115:
                return new Long(l1 >> (int)l2);
              case 112:
              case 113:
                return new Long(l1 << (int)l2);
              case 111:
                return new Long(l1 % l2);
              case 110:
                return new Long(l1 ^ l2);
              case 108:
              case 109:
                return new Long(l1 | l2);
              case 106:
              case 107:
                return new Long(l1 & l2);
              case 105:
                return new Long(l1 / l2);
              case 104:
                return new Long(l1 * l2);
              case 103:
                return new Long(l1 - l2);
              case 102:
                break;
            } 
            return new Long(l1 + l2);
          case 95:
            if (l1 != l2)
              bool = true; 
            return new Boolean(bool);
          case 93:
          case 94:
            bool = bool1;
            if (l1 >= l2)
              bool = true; 
            return new Boolean(bool);
          case 91:
          case 92:
            bool = bool2;
            if (l1 <= l2)
              bool = true; 
            return new Boolean(bool);
          case 90:
            break;
        } 
        bool = bool3;
        if (l1 == l2)
          bool = true; 
        return new Boolean(bool);
      case 84:
      case 85:
        bool = bool4;
        if (l1 < l2)
          bool = true; 
        return new Boolean(bool);
      case 82:
      case 83:
        break;
    } 
    bool = bool5;
    if (l1 > l2)
      bool = true; 
    return new Boolean(bool);
  }
  
  static Object a(Object paramObject) { return (paramObject instanceof Character) ? new Integer(((Character)paramObject).charValue()) : ((paramObject instanceof Byte || paramObject instanceof Short) ? new Integer(((Number)paramObject).intValue()) : paramObject); }
  
  static Object a(Object paramObject1, Object paramObject2, int paramInt) {
    if (paramObject1 instanceof Boolean)
      return a((Boolean)paramObject1, (Boolean)paramObject2, paramInt); 
    if (paramObject1 instanceof Integer)
      return a((Integer)paramObject1, (Integer)paramObject2, paramInt); 
    if (paramObject1 instanceof Long)
      return a((Long)paramObject1, (Long)paramObject2, paramInt); 
    if (paramObject1 instanceof Float)
      return a((Float)paramObject1, (Float)paramObject2, paramInt); 
    if (paramObject1 instanceof Double)
      return a((Double)paramObject1, (Double)paramObject2, paramInt); 
    throw new UtilEvalError("Invalid types in binary operator");
  }
  
  static boolean a(Boolean paramBoolean, int paramInt) {
    boolean bool = paramBoolean.booleanValue();
    if (paramInt != 86)
      throw new UtilEvalError("Operator inappropriate for boolean"); 
    return bool ^ true;
  }
  
  static Object[] a(Object paramObject1, Object paramObject2) { // Byte code:
    //   0: aload_0
    //   1: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   4: astore_3
    //   5: aload_1
    //   6: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   9: astore #4
    //   11: aload_3
    //   12: astore_0
    //   13: aload #4
    //   15: astore_1
    //   16: aload_3
    //   17: instanceof java/lang/Number
    //   20: ifeq -> 234
    //   23: aload_3
    //   24: astore_0
    //   25: aload #4
    //   27: astore_1
    //   28: aload #4
    //   30: instanceof java/lang/Number
    //   33: ifeq -> 234
    //   36: aload_3
    //   37: checkcast java/lang/Number
    //   40: astore #5
    //   42: aload #4
    //   44: checkcast java/lang/Number
    //   47: astore #6
    //   49: aload #5
    //   51: instanceof java/lang/Double
    //   54: istore_2
    //   55: iload_2
    //   56: ifne -> 196
    //   59: aload #6
    //   61: instanceof java/lang/Double
    //   64: ifeq -> 70
    //   67: goto -> 196
    //   70: aload #5
    //   72: instanceof java/lang/Float
    //   75: istore_2
    //   76: iload_2
    //   77: ifne -> 155
    //   80: aload #6
    //   82: instanceof java/lang/Float
    //   85: ifeq -> 91
    //   88: goto -> 155
    //   91: aload #5
    //   93: instanceof java/lang/Long
    //   96: istore_2
    //   97: iload_2
    //   98: ifne -> 114
    //   101: aload_3
    //   102: astore_0
    //   103: aload #4
    //   105: astore_1
    //   106: aload #6
    //   108: instanceof java/lang/Long
    //   111: ifeq -> 234
    //   114: iload_2
    //   115: ifeq -> 136
    //   118: new java/lang/Long
    //   121: dup
    //   122: aload #6
    //   124: invokevirtual longValue : ()J
    //   127: invokespecial <init> : (J)V
    //   130: astore_1
    //   131: aload_3
    //   132: astore_0
    //   133: goto -> 234
    //   136: new java/lang/Long
    //   139: dup
    //   140: aload #5
    //   142: invokevirtual longValue : ()J
    //   145: invokespecial <init> : (J)V
    //   148: astore_0
    //   149: aload #4
    //   151: astore_1
    //   152: goto -> 234
    //   155: iload_2
    //   156: ifeq -> 177
    //   159: new java/lang/Float
    //   162: dup
    //   163: aload #6
    //   165: invokevirtual floatValue : ()F
    //   168: invokespecial <init> : (F)V
    //   171: astore_1
    //   172: aload_3
    //   173: astore_0
    //   174: goto -> 234
    //   177: new java/lang/Float
    //   180: dup
    //   181: aload #5
    //   183: invokevirtual floatValue : ()F
    //   186: invokespecial <init> : (F)V
    //   189: astore_0
    //   190: aload #4
    //   192: astore_1
    //   193: goto -> 234
    //   196: iload_2
    //   197: ifeq -> 218
    //   200: new java/lang/Double
    //   203: dup
    //   204: aload #6
    //   206: invokevirtual doubleValue : ()D
    //   209: invokespecial <init> : (D)V
    //   212: astore_1
    //   213: aload_3
    //   214: astore_0
    //   215: goto -> 234
    //   218: new java/lang/Double
    //   221: dup
    //   222: aload #5
    //   224: invokevirtual doubleValue : ()D
    //   227: invokespecial <init> : (D)V
    //   230: astore_0
    //   231: aload #4
    //   233: astore_1
    //   234: iconst_2
    //   235: anewarray java/lang/Object
    //   238: dup
    //   239: iconst_0
    //   240: aload_0
    //   241: aastore
    //   242: dup
    //   243: iconst_1
    //   244: aload_1
    //   245: aastore
    //   246: areturn }
  
  public static Object binaryOperation(Object paramObject1, Object paramObject2, int paramInt) {
    if (paramObject1 == NULL || paramObject2 == NULL)
      throw new UtilEvalError("Null value or 'null' literal in binary operation"); 
    if (paramObject1 == VOID || paramObject2 == VOID)
      throw new UtilEvalError("Undefined variable, class, or 'void' literal in binary operation"); 
    Class clazz2 = paramObject1.getClass();
    Class clazz1 = paramObject2.getClass();
    Object object2 = paramObject1;
    if (paramObject1 instanceof Primitive)
      object2 = ((Primitive)paramObject1).getValue(); 
    paramObject1 = paramObject2;
    if (paramObject2 instanceof Primitive)
      paramObject1 = ((Primitive)paramObject2).getValue(); 
    Object[] arrayOfObject = a(object2, paramObject1);
    paramObject1 = arrayOfObject[0];
    Object object1 = arrayOfObject[1];
    if (paramObject1.getClass() != object1.getClass()) {
      object2 = new StringBuffer();
      object2.append("Type mismatch in operator.  ");
      object2.append(paramObject1.getClass());
      object2.append(" cannot be used with ");
      object2.append(object1.getClass());
      throw new UtilEvalError(object2.toString());
    } 
    try {
      object1 = a(paramObject1, object1, paramInt);
      if (j == null) {
        paramObject1 = a("bsh.Primitive");
        j = paramObject1;
      } else {
        paramObject1 = j;
      } 
      if (clazz2 == paramObject1) {
        if (j == null) {
          paramObject1 = a("bsh.Primitive");
          j = paramObject1;
        } else {
          paramObject1 = j;
        } 
        return (clazz1 != paramObject1) ? (!(object1 instanceof Boolean) ? object1 : new Primitive(object1)) : new Primitive(object1);
      } 
      return !(object1 instanceof Boolean) ? object1 : new Primitive(object1);
    } catch (ArithmeticException paramObject1) {
      throw new UtilTargetError("Arithemetic Exception in binary op", paramObject1);
    } 
  }
  
  public static Class boxType(Class paramClass) {
    Class clazz = (Class)a.get(paramClass);
    if (clazz != null)
      return clazz; 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Not a primitive type: ");
    stringBuffer.append(paramClass);
    throw new InterpreterError(stringBuffer.toString());
  }
  
  public static Primitive getDefaultValue(Class paramClass) {
    if (paramClass == null || !paramClass.isPrimitive())
      return NULL; 
    if (paramClass == boolean.class)
      return new Primitive(false); 
    try {
      return (new Primitive(0)).castToType(paramClass, 0);
    } catch (UtilEvalError paramClass) {
      throw new InterpreterError("bad cast");
    } 
  }
  
  public static boolean isWrapperType(Class paramClass) { return (a.get(paramClass) != null && !paramClass.isPrimitive()); }
  
  public static Primitive unaryOperation(Primitive paramPrimitive, int paramInt) {
    if (paramPrimitive == NULL)
      throw new UtilEvalError("illegal use of null object or 'null' literal"); 
    if (paramPrimitive == VOID)
      throw new UtilEvalError("illegal use of undefined object or 'void' literal"); 
    Class clazz = paramPrimitive.getType();
    Object object = a(paramPrimitive.getValue());
    if (object instanceof Boolean)
      return new Primitive(a((Boolean)object, paramInt)); 
    if (object instanceof Integer) {
      int m = a((Integer)object, paramInt);
      if (paramInt == 100 || paramInt == 101) {
        if (clazz == byte.class)
          return new Primitive((byte)m); 
        if (clazz == short.class)
          return new Primitive((short)m); 
        if (clazz == char.class)
          return new Primitive((char)m); 
      } 
      return new Primitive(m);
    } 
    if (object instanceof Long)
      return new Primitive(a((Long)object, paramInt)); 
    if (object instanceof Float)
      return new Primitive(a((Float)object, paramInt)); 
    if (object instanceof Double)
      return new Primitive(a((Double)object, paramInt)); 
    throw new InterpreterError("An error occurred.  Please call technical support.");
  }
  
  public static Class unboxType(Class paramClass) {
    Class clazz = (Class)a.get(paramClass);
    if (clazz != null)
      return clazz; 
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("Not a primitive wrapper type: ");
    stringBuffer.append(paramClass);
    throw new InterpreterError(stringBuffer.toString());
  }
  
  public static Object unwrap(Object paramObject) {
    if (paramObject == VOID)
      return null; 
    Object object = paramObject;
    if (paramObject instanceof Primitive)
      object = ((Primitive)paramObject).getValue(); 
    return object;
  }
  
  public static Object[] unwrap(Object[] paramArrayOfObject) {
    Object[] arrayOfObject = new Object[paramArrayOfObject.length];
    for (byte b1 = 0;; b1++) {
      if (b1 >= paramArrayOfObject.length)
        return arrayOfObject; 
      arrayOfObject[b1] = unwrap(paramArrayOfObject[b1]);
    } 
  }
  
  public static Object wrap(Object paramObject, Class paramClass) { return (paramClass == void.class) ? VOID : ((paramObject == null) ? NULL : (paramClass.isPrimitive() ? new Primitive(paramObject) : paramObject)); }
  
  public static Object[] wrap(Object[] paramArrayOfObject, Class[] paramArrayOfClass) {
    if (paramArrayOfObject == null)
      return null; 
    Object[] arrayOfObject = new Object[paramArrayOfObject.length];
    for (byte b1 = 0;; b1++) {
      if (b1 >= paramArrayOfObject.length)
        return arrayOfObject; 
      arrayOfObject[b1] = wrap(paramArrayOfObject[b1], paramArrayOfClass[b1]);
    } 
  }
  
  public boolean booleanValue() {
    if (this.k instanceof Boolean)
      return ((Boolean)this.k).booleanValue(); 
    throw new UtilEvalError("Primitive not a boolean");
  }
  
  public Primitive castToType(Class paramClass, int paramInt) { return a(paramClass, getType(), this, false, paramInt); }
  
  public boolean equals(Object paramObject) { return (paramObject instanceof Primitive) ? ((Primitive)paramObject).k.equals(this.k) : 0; }
  
  public Class getType() { return (this == VOID) ? void.class : ((this == NULL) ? null : unboxType(this.k.getClass())); }
  
  public Object getValue() {
    if (this.k == Special.NULL_VALUE)
      return null; 
    if (this.k == Special.VOID_TYPE)
      throw new InterpreterError("attempt to unwrap void type"); 
    return this.k;
  }
  
  public int hashCode() { return this.k.hashCode() * 21; }
  
  public int intValue() {
    if (this.k instanceof Number)
      return ((Number)this.k).intValue(); 
    throw new UtilEvalError("Primitive not a number");
  }
  
  public boolean isNumber() { return (!(this.k instanceof Boolean) && this != NULL && this != VOID); }
  
  public Number numberValue() {
    Object object2 = this.k;
    Object object1 = object2;
    if (object2 instanceof Character)
      object1 = new Integer(((Character)object2).charValue()); 
    if (object1 instanceof Number)
      return (Number)object1; 
    throw new UtilEvalError("Primitive not a number");
  }
  
  public String toString() { return (this.k == Special.NULL_VALUE) ? "null" : ((this.k == Special.VOID_TYPE) ? "void" : this.k.toString()); }
  
  private static class Special implements Serializable {
    public static final Special NULL_VALUE = new Special();
    
    public static final Special VOID_TYPE = new Special();
  }
}


/* Location:              D:\apk反编译\classes-dex2jar.jar!\bsh\Primitive.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.0.7
 */